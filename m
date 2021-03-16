Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web12.765.1615919961437012396
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 11:39:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vivaldi.net header.s=default header.b=PEMLQRgv;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 2D3B6BD04B;
	Tue, 16 Mar 2021 18:39:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 2D3B6BD04B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615919959;
	bh=BQ3Ha1b3vC7L5Rrc1aZbL7x+eQA29DV+uvggnBoeXZY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=PEMLQRgvFK1DobpMcXJs6Yd3O6hujXxh1qFllpUUvYdyJeNQlkM4zxnoJVG4kbU73
	 9T/nwZbckFayKx9zPIbGGvECGw+7hWEHnp1eGxjyMn2UOyImImQubK+Z1H4KxSYNPk
	 Jy+ow3R1haU/ueeljiKNrK3OfuHl50H4jFMVBq4tHT5hD5JS8bVlioNrJUPVg6ynoa
	 P5ASyug3mB9El8lwXl5jMDheJ9sIF3foo0NH5HLkYP+ae7PEvmj6h92K8+qcCuDllb
	 auywzNf+3Ga769gC+5jsWofgnPx/9Kg6e3U41tTCQSyIdapmK8kf2buR5GIbouHg+M
	 Ju7j1MucTIshQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 70sNFISvJX9N; Tue, 16 Mar 2021 18:39:15 +0000 (UTC)
Date: Tue, 16 Mar 2021 14:39:14 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 8CDEFBD052
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615919954;
	bh=BQ3Ha1b3vC7L5Rrc1aZbL7x+eQA29DV+uvggnBoeXZY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YH81v++WRW09hw0csnraIUNKQp4X81VGDFAAmGvJ/sqH7QjuXQV1BcalFC6XLiMoW
	 agBiEyaoxMwmwxaBFCzZVz4Un7YrlG3szFZHfTfg8V/P9JKSolBWsTgzCUTCiZYXR3
	 8jJ2sRKvJndliRptlX04u4WVi5wNLakfYB7p+Np8iISoy3EnwhkqvbDSC2do1v7oeH
	 DsJStPGUljG+w/yx1Dp1zwtUGdwn1HvXtTi7b1hGXitjUc+lZ0zNqk0FtUqUaszobG
	 F22hLL6rvb6cES3QfNeJOad+3M7Mj1Z1M47QILvj4Ov7PqaC5jUzJOhOVejHzi7gFn
	 5Ui72jJnIs9YA==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: jchludzinski@vivaldi.net
Cc: Josef Holzmayr <jester@theyoctojester.info>, Nicolas Dechesne
 <nicolas.dechesne@linaro.org>, akuster <akuster808@gmail.com>, Yocto
 <yocto@lists.yoctoproject.org>, "jchludzinski via lists.yoctoproject.org"
 <jchludzinski=vivaldi.net@lists.yoctoproject.org>
Subject: Re: [yocto] Building test code?
In-Reply-To: <166CDD724205027D.27789@lists.yoctoproject.org>
References: <bdb239f7ebf89f1567d5fbd2530fa12c@vivaldi.net>
 <503454c9-ea3c-6ecb-bfdf-eb5fce6feeee@gmail.com>
 <247c426e3db4a7f031aad842303134f1@vivaldi.net>
 <CAP71WjwJmSVGGXCtfChNkoN3u-UjXXCmWbO_1tj2iF+aP2RHPQ@mail.gmail.com>
 <CAEt6NwpHM72t3KLzU=2kNApQxqqZN4FJOsUiZUV+WumDT2qjNg@mail.gmail.com>
 <166CDA589776C94C.8652@lists.yoctoproject.org>
 <166CDD724205027D.27789@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <baac6e467b320e2678f9ee7f668b287b@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_ccf1d8f191ba90e33f2ad3bd97d5b659"

--=_ccf1d8f191ba90e33f2ad3bd97d5b659
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

I tried to build spidev-test using the bitbake recipe:  

spidev-test.bb

I set:=20
ARCH=3Darm=20
BBPATH=20
CROSS_COMPILER=3Darm-linux-gnueabihf-=20
PATH=20

... and then tried to build spidev-test:

