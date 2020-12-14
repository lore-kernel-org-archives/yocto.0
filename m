Subject: Re: curl_easy_perform() failed: Couldn't connect to server #linux #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 14 Dec 2020 00:02:46 -0800
References: <C41178ED-B6CC-47B3-9404-EAD527422F82@gmail.com>
In-Reply-To: <C41178ED-B6CC-47B3-9404-EAD527422F82@gmail.com>
Message-ID: <1317.1607932966528060973@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="u5MO1ygob1hmIgqgkvjr"

--u5MO1ygob1hmIgqgkvjr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem raj,

Regarding zbar, I found the video option was disabled in the .bb file, so =
I had changed it to=C2=A0--enable-video and ran the build, but the build fa=
iled at do_install. Do I Need to make change anything else?

Log:
|=C2=A0 /home/bl-docker/rity/bsp/tmp/hosttools/mkdir -p '/home/bl-docker/r=
ity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/imag=
e/usr/bin'
|=C2=A0 =C2=A0./aarch64-poky-linux-libtool=C2=A0 =C2=A0--mode=3Dinstall /h=
ome/bl-docker/rity/bsp/tmp/hosttools/install -c zbarcam/zbarcam '/home/bl-d=
ocker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-=
r0/image/usr/bin'
|=C2=A0 /home/bl-docker/rity/bsp/tmp/hosttools/install -c -m 644 ../git/do=
c/man/zbarcam.1 '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/=
0.10+gitAUTOINC+67003d2a98-r0/image/usr/share/man/man1'
| /home/bl-docker/rity/bsp/tmp/hosttools/install: cannot stat '../git/doc/=
man/zbarcam.1': No such file or directory
| Makefile:2386: recipe for target 'install-man1' failed
| make[3]: *** [install-man1] Error 1
| make[3]: *** Waiting for unfinished jobs....
| aarch64-poky-linux-libtool: warning: 'zbar/libzbar.la' has not been inst=
alled in '/usr/lib'
| aarch64-poky-linux-libtool: install: /home/bl-docker/rity/bsp/tmp/hostto=
ols/install -c zbarcam/.libs/zbarcam /home/bl-docker/rity/bsp/tmp/work/aarc=
h64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/image/usr/bin/zbarcam
| make[3]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch64-po=
ky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'
| Makefile:2850: recipe for target 'install-am' failed
| make[2]: *** [install-am] Error 2
| make[2]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch64-po=
ky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'
| Makefile:2541: recipe for target 'install-recursive' failed
| make[1]: *** [install-recursive] Error 1
| make[1]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch64-po=
ky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'
| Makefile:2844: recipe for target 'install' failed
| make: *** [install] Error 2
| WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+=
gitAUTOINC+67003d2a98-r0/temp/run.do_install.15449:1 exit 1 from 'exit 1'

Thanks & Regards,
Vijay Rakesh.

--u5MO1ygob1hmIgqgkvjr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem raj,<br /><br />Regarding zbar, I found the video option was disabl=
ed in the .bb file, so I had changed it to&nbsp;--enable-video and ran the =
build, but the build failed at do_install. Do I Need to make change anythin=
g else?&nbsp;<br /><br />Log:<br />
<div>|&nbsp; /home/bl-docker/rity/bsp/tmp/hosttools/mkdir -p '/home/bl-doc=
ker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0=
/image/usr/bin'</div>
<div>|&nbsp; &nbsp;./aarch64-poky-linux-libtool&nbsp; &nbsp;--mode=3Dinsta=
ll /home/bl-docker/rity/bsp/tmp/hosttools/install -c zbarcam/zbarcam '/home=
/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d=
2a98-r0/image/usr/bin'</div>
<div>|&nbsp; /home/bl-docker/rity/bsp/tmp/hosttools/install -c -m 644 ../g=
it/doc/man/zbarcam.1 '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/=
zbar/0.10+gitAUTOINC+67003d2a98-r0/image/usr/share/man/man1'</div>
<div>| /home/bl-docker/rity/bsp/tmp/hosttools/install: cannot stat '../git=
/doc/man/zbarcam.1': No such file or directory</div>
<div>| Makefile:2386: recipe for target 'install-man1' failed</div>
<div>| make[3]: *** [install-man1] Error 1</div>
<div>| make[3]: *** Waiting for unfinished jobs....</div>
<div>| aarch64-poky-linux-libtool: warning: 'zbar/libzbar.la' has not been=
 installed in '/usr/lib'</div>
<div>| aarch64-poky-linux-libtool: install: /home/bl-docker/rity/bsp/tmp/h=
osttools/install -c zbarcam/.libs/zbarcam /home/bl-docker/rity/bsp/tmp/work=
/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/image/usr/bin/zbarca=
m</div>
<div>| make[3]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch=
64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'</div>
<div>| Makefile:2850: recipe for target 'install-am' failed</div>
<div>| make[2]: *** [install-am] Error 2</div>
<div>| make[2]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch=
64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'</div>
<div>| Makefile:2541: recipe for target 'install-recursive' failed</div>
<div>| make[1]: *** [install-recursive] Error 1</div>
<div>| make[1]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch=
64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'</div>
<div>| Makefile:2844: recipe for target 'install' failed</div>
<div>| make: *** [install] Error 2</div>
<div>| WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/=
0.10+gitAUTOINC+67003d2a98-r0/temp/run.do_install.15449:1 exit 1 from 'exit=
 1'<br /><br />Thanks &amp; Regards,<br />Vijay Rakesh.</div>

--u5MO1ygob1hmIgqgkvjr--
