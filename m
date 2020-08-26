Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.7131.1598424875511528561
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 23:54:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=fs9AIgJK;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.169, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f169.google.com with SMTP id w14so1079032ljj.4
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 23:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=EfDFJuliJnzGYwmw4dVpScqQClivAhMugVjb9dnGv/o=;
        b=fs9AIgJKWxJ+W8A/HlXEvPs/g2ud7vtep+jRVdzD0p62aeccwkPvgXvCnGWaat0kKa
         YeCOatyrCxRpmEMG97Ms9p6BKjrCd4Lnr3BjxOkQ6HTUdTfhXxmKp/ljOcsvGhR3ovC+
         F7mS33b47Ra0DlI9hJ/UXaRkqP2QPsm3YZawY3sYauVTSCBSleWJ+pfVQ6io7jRRLoPm
         qayMQaksKR1zKpSMDhJTX5diWvWWWrx2gM31O61Ur/848I9NgF18BADiTRy4lwEINbaJ
         uTqhD2VPUWWV4HO8oqH7tXmcU7EWra60qJdfY3DqSPhloOCjkMgDQQJTYJwyQEblcHlA
         j7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=EfDFJuliJnzGYwmw4dVpScqQClivAhMugVjb9dnGv/o=;
        b=HFA3tEuMdGc6xvR5/q+6qFRtE+qI3OoijtmubdNr0/f1ctYuOZxFRRBvGOVWIDMXIT
         RYk1tc2YTquRRCpYl2NTT83lshABtp+umwwgFUOIsyQQaEHpGqFtgFbtYFHPCPoAGhrE
         YGf81d0q4o4RKjYBbEceQW2JHMmP2CqgSwEhWj0aTbC/p74uRBL9FUbqAHtUqhGCskob
         iaKAEF9SGXqPzflcaOGh6Q3eLJrFWf1ct4wkZ8CMRMiJSI/OfdgZfqvgEubi2PSToP7O
         P+EpGWcWtZZKAOmHedJ4+n8Bsf5MrWze79JBrWlwFV/MdiiuGG2yHET7aUyL/LODyRCV
         BrGw==
X-Gm-Message-State: AOAM530ZzovdlBxmAeD9+jktJg3+4VthnllcL/F7HdZhCUZiMBYpbesL
	LNA9ZQsA9JqtuSDW0xZhoIweMyMsF1KCIXDiEHBpMA==
X-Google-Smtp-Source: ABdhPJy8CkDOdUjy1WdD4PR29RQiU38lcasWSpmzdZtOo0FmiO1zGkPZnRpXeT9S2ujAdgMAiM6X46bFEt9V7LjrKGM=
X-Received: by 2002:a2e:9908:: with SMTP id v8mr6487927lji.410.1598424873219;
 Tue, 25 Aug 2020 23:54:33 -0700 (PDT)
MIME-Version: 1.0
References: <67adbe86-79c9-2fac-3a16-4e768dc2a001@successful.com.au>
 <CALNvYWP1kjafDMAKFQZLFKgzE9O2nmJkrt62Cj+LQcSiZQ8qqA@mail.gmail.com> <e5213d11-4739-8550-4f10-8bc94994d520@successful.com.au>
In-Reply-To: <e5213d11-4739-8550-4f10-8bc94994d520@successful.com.au>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Wed, 26 Aug 2020 08:54:04 +0200
Message-ID: <CAEt6Nwqra4OLe5XLw0HfAsVQhz_5o7J0ospJnUqcU2LVTAPWqg@mail.gmail.com>
Subject: Re: [yocto] Help with yocto poky quick start
To: "Brendan Simon (SEPL)" <brendan@successful.com.au>
Cc: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>, 
	yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Howdy!

Its a long shot, but are you also using WSL2 on the Windows 10 Host?
In that case, downloads into a VirtualBox VM can be corrupted, see
https://www.virtualbox.org/ticket/19695

Greetz

