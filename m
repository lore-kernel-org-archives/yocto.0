Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00C4CE00961; Thu, 26 Mar 2015 02:07:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gmshastri[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6F59E0095D
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 02:07:15 -0700 (PDT)
Received: by obdfc2 with SMTP id fc2so40408377obd.3
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 02:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BZZtU3/h3RvDdtpD+5VrYTcFZVKIl7SyYXxnN72NGio=;
	b=u/RdCXnh5TB7VklrESA/q8JqUvHicxScy87INCZFaw2cPx0NKssZENRW8wfUTXLlOC
	O/nDqRKXDwG5JMup1H0V/gPi8RuyGbn/MpMs3KaSsUUph0jdO70MyKbhuoc6VCAAzblr
	s77rSYSkEKuGTvwyxvooWDANcsUA3SuuNMcj2oRAntnj6m6Ox3qF9n8vshHqtQsdSwh6
	PGkhZXKbKz2prVSr2s91tAtEakS96SEioh1lOWHOR0f616Mb1N4nIbEBsG0RU+YBzcN5
	XXCboZEyB+cBBJ6FBcmie5EKf+1eto+MLPc+/xnuhVxm8oofY1HK50Y6do6fdSAU9Jbl
	9Xmw==
MIME-Version: 1.0
X-Received: by 10.60.50.69 with SMTP id a5mr10958455oeo.23.1427360834717; Thu,
	26 Mar 2015 02:07:14 -0700 (PDT)
Received: by 10.202.56.66 with HTTP; Thu, 26 Mar 2015 02:07:14 -0700 (PDT)
In-Reply-To: <CAA2DH4utJacLNEUHnX-tPYibJsH0v0Y91Z5u5PtL=oOzJE01Rw@mail.gmail.com>
References: <CAA2DH4utJacLNEUHnX-tPYibJsH0v0Y91Z5u5PtL=oOzJE01Rw@mail.gmail.com>
Date: Thu, 26 Mar 2015 14:37:14 +0530
Message-ID: <CAE_REAsk1CApueTfhLtRJwYgkQN=1o3bhM2KOzOQcmn8Ahc9AA@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Prasant J <pj0585@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM Packaging
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
X-List-Received-Date: Thu, 26 Mar 2015 09:07:21 -0000
Content-Type: multipart/alternative; boundary=001a11c21b4c850e9b05122d57a5

--001a11c21b4c850e9b05122d57a5
Content-Type: text/plain; charset=UTF-8

Hi Prashant,

This is wrong window to ask generic question.

//Gaurang

On Thu, Mar 26, 2015 at 12:51 PM, Prasant J <pj0585@gmail.com> wrote:

> Hi,
>
> I want to create custom rpm packages for the iMX6Q device
> (cortexa9hf-vfp-neon-mx6). I have to create two types of packages:
> either pre-built arm binaries to be packed or packages containing only
> bash scripts. There is no need of cross-compiling while packaging for
> my cases.
>
> I'm building the packages on my Ubuntu system. When I specify ->
> BuildArch: cortexa9hf-vfp-neon-mx6, and try to create a package
> (rpmbuild -ba SPECS/foo.spec), it complains  "error: No compatible
> architectures found for build".
>
> For my case: rpm does not need to cross-compile but just do the
> packaging. How can I force rpm to believe the architecture that I'm
> specifying?
>
> Any inputs will be of help.
>
>
> Regards, Pj
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c21b4c850e9b05122d57a5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Prashant,<br><br></div>This is wrong window t=
o ask generic question. <br><br></div>//Gaurang <br></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Thu, Mar 26, 2015 at 12:51 PM, =
Prasant J <span dir=3D"ltr">&lt;<a href=3D"mailto:pj0585@gmail.com" target=
=3D"_blank">pj0585@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">Hi,<br>
<br>
I want to create custom rpm packages for the iMX6Q device<br>
(cortexa9hf-vfp-neon-mx6). I have to create two types of packages:<br>
either pre-built arm binaries to be packed or packages containing only<br>
bash scripts. There is no need of cross-compiling while packaging for<br>
my cases.<br>
<br>
I&#39;m building the packages on my Ubuntu system. When I specify -&gt;<br>
BuildArch: cortexa9hf-vfp-neon-mx6, and try to create a package<br>
(rpmbuild -ba SPECS/foo.spec), it complains=C2=A0 &quot;error: No compatibl=
e<br>
architectures found for build&quot;.<br>
<br>
For my case: rpm does not need to cross-compile but just do the<br>
packaging. How can I force rpm to believe the architecture that I&#39;m<br>
specifying?<br>
<br>
Any inputs will be of help.<br>
<br>
<br>
Regards, Pj<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11c21b4c850e9b05122d57a5--