$ bitbake -b spidev-test.bb=20
WARNING: Buildfile specified, dependencies will not be handled. If this
is not what you want, do not use -b / --buildfile.
Loading cache: 100%
|################################################################| Time:
0:00:00
Loaded 1433 entries from dependency cache.

Build Configuration:
BB_VERSION           =3D "1.49.2"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "fedora-33"
TARGET_SYS           =3D "x86_64-oe-linux"
MACHINE              =3D "qemux86-64"
DISTRO               =3D "nodistro"
DISTRO_VERSION       =3D "nodistro.0"
TUNE_FEATURES        =3D "m64 core2"
TARGET_FPU           =3D ""
meta                 =3D "master:fa1e1fbc082e82e41ccfeae58af97fe048c9aac7"

Initialising tasks: 100%
|###########################################################| Time:
0:00:00
Sstate summary: Wanted 6 Local 0 Network 0 Missed 6 Current 0 (0% match,
0% complete)
NOTE: Executing Tasks
WARNING: spidev-test-1.0-r0 do_populate_lic: Could not copy license file
/home/fedora/openembedded-core/meta/files/common-licenses/GPL-2.0 to
/home/fedora/openembedded-core/build/tmp-glibc/work/qemux86_64-oe-linux/sp=
idev-test/1.0-r0/license-destdir/spidev-test/GPL-2.0:
[Errno 2] No such file or directory:
'/home/fedora/openembedded-core/meta/files/common-licenses/GPL-2.0'
ERROR: spidev-test-1.0-r0 do_populate_lic: QA Issue: spidev-test:
LIC_FILES_CHKSUM points to an invalid file:
/home/fedora/openembedded-core/meta/files/common-licenses/GPL-2.0
[license-checksum]
ERROR: spidev-test-1.0-r0 do_populate_lic: Fatal QA errors found,
failing task.
ERROR: Logfile of failure stored in:
/home/fedora/openembedded-core/build/tmp-glibc/work/qemux86_64-oe-linux/sp=
idev-test/1.0-r0/temp/log.do_populate_lic.281153
ERROR: Task
(/home/fedora/junk/meta-openembedded/meta-oe/recipes-kernel/spidev-test/sp=
idev-test.bb:do_populate_lic)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3 tasks of which 0 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
=20
/home/fedora/junk/meta-openembedded/meta-oe/recipes-kernel/spidev-test/spi=
dev-test.bb:do_populate_lic
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit
code.

 What's this about licences?=20

---John

On 2021-03-16 11:50, jchludzinski via lists.yoctoproject.org wrote:=20

> I'm 'bitbaking' now.
>=20
> On 2021-03-16 10:53, jchludzinski via lists.yoctoproject.org wrote: Well=
, because time is of the essence, could you give me a little
> assist here and explain how I might build spidev-test using
> OpenEmbedded?
>=20
> THANKS for your help!
> ---John
>=20
> On 2021-03-16 05:58, Josef Holzmayr wrote: Am Di., 16. M=C3=A4rz 2021 um=
 10:49 Uhr schrieb Nicolas Dechesne
> <nicolas.dechesne@linaro.org>:=20
> On Tue, Mar 16, 2021 at 8:07 AM jchludzinski via
> lists.yoctoproject.org
> <jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:=20
> It certainly appears to be BUT I'm not certain what I'm looking at?
>=20
> What is meta-openembedded?
>=20
> Is it a GIT repo that can be cloned and built?=20
> Short answer is yes. The whole Yocto Project / Open Embedded concept
> is based around 'layers. A layer is a repository that contains recipes
> (and/or machine/distro, ..). The Yocto Project releases include a
> couple of common/core layers, but there are plenty of layers out there
> which can be used
> I am sure there are quite a bit of documentation on this topic, but
> perhaps you might want to start with:
> https://docs.yoctoproject.org/overview-manual/yp-intro.html#the-yocto-pr=
oject-layer-model

Or grab a beer and start bingewatching
https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj

</SCNR>

> How do I use this to build spidev-test?
>=20
> ---John
>=20
> On 2021-03-15 19:54, akuster wrote:
>=20
> On 3/15/21 4:11 PM, jchludzinski via lists.yoctoproject.org wrote:
>=20
> I got a piece of code from github:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/=
tools/spi/spidev_test.c
>=20
> I'd like to add it somewhere under /*tools/testing*/ and build it there.
>=20
> Not sure if this is appropriate? If so, how do I go about this?
>=20
> If not, what's the best way to build this?
>=20
> Is this what you are looking for?
> https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-kern=
el/spidev-test/spidev-test.bb
>=20
> -armin