Am Mi., 26. Aug. 2020 um 08:41 Uhr schrieb Brendan Simon (SEPL)
<brendan@successful.com.au>:
>
> Hi Erik,
>
> Nope.  It's ot a HTML file.  It is (they are) archives with a files/dire=
ctories for m4 sources.
>
> $ find -name "m4*"
> ./m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a=
9527d4aea33a1c8a88e80b9c
> ./m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2=
199d30337b5464d8b416e59c
> ./m4-1.4.18.tar.gz_bad-checksum_d8a6ce0c8a97f9f13af9d15d72e4e398daf24ceb=
a4afa4c6925314c39bd81206
> ./m4-1.4.18.tar.gz_bad-checksum_b295109d6ddd3c387b794fb6e4b4dfe31d42991a=
6a537bd92b1a385c2ed3b616
>
> $ find -name "m4*" | xargs file
> ./m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a=
9527d4aea33a1c8a88e80b9c: gzip compressed data, max compression, from Unix,=
 original size 9789440
> ./m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2=
199d30337b5464d8b416e59c: gzip compressed data, max compression, from Unix,=
 original size 9789440
> ./m4-1.4.18.tar.gz_bad-checksum_d8a6ce0c8a97f9f13af9d15d72e4e398daf24ceb=
a4afa4c6925314c39bd81206: gzip compressed data, max compression, from Unix,=
 original size 9789440
> ./m4-1.4.18.tar.gz_bad-checksum_b295109d6ddd3c387b794fb6e4b4dfe31d42991a=
6a537bd92b1a385c2ed3b616: gzip compressed data, max compression, from Unix,=
 original size 9789440
>
> $ tar ztvf m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5=
a5dbbea3a9527d4aea33a1c8a88e80b9c | head
> drwxrwxr-x 0/0               0 2016-12-31 17:37 m4-1.4.18/
> -rw-rw-r-- 0/0          195907 2016-12-31 17:00 m4-1.4.18/ChangeLog-2014
> -rw-rw-r-- 0/0           63687 2016-12-31 16:34 m4-1.4.18/maint.mk
> -rw-rw-r-- 0/0            3912 2016-12-31 17:37 m4-1.4.18/ChangeLog
> -rw-rw-r-- 0/0           69156 2016-12-31 17:25 m4-1.4.18/aclocal.m4
> -rw-rw-r-- 0/0            2590 2016-12-29 15:32 m4-1.4.18/BACKLOG
> drwxrwxr-x 0/0               0 2016-12-31 17:37 m4-1.4.18/tests/
> -rw-rw-r-- 0/0            3126 2016-12-31 08:54 m4-1.4.18/tests/getcwd-l=
gpl.c
> -rw-rw-r-- 0/0            6134 2016-12-31 08:54 m4-1.4.18/tests/test-dup=
2.c
> -rw-rw-r-- 0/0            4998 2016-12-31 08:54 m4-1.4.18/tests/test-dup=
-safer.c
>
> Brendan.
>
> --
>
>
> On 26/08/2020 4:22 pm, Erik Bot=C3=B6 wrote:
>
> Hi Brendan,
>
> Could you inspect the file in
> /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/=
m4-1.4.18.tar.gz
> to see if it is some kind of HTML file stating a download error?
>
> Check the file size, if it's small it's probably an error so open it
> using an editor to see if you get any hints. Many corporate networks
> will require the use of a proxy server, see e.g.
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy for
> hints on that.
>
> Cheers,
> Erik
>
> On Wed, Aug 26, 2020 at 7:36 AM Brendan Simon (SEPL)
> <brendan@successful.com.au> wrote:
>
> Hi,
>
> I'm new to Yocto and am trying to follow the quick start guide to get up=
 and running with poky.  I'm using the latest Dunfel 3.1.2.
>
> I'm running Debian 10 Buster in a VirtualBox VM (guest), on a Windows 10=
 Pro (host).
>
> I'm having trouble with the build fetching files and getting checksum mi=
smatch, however if I download the troublesome file with wget then the check=
sum is correct.
>
> How do I fix this?
>
> Everything seems very complex with Yocto, but maybe that's because I'm n=
ew to it.
>
>
> $ time bitbake core-image-sato
> Loading cache: 100% |###################################################=
############################| Time: 0:00:01Loaded 1312 entries from depende=
ncy cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "1.46.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "qemux86-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "3.1.2"
> TUNE_FEATURES        =3D "m64 core2"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp       =3D "my-yocto-3.1.2:569b1f5d67c57de957e243997c53ec2=
f81dc8dfe"
>
> Initialising tasks: 100% |##############################################=
############################| Time: 0:00:09Checking sstate mirror object av=
ailability: 100% |##################################################| Time:=
 0:36:41Sstate summary: Wanted 2547 Found 0 Missed 2547 Current 228 (0% mat=
ch, 8% complete)
> NOTE: Executing Tasks
> WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local file =
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-=
1.4.18.tar.gz
> Cleaning and trying again.
> WARNING: m4-native-1.4.18-r0 do_fetch: Renaming /home/brendan/SEPL/Proje=
cts/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz to /home/b=
rendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.=
tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d=
8b416e59c
> WARNING: m4-native-1.4.18-r0 do_fetch: Checksum failure encountered with=
 download of https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz - will attempt oth=
