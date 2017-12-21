Return-Path: <matthias.schoepfer@identpro.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECA9AE00E27; Thu, 21 Dec 2017 09:15:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Dec 2017 09:14:46 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E38ABE00EB0
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 09:14:46 -0800 (PST)
Received: from SBS-IDENTPRO.intranet.identpro.net ([176.95.137.65]) by
	mrelayeu.kundenserver.de (mreue003 [212.227.15.167]) with ESMTPSA
	(Nemesis) id 0MaoDm-1egq322DsI-00KQky for <yocto@yoctoproject.org>;
	Thu, 21 Dec 2017 18:09:42 +0100
Received: from SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) by
	SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) with mapi id
	14.01.0438.000; Thu, 21 Dec 2017 18:09:41 +0100
From: =?Windows-1252?Q?Matthias_Sch=F6pfer?= <matthias.schoepfer@identpro.de>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: [yocto] libgfortran or cross compiling a fortran application
Thread-Index: AdN5fKLYee7rnJs5SmOgIVemj5BdSA==
Date: Thu, 21 Dec 2017 17:09:40 +0000
Message-ID: <C44683C49AD51C4AB28DA746E48E3587F5E537@SBS-IDENTPRO.intranet.identpro.net>
References: <C44683C49AD51C4AB28DA746E48E3587F5D7A2@SBS-IDENTPRO.intranet.identpro.net>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [176.95.137.65]
MIME-Version: 1.0
X-Provags-ID: V03:K0:1cAf94iFJahS4Uv0H0QE4zYDUHVYSC3NQP4Zs78Gp/tkcvzHNV3
	IVlTmfZ52G3jPNhmA6+irZECiFCk8J9IvsXHFq5PEDPlU/ZsSpg2SYXjO75MHQeMz1Os8/3
	yqFvpUjXo48HoaqOm5Y6FqpENk2SEvgkcVfDfyP+SqpTRtbuszOlVgFcaH2AwNZG798Fb/l
	sCjdAk2fvcrp17vqis5TQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:XmQhz9iZyc8=:K5c+Y9miqcw2pGnqGalFUw
	+6PVlUezL/kOvhgySx9QtKYadYI7vnzEfRf8BUqouRhN2h3GBZf9csXCFegjRUzv4wH0IdKdg
	BxQPdK3Z/YsG1k+JRMMGyasIFOykAe9rAQOjqCMghXG4CZYkRg3Tz+HfsGTeGtuulvSBsTcUc
	b02mp9hipTB4IWO4H7bTOrWDwac0bGFg9gKvNO8ZwiSFeAeQCD8fxZFplsd7QRl54C0fca+4k
	zMBdVI12k/xH1LCS8V95t7bUF9JoypmpXPRsRObPJUIg+2OVCY+QdgnlkPHxVWXzbeeCAGI9I
	fktK5IbhbJFprVRrp/HlTkxNcbGwHdUUTNYhwh2VJEvDlpRAfiFY02xc85frhkWg07i1eTZks
	nQr5y5Vo/djIb74c/TQ/Mpoc6HHa9o8w7Bu/RtzRjMeUNPUxBEWpupOyz0/IrQk27/Rfpc263
	PB3d9+CVWZWuNqJhI6XAj4T7trRdwG4QP4mZfEgNFDLAeX+lH/k+c+AVjEAq2vAqoCb7jOaDH
	vzZ3FctEK0HMEDTkMqN/0MJFMsvMwP3iRlOZ9pL1vyxHogjSf1Eq244qD8lwXr/LyZ8xQ1Gsh
	FHwGlpsFcSEFdzqQC6HYHSS6N3YOSC3ZooLpHKwIF+1cR7s7Ttf1+HvxF6aZ7XMHirqxeM10Z
	AYjrbvW1aJKnh6xnMckCdTJmQKxoTJk6+OodoaNbeL879OsKrJbp4NBxJ6cJwvil3utJ/nZ1v
	/FLE9QgzvnRqFvjuio6sVlgvRqOA6RXbmt0oWOF2qf90zhOIPFVsSypQ7xE=
Subject: Re: libgfortran or cross compiling a fortran application
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Dec 2017 17:15:14 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi!=0A=
=0A=
Just in case, someone (else) stumbles across this:=0A=
=0A=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12394=0A=
http://cgit.openembedded.org/openembedded-core/commit/?id=3D2c2f20a9756ecca=
fac776e45e319af7666e6da96=0A=
=0A=
fixes the issue on rocko for me.=0A=
=0A=
Regards,=0A=
=0A=
	Matthias=0A=