--=_ccf1d8f191ba90e33f2ad3bd97d5b659
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Ge=
neva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">I tried to build spidev-test using the bi=
tbake recipe:&nbsp;</span>
<pre><span style=3D"color: #00afff; font-size: 12pt;"><u>spidev-test.bb</u=
></span></pre>
</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
>&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">I set:</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">ARCH=3Darm</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">BBPATH</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">CROSS_COMPILER=3Darm-linux-gnueabihf-</sp=
an></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">PATH</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><br /><span style=3D"font-size: 12pt;">... and then tried to build spidev-=
test:</span><br />
<pre><span style=3D"font-size: 12pt;"><span style=3D"color: #005fd7;">$ bi=
tbake</span> <span style=3D"color: #00afff;">-b</span> <span style=3D"color=
: #00afff;"><u>spidev-test.bb</u></span>=20
<span style=3D"color: #a2734c;"><strong>WARNING</strong></span>: <span sty=
le=3D"color: #a2734c;">Buildfile specified, dependencies will not be handle=
d. If this is not what you want, do not use -b / --buildfile.</span>
Loading cache: 100% |#####################################################=
###########| Time: 0:00:00
Loaded 1433 entries from dependency cache.

Build Configuration:
BB_VERSION           =3D "1.49.2"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "fedora-33"
TARGET_SYS           =3D "x86_64-oe-linux"
MACHINE              =3D "qemux86-64"
DISTRO               =3D "nodistro"
DISTRO_VERSION       =3D "nodistro.0"
TUNE_FEATURES        =3D "m64 core2"
TARGET_FPU           =3D ""
meta                 =3D "master:fa1e1fbc082e82e41ccfeae58af97fe048c9aac7"

Initialising tasks: 100% |################################################=
###########| Time: 0:00:00
Sstate summary: Wanted 6 Local 0 Network 0 Missed 6 Current 0 (0% match, 0=
% complete)
<strong>NOTE</strong>: Executing Tasks
<span style=3D"color: #a2734c;"><strong>WARNING</strong></span>: <span sty=
le=3D"color: #a2734c;">spidev-test-1.0-r0 do_populate_lic: Could not copy l=
icense file /home/fedora/openembedded-core/meta/files/common-licenses/GPL-2=
.0 to /home/fedora/openembedded-core/build/tmp-glibc/work/qemux86_64-oe-lin=
ux/spidev-test/1.0-r0/license-destdir/spidev-test/GPL-2.0: [Errno 2] No suc=
h file or directory: '/home/fedora/openembedded-core/meta/files/common-lice=
nses/GPL-2.0'</span>
<span style=3D"color: #c01c28;"><strong>ERROR</strong></span>: <span style=
=
=3D"color: #c01c28;">spidev-test-1.0-r0 do_populate_lic: QA Issue: spidev-=
test: LIC_FILES_CHKSUM points to an invalid file: /home/fedora/openembedded=
-core/meta/files/common-licenses/GPL-2.0 [license-checksum]</span>
<span style=3D"color: #c01c28;"><strong>ERROR</strong></span>: <span style=
=
=3D"color: #c01c28;">spidev-test-1.0-r0 do_populate_lic: Fatal QA errors f=
ound, failing task.</span>
<span style=3D"color: #c01c28;"><strong>ERROR</strong></span>: <span style=
=
=3D"color: #c01c28;">Logfile of failure stored in: /home/fedora/openembedd=
ed-core/build/tmp-glibc/work/qemux86_64-oe-linux/spidev-test/1.0-r0/temp/lo=
g.do_populate_lic.281153</span>
<span style=3D"color: #c01c28;"><strong>ERROR</strong></span>: <span style=
=
=3D"color: #c01c28;">Task (/home/fedora/junk/meta-openembedded/meta-oe/rec=
ipes-kernel/spidev-test/spidev-test.bb:do_populate_lic) failed with exit co=
de '1'</span>
<strong>NOTE</strong>: Tasks Summary: Attempted 3 tasks of which 0 didn't =
need to be rerun and 1 failed.

