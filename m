Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 379BFE00DCA; Thu, 26 May 2016 09:07:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8407E009AC
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 09:07:48 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id z123so49023944itg.0
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 09:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=V/fzOEdBsm0JZx4JwlR9RSdqUXa4L55JxYrtSpCw6f0=;
	b=i3llF0PYvDLg+hU9JCJviRbCvnKBIeSSeBTwS3TS+3I4SKhk1qICmjoFEJWv1rpuZ9
	8mEoElAtnCDShNnvxKVfK/QQTRYUZFcRM+lfPoofBstZNhYFuJzoRbTBOXsBkKjRZ2Yu
	rTOoR2LOfzXkw1cHhg9GHkGjp11B0+XxQ1Hg4C11Dcmw0Q1crBwkFFKEM/sHLB0MF51X
	2QtVrR40afNQc+yble3IfDELQFIEaiTEOQRHmBJW2EYG7f1YyEFI1Ss01nENYG8Vpi2y
	Q4VdFp43aCmLt/8n0yim6vWbhVhjQW/pEamCgF/iPAVfJ2TBC7p2ka6VrqSiNSDG0pZu
	QQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=V/fzOEdBsm0JZx4JwlR9RSdqUXa4L55JxYrtSpCw6f0=;
	b=VpV39suTghp6X2eD6b+Y/uOfujqimIvkyeXhbhBV0tcKjQUDO0g/x3UWWNr7Ji0DIk
	6R9PBujPS7wT5NmyJa1EE8v3dN9yV2ZufZSPk9wPU74oRQ7u3J/XeavvwROfQuAiX1QZ
	RfXXeJQc3iQ5ssewymiKZa5kGx+c/sJaed4h0ZzNbqY4re/p897Sy55MDI6007QdX7H/
	ygl5aXAmKNgCUCd9zOY5yMUOHT+iHS3ZdfUUc160aclAuUxIZnRfuQFzuIDuS7F3xoiZ
	yUpC09/n85JGLzQG6/33jFdONlO5GuXmjrZgNKJ8E3bFP4xHwoJKlQl7sZuWRj+JMSFX
	Ve3g==
X-Gm-Message-State: ALyK8tJd35xrG2NjjawHsWbEDrT+E64qSU+nY4nhI6QCfdsW85qoofwvY+4hmqMFcc+k1htQ4ppZF+pqNvVewoyF
X-Received: by 10.36.57.211 with SMTP id l202mr3962362ita.22.1464278867430;
	Thu, 26 May 2016 09:07:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 26 May 2016 09:07:28 -0700 (PDT)
In-Reply-To: <5fd08a77744a4c39943de4111eadd535@Ek.usurf.usu.edu>
References: <5fd08a77744a4c39943de4111eadd535@Ek.usurf.usu.edu>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 26 May 2016 17:07:28 +0100
Message-ID: <CAJTo0LY-0iaFzY=fQSagQWHikUiMYo2P8wWvpetW1H23BTqKcA@mail.gmail.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEPENDS problem with core-image-full-cmdline
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
X-List-Received-Date: Thu, 26 May 2016 16:07:54 -0000
Content-Type: multipart/alternative; boundary=001a114ab3cabedad30533c0fdcb

--001a114ab3cabedad30533c0fdcb
Content-Type: text/plain; charset=UTF-8

On 26 May 2016 at 17:01, Jonathan Haws <Jonathan.Haws@sdl.usu.edu> wrote:

> However, when building core-image-full-cmdline, I get the following errors.
>

The error is in the batctl recipe, does that also have a DEPENDS=libnl?

Ross

--001a114ab3cabedad30533c0fdcb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 May 2016 at 17:01, Jonathan Haws <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:Jonathan.Haws@sdl.usu.edu" target=3D"_blank">Jonathan.Haws@sdl.usu.edu<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":33k" cl=
ass=3D"a3s aXjCH m154edcf21fef659d">However, when building core-image-full-=
cmdline, I get the following errors.<br></div></blockquote></div><br>The er=
ror is in the batctl recipe, does that also have a DEPENDS=3Dlibnl?</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></d=
iv>

--001a114ab3cabedad30533c0fdcb--
