Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B687EE00C61; Fri, 12 Feb 2016 03:04:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 634FDE00C55
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 03:04:38 -0800 (PST)
Received: by mail-vk0-f48.google.com with SMTP id e6so57898959vkh.2
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 03:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=pUqrbLfy79r5oSbmBIhbvjUZTRLt5JE6he4uk3+7ugg=;
	b=XjlndrCJYjDoFDWtI8yo+WJ+25oYBCccC786aCRMNn5G/Ymlk/nar13URuQmcDVYdu
	Vq7/BemrdR7Lk1LBJPQA/WYW3F2jsUVCPd4jgYQIuX5pWX/BeUp+Tx5q2U0SlIovASQK
	fTR6poXTqXnXotdO1+wLFca0RLX+5oAC07nrYBi1SjMj18Pu4JVg3/jHVOlC3crk7M52
	rgs0o6dQc0PRe6SRDiArL+LF+PpIzvCxyQKmc7NYBE2SqsIXbBcpYD5LsVUxccIXT7Xh
	iULP8FXanjFVtbeI5u/LbTaJd0/eOD8Je7HB/rgr3SgX0Hqo/qqsiTT9qu5RJObh1eX6
	T64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=pUqrbLfy79r5oSbmBIhbvjUZTRLt5JE6he4uk3+7ugg=;
	b=c5JlSdhIOnOGQXWkTZcDue+zTAz7FXB5MmZmA8GSFv/tSGnS8c49pk7e+4L0gEUC6A
	6fvzkmz381tmdS4ohjmeuoj5AbP47OhCgAclxkp7T9TRWJ3cRGveub7NbS1p5nyt7Zkl
	0yOao21w0AbVK2E5C4CJyxXdGViEsK/+a/F6tQkgdz2NCdTJqzDGLXxHjZ6t/IUE/cAw
	2Tx7HRZB6kixYgrp3pzjyyYKhNFgX0x0aGBrsGMnZwlbhSC63mYSClDda0rQBvf4TEcc
	6xaTFLo7+4hXNGluLF/F/aGC97qq/+YJxDXWcW0uq/PZsQofwaoGlr6rxg4k1o06X0hN
	LVdw==
X-Gm-Message-State: AG10YOQsb0sNBp/szZgA9/ChwQek/GlRlUy07MuPfTGNm3C53OaSoX5Zoqhegn1UwaWP4U0Fg+dorcK2V5L34g==
MIME-Version: 1.0
X-Received: by 10.31.178.146 with SMTP id b140mr622713vkf.108.1455275077637;
	Fri, 12 Feb 2016 03:04:37 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Fri, 12 Feb 2016 03:04:37 -0800 (PST)
In-Reply-To: <CALLyC8RLpNFDrr63E=+yt06RGUGVpqAzn4erwkyJ-LrHqwNOPw@mail.gmail.com>
References: <CALLyC8RLpNFDrr63E=+yt06RGUGVpqAzn4erwkyJ-LrHqwNOPw@mail.gmail.com>
Date: Fri, 12 Feb 2016 16:34:37 +0530
Message-ID: <CALLyC8Tz+igKObccXXbj_5PGg3zVZenSY8jkMG9RpuLH-hUdKA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Re: How to create do_populate_sysroot_append task
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
X-List-Received-Date: Fri, 12 Feb 2016 11:04:41 -0000
Content-Type: multipart/alternative; boundary=001a1144034c0da272052b90a251

--001a1144034c0da272052b90a251
Content-Type: text/plain; charset=UTF-8

I got the solution for the above issue , we can create a custom has given
below  in the recipe

#################
addtask copy_files_sysroot after do_populate_sysroot before do_package

do_copy_files_sysroot() {
------------------------
-----------------------
 }
#################
I hope this solution  may be used for the other

On Thu, Feb 11, 2016 at 9:10 PM, Vivek Per <pervivek@gmail.com> wrote:

> Hi,
>     I want to add some additional kernel files to sysroot directory . I
> want to extend do_populate_sysroot task , I want to copy few more files in
> to sysroot after do_populate_sysroot and before do_package. I tried to
> create do_populate_sysroot_append() in recipe  but it is getting parsing
> error . how could i add file in sysroot after populate_sysroot and before
> do_package.
>
> Thanks in advance
>    Vivek
>

--001a1144034c0da272052b90a251
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I got the solution for the above issue , we can create a c=
ustom has given below =C2=A0in the recipe=C2=A0<div><br><div>##############=
###<br><div><div>addtask copy_files_sysroot after do_populate_sysroot befor=
e do_package</div><div><br></div><div>do_copy_files_sysroot() { =C2=A0</div=
><div>------------------------</div><div>-----------------------</div><div>=
=C2=A0}</div></div></div><div>#################</div></div><div>I hope this=
 solution =C2=A0may be used for the other</div></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Thu, Feb 11, 2016 at 9:10 PM, Vivek =
Per <span dir=3D"ltr">&lt;<a href=3D"mailto:pervivek@gmail.com" target=3D"_=
blank">pervivek@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 I want to add some additional=
 kernel files to sysroot directory . I want to extend do_populate_sysroot t=
ask , I want to copy few more files in to sysroot after do_populate_sysroot=
 and before do_package. I tried to create do_populate_sysroot_append() in r=
ecipe =C2=A0but it is getting parsing error . how could i add file in sysro=
ot after populate_sysroot and before do_package.</div><div><br></div><div>T=
hanks in advance</div><span class=3D"HOEnZb"><font color=3D"#888888"><div>=
=C2=A0 =C2=A0Vivek</div></font></span></div>
</blockquote></div><br></div>

--001a1144034c0da272052b90a251--
