Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 459E7E00861; Sun, 28 Sep 2014 17:09:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.30 listed in list.dnswl.org]
Received: from exprod8og115.obsmtp.com (exprod8og115.obsmtp.com [64.18.3.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A32AEE00721
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 17:09:34 -0700 (PDT)
Received: from mail-we0-f181.google.com ([74.125.82.181]) (using TLSv1) by
	exprod8ob115.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCijPjIDFjDQNFc300MXKB3X3ZlanePO@postini.com;
	Sun, 28 Sep 2014 17:09:35 PDT
Received: by mail-we0-f181.google.com with SMTP id u57so558853wes.26
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 17:09:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=IOibKcztNTx0+BAaJ0UNUwAc+SDT+OalidxlJ9D1ZDg=;
	b=K9IPAqiqs6LlEwjGqIHGqbnE+3l4/jKie2rv/o8f4j4E/DhnD8HVVdR2tNiEngrOG6
	SR5pydUGY1Otoc3YVBD1MINT0AcE2Ds2W1JXTejOwVeGLOkMR+nCVkClHtPqGkwyfbSM
	OSrINU1OcU0Nl/GagnUDnlosavbaOR3hNJs3TVDAiNbY+mdS3oGj6lEfwQB7ibP9GBB5
	A62Yh9hZsvMlHZZ3EMHjL++CcCSJpc+hBQo4aNEfFoqr1RbeQp4iolcW+TeRxcinX9dG
	iRIGOq3YtIGDq+gn4YgamqpucOE3wS7VjvUGWsTKOAcRva2a+J61sARA6MImvVjd6IAP
	b9xg==
X-Gm-Message-State: ALoCoQkDvaHbVzXdqLa8uIr11Msk4SXYoICGw0r4IVhTh3TpDKIIXMB/Dp/Dav/Anp7gNLBJyymOGxO3SizPOjW8qd6J3r8aFhRkmItb6cN4q2KjKdPh9yF/Y3Lqad8vJcEXVVmn2Qeolw2WXarNgmkOXCG9MsYw9g==
X-Received: by 10.194.93.7 with SMTP id cq7mr40889049wjb.58.1411949373409;
	Sun, 28 Sep 2014 17:09:33 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.194.93.7 with SMTP id cq7mr40889044wjb.58.1411949373296;
	Sun, 28 Sep 2014 17:09:33 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Sun, 28 Sep 2014 17:09:33 -0700 (PDT)
In-Reply-To: <5194477.G6vUEZEebf@peggleto-mobl5.ger.corp.intel.com>
References: <CAJrRHk4r+MngXE5oAUhde40u+KNNS9FYMjGDJw0NR1oqJU-9LQ@mail.gmail.com>
	<5194477.G6vUEZEebf@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 29 Sep 2014 08:09:33 +0800
Message-ID: <CAJrRHk58ivpRq3GD8XbNp9YOCdivLhCK_36=p16RgHqR3ZO2GA@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Wildcard in RDEPENDS when exporting perl modules to SDK
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
X-List-Received-Date: Mon, 29 Sep 2014 00:09:38 -0000
Content-Type: multipart/alternative; boundary=047d7bb040aad647de0504291486

--047d7bb040aad647de0504291486
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Paul,

I would like to ask why you specifically noted the TOOLCHAIN_TARGET_TASK
and not the TOOLCHAIN_HOST_TASK?
Why are you inclined to putting it into the target sysroot and not the host
sysroot? Or plainly what are the guidelines on where to put the unit to
that toolchain task?

Thanks,
Joseph

On Fri, Sep 26, 2014 at 5:02 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Joseph,
>
> On Friday 26 September 2014 13:37:29 Joseph Andrew de la Pe=C3=B1a wrote:
> > I would like to ask how to include all perl modules into nativesdk? I s=
ee
> > that all RDEPENDS for perl has a prefix of ${PN}-module-perl-*. How can=
 I
> > include all perl modules into the nativesdk host package group? Is ther=
e
> a
> > wild card that can be used?
>
> There isn't, but you can just add nativesdk-perl-modules to your SDK (via
> appending to TOOLCHAIN_TARGET_TASK) to accomplish the same thing - it's a
> meta-package that will bring in all of the core modules.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7bb040aad647de0504291486
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Paul,<div><br></div><div>I would like to ask why =
you specifically noted the TOOLCHAIN_TARGET_TASK and not the TOOLCHAIN_HOST=
_TASK?</div><div>Why are you inclined to putting it into the target sysroot=
 and not the host sysroot? Or plainly what are the guidelines on where to p=
ut the unit to that toolchain task?</div><div><br></div><div>Thanks,</div><=
div>Joseph</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On Fri, Sep 26, 2014 at 5:02 PM, Paul Eggleton <span dir=3D"ltr">&lt;<=
a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggl=
eton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">Hi Joseph,<br>
<span class=3D""><br>
On Friday 26 September 2014 13:37:29 Joseph Andrew de la Pe=C3=B1a wrote:<b=
r>
&gt; I would like to ask how to include all perl modules into nativesdk? I =
see<br>
&gt; that all RDEPENDS for perl has a prefix of ${PN}-module-perl-*. How ca=
n I<br>
&gt; include all perl modules into the nativesdk host package group? Is the=
re a<br>
&gt; wild card that can be used?<br>
<br>
</span>There isn&#39;t, but you can just add nativesdk-perl-modules to your=
 SDK (via<br>
appending to TOOLCHAIN_TARGET_TASK) to accomplish the same thing - it&#39;s=
 a<br>
meta-package that will bring in all of the core modules.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--047d7bb040aad647de0504291486--
