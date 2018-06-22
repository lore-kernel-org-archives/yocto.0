Return-Path: <prakashpks15@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A0A8E00CEA; Fri, 22 Jun 2018 14:05:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prakashpks15[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 222B9E00C5B
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2018 14:05:56 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id f1-v6so7305666ioh.6
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2018 14:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=c4etoAVN7jDMOdwL9+ZIYstrCD+xXuTQhxkl78bEXck=;
	b=htlHBdzdbVVIx9hTK8dGGnoO5RVH/FGEGbJ8NXnV2XmWccBIZJ/1b+2wDp5qzewsjR
	leDVVgQOWxpdrMS19tRe/2DDDSp8EzbaQz68Cx/E8rAZ6xckRTFoJQnAAaEm0CyKjaAm
	tO9WOJsrHqKg2I9Meo83eFGXc733rggxx3SC695fd5XaTBsOh7OAP2kMDpqXEDFMLfim
	qqkbyLTq8bl2OCYby8k/4BJMpIwmHDl0jljBisTvN8+Huo8tGoFlA//zz1Rs05j/ZQgY
	yW9/Q1PJBh4YnAYTx5EL0GtZLyWGrQ8U3JEYH1ztzBVZ7Ox5a4r+f6eEyUKgltQYtnob
	ERAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=c4etoAVN7jDMOdwL9+ZIYstrCD+xXuTQhxkl78bEXck=;
	b=FVbHE4ggTVDMujh0o7ndRhRyoSSQux/ZEy4WK4M27o4Qr3vgZWm/WFNLUbyhUl98ir
	m5HkfVorOQWd/xs/qjwPKOO97BUPR5TmXH33jshi1DztuRa1ZCggHDpopNAWMEJArR+u
	rdP8cHsHLDkoiNYwr+JBcjJXr+kZBRyVOu6BlS5k+daLpzRMPeZ208sw27/jd4pyk5ub
	FXf8/etQFWEy5IAvt7sa2knpXULKFeTT/F/Swmm+bjdjv63dzfkFvuy5LkCtBiqKwi/1
	Z7p46mkYDk852Z3Add7IVaTQ4m2WzZpzIS6/TM41EekDYU9dwBM83PV5la0GA4w2cAyS
	bxJQ==
X-Gm-Message-State: APt69E2e4hsdV4sWaGyPPAyoSVQES4tPNhh1SKQ9+IwNzcnrqA28Pb8F
	X+fK6WoGai523J4YrVXLDiWm0n+49NH0oteMrtI=
X-Google-Smtp-Source: AAOMgpfOOB0J1CXB0joMBM8ebrqIy+oDUXCHJ7AnHque0i0Hw+boFS9F+gadlFAfZDPbzn2xSmaRgbXJHVHhbqtgRQ4=
X-Received: by 2002:a6b:29c4:: with SMTP id
	p187-v6mr2625861iop.299.1529701556517; 
	Fri, 22 Jun 2018 14:05:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAP8ZA7FsroZ=zs-j-OUkYshp-t+9nm_rpQsTkdae5fYmqPfjNA@mail.gmail.com>
	<CAMKF1srx2PVV46Uysq+hGdgMY9JdWrLAsVp4tY5zjghiR9RtAQ@mail.gmail.com>
In-Reply-To: <CAMKF1srx2PVV46Uysq+hGdgMY9JdWrLAsVp4tY5zjghiR9RtAQ@mail.gmail.com>
From: Prakash Ks <prakashpks15@gmail.com>
Date: Fri, 22 Jun 2018 14:05:45 -0700
Message-ID: <CAET8a4HtExjqKYp87DuGtSh83TATPytZiLSmOQPFuY6A1CGVWA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org, peddikrishnapriya@gmail.com
Subject: Re: Adding GCC to system root image
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
X-List-Received-Date: Fri, 22 Jun 2018 21:05:58 -0000
Content-Type: multipart/alternative; boundary="000000000000e37d60056f416533"

--000000000000e37d60056f416533
Content-Type: text/plain; charset="UTF-8"

Try Removing line:

 IMAGE_INSTALL +="opkg"
from poky/meta-qti-bsp/recipies-products/images/ BASE_IMAGE.inc


Thanks!
Prakash

On Thu, Jun 21, 2018 at 6:59 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Jun 21, 2018 at 4:02 PM Krishna Priya
> <peddikrishnapriya@gmail.com> wrote:
> >
> > Hello all,
> >
> > I am trying to add gcc to the system image by modifying the following
> files.
> > poky/meta-qti-bsp/recipies-products/images/ BASE_IMAGE.inc
> >
> > + IMAGE_INSTALL +="opkg"
> > + IMAGE_INSTALL +="packagegroup-core-buildessential"
> >
> > poky/build/conf/local.conf
> > + EXTRA_IMAGE_FEATURES = "tools-sdk dev-pkgs"
> >
> > When I build the whole image, I get the following errors :
> > update-alternatives: Error: cannot register alternative cmp to /bin/cmp
> since it is already registered to /usr/bin/cmp
> > update-alternatives: Error: cannot register alternative diff to
> /bin/diff since it is already registered to /usr/bin/diff
> > update-alternatives: Error: cannot register alternative cmp to /bin/cmp
> since it is already registered to /usr/bin/cmp
> > update-alternatives: Error: cannot register alternative diff to
> /bin/diff since it is already registered to /usr/bin/diff
> > update-alternatives: Error: cannot register alternative ar to
> /usr/bin/ar since it is already registered to /bin/ar
> > update-alternatives: Error: cannot register alternative strings to
> /usr/bin/strings since it is already registered to /bin/strings
> > .
> > .
> > .
> > .
> > .
> > ERROR: Multilib check error: duplicate files
> poky/build/tmp-glibc/work/XXX80XX-oe-linux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fpu_control.h
> poky/build/tmp-glibc/work/XXX80XX-oe-linux/machine-drone-image/1.0-r0/rootfs/usr/include/fpu_control.h
> is not the same
> > ERROR: Multilib check error: duplicate files
> poky/build/tmp-glibc/work/XX80XX-oe-linux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fpu_control.h
> poky/build/tmp-glibc/work/apq8096-oe-linux/machine-drone-image/1.0-r0/rootfs/usr/include/fpu_control.h
> is not the same
> > ERROR: Function failed: do_rootfs
> >
> > Please let me know the workaround to solve this error. Thanks.
>
> perhaps providing more information about which target arch and which
> release etc. would be helpful.
> If you post Build Configuration thats emitted by bitbake at beginning
> of build, it provides good information on baseline.
>
> > Regards,
> > -Priya.
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Thanks and Regards,
Prakash K S
+91 9620140303

--000000000000e37d60056f416533
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Try Removing line:<div><div><br></div><div><span style=3D"=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline"><span>=C2=A0</span>IMAGE_INST=
ALL=C2=A0+=3D&quot;opkg&quot;=C2=A0</span></div><div><span style=3D"backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline">from=C2=A0<span style=3D"text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>poky/meta-qti-bsp/recipies-</span><span style=3D"text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline">products/imag=
es/ BASE_IMAGE.inc</span></span><br></div></div><div><span style=3D"backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline"><span style=3D"text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline"><br></spa=
n></span></div><div><span style=3D"background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:in=
line"><span style=3D"text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline"><br></span></span></div><div><span style=
=3D"background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline"><span style=3D"text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">Thanks!</span></span></div><div><span style=3D"background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline"><span style=3D"text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline">Prakash</span></span></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jun 21, 2018 a=
t 6:59 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, Jun 21,=
 2018 at 4:02 PM Krishna Priya<br>
&lt;<a href=3D"mailto:peddikrishnapriya@gmail.com" target=3D"_blank">peddik=
rishnapriya@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello all,<br>
&gt;<br>
&gt; I am trying to add gcc to the system image by modifying the following =
files.<br>
&gt; poky/meta-qti-bsp/recipies-products/images/ BASE_IMAGE.inc<br>
&gt;<br>
&gt; + IMAGE_INSTALL +=3D&quot;opkg&quot;<br>
&gt; + IMAGE_INSTALL +=3D&quot;packagegroup-core-buildessential&quot;<br>
&gt;<br>
&gt; poky/build/conf/local.conf<br>
&gt; + EXTRA_IMAGE_FEATURES =3D &quot;tools-sdk dev-pkgs&quot;<br>
&gt;<br>
&gt; When I build the whole image, I get the following errors :<br>
&gt; update-alternatives: Error: cannot register alternative cmp to /bin/cm=
p since it is already registered to /usr/bin/cmp<br>
&gt; update-alternatives: Error: cannot register alternative diff to /bin/d=
iff since it is already registered to /usr/bin/diff<br>
&gt; update-alternatives: Error: cannot register alternative cmp to /bin/cm=
p since it is already registered to /usr/bin/cmp<br>
&gt; update-alternatives: Error: cannot register alternative diff to /bin/d=
iff since it is already registered to /usr/bin/diff<br>
&gt; update-alternatives: Error: cannot register alternative ar to /usr/bin=
/ar since it is already registered to /bin/ar<br>
&gt; update-alternatives: Error: cannot register alternative strings to /us=
r/bin/strings since it is already registered to /bin/strings<br>
&gt; .<br>
&gt; .<br>
&gt; .<br>
&gt; .<br>
&gt; .<br>
&gt; ERROR: Multilib check error: duplicate files poky/build/tmp-glibc/work=
/XXX80XX-oe-linux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fpu=
_control.h poky/build/tmp-glibc/work/XXX80XX-oe-linux/machine-drone-image/1=
.0-r0/rootfs/usr/include/fpu_control.h is not the same<br>
&gt; ERROR: Multilib check error: duplicate files poky/build/tmp-glibc/work=
/XX80XX-oe-linux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fpu_=
control.h poky/build/tmp-glibc/work/apq8096-oe-linux/machine-drone-image/1.=
0-r0/rootfs/usr/include/fpu_control.h is not the same<br>
&gt; ERROR: Function failed: do_rootfs<br>
&gt;<br>
&gt; Please let me know the workaround to solve this error. Thanks.<br>
<br>
perhaps providing more information about which target arch and which<br>
release etc. would be helpful.<br>
If you post Build Configuration thats emitted by bitbake at beginning<br>
of build, it provides good information on baseline.<br>
<br>
&gt; Regards,<br>
&gt; -Priya.<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Thanks and Re=
gards,<div>Prakash K S</div><div>+91 9620140303</div></div>

--000000000000e37d60056f416533--
