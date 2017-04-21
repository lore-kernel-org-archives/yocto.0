Return-Path: <dbensoussan@synapticon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 220BFE0095F; Fri, 21 Apr 2017 09:55:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f180.google.com (mail-yb0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC337E0074B
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:55:13 -0700 (PDT)
Received: by mail-yb0-f180.google.com with SMTP id 11so43968520ybw.1
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=synapticon-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=inJTYLN2MFq5gF74jLp+hQUDkUm6lC8NS6mqMtGfWdo=;
	b=p9tO4aZ++g+RRBixAFPcbk19H/+cMeEH82FzpcnIFEIjHGNrHl5GOvFsLp4STki3XD
	VoK2uWeZEO4OXkO59knBAsLLSCvg85TvXks9wkCP/6vD/V8gS1GIJcv5rWVCQ8qsA/9M
	wLM7c1DyaufufjUmZtBZEcJGseERR0Uqd2x3xt8fjmwCx8mxQmCXfp2QBY2c4fJ8UiTh
	/B8L3VFDpBCN+tuP7JuQEdWApPO+DcljEv1vZBly4ZPY3b4qnUApA7VgX6cdAprqRpTQ
	Tg14h85haGJ9J0dqva1h1ii1p0SutFIshOx7N3i7RaAYcWj54uoBFy0s4H6Pi0MRqiH0
	sgrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=inJTYLN2MFq5gF74jLp+hQUDkUm6lC8NS6mqMtGfWdo=;
	b=B5zHS9D7NwwUzuAvntewpuPjeixs4e/Y3ZC936s8PS25nwgxLa63j34abkLpVvPQa+
	JLZ2r3eDv60Y0eYu+6ULbDfjUOpApkqW0mxvJFtl747eZEPWPdIgwPAmrzXbVojx9kA7
	nNnzp2qz0kOBhwzUo+Gqr1vhFXiHFt2TXcQ1kAMnQOQCPSnQdPxHs4Z4ibr0tML33Fp6
	jN7z1jdTMdZGkgywgPlsfiUZA+Tcc/gcYnl5HZkpuLRIAZJ3ri+0P4P4BOPXY1MtM09e
	Ij2iOZO+i73CMoqO1+SE8kegL2G9aqVqX7s7Duyd99Rfwn/ZLoPrhNLzOtSSoseYWofy
	8QOg==
X-Gm-Message-State: AN3rC/7WhKysOuBGdEfztglokAbxUt2tMR4LTZKdAE/2MlEhAAxsp+e1
	3lHJDG8BBfB+rasVHYMrZ1hWnCbuMWED
X-Received: by 10.37.66.3 with SMTP id p3mr8299689yba.132.1492793712522; Fri,
	21 Apr 2017 09:55:12 -0700 (PDT)
MIME-Version: 1.0
References: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
	<CAJTo0LaKzeHPpizRCSnSZiWnihYRTtns8aeBtCFt495mH61ukA@mail.gmail.com>
In-Reply-To: <CAJTo0LaKzeHPpizRCSnSZiWnihYRTtns8aeBtCFt495mH61ukA@mail.gmail.com>
From: David Bensoussan <dbensoussan@synapticon.com>
Date: Fri, 21 Apr 2017 16:55:02 +0000
Message-ID: <CACDGP4HsGMphBWOQ8WV7vH9Nb_ydwsXHZf=HTjNA7aUKB6KFKA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake core-image-base -c do_populate_sdk fails with glibc (unmet dependencies)
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
X-List-Received-Date: Fri, 21 Apr 2017 16:55:15 -0000
Content-Type: multipart/alternative; boundary=001a11c04eb4f553ad054db01ed4

--001a11c04eb4f553ad054db01ed4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes sure. Here it is:

DISTRO ?=3D "poky"
PACKAGE_CLASSES ?=3D "package_deb"

EXTRA_IMAGE_FEATURES =3D "debug-tweaks package-management tools-profile"

PATCHRESOLVE =3D "noop"

BB_DISKMON_DIRS =3D "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K"

CONF_VERSION =3D "0.8"

BB_NUMBER_THREADS ?=3D "8"
PARALLEL_MAKE ?=3D "-j 8"
INCOMPATIBLE_LICENSE =3D "libav commercial CC-BY-SA-2.0 CC-BY-SA-3.0
CC-BY-SA-4.0"

MACHINE ?=3D "raspberrypi3"

FORTRAN_forcevariable =3D ",fortran"

RM_OLD_IMAGE =3D "1"

GCCVERSION ?=3D "5.4.%"
PREFERRED_VERSION_gcc ?=3D "${GCCVERSION}"
PREFERRED_VERSION_gcc-cross ?=3D "${GCCVERSION}"
PREFERRED_VERSION_gcc-cross-initial ?=3D "${GCCVERSION}"
PREFERRED_VERSION_gcc-cross-intermediate ?=3D "${GCCVERSION}"
PREFERRED_VERSION_gcc-cross-canadian ?=3D "${GCCVERSION}"
PREFERRED_VERSION_gcc-runtime ?=3D "${GCCVERSION}"
PREFERRED_VERSION_libgfortran ?=3D "${GCCVERSION}"
PREFERRED_VERSION_linux-raspberrypi =3D "4.9.%"

DISTRO_FEATURES_remove =3D "bluetooth nfc x11 wayland 3g"
IMAGE_INSTALL_remove =3D "bind ltrace"

IMAGE_LINGUAS =3D "en-us"
PREFERRED_PROVIDER_virtual/kernel=3D "linux-raspberrypi"



Thanks

On Fri, 21 Apr 2017 at 18:45 Burton, Ross <ross.burton@intel.com> wrote:

>
> On 21 April 2017 at 12:37, David Bensoussan <dbensoussan@synapticon.com>
> wrote:
>
>> DISTRO_FEATURES_LIBC =3D "libc-locales libc-locale-code"
>>
>
> Unless you really need to, don't fiddle stuff like this.  Can you share
> your local.conf?
>
> Ross
>
--=20

*David bensoussan*
Roboticist / Embedded Software Engineer
------------------------------

*Synapticon* | Robotic Control Systems
Mobile: 015779804515
Fax: +49 7031 / 30 478 -99

*synapticon.com* <https://www.synapticon.com/> | Twitter
<https://twitter.com/#!/synapticon_co> | Facebook
<https://fb.com/Synapticon>

Synapticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich, Germany
Secretary +49 7031 / 30 478 -0 | Managing Director: Nikolai Ensslen
Amtsgericht Stuttgart HRB 756076 | USt-ID DE271647127

This message and any files transmitted with it are confidential and
intended solely for the use of the individual or entity to whom they are
addressed. Please notify the sender immediately if you have received this
e-mail by mistake and delete it from your system.

--001a11c04eb4f553ad054db01ed4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes sure. Here it is:<br><br><div>DISTRO ?=3D &quot;poky&q=
uot;</div><div>PACKAGE_CLASSES ?=3D &quot;package_deb&quot;</div><div><br><=
/div><div>EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks package-management to=
ols-profile&quot;</div><div><br></div><div>PATCHRESOLVE =3D &quot;noop&quot=
;</div><div><br></div><div>BB_DISKMON_DIRS =3D &quot;\</div><div>=C2=A0 =C2=
=A0 STOPTASKS,${TMPDIR},1G,100K \</div><div>=C2=A0 =C2=A0 STOPTASKS,${DL_DI=
R},1G,100K \</div><div>=C2=A0 =C2=A0 STOPTASKS,${SSTATE_DIR},1G,100K \</div=
><div>=C2=A0 =C2=A0 ABORT,${TMPDIR},100M,1K \</div><div>=C2=A0 =C2=A0 ABORT=
,${DL_DIR},100M,1K \</div><div>=C2=A0 =C2=A0 ABORT,${SSTATE_DIR},100M,1K&qu=
ot;=C2=A0</div><div>=C2=A0 =C2=A0=C2=A0</div><div>CONF_VERSION =3D &quot;0.=
8&quot;</div><div><br></div><div>BB_NUMBER_THREADS ?=3D &quot;8&quot;</div>=
<div>PARALLEL_MAKE ?=3D &quot;-j 8&quot;</div><div>INCOMPATIBLE_LICENSE =3D=
 &quot;libav commercial CC-BY-SA-2.0 CC-BY-SA-3.0 CC-BY-SA-4.0&quot;</div><=
div><br></div><div>MACHINE ?=3D &quot;raspberrypi3&quot;</div><div><br></di=
v><div>FORTRAN_forcevariable =3D &quot;,fortran&quot;</div><div><br></div><=
div>RM_OLD_IMAGE =3D &quot;1&quot;</div><div><br></div><div>GCCVERSION ?=3D=
 &quot;5.4.%&quot;</div><div>PREFERRED_VERSION_gcc ?=3D &quot;${GCCVERSION}=
&quot;</div><div>PREFERRED_VERSION_gcc-cross ?=3D &quot;${GCCVERSION}&quot;=
</div><div>PREFERRED_VERSION_gcc-cross-initial ?=3D &quot;${GCCVERSION}&quo=
t;</div><div>PREFERRED_VERSION_gcc-cross-intermediate ?=3D &quot;${GCCVERSI=
ON}&quot;</div><div>PREFERRED_VERSION_gcc-cross-canadian ?=3D &quot;${GCCVE=
RSION}&quot;</div><div>PREFERRED_VERSION_gcc-runtime ?=3D &quot;${GCCVERSIO=
N}&quot;</div><div>PREFERRED_VERSION_libgfortran ?=3D &quot;${GCCVERSION}&q=
uot;</div><div>PREFERRED_VERSION_linux-raspberrypi =3D &quot;4.9.%&quot;</d=
iv><div><br></div><div>DISTRO_FEATURES_remove =3D &quot;bluetooth nfc x11 w=
ayland 3g&quot;</div><div>IMAGE_INSTALL_remove =3D &quot;bind ltrace&quot;<=
/div><div><br></div><div>IMAGE_LINGUAS =3D &quot;en-us&quot;</div><div>PREF=
ERRED_PROVIDER_virtual/kernel=3D &quot;linux-raspberrypi&quot;</div><div><b=
r><br><br>Thanks</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
>On Fri, 21 Apr 2017 at 18:45 Burton, Ross &lt;<a href=3D"mailto:ross.burto=
n@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 21 April 2017 at 12:37, David Bensoussan <span dir=3D"l=
tr">&lt;<a href=3D"mailto:dbensoussan@synapticon.com" target=3D"_blank">dbe=
nsoussan@synapticon.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div>DISTRO_FEATURES_LIBC =3D &quot;libc-locales libc-locale-code&quot=
;<br></div></blockquote></div><br>Unless you really need to, don&#39;t fidd=
le stuff like this.=C2=A0 Can you share your local.conf?</div></div><div di=
r=3D"ltr"><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div></blockquote></div><div dir=3D"ltr">-- <br></div><div data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><p id=3D"inbox-inbox-person-n=
ame" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-serif;=
font-size:13.3333px;color:rgb(0,0,0);padding:0px;margin:1em 0px"><strong st=
yle=3D"box-sizing:border-box">David bensoussan</strong><br style=3D"box-siz=
ing:border-box">Roboticist / Embedded Software Engineer</p><hr style=3D"box=
-sizing:border-box;margin:0px;padding:0px;height:1px;background-image:initi=
al;background-position:initial;background-size:initial;background-repeat:in=
itial;background-origin:initial;background-clip:initial;background-color:rg=
b(229,27,65);border:none;color:rgb(17,17,17);font-family:arial,helvetica,sa=
ns-serif;font-size:13.3333px"><p id=3D"inbox-inbox-tag-line" style=3D"box-s=
izing:border-box;font-family:arial,helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0);padding:0px;margin:1em 0px"><strong style=3D"box-sizing:border=
-box">Synapticon</strong><span class=3D"inbox-inbox-Apple-converted-space">=
=C2=A0</span>| Robotic Control Systems</p><table cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-s=
erif;font-size:13.3333px;color:rgb(17,17,17);padding:0px"><tbody style=3D"b=
ox-sizing:border-box"><tr style=3D"box-sizing:border-box"><td style=3D"box-=
sizing:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">Mobile:</td><t=
d style=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0px"=
>015779804515</td></tr><tr style=3D"box-sizing:border-box"><td style=3D"box=
-sizing:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">Fax:</td><td =
style=3D"box-sizing:border-box;color:rgb(0,0,0);padding:0px 15px 3px 0px">+=
49 7031 / 30 478 -99</td></tr></tbody></table><p style=3D"box-sizing:border=
-box;font-family:arial,helvetica,sans-serif;font-size:13.3333px;color:rgb(0=
,0,0);padding:0px;margin:1em 0px"><a href=3D"https://www.synapticon.com/" s=
tyle=3D"box-sizing:border-box;color:rgb(1,81,154)"><strong style=3D"box-siz=
ing:border-box">synapticon.com</strong></a><span class=3D"inbox-inbox-Apple=
-converted-space">=C2=A0</span>|<span class=3D"inbox-inbox-Apple-converted-=
space">=C2=A0</span><a href=3D"https://twitter.com/#!/synapticon_co" style=
=3D"box-sizing:border-box;color:rgb(1,81,154)">Twitter</a><span class=3D"in=
box-inbox-Apple-converted-space">=C2=A0</span>|<span class=3D"inbox-inbox-A=
pple-converted-space">=C2=A0</span><a href=3D"https://fb.com/Synapticon" st=
yle=3D"box-sizing:border-box;color:rgb(1,81,154)">Facebook</a></p><p id=3D"=
inbox-inbox-address" style=3D"box-sizing:border-box;font-family:arial,helve=
tica,sans-serif;font-size:13.3333px;color:rgb(153,153,153);padding:0px;marg=
in:1em 0px">Synapticon GmbH | Daimlerstra=C3=9Fe 26 | 71101 Sch=C3=B6naich,=
 Germany<span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span><br =
style=3D"box-sizing:border-box">Secretary +49 7031 / 30 478 -0 | Managing D=
irector: Nikolai Ensslen<span class=3D"inbox-inbox-Apple-converted-space">=
=C2=A0</span><br style=3D"box-sizing:border-box">Amtsgericht Stuttgart HRB =
756076 | USt-ID DE271647127<span class=3D"inbox-inbox-Apple-converted-space=
">=C2=A0</span><br style=3D"box-sizing:border-box"></p><p style=3D"box-sizi=
ng:border-box;font-family:arial,helvetica,sans-serif;font-size:13.3333px;co=
lor:rgb(0,0,0);padding:0px;margin:1em 0px"></p><p id=3D"inbox-inbox-confide=
ntiality" style=3D"box-sizing:border-box;font-family:arial,helvetica,sans-s=
erif;font-size:7.5pt;color:rgb(153,153,153);padding:0px;margin:1em 0px;widt=
h:450px">This message and any files transmitted with it are confidential an=
d intended solely for the use of the individual or entity to whom they are =
addressed. Please notify the sender immediately if you have received this e=
-mail by mistake and delete it from your system.</p></div></div>

--001a11c04eb4f553ad054db01ed4--
