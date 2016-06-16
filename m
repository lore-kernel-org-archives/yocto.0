Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E012E00DA0; Thu, 16 Jun 2016 12:51:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6301E00D9B
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 12:51:47 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id f30so51657035ioj.2
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 12:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=VuHgl5kJrSq/6Mnp96uTjnXuwRLS6a2bVAuVgleQquU=;
	b=PFgQZolUWj0jAdxv2YcwIrb6C/6bejsyrdasQfEHxtcnKNlRwiKUrhOz4uWFWecugn
	mZnShxiI8uQz7D0hRcsTNT1foN/yPLxlhNmk6qVqlCd1A+Cp3EiZUGdBPd4DN18jG4Ia
	M1hru94kSi5TBxJd4lXHJEo+KsShLDVfPjn7RtMtqJANoNwPWUO2r/gojG53zFLLg3Wz
	IhDgRLo+om9WkBpYkI2lxg6evLzJw4TFLaX99P9X4X36RBM2Z9Gk6GFQVn+yjHuGw7L0
	SBm2XPvUvnb6gCKpXFSUNod7wCEKu65thoRTz/8p3pG0XRyeKUJeanLOZ/65yyi2zynd
	EwLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=VuHgl5kJrSq/6Mnp96uTjnXuwRLS6a2bVAuVgleQquU=;
	b=XvNPnT7KGlgsLyYcI6bOdlsl41knor+lhtgRLXtXou89u7bXAFAhJ4g1Cl3tq2Hn20
	JH6xvghhuMSvGo4nPoD/ffhsEeGKbl7/X0JP74EGlrQyixw4UxPoR4rqo2eusAnEZr/8
	+sYTCVH3gha9ME3dJYW13Fh2PaYrvZhCv0KvcRr/005NRcvo0JSMhTvFjsIc1EIuWNvV
	8uakDKeOTRG8e7TdzSJh8npps/X/2w+a/hfrrqB1+3WhiMeTi36BbWE9DNtQALq6zj3w
	vJbuuEpTV7ZkvYZf/xj0VVajX0h//O4v0719ZPWmFXTuOwV1HaPsRbWdyP6adYKRZIZe
	JGQA==
X-Gm-Message-State: ALyK8tKhDc8s1/wmj7cZU2dIOGdUikyrUSpzyIwPt86WsZVNzVf41SPBKO6BcoBDsVgDzu1LKtSt7tYIbffETg==
X-Received: by 10.107.131.212 with SMTP id n81mr10568719ioi.126.1466106706422; 
	Thu, 16 Jun 2016 12:51:46 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.130.66 with HTTP; Thu, 16 Jun 2016 12:51:26 -0700 (PDT)
In-Reply-To: <AM2PR07MB05941BF374AFE7DBF45733D4F6560@AM2PR07MB0594.eurprd07.prod.outlook.com>
References: <AM2PR07MB05941BF374AFE7DBF45733D4F6560@AM2PR07MB0594.eurprd07.prod.outlook.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 16 Jun 2016 12:51:26 -0700
X-Google-Sender-Auth: WW5XxUX16NECObqMRrhrXvJHsgQ
Message-ID: <CABcZAN=exJ+ygtAHB3uwHnzv4L9Nv713DbJu8AtrS8zqmoK93w@mail.gmail.com>
To: Marco Garzola <marco.garzola@tecniplast.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dynamic PV version in recipe
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
X-List-Received-Date: Thu, 16 Jun 2016 19:51:50 -0000
Content-Type: multipart/alternative; boundary=001a113ec32e70987105356a91ed

--001a113ec32e70987105356a91ed
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 16, 2016 at 8:11 AM, Marco Garzola <marco.garzola@tecniplast.it>
wrote:

> I got a problem, maybe someone could help me.I have a recipe that takes
> from a jenkins server via json API a binary file with a version that i know
> only after do_compile task. the question is : is there any way to tell
> bitbake that $PV should change dynamically  , maybe in do_install task ? My
> goal is  to create the package with  the revision read from jenkins.


PV has to be set at parse time, up front, so bitbake can use it in stamps
to help determine when tasks need to be run, as well as including it in
WORKDIR and whatnot.

If all you want is to change the version in the emitted binary packages,
you can dynamically set PKGV, i.e. add a prefunc before do_package which
reads the PKGV. Of course, making sure it re-runs the appropriate tasks
when that value changes is rather less trivial, since bitbake generates
signatures/checksums at parse time.

Alternatively, would it be possible to contact the server via the json API
at parse time as long as BB_NO_NETWORK isn't set? Of course, unless there's
a way to support the BB_NO_NETWORK case, that would be problematic as well.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113ec32e70987105356a91ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Jun 16, 2016 at 8:11 AM, Marco Garzola <span dir=3D"ltr">&lt;<a href=3D=
"mailto:marco.garzola@tecniplast.it" target=3D"_blank">marco.garzola@tecnip=
last.it</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I got a pro=
blem, maybe someone could help me.I have a recipe that takes from a jenkins=
 server via json API a binary file with a version that i know only after do=
_compile task. the question is : is there any way to tell bitbake that $PV =
should change dynamically=C2=A0
 , maybe in do_install task ? My goal is=C2=A0 to create the package with=
=C2=A0 the revision read from jenkins.</blockquote></div><br><div>PV has to=
 be set at parse time, up front, so bitbake can use it in stamps to help de=
termine when tasks need to be run, as well as including it in WORKDIR and w=
hatnot.</div><div><br></div><div>If all you want is to change the version i=
n the emitted binary packages, you can dynamically set PKGV, i.e. add a pre=
func before do_package which reads the PKGV. Of course, making sure it re-r=
uns the appropriate tasks when that value changes is rather less trivial, s=
ince bitbake generates signatures/checksums at parse time.</div><div><br></=
div><div>Alternatively, would it be possible to contact the server via the =
json API at parse time as long as BB_NO_NETWORK isn&#39;t set? Of course, u=
nless there&#39;s a way to support the BB_NO_NETWORK case, that would be pr=
oblematic as well.</div>-- <br><div class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature">Christopher Larson<br>clarson at kergoth dot com<br>F=
ounder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior =
Software Engineer, Mentor Graphics</div>
</div></div>

--001a113ec32e70987105356a91ed--