er sources if available
> WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local file =
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-=
1.4.18.tar.gz
> Cleaning and trying again.
> WARNING: m4-native-1.4.18-r0 do_fetch: Renaming /home/brendan/SEPL/Proje=
cts/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz to /home/b=
rendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.=
tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8=
a88e80b9c
> ERROR: m4-native-1.4.18-r0 do_fetch: Checksum failure fetching https://f=
tp.gnu.org/gnu/m4/m4-1.4.18.tar.gz
> ERROR: m4-native-1.4.18-r0 do_fetch: Fetcher failure for URL: 'https://f=
tp.gnu.org/gnu/m4/m4-1.4.18.tar.gz'. Checksum mismatch!
> File: '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/dow=
nloads/m4-1.4.18.tar.gz' has md5 checksum 6a289f7da1478d63683eb4ad976c3c99 =
when a077779db287adf4e12a035029002d28 was expected
> File: '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/dow=
nloads/m4-1.4.18.tar.gz' has sha256 checksum 6a1537c79ea613aa70849d8f1f7eeb=
5a5dbbea3a9527d4aea33a1c8a88e80b9c when ab2633921a5cd38e48797bf5521ad259bdc=
4b979078034a3b790d7fec5493fab was expected
> If this change is expected (e.g. you have upgraded to a new version with=
out updating the checksums) then you can use these lines within the recipe:
> SRC_URI[sha256sum] =3D "6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4ae=
a33a1c8a88e80b9c"
> Otherwise you should retry the download and/or check with upstream to de=
termine if the file has become corrupted or--- Starting bitbake server pid =
6121 at 2020-08-25 19:29:32.273325 ---
> Started bitbake server pid 6121
> DEBUG: BBCooker starting 1598398172.2817702
> DEBUG: BBCooker pyinotify1 1598398172.2922668
> DEBUG: BBCooker pyinotify2 1598398172.2926114
> DEBUG: BBCooker pyinotify3 1598398172.2971811
> DEBUG: BBCooker pyinotify complete 1598398172.2975075
> DEBUG: Found bblayers.conf (/home/brendan/SEPL/Projects/Erntec/PMU/yocto=
_trial/poky/build/conf/bblayers.conf)
> DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/p=
oky/meta
> DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/p=
oky/meta-poky
> DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/p=
oky/meta-yocto-bsp
> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta=
/conf/bitbake.conf:755: including conf/abi_version.conf
> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta=
/conf/bitbake.conf:756: including conf/site.conf
> DEBUG: CONF file 'conf/site.conf' not found
> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta=
/conf/bitbake.conf:757: including conf/auto.conf
> DEBUG: CONF file 'conf/auto.conf' not found
> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta=
/conf/bitbake.conf:758: including conf/local.conf
> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta=
/conf/bitbake.conf:759: including conf/multiconfig/default.conf
> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta=
/conf/bitbake.conf:760: including conf/mach...skipping...
>  otherwise unexpectedly modified.
> ERROR: Logfile of failure stored in: /home/brendan/SEPL/Projects/Erntec/=
PMU/yocto_trial/poky/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/l=
og.do_fetch.10440
> ERROR: Task (/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/met=
a/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) failed with exit code '=
1'
> NOTE: Tasks Summary: Attempted 17 tasks of which 16 didn't need to be re=
run and 1 failed.
>
> Summary: 1 task failed:
>   /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-d=
evtools/m4/m4-native_1.4.18.bb:do_fetch
> Summary: There were 5 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.
>
> real    37m7.174s
> user    0m2.521s
> sys     0m1.431s
>
>
> Thanks,
> Brendan.
>
>
>
>=20