=0A=
On 12/20/2017 11:30 AM, Matthias Sch=F6pfer wrote:=0A=
> Hi there,=0A=
> =0A=
> I am trying to cross compile a fortran library (lapack), which fails=0A=
> because it cannot find libgfortran.=0A=
> =0A=
> So I am trying to build libgfortran. I added:=0A=
> =0A=
> FORTRAN_forcevariable =3D ",fortran"=0A=
> =0A=
> to enable support for fortran cross compile in local conf. Anyhow,=0A=
> bitbake libgfortran still fails:=0A=
> =0A=
> | /bin/sh ./libtool  --tag=3DCC   --mode=3Dcompile x86_64-idp-linux-gcc=
=0A=
> -m64 -march=3Dcore2 -mtune=3Dcore2 -msse3 -mfpmath=3Dsse=0A=
> --sysroot=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp=
-linux/libgfortran/7.2.0-r0/recipe-sysroot=0A=
> -DHAVE_CONFIG_H -I.=0A=
> -I../../../../../../../../work-shared/gcc-7.2.0-r0/gcc-7.2.0/libgfortran=
=0A=
>  -iquote../../../../../../../../work-shared/gcc-7.2.0-r0/gcc-7.2.0/libgfo=
rtran/io -I../../../../../../../../work-shared/gcc-7.2.0-r0/gcc-7.2.0/libgf=
ortran/../gcc -I../../../../../../../../work-shared/gcc-7.2.0-r0/gcc-7.2.0/=
libgfortran/../gcc/config  -I/home/mschoepf/identpro/yocto/ros-devel/tmp/wo=
rk/core2-64-idp-linux/libgfortran/7.2.0-r0/gcc-7.2.0/build.x86_64-idp-linux=
.x86_64-idp-linux/x86_64-idp-linux/libgfortran/../.././gcc -I../../../../..=
/../../../work-shared/gcc-7.2.0-r0/gcc-7.2.0/libgfortran/../libgcc -I/home/=
mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/libgfortran/7=
.2.0-r0/gcc-7.2.0/build.x86_64-idp-linux.x86_64-idp-linux/x86_64-idp-linux/=
libgfortran/../libgcc -I../../../../../../../../work-shared/gcc-7.2.0-r0/gc=
c-7.2.0/libgfortran/../libbacktrace -I/home/mschoepf/identpro/yocto/ros-dev=
el/tmp/work/core2-64-idp-linux/libgfortran/7.2.0-r0/gcc-7.2.0/build.x86_64-=
idp-linux.x86_64-idp-linux/x86_64-idp-linux/libgfortran/../libbacktrace -I.=
./libbacktrace  -std=3Dgnu11 -Wall -Wstrict-prototypes -Wmissing-prototypes=
 -Wold-style-definition -Wextra -Wwrite-strings -Werror=3Dimplicit-function=
-declaration -Werror=3Dvla -fcx-fortran-rules -ffunction-sections -fdata-se=
ctions   -std=3Dgnu11  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-=
prefix-map=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-=
linux/libgfortran/7.2.0-r0=3D/usr/src/debug/libgfortran/7.2.0-r0 -fdebug-pr=
efix-map=3D/home/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-li=
nux/libgfortran/7.2.0-r0/recipe-sysroot-native=3D -fdebug-prefix-map=3D/hom=
e/mschoepf/identpro/yocto/ros-devel/tmp/work/core2-64-idp-linux/libgfortran=
/7.2.0-r0/recipe-sysroot=3D  -Wunknown-pragmas -c -o main.lo `test -f 'runt=
ime/main.c' || echo '../../../../../../../../work-shared/gcc-7.2.0-r0/gcc-7=
.2.0/libgfortran/'`runtime/main.c=0A=
> |=0A=
> ../../../../../../../../work-shared/gcc-7.2.0-r0/gcc-7.2.0/libgfortran/ru=
ntime/backtrace.c:36:10:=0A=
> fatal error: backtrace-supported.h: No such file or directory=0A=
> |  #include "backtrace-supported.h"=0A=
> |           ^~~~~~~~~~~~~~~~~~~~~~~=0A=
> | compilation terminated.=0A=
> =0A=
> Any help, hints and wild guesses are welcome.=0A=
> =0A=
> Regards,=0A=
> =0A=
> 	Matthias=0A=
> =0A=
=0A=
=0A=
-- =0A=
Dr.-Ing. Matthias Sch=F6pfer=0A=
=0A=
Softwareentwicklung=0A=
=0A=
____________________________________=0A=
=0A=
IdentPro GmbH=0A=
Camp-Spich-Str. 4=0A=
53842 Troisdorf=0A=
=0A=
Tel:   +49 (0)2241 / 866 392 46=0A=
Fax:   +49 (0)2241 / 866 392 99=0A=
eMail: matthias.schoepfer@identpro.de=0A=
=0A=
http://www.identpro.de=0A=
=0A=
identplus=AE =96 Das 3D Staplerleitsystem mit enormen Sparpotenzial: z. B.=
=0A=
=FCber 67.000 EUR pro Jahr bei 500 Transporten t=E4glich! Berechnen Sie das=
=0A=
Einsparpotenzial f=FCr Ihr Lager mit dem identplus=AE Potenzialrechner.=0A=
=0A=
identplus=AE live erleben: Vereinbaren Sie jetzt einen Termin!=0A=
=0A=
---------------------------------=0A=
IdentPro GmbH=0A=
Member of Dr. Wack Holding GmbH & Co.KG=0A=
Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg=0A=
Gesch=E4ftsf=FChrer: Michael Wack=0A=
Umsatzsteuer-ID-Nr.: DE 254 824 945=0A=
WEEE-Reg.-Nr. DE 79026890=0A=

