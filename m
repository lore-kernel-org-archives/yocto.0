Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8416EE008EE; Tue, 17 Jan 2017 05:55:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAD36E008D3
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 05:55:57 -0800 (PST)
Received: by mail-qt0-f170.google.com with SMTP id l7so158715484qtd.1
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 05:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KRGMfUV58H+alQsKMJ30MfutgqX34MTNp3u+OY5ROw8=;
	b=eMh49D4rlZglZu0vC7n755jHPimHVOLD8cZ0utEQq+3Gpgc6loeritD8rUMPuibpXO
	7BXWz2a+TNcwnne013/eVxsDR6ayp2/sgdmW5rstqT2xyYAxkTNkT00bZlT2y0Eq+Vbn
	vFXiCSSf7srT+hxHHFX/HZCJr4nIQWc4TORrNC3554EgwGIlogwoL99SoLpUTqe3srcZ
	jFhIpYUpW/bYbGowjnVdJqvMt3Th9WqdVSqq7uWPhpGvR63+gCP2mxmIfMnKjbjJykw4
	ixDvEGxFL0QkMseTLsnEvGas9As669ZD+xdkFyP2WIz9tJL+F/eC43yj7ZnhCYzAf2u2
	yTuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KRGMfUV58H+alQsKMJ30MfutgqX34MTNp3u+OY5ROw8=;
	b=M2iF56oXEa9mlnJn9TCERWJnzlgMZxZ+VLKPpwQxo+27qIwyjdfdBzGVaedTo4Mt8X
	jcSCKupxIvERHjIpt3PahAIsfv32ihjYRjEOPBKETlHSavifFTw7jYuT/89a7rmRrpNb
	20PVo/X88yzHo7iuHZnR/I3QvHKi4Y0iQreXOIv71NIdNU3qTDy2fFMBMGcZTUPzRPhq
	Z9g+rGgJEaWd+ROE1Zdw47mk8YebAtz8zBN8cBImq3bp4vp2SlF/11AVInYXZ6HET+eO
	r3R2tuVukMn9L+QGw+ueOVVv6KMOg0wMI+qIFM/HV40ElJQU17MYAIpSZwiKAkPqDQ0s
	c0tA==
X-Gm-Message-State: AIkVDXL5waIYMss0zft16sxgPqbvoB2VzVCaHjVTyV55zZZrXbt6Fot5a9H3lB/owmUNXFa62TyP0dWdg13SBeH5
X-Received: by 10.55.31.24 with SMTP id f24mr33712705qkf.221.1484661356555;
	Tue, 17 Jan 2017 05:55:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Tue, 17 Jan 2017 05:55:36 -0800 (PST)
In-Reply-To: <20170111205520.30747-1-raltherr@google.com>
References: <20170111205520.30747-1-raltherr@google.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 17 Jan 2017 13:55:36 +0000
Message-ID: <CAJTo0LZCYtOji2agFMhnqaW6RGurv+s6A6V4HszK4nuz-YEzXQ@mail.gmail.com>
To: Rick Altherr <raltherr@google.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] kernel-fit: Change FIT (kernel+initrd) symlinks to fitImage-*
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
X-List-Received-Date: Tue, 17 Jan 2017 13:55:58 -0000
Content-Type: multipart/alternative; boundary=001a1147e2bac508c205464aa8c0

--001a1147e2bac508c205464aa8c0
Content-Type: text/plain; charset=UTF-8

On 11 January 2017 at 20:55, Rick Altherr <raltherr@google.com> wrote:

> KERNEL_IMAGETYPE only provides the first image type specified in
> KERNEL_IMAGETYPES which can provide surprising results.  Since this
> class is solely for FIT images, just hardcode the names to fitImage-*.
>

Nathan sent the identical patch earlier, so I merged his.  Expect this in
master shortly.

Ross

--001a1147e2bac508c205464aa8c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 January 2017 at 20:55, Rick Altherr <span dir=3D"ltr">&lt;<a href=3D"=
mailto:raltherr@google.com" target=3D"_blank">raltherr@google.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":158" class=3D"a3=
s aXjCH m1598f51426f0ffaa">KERNEL_IMAGETYPE only provides the first image t=
ype specified in<br>
KERNEL_IMAGETYPES which can provide surprising results.=C2=A0 Since this<br=
>
class is solely for FIT images, just hardcode the names to fitImage-*.<br><=
/div></blockquote></div><br>Nathan sent the identical patch earlier, so I m=
erged his.=C2=A0 Expect this in master shortly.</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1147e2bac508c205464aa8c0--
