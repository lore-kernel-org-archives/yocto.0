Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50826E00AB5
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 07:22:15 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id s7so838538lbd.15
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 07:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=/+vQ1JVydSHBtBRlZgf0HfbXM+xo+cHxC7neRRDMMGw=;
	b=iIVNo9MXe6A4hVyUez9WTA7+1MpNhhJeLRKlg3Zuz23EidPZalodelaDt6j2vnIKvR
	0/4XO6/lUwGs5Cd/PmOrDVka/FMFhUa3j3ZN6C/Ix51Vlf+/bXf+4TM2xlIPzBV9rSM6
	T+BTLj3Pk/3SM7BHd+nyWe0Tyj0Tn3duN76Q6SX9nlrqkJqK3vs60B3sQc/wYVCGO312
	ezklyPxdzaSYBZQVP36ozpinpSD6LH702kqx0ZDPbob4l00KJ1islxkX18kqdH5vgYRR
	mwJW89m7grJHI5ZkKfsKNTVL8W4zaBjNFpgzax0vdRevY6OmkXVRohpLU4gnf0C8psBl
	oZHw==
X-Received: by 10.112.139.166 with SMTP id qz6mr31722187lbb.13.1398262933257; 
	Wed, 23 Apr 2014 07:22:13 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Wed, 23 Apr 2014 07:21:53 -0700 (PDT)
In-Reply-To: <5357CAF3.1070702@mlbassoc.com>
References: <5357CAF3.1070702@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 23 Apr 2014 07:21:53 -0700
X-Google-Sender-Auth: 069GgIh0kQJyyRH3JJqzClvo7yU
Message-ID: <CABcZANmHUB-v=zek8jxLWtUjSEGYZCjqL2q=3a=fUKXiMn4nSw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How does python-native work?
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
X-List-Received-Date: Wed, 23 Apr 2014 14:22:17 -0000
Content-Type: multipart/alternative; boundary=001a11c266927085f404f7b67568

--001a11c266927085f404f7b67568
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 23, 2014 at 7:15 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> How is python-native supposed to work?  I can see that it's
> built and installed in my tmp/sysroots/HOST but it's installed
> in a sub-directory which is not found by normal means.
>

inherit pythonnative (or one of the classes that inherit it)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c266927085f404f7b67568
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Apr 23, 2014 at 7:15 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":1l7" class=3D"a3s" style=3D"over=
flow:hidden">How is python-native supposed to work? =C2=A0I can see that it=
&#39;s<br>

built and installed in my tmp/sysroots/HOST but it&#39;s installed<br>
in a sub-directory which is not found by normal means.</div></blockquote></=
div><br>inherit pythonnative (or one of the classes that inherit it)<br>-- =
<br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, =
OpenEmbedded, OpenZaurus<br>

Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--001a11c266927085f404f7b67568--
