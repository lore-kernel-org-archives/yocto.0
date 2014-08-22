Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7FBCE004F2; Thu, 21 Aug 2014 17:26:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A79AE0044A
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 17:26:04 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id ty20so9349387lab.4
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 17:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=HOYbm9hYNRm6bNxiT3lsLoi0GZ7ig0G30sICYojrgbw=;
	b=Qd1A+x0OvTVY+sPUn578fMsiagMEVAti7Rf88XMG5rETs4kFH5AviAbPLvCjV1BMhx
	rKdKol/5TUElJTnoOZ89+Ho6VSJU37dRCCs5HrhQULvHRtNyZLWLqLS9NiYDjXCBVUZz
	YGaE4uAW3UwAFoj6HSOjpLHZt7JpGnJWehiS0sgxS6NgSs/C1DQ8YsM0mFxEnKOlje0k
	kFxZ50Hadn9QrwM9G91Vw9bGXx9fh6prkGDC7p6EeXJ70dCldXStbWE0f4sPLp5nocu4
	rKQ+7dDYm7bp3zKyjm6IvmkKquKEahYaB4XfO/dvAbysSgjBQ5KBaqY8vJhwsdFRlG5I
	/nzQ==
X-Received: by 10.152.10.169 with SMTP id j9mr1463247lab.69.1408667163459;
	Thu, 21 Aug 2014 17:26:03 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.43.42 with HTTP; Thu, 21 Aug 2014 17:25:43 -0700 (PDT)
In-Reply-To: <CA+JN8xNsPD_Fi2e7nyTfq6Vje0ssz_eSdxjicussA94B0pSU3g@mail.gmail.com>
References: <CA+JN8xNsPD_Fi2e7nyTfq6Vje0ssz_eSdxjicussA94B0pSU3g@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 21 Aug 2014 17:25:43 -0700
X-Google-Sender-Auth: SYj6z8JEaRGv5IcipNb1CVdDG3Q
Message-ID: <CABcZANnRi__cWdrruHYB8JLc1=Q7oj=DPMCLUwYPm72W0roC0Q@mail.gmail.com>
To: Seth Bollinger <seth.boll@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Image that depends on another image
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
X-List-Received-Date: Fri, 22 Aug 2014 00:26:13 -0000
Content-Type: multipart/alternative; boundary=001a113330c2e2876e05012ce144

--001a113330c2e2876e05012ce144
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 21, 2014 at 5:08 PM, Seth Bollinger <seth.boll@gmail.com> wrote:

> Our device requires two images to be built.  Is there any way to have the
> first image depend on the second image?


do_rootfs[depends] += "some-other-image:do_rootfs" would probably do.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113330c2e2876e05012ce144
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Aug 21, 2014 at 5:08 PM, Seth Bollinger <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:seth.boll@gmail.com" target=3D"_blank">seth.boll@gmail.com</a>=
&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Our device requires two images to be built. =
=C2=A0Is there any way to have the first image depend on the second image?<=
/blockquote>

</div><br></div><div class=3D"gmail_extra">do_rootfs[depends] +=3D &quot;so=
me-other-image:do_rootfs&quot; would probably do.<br>-- <br>Christopher Lar=
son<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZ=
aurus<br>

Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--001a113330c2e2876e05012ce144--
