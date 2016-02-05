Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 822C1E00D4D; Fri,  5 Feb 2016 08:08:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A06E00D3D
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 08:08:06 -0800 (PST)
Received: by mail-ig0-f173.google.com with SMTP id ik10so43517918igb.1
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 08:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=pRwxLQavnG0MaBmAI0F8qj6v/7g0JerlmBByliFxP7o=;
	b=qkfxYOcXJUHxYUpAm3Jsi1oofsQcyu0gB1rlpvPdqaYtu5+RrdANbCRrgPHT8ZzlGt
	x4jh6ow8IxaXo2dPwBwp5t4NHuUx2RzMywVrBeyrx8Jg6FVIef7YmxFwIUoVmc79+qy4
	bk+ZvkOeX09Tf41MyWrl+6SJPLulMEI8GMdTmvIoBc3E4jAHYiG7TFK6GSA3lYRVnLFa
	m/+O0nCw2rYm1Ytqb674ZyodcLtSXiK6+lYzsX7qHVU3uZUmBuCbymr/4V0zJu/vCPod
	c6Hw4NfeivoQLoswQwl/6vWr0USgmgn3YSGhG1uz+7HRYv43wh7oIt1Z4Up1FBrLM4mq
	joaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=pRwxLQavnG0MaBmAI0F8qj6v/7g0JerlmBByliFxP7o=;
	b=ekrKDZxYQGfsiZ0lW+1Pa1JrEHQ0tfr+UAXSPMKa9DEKoszzm7nlLKuztEadsK3hoW
	x1m83lGyJ5Nirr4ETWpPCAJ5KOKE1ZOnlctq5uUjhjgXTi6AdcU+ILQjlinUslHSefUP
	CTD+PzjVWLQa+FoTDkkEjm1l0AAJHBfrcUROWKBeZqkkreY/S+Lo3o+0kLoP3pKdgIzx
	1U2buRSRfbNPBpyoZ1epvVHx32kO0ISA74sCF+d28HysJvziKvhQzaJlOd5JErMf7VGW
	KsLMSbRZ3fGrYTIRpm4xE9I17x6+LLDWObkfds84eudbEQmi9+WYLNyjlYcmvQOmcAq1
	Dd2g==
X-Gm-Message-State: AG10YOS2FG4kDLwr7SbvU8jJE8ybPcJ6cdD0qygiRZW/w3zLUxOFbpThJhGhsR4ifA4Ml6JUvfCV5WYImGop8EUS
X-Received: by 10.50.23.108 with SMTP id l12mr16893475igf.78.1454688485703;
	Fri, 05 Feb 2016 08:08:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 5 Feb 2016 08:07:46 -0800 (PST)
In-Reply-To: <CAJTo0LZYuGLd=emba4YW1f-rQ6o9+xVpgV-ZJZHvzq0cKNX82w@mail.gmail.com>
References: <1454624831-25414-1-git-send-email-ross.burton@intel.com>
	<A2879B89-41D4-42C2-8C86-A0ABD2F149B5@gmail.com>
	<CAJTo0LZYuGLd=emba4YW1f-rQ6o9+xVpgV-ZJZHvzq0cKNX82w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Feb 2016 16:07:46 +0000
Message-ID: <CAJTo0LarfOkNje5YZ8=0nQ0yB3s4k3Gh7_ZGABaveP=bpcTNLg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-autobuilder] nightly-musl: also build core-image-weston
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
X-List-Received-Date: Fri, 05 Feb 2016 16:08:12 -0000
Content-Type: multipart/alternative; boundary=089e0149cbe8731d8e052b080ee4

--089e0149cbe8731d8e052b080ee4
Content-Type: text/plain; charset=UTF-8

On 5 February 2016 at 09:02, Burton, Ross <ross.burton@intel.com> wrote:

> We can switch nightly-musl over to just opkg whilst rpm is known to be
> broken.  We already have a separate tiny buildset.
>

Revised patch sent.

Ross

--089e0149cbe8731d8e052b080ee4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 February 2016 at 09:02, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extr=
a">We can switch nightly-musl over to just opkg whilst rpm is known to be b=
roken.=C2=A0 We already have a separate tiny buildset.</div></blockquote></=
div><br>Revised patch sent.</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">Ross</div></div>

--089e0149cbe8731d8e052b080ee4--
