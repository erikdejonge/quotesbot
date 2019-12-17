# coding=utf-8
#!/usr/bin/env python
# coding: utf-8
import csv


def main():
    """
    main
    """
    reader = csv.reader(open("allquotes.tsv"), delimiter='\t')
    quotes = []
    cnt = 0

    for row in reader:
        quotes.append(row)
        cnt += 1

        if cnt % 100 == 0:
            s = "reading: {0}".format(cnt)
            print(s, end='\r', flush=True)

    print(len(quotes))
    qd = {}

    for i in quotes:
        qd[i[-1]] = i

    writer = csv.writer(open("allquotes2.tsv", "w"), delimiter='\t')
    cnt = 0
    max = len(qd)
    for i in qd:
        cnt += 1
        item = qd[i]
        writer.writerow([item[0], item[1], item[2]])
        perc = (float(cnt) / max) * 100
        print('writing: {0:.1f}%'.format(perc), end='\r', flush=True)

    print("done")


if __name__ == "__main__":
    main()
