Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE003E00D01; Tue, 18 Oct 2016 00:59:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.180 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73BE2E00A7D
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 00:59:19 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id t193so132669610ywc.2
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 00:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mpHCSKFr61vKwqzmjicNXqWy/XblT22svITLhsgAW20=;
	b=S9M+S8kTJSUJoeUmK7Spuhiwn5V9Qn4TmvQsvuV9Qulc7YJ/q0g/2UYirSvmWEVQoh
	jWah5bupvRVGhJLvWJ+Ij+17nRGC7KAbpy7kthJ9o6WZDEDg3kJaehYHKc88LLXzM0iE
	dekyt181rA761z/QKPdrmiY0qJQaCG97ue6FxZS3A4UyNDT3om8CXpVTp45CUFQxeMpe
	rWcbDU3lFowcHyinJIxIKfpCoQiRuD8ZWszY7ILa5HNo3i2QLo7GYFyN4sKPGOhFRoxL
	NTwpdwhX3JKDrYIRdDUpCDirhYt5JKe+JkQjCV67/eaRK02jVaUhU2IkQ81F9EVL7G3Y
	UZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mpHCSKFr61vKwqzmjicNXqWy/XblT22svITLhsgAW20=;
	b=EgjuqtngVhAftQAYCGudh+XViMGMqz+3YxFnc9uE3thv+kaCFcgRhKfHAvxa3OzbaW
	815uR7iZmokrdfnxbagS9pD1Rq9DcisYKWUOK0vtsvNWKGmJQwyewBqCNATrL2fX7Uq/
	SsTxMAKYPfGAnYYopxlHvDUeFOjHmfghY6aLtXvlgf7dlkunoCYbl+PTqhqbmc20/mXq
	CwvZdcV3BAZoq45P5Bm8NhbRXCbk4+JpsPx1BA6iJ0foXxHbDmQDG6u5kyFCOoHqTqd+
	nlgd1DtSWHNEZlZY0ieJtV8scpVQh17q1SUDoaUhnCnGTRMZIQAMXcFYKBIEpMLco9ia
	l0Rw==
X-Gm-Message-State: AA6/9Rmx1TGtZmF60iYSmHkwipTROwlbaAaF6A+x5zxpmZ7LkZSX/clcmsY519tLHm66VxceWk6S+u9n8zlqMjUz
X-Received: by 10.13.229.69 with SMTP id o66mr1530970ywe.286.1476777558390;
	Tue, 18 Oct 2016 00:59:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.206.3 with HTTP; Tue, 18 Oct 2016 00:58:48 -0700 (PDT)
In-Reply-To: <561533617.145482749.1476713463652.JavaMail.root@spooler3-g27.priv.proxad.net>
References: <290444271.145314951.1476711189434.JavaMail.root@spooler3-g27.priv.proxad.net>
	<561533617.145482749.1476713463652.JavaMail.root@spooler3-g27.priv.proxad.net>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 18 Oct 2016 10:58:48 +0300
Message-ID: <CAHiDW_F+xxV35z+MMVHwb2Qvp_4+w69a41d9dtEgBT2atE-Psw@mail.gmail.com>
To: "Michel D'HOOGE" <michel.dhooge@free.fr>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Using debian packages management
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
X-List-Received-Date: Tue, 18 Oct 2016 07:59:22 -0000
Content-Type: multipart/alternative; boundary=94eb2c189648c7e57f053f1f116a

--94eb2c189648c7e57f053f1f116a
Content-Type: text/plain; charset=UTF-8

On 17 October 2016 at 17:11, Michel D'HOOGE <michel.dhooge@free.fr> wrote:

> Hi,
>
> From time to time I try to use the debian packages management instead of
> RPM because I feel more "at home"... And every time, there is a problem --
> but this time, I felt like I'll try to understand and solve it!
>
> I tried first with core-image-minimal, and it worked.
> But then I switched to core-image-sato and had the following error:
>
> ERROR : core-image-sato-1.0-r0 do_rootfs: Unable to install packages.
> Command '/mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/apt-get
> install --force-yes --allow-unauthenticated apt packagegroup-base-extended
> packagegroup-core-ssh-dropbear dpkg packagegroup-core-x11-base
> packagegroup-core-boot packagegroup-core-x11-sato-games psplash
> packagegroup-core-x11-sato' returned 100:
> Reading package lists...
> Building dependency tree...
> Reading state information...
> Some packages could not be installed. This may mean that you have
> requested an impossible situation or if you are using the unstable
> distribution that some required packages have not yet been created or been
> moved out of Incoming.
> The following information may help to resolve the situation:
>
> The following packages have unmet dependencies:
> packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils but it
> is not going to be installed
> E: Unable to correct problems, you have held broken packages.
>

I suspect this is related to meta-oe taking over some X initialization when
you add it to bblayers -- this  maybe exposes a bug in the deb packaging
implementation. In any case I can say that a deb-based core-image-sato
builds fine without meta-oe.

