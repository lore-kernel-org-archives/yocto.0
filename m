Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.54405.1629295224522539354
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 07:00:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.196, mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 5B9DFE000C;
	Wed, 18 Aug 2021 14:00:21 +0000 (UTC)
Date: Wed, 18 Aug 2021 16:00:20 +0200
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org, Ivan Riabtsov <ivriabtsov@gmail.com>
Subject: Re: [yocto] building additional kenrel module in yocto, ERROR: no makefile found
In-Reply-To: <CAKAnv4FZfREBAcFz0ivXm54uHJ_W0VDPqiHk4Udo6AqkXaDJXQ@mail.gmail.com>
References: <CAKAnv4FZfREBAcFz0ivXm54uHJ_W0VDPqiHk4Udo6AqkXaDJXQ@mail.gmail.com>
Message-ID: <F6C5768A-3C6B-49C4-BA56-F3A4D66E28F1@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Ivan,

On August 18, 2021 3:36:58 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@gmail=
=2Ecom> wrote:
>help please, I meet with a problem with assembling the kernel module,
>created a new layer:
>
>$ ll ~/work/yocto/sources/meta-gobinet
>total 28K
>drwxr-xr-x  5 ivr ivr 4=2E0K Aug 18 11:27 =2E
>drwxr-xr-x 12 ivr ivr 4=2E0K Aug 18 11:26 =2E=2E
>drwxr-xr-x  2 ivr ivr 4=2E0K Aug 18 11:26 conf
>-rw-r--r--  1 ivr ivr 1=2E1K Aug 18 11:26 COPYING=2EMIT
>-rw-r--r--  1 ivr ivr  801 Aug 18 11:26 README
>drwxr-xr-x  3 ivr ivr 4=2E0K Aug 18 11:26 recipes-example
>drwxr-xr-x  3 ivr ivr 4=2E0K Aug 18 11:28 recipes-gobinet
>
>and i was create recipe:
>
>$ cat ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobinet_1=
=2Ebb
>SUMMARY =3D "gobinet module"
>LICENSE =3D "CLOSED"
>inherit module
>SRC_URI =3D "file://gobinet=2Etar=2Exz;md5sum=3D13b5f20214a3925eb4be3b831=
b62612f"
>#SRC_URI +=3D " file://0001_gobinet_makefile=2Epatch;md5sum=3D1261df573e1=
b91177954f6190a12c7b1"
>
>and i put gobinet=2Etar=2Exz in:
>
>$ ll ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobinet/
>total 44K
>drwxr-xr-x 2 ivr ivr 4=2E0K Aug 18 15:28 =2E
>drwxr-xr-x 3 ivr ivr 4=2E0K Aug 18 15:31 =2E=2E
>-rw-r--r-- 1 ivr ivr  30K Aug 18 15:31 gobinet=2Etar=2Exz
>
>content of gobinet=2Etar=2Exz is:
>
>tar -xf gobinet=2Etar=2Exz
>ivr@home-machine:~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobine=
t/gobinet
>$ ll gobinet
>total 244K
>drwxr-xr-x 2 ivr ivr 4=2E0K Aug 17 21:32 =2E
>drwxr-xr-x 3 ivr ivr 4=2E0K Aug 18 15:39 =2E=2E
>-rw-r--r-- 1 ivr ivr 3=2E1K Aug 17 21:32 GobiNetworkManager=2Eh
>-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 GobiUSBNet=2Ec
>-rw-r--r-- 1 ivr ivr  131 Aug 17 21:32 Kconfig
>-rw-r--r-- 1 ivr ivr  324 Aug 17 21:32 kernel-deploy-guide
>-rw-r--r-- 1 ivr ivr  326 Aug 17 21:32 Makefile
>-rwxr-xr-x 1 ivr ivr  127 Aug 17 21:32 Makefile=2Ekernel
>-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 QMI=2Ec
>-rw-r--r-- 1 ivr ivr  97K Aug 17 21:32 QMIDevice=2Ec
>-rw-r--r-- 1 ivr ivr 9=2E8K Aug 17 21:32 QMIDevice=2Eh
>-rw-r--r-- 1 ivr ivr 8=2E7K Aug 17 21:32 QMI=2Eh
>-rw-r--r-- 1 ivr ivr 2=2E9K Aug 17 21:32 Readme=2Etxt
>-rw-r--r-- 1 ivr ivr  13K Aug 17 21:32 Structs=2Eh
>
>but i have error:
>
>ERROR: gobinet-1-r0 do_compile: oe_runmake failed
>ERROR: gobinet-1-r0 do_compile: Execution of
>'/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux=
-gnueabi/gobinet/1-r0/temp/run=2Edo_compile=2E1734076'
>failed with exit code 1:
>make: *** No targets specified and no makefile found=2E  Stop=2E
>WARNING: exit code 1 from a shell command=2E
>
>ERROR: Logfile of failure stored in:
>/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-=
gnueabi/gobinet/1-r0/temp/log=2Edo_compile=2E1734076
>
>that there is no Makefile but Makefile is present=2E tell me what is the
>problem? Please

Because do_compile runs from ${S} which by default is set to ${WORKDIR}/${=
PN}-${PV} (might be BPN instead of PN but does not matter)=2E Basically it =
expects to be run from ${WORKDIR}/gobinet-1/=2E

However the content of the tar=2Exz is extracted directly within ${WORKDIR=
}=2E So it's looking for a Makefile in ${WORKDIR}/gobinet-1/ but it's in ${=
WORKDIR}=2E

Two possible ways to do it:
1=2E Set S to ${WORKDIR}
2=2E Put all your files in a directory named gobinet-1  and make a tarball=
 of that directory=2E

Cheers,
Quentin
