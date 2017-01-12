Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A420E00953; Thu, 12 Jan 2017 07:34:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32786E0088B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 07:34:42 -0800 (PST)
Received: by mail-qt0-f180.google.com with SMTP id l7so21160688qtd.1
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 07:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OIbV7lGXakYVzCrhaObZ7xHp5kjV33Cvru75OvxcXIQ=;
	b=g1gJAwvO2N/VcLdmsn5IbYTUnOMY65MUBY1K8GMvkJZ2zu6olBhodZgIevcQr/lI81
	qQC2ID4152tTQdls+b6nJbNTm6DeVhkeMg29EN3H3hxoQKDg6wr9jizurE1129bD4rtJ
	NLy7L1hSJlJto1hDicUP5adBd7O3ylMm/8sK9giAj+Q3JO/rMB8w0mmZ8g/YltnNCxmI
	rqfPVnloD+SGZ/X96lwFoYGuOpkOnbdSlmEYpu9AjxMlN8HXrB6Y1lnnJxcfjI6y1hvb
	mfLs45a9cn6xjBzudRhNTihBxJfGKzoNlMRyHlJ1c5o61KO6kCwWm1cpyxQ97Ih8b/XI
	vPlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OIbV7lGXakYVzCrhaObZ7xHp5kjV33Cvru75OvxcXIQ=;
	b=lkgS3IyHwQCHRxs03hHemSnmZSKMknkEhC7G3nX59HAx0NrJwmVxWQu9jM3glNDcT+
	5h4/1zkU62rg1WNJUCxpvnEr/Piivc6kq+9TKQGT+xmqSeG4W4Ad+9+m573VudpIx91d
	GbB7bSEaHIojSxcScM5h9WyXFv8sASzzVVUcS0yuD5JCD2hnc0CKCn0Hw82A6U29uZnE
	q14abEpBvqV+wDwI0vbHo11AbITUfTZlmTv8V9QC0bkPevPB0GGde0J2ZuXFrhf5PamT
	MDa0To1AXnUcwv4OKLIASi+IFUpIi9hRRHJKB3XLeSA4qUOjXV9bA+XEgTQuTqFoAKNu
	yokQ==
X-Gm-Message-State: AIkVDXLz4rXm7sq2BElvZJQUQyjFCMfEli5+F42UkjaW2Bu6zjnS2Z6A5YH8ZTLBrO1XVMStHDaqUbfDaXyBsXKn
X-Received: by 10.237.39.148 with SMTP id a20mr14013865qtd.65.1484235282051;
	Thu, 12 Jan 2017 07:34:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Thu, 12 Jan 2017 07:34:21 -0800 (PST)
In-Reply-To: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jan 2017 15:34:21 +0000
Message-ID: <CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
To: Roger Smith <roger@sentientblue.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 15:34:45 -0000
Content-Type: multipart/alternative; boundary=f403045ee6d8c00ce00545e77416

--f403045ee6d8c00ce00545e77416
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com> wrote:

> Is there any documentation for running the Yocto build system on Mac OS X
> or macOS as Apple now calls it? I am working with the Intel Aero board.
> Before I go down the rabbit hole of fixing issues like this one (and I am
> using the bash shell), I=E2=80=99d like to know if anyone has build it on=
 os x
> before.
>

If you install all of the GNU tools using brew or similar and put them
first on $PATH then you can get bitbake started.  Then you need to stub out
the linux-specific bits in bitbake.  I've previously started on this work
already (
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/darwin=
).
The next step is figuring out how to configure OE to build and link
natively on OSX using LLVM instead of GCC.

However all of this is mostly academic because in Sierra (iirc) onwards
there is tighter security on processes, which means that pseudo won't work
even if you port it to macOS.

So unless you fancy some non-trivial engineering the short version is just
use something like Docker to run a Linux system on your Mac.

Ross

--f403045ee6d8c00ce00545e77416
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 January 2017 at 15:14, Roger Smith <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:roger@sentientblue.com" target=3D"_blank">roger@sentientblue.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bord=
er-left-style:solid;padding-left:1ex"><div style=3D"word-wrap:break-word">I=
s there any documentation for running the Yocto build system on Mac OS X or=
 macOS as Apple now calls it? I am working with the Intel Aero board. Befor=
e I go down the rabbit hole of fixing issues like this one (and I am using =
the bash shell), I=E2=80=99d like to know if anyone has build it on os x be=
fore.<div></div></div></blockquote></div><br>If you install all of the GNU =
tools using brew or similar and put them first on $PATH then you can get bi=
tbake started.=C2=A0 Then you need to stub out the linux-specific bits in b=
itbake.=C2=A0 I&#39;ve previously started on this work already (<a href=3D"=
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/darwin=
">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/darw=
in</a>).=C2=A0 The next step is figuring out how to configure OE to build a=
nd link natively on OSX using LLVM instead of GCC.</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">However all of this is mostly =
academic because in Sierra (iirc) onwards there is tighter security on proc=
esses, which means that pseudo won&#39;t work even if you port it to macOS.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">So un=
less you fancy some non-trivial engineering the short version is just use s=
omething like Docker to run a Linux system on your Mac.</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--f403045ee6d8c00ce00545e77416--