Summary: 1 task failed:
  /home/fedora/junk/meta-openembedded/meta-oe/recipes-kernel/spidev-test/s=
pidev-test.bb:do_populate_lic
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code=
.
</span></pre>
<span style=3D"font-size: 12pt;">What's this about licences?</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
>&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">---John</span><br />&nbsp;<br /><br />On =
2021-03-16 11:50, jchludzinski via lists.yoctoproject.org wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">I'm 'bitbaking' now.<br /><br />On 2021-03-16 10:53, =
jchludzinski via lists.yoctoproject.org wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">Well, because time is of the essence, could you give =
me a little<br />assist here and explain how I might build spidev-test usin=
g<br />OpenEmbedded?<br /><br />THANKS for your help!<br />---John<br /><br=
 /><br />On 2021-03-16 05:58, Josef Holzmayr wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">Am Di., 16. M&auml;rz 2021 um 10:49 Uhr schrieb Nicol=
as Dechesne<br />&lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas=
.dechesne@linaro.org</a>&gt;:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0"><br />On Tue, Mar 16, 2021 at 8:07 AM jchludzinski vi=
a<br />lists.yoctoproject.org<br />&lt;<a href=3D"mailto:jchludzinski=3Dviv=
aldi.net@lists.yoctoproject.org">jchludzinski=3Dvivaldi.net@lists.yoctoproj=
ect.org</a>&gt; wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0"><br />It certainly appears to be BUT I'm not certain =
what I'm looking at?<br /><br />What is meta-openembedded?<br /><br />Is it=
 a GIT repo that can be cloned and built?</blockquote>
<br />Short answer is yes. The whole Yocto Project / Open Embedded concept=
<br />is based around 'layers. A layer is a repository that contains recipe=
s<br />(and/or machine/distro, ..). The Yocto Project releases include a<br=
 />couple of common/core layers, but there are plenty of layers out there<b=
r />which can be used<br />I am sure there are quite a bit of documentation=
 on this topic, but<br />perhaps you might want to start with:<br /><a href=
=
=3D"https://docs.yoctoproject.org/overview-manual/yp-intro.html#the-yocto-=
project-layer-model" target=3D"_blank" rel=3D"noopener noreferrer">https://=
docs.yoctoproject.org/overview-manual/yp-intro.html#the-yocto-project-layer=
-model</a></blockquote>
<br />Or grab a beer and start bingewatching<br /><a href=3D"https://www.y=
outube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj" target=3D"_b=
lank" rel=3D"noopener noreferrer">https://www.youtube.com/playlist?list=3DP=
LD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj</a><br /><br />&lt;/SCNR&gt;<br /><br /><=
/blockquote>
</blockquote>
</blockquote>
<br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0"><br />How do I use this to build spidev-test?<br /><b=
r /><br />---John<br /><br /><br />On 2021-03-15 19:54, akuster wrote:<br /=
><br />On 3/15/21 4:11 PM, jchludzinski via lists.yoctoproject.org wrote:<b=
r /><br />I got a piece of code from github:<br /><a href=3D"https://git.ke=
rnel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/spi/spidev_=
test.c" target=3D"_blank" rel=3D"noopener noreferrer">https://git.kernel.or=
g/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/spi/spidev_test.c<=
/a><br /><br />I'd like to add it somewhere under /*tools/testing*/ and bui=
ld it there.<br /><br />Not sure if this is appropriate? If so, how do I go=
 about this?<br /><br />If not, what's the best way to build this?<br /><br=
 /><br />Is this what you are looking for?<br />&nbsp;<a href=3D"https://gi=
t.openembedded.org/meta-openembedded/tree/meta-oe/recipes-kernel/spidev-tes=
t/spidev-test.bb" target=3D"_blank" rel=3D"noopener noreferrer">https://git=
.openembedded.org/meta-openembedded/tree/meta-oe/recipes-kernel/spidev-test=
/spidev-test.bb</a><br /><br />-armin</blockquote>
</blockquote>
</blockquote>
<br /><br /></blockquote>
<br /><br /></blockquote>
</div>
</body></html>

--=_ccf1d8f191ba90e33f2ad3bd97d5b659--
