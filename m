Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 314FFE00A31; Fri, 26 Jun 2015 02:10:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93741E00A03
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 02:10:11 -0700 (PDT)
Received: by qgeg99 with SMTP id g99so3027895qge.0
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 02:10:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QJe2hQx+peKOqHKGe8Wr5fj2HGDqY1oFILy3WWwljnc=;
	b=I5unOOjK1bjZtm4nX41lUBB+9KCPPWmiFTiI0DDXBCUT3sJq+NHgM39jaaB0e7gEEN
	bxcM0riZ4TAoOJotPgT+o7FQ/2vQFElO7IreZGzUcL1QQg48/9lFFaB6SBltvzdHs3Ed
	BZ2YSn/3c4to3m4mH5jmDIFifXFU1g/C5+QF2UuLJAR24KPKmBSqOyzj4nAx6bov4ZXG
	Vk5ouLzXGASXmEH5T9sss5tuCS6pkSEQUvuV6g1+bsCWQoh5+LF4LL02ksQN9fk0jIEj
	EEdaYM4pLxmPFa6V9ICCvvEwlFvjvJMGbbwoSX9bPwWE5ak2E+msvN/paRLBnomNt3UA
	haHQ==
X-Gm-Message-State: ALoCoQk5MVQdak2gN06qM99V4OFXx8r/K+BPaiu8cjFdoK5oul4lM6U7mBhrhXb4FUx3HQUXrcoB
X-Received: by 10.55.40.20 with SMTP id o20mr1266832qkh.14.1435309810852; Fri,
	26 Jun 2015 02:10:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 26 Jun 2015 02:09:51 -0700 (PDT)
In-Reply-To: <558D1639.6070103@mlbassoc.com>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
	<558D1639.6070103@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jun 2015 10:09:51 +0100
Message-ID: <CAJTo0LZJkfOOvMS4Om1vMHD+CHJuVgZw=Hzyt3HjE6v44sEYPA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Fri, 26 Jun 2015 09:10:12 -0000
Content-Type: multipart/alternative; boundary=001a1142ea986b3a550519681ba5

--001a1142ea986b3a550519681ba5
Content-Type: text/plain; charset=UTF-8

On 26 June 2015 at 10:07, Gary Thomas <gary@mlbassoc.com> wrote:

> Is that something that can be in the recipe, or is this ability
> something that needs to be added to the bitbake/OE-core infrastructure?
>

The fetcher needs to be patched.

Ross

--001a1142ea986b3a550519681ba5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 June 2015 at 10:07, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":3k9" class=3D"a3s" style=
=3D"overflow:hidden">Is that something that can be in the recipe, or is thi=
s ability<br>
something that needs to be added to the bitbake/OE-core infrastructure?<br>=
</div></blockquote><div><br></div><div>The fetcher needs to be patched.</di=
v><div><br></div><div>Ross=C2=A0</div></div><br><br></div></div>

--001a1142ea986b3a550519681ba5--