Note that you may have to wipe TMPDIR after bblayers changes if you're
testing this.

I have a bug on improving the X initialization mess in oe-core vs meta-oe (
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5546) but please file one
on the debian packaging issue if it does not exist yet.

I checked: The package exists in /tmp/deploy/deb/all/
> packagegroup-core-x11-utils_1.0-r40_all.deb, but it is *empty*. It looks
> as if it is just there to create some RDEPENDS in the recipe.
>
>
> So... I played the game to explicitly add packages one by one to the image:
> IMAGE_INSTALL_append_pn-core-image-sato = " packagegroup-core-x11-utils
> xserver-nodm-init x11-common xserver-common"


> But now I have the following error:
> The following packages have unmet dependencies:
>  xserver-common : Conflicts: x11-common but 0.1-r47 is to be installed
>
>
xserver-common RCONFLICTS with x11-common: the package manager is doing
exactly what it was asked to do here (you shouldn't install both of those).

 - Jussi



>
> So my question is:
> Is using debian packages management definitely broken in Yocto? Or has
> someone managed to use it with some tweaking?
>
>
> Many thanks for your feedbacks
> Michel
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c189648c7e57f053f1f116a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
7 October 2016 at 17:11, Michel D&#39;HOOGE <span dir=3D"ltr">&lt;<a href=
=3D"mailto:michel.dhooge@free.fr" target=3D"_blank">michel.dhooge@free.fr</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i,<br>
<br>
From time to time I try to use the debian packages management instead of RP=
M because I feel more &quot;at home&quot;... And every time, there is a pro=
blem -- but this time, I felt like I&#39;ll try to understand and solve it!=
<br>
<br>
I tried first with core-image-minimal, and it worked.<br>
But then I switched to core-image-sato and had the following error:<br>
<br>
ERROR : core-image-sato-1.0-r0 do_rootfs: Unable to install packages. Comma=
nd &#39;/mnt/Yocto/Fabric-x64/build/<wbr>tmp/sysroots/x86_64-linux/usr/<wbr=
>bin/apt-get install --force-yes --allow-unauthenticated apt packagegroup-b=
ase-extended packagegroup-core-ssh-dropbear dpkg packagegroup-core-x11-base=
 packagegroup-core-boot packagegroup-core-x11-sato-<wbr>games psplash packa=
gegroup-core-x11-sato&#39; returned 100:<br>
Reading package lists...<br>
Building dependency tree...<br>
Reading state information...<br>
Some packages could not be installed. This may mean that you have requested=
 an impossible situation or if you are using the unstable distribution that=
 some required packages have not yet been created or been moved out of Inco=
ming.<br>
The following information may help to resolve the situation:<br>
<br>
The following packages have unmet dependencies:<br>
packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils but it is=
 not going to be installed<br>
E: Unable to correct problems, you have held broken packages.<br></blockquo=
te><div>=C2=A0</div><div>I suspect this is related to meta-oe taking over s=
ome X initialization when you add it to bblayers -- this =C2=A0maybe expose=
s a bug in the deb packaging implementation. In any case I can say that a d=
eb-based core-image-sato builds fine without meta-oe.</div><div><br></div><=
div>Note that you may have to wipe TMPDIR after bblayers changes if you&#39=
;re testing this.</div><div><br></div><div>I have a bug on improving the X =
initialization mess in oe-core vs meta-oe (<a href=3D"https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D5546">https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D5546</a>) but please file one on the debian packaging issue i=
f it does not exist yet.</div><div><br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
I checked: The package exists in /tmp/deploy/deb/all/<wbr>packagegroup-core=
-x11-utils_1.<wbr>0-r40_all.deb, but it is *empty*. It looks as if it is ju=
st there to create some RDEPENDS in the recipe.<br>
<br>
<br>
So... I played the game to explicitly add packages one by one to the image:=
<br>
IMAGE_INSTALL_append_pn-core-<wbr>image-sato =3D &quot; packagegroup-core-x=
11-utils xserver-nodm-init x11-common xserver-common&quot;</blockquote><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
<br>
But now I have the following error:<br>
The following packages have unmet dependencies:<br>
=C2=A0xserver-common : Conflicts: x11-common but 0.1-r47 is to be installed=
<br>
<br></blockquote><div><br></div><div><div>xserver-common RCONFLICTS with x1=
1-common: the package manager is doing exactly what it was asked to do here=
 (you shouldn&#39;t install both of those).</div><div><br></div></div><div>=
=C2=A0- Jussi</div><div><br></div><div><br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
<br>
<br>
So my question is:<br>
Is using debian packages management definitely broken in Yocto? Or has some=
one managed to use it with some tweaking?<br>
<br>
<br>
Many thanks for your feedbacks<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888">Michel<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div>

--94eb2c189648c7e57f053f1f116a--
