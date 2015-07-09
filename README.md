Just a theory.

Run `./asyncron.sh` for an idea of how this is supposed to work.

```
$ ps aux | grep async | grep -v grep
steve          21881   5.8  0.2  2474520   8612 s000  S+   12:48AM   0:00.09 /usr/bin/php ./asynccron.php run foo9751
steve          21324   0.0  0.2  2474520   8624 s000  S+   12:47AM   0:00.10 /usr/bin/php ./asynccron.php run foo44
steve          21311   0.0  0.2  2474520   8688 s000  S+   12:47AM   0:00.09 /usr/bin/php ./asynccron.php run foo7227
steve          21298   0.0  0.2  2474520   8636 s000  S+   12:47AM   0:00.09 /usr/bin/php ./asynccron.php run foo3547
steve          21285   0.0  0.2  2466328   8632 s000  S+   12:47AM   0:00.09 /usr/bin/php ./asynccron.php run foo9047
steve          21272   0.0  0.2  2474520   8644 s000  S+   12:47AM   0:00.09 /usr/bin/php ./asynccron.php run foo9470
steve          21259   0.0  0.2  2474520   8616 s000  S+   12:47AM   0:00.09 /usr/bin/php ./asynccron.php run foo2037
steve          21246   0.0  0.2  2473496   8668 s000  S+   12:47AM   0:00.09 /usr/bin/php ./asynccron.php run foo8222
steve          21233   0.0  0.2  2473496   8672 s000  S+   12:47AM   0:00.10 /usr/bin/php ./asynccron.php run foo7564
steve          21220   0.0  0.2  2474520   8608 s000  S+   12:47AM   0:00.09 /usr/bin/php ./asynccron.php run foo907
steve          21207   0.0  0.2  2474520   8628 s000  S+   12:46AM   0:00.09 /usr/bin/php ./asynccron.php run foo2728
steve          21181   0.0  0.2  2474520   8612 s000  S+   12:46AM   0:00.09 /usr/bin/php ./asynccron.php run foo8312
steve          21168   0.0  0.2  2474520   8652 s000  S+   12:46AM   0:00.11 /usr/bin/php ./asynccron.php run foo6682
steve          21129   0.0  0.2  2466328   8604 s000  S+   12:46AM   0:00.09 /usr/bin/php ./asynccron.php run foo1596
steve          21116   0.0  0.2  2467352   8612 s000  S+   12:46AM   0:00.09 /usr/bin/php ./asynccron.php run foo4191
steve          21103   0.0  0.2  2475544   8616 s000  S+   12:46AM   0:00.10 /usr/bin/php ./asynccron.php run foo359
steve          21090   0.0  0.2  2466328   8628 s000  S+   12:46AM   0:00.09 /usr/bin/php ./asynccron.php run foo8751
steve          21077   0.0  0.2  2467352   8628 s000  S+   12:46AM   0:00.10 /usr/bin/php ./asynccron.php run foo4175
steve          21061   0.0  0.0  2444632   1052 s000  S+   12:46AM   0:00.13 /bin/sh ./asynccron.sh
steve          21846   0.0  0.2  2467352   8600 s000  S+   12:47AM   0:00.09 /usr/bin/php ./asynccron.php run foo9579
steve          21480   0.0  0.2  2459160   8604 s000  S+   12:47AM   0:00.09 /usr/bin/php ./asynccron.php run foo5062
```
