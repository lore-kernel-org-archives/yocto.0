Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.54108.1629293830905873321
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 06:37:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PHmmr3RW;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: ivriabtsov@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id x27so4718058lfu.5
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 06:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=rDJWwPrjFxywe6OAgJtLq0VRlokjBvBwWB1l+wNfxoU=;
        b=PHmmr3RWliJRK39boASWasgH2mvSz/au5A+agU7EK8PUnbYj8JbJA+rmzE4m+1ybTG
         PHqgUPDqnOGyFEEbWC7Q+kIlbzi6ED17+x0Ox3Te/qPjSBae+HWpN7cJEcw9itWz+uq4
         xCZnCmjFJqQXE+e9a3g5Y2QXMG5kN3PZvU2i/akpbSofswbx3/hwXPymADjsea4Lmo9+
         HK5+Mn4npIgxnOMMXmnhHnfNXZ82BMKbmEAVDAd2kjhauSM4jFFdd9e/osItkzkASgP0
         may2cmTDgIZR+UfI84qmPQ8RMrJ5fkwdxkyfmco0y8A3bEv180sSgmxCcjMxDiAU4BnT
         qZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rDJWwPrjFxywe6OAgJtLq0VRlokjBvBwWB1l+wNfxoU=;
        b=SfPDskQMV01IhPf1KkBWcZjEuTcng6eRea8IcFjAwHAF8OESSXeZvrzlBFRIQSjXlP
         DJMfzKIqIHLGdfc5wTPWf+uo+QxOIt7ngcYjEXk2gge+++dOn9S3MIljMh5VkbeAD3Qe
         VIlUdsu8AGNfuW/jbxdQEJ9AqqW9GpCYBx91INzYEGdKlqiC5JtDsSancY03Rod+/BiR
         iBmXZarNLixRyD9ZFMAJwoR5dn/Fc/1NIaCxi3LnGAdbc83SucB54JIGdzTjV/PaJMuX
         ORw0IWfoyUcgOmzqCV4IWIE2ld8KMGksloQkZ+s9Jdh26XFPrM10HO9ytBN/rOfnZ/e8
         cMDg==
X-Gm-Message-State: AOAM532EySnAmTIUfoSVsHE9lOIo96uv7EqE29SU8zkjVTyTYNGvsqjL
	/nEQL9YzOOBrvACxv/zqCaOVrd405lmmAo1gy0iIbV2ZkNg=
X-Google-Smtp-Source: ABdhPJxGAXquE5YxgYXEN7QagVBraDbKXN0/u49wmloRtW9XkVysDgmIFb+CA0Wq3STyzFWaXF1z4jm6+qQyz+fQri4=
X-Received: by 2002:a19:ac4c:: with SMTP id r12mr6209005lfc.217.1629293828850;
 Wed, 18 Aug 2021 06:37:08 -0700 (PDT)
MIME-Version: 1.0
From: "Ivan Riabtsov" <ivriabtsov@gmail.com>
Date: Wed, 18 Aug 2021 16:36:58 +0300
Message-ID: <CAKAnv4FZfREBAcFz0ivXm54uHJ_W0VDPqiHk4Udo6AqkXaDJXQ@mail.gmail.com>
Subject: building additional kenrel module in yocto, ERROR: no makefile found
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

help please, I meet with a problem with assembling the kernel module,
created a new layer:

$ ll ~/work/yocto/sources/meta-gobinet
total 28K
drwxr-xr-x  5 ivr ivr 4.0K Aug 18 11:27 .
drwxr-xr-x 12 ivr ivr 4.0K Aug 18 11:26 ..
drwxr-xr-x  2 ivr ivr 4.0K Aug 18 11:26 conf
-rw-r--r--  1 ivr ivr 1.1K Aug 18 11:26 COPYING.MIT
-rw-r--r--  1 ivr ivr  801 Aug 18 11:26 README
drwxr-xr-x  3 ivr ivr 4.0K Aug 18 11:26 recipes-example
drwxr-xr-x  3 ivr ivr 4.0K Aug 18 11:28 recipes-gobinet

and i was create recipe:

$ cat ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobinet_1.bb
SUMMARY = "gobinet module"
LICENSE = "CLOSED"
inherit module
SRC_URI = "file://gobinet.tar.xz;md5sum=13b5f20214a3925eb4be3b831b62612f"
#SRC_URI += " file://0001_gobinet_makefile.patch;md5sum=1261df573e1b91177954f6190a12c7b1"

and i put gobinet.tar.xz in:

$ ll ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobinet/
total 44K
drwxr-xr-x 2 ivr ivr 4.0K Aug 18 15:28 .
drwxr-xr-x 3 ivr ivr 4.0K Aug 18 15:31 ..
-rw-r--r-- 1 ivr ivr  30K Aug 18 15:31 gobinet.tar.xz

content of gobinet.tar.xz is:

tar -xf gobinet.tar.xz
ivr@home-machine:~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobinet
$ ll gobinet
total 244K
drwxr-xr-x 2 ivr ivr 4.0K Aug 17 21:32 .
drwxr-xr-x 3 ivr ivr 4.0K Aug 18 15:39 ..
-rw-r--r-- 1 ivr ivr 3.1K Aug 17 21:32 GobiNetworkManager.h
-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 GobiUSBNet.c
-rw-r--r-- 1 ivr ivr  131 Aug 17 21:32 Kconfig
-rw-r--r-- 1 ivr ivr  324 Aug 17 21:32 kernel-deploy-guide
-rw-r--r-- 1 ivr ivr  326 Aug 17 21:32 Makefile
-rwxr-xr-x 1 ivr ivr  127 Aug 17 21:32 Makefile.kernel
-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 QMI.c
-rw-r--r-- 1 ivr ivr  97K Aug 17 21:32 QMIDevice.c
-rw-r--r-- 1 ivr ivr 9.8K Aug 17 21:32 QMIDevice.h
-rw-r--r-- 1 ivr ivr 8.7K Aug 17 21:32 QMI.h
-rw-r--r-- 1 ivr ivr 2.9K Aug 17 21:32 Readme.txt
-rw-r--r-- 1 ivr ivr  13K Aug 17 21:32 Structs.h

but i have error:

ERROR: gobinet-1-r0 do_compile: oe_runmake failed
ERROR: gobinet-1-r0 do_compile: Execution of
'/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/gobinet/1-r0/temp/run.do_compile.1734076'
failed with exit code 1:
make: *** No targets specified and no makefile found.  Stop.
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in:
/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/gobinet/1-r0/temp/log.do_compile.1734076

that there is no Makefile but Makefile is present. tell me what is the
problem? Please
