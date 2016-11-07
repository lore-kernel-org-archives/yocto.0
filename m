Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A79DEE004E5; Mon,  7 Nov 2016 11:31:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B4C3E00498
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 11:31:04 -0800 (PST)
Received: by mail-vk0-f54.google.com with SMTP id w194so130055696vkw.2
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 11:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zN41LtMxSwUU+M1AkpSWtwlpDiU8OhSTi7euCHTSYEE=;
	b=syUha74JkRuFu8UUj6+KcjKptbJn0MGlEs9q9WoqVu23HwWlrmkYuzUpz7R+52yvRz
	0IUYBUJbH1xFJRA3hCgRG/j9PPLK6TwZTng3wLyJgQ0S43aYQs/wkKVUBTFlq9+YvOMd
	XpYJ23TzlDU77YhZ8YHq7Qr0GkMyOJB/T4E2KSCfcD18+GfC4xe7wgPdUGLSbJXl9tQf
	Dz33u3JuUgmA/ABiQHDfWe6vK6eFo3Eidz2lWAzpm/uMQsblJJTM+Z9SIplN4FFwqhrA
	q3p1jCQbRMl/uoL1wlOu62FFAcITjC8zbgTTe9iZY/4vlsUanqypgSXF/lZJJy89FWIZ
	bT2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zN41LtMxSwUU+M1AkpSWtwlpDiU8OhSTi7euCHTSYEE=;
	b=KxmkojSay1ynWqL8wxKWVyimDPIFJf/MlRiUgdYQz1M51jkhv57ms3tjG8x6QPxEMf
	tmWtRsQarZtYCpx+a+3drZURvaZko/IMmpQ2MX3rFp5EmMculCUFn1O/8uMKEhHuVbh0
	SclAEk7ighQrgyFB3NZNrv/PNPBF7CNM2oV+t21kzRBnak8j9j+RKM78j9/gT8Ysh231
	BJnQ724CIK6iH4b5PbDkyq7hfxO6rru4z4dHlc+wQQmEO9OtS4HOk5fdK2GGDQGiPhLZ
	CoIrQnXlUHBLObUJVW/bN043fzp0tIJvHRe1/hg5iEogLYu3Uz6fib2Rj5sGekrsXL4d
	vd0Q==
X-Gm-Message-State: ABUngveUOY99K5qDN8PVlKqQ9aHIWmb+FAxeQtopSKHOysdE/P431tKzjLpkLfNW/wp8BcjcefnMxvP/6upV1g==
X-Received: by 10.31.120.9 with SMTP id t9mr5734288vkc.39.1478547064187; Mon,
	07 Nov 2016 11:31:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.83.27 with HTTP; Mon, 7 Nov 2016 11:31:03 -0800 (PST)
In-Reply-To: <CAGMdoFkRJbK=YXzm2GDxEd-oLh2hWh+OHNQ9RoOgvB6Dwm2DYA@mail.gmail.com>
References: <f9a57cb411c94c0c8f191bad3d391b35@SI-MBX1022.de.bosch.com>
	<56D865D5.2010702@windriver.com>
	<CAGMdoFkRJbK=YXzm2GDxEd-oLh2hWh+OHNQ9RoOgvB6Dwm2DYA@mail.gmail.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Mon, 7 Nov 2016 20:31:03 +0100
Message-ID: <CAEjjReLCNOKCq5dawyvbFyH=M5B1eot36SLuwCXMFJ1r_o-fUg@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to handle meta-intel/openembedded repos with multiple developers
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
X-List-Received-Date: Mon, 07 Nov 2016 19:31:07 -0000
Content-Type: multipart/alternative; boundary=94eb2c14a1288b71bb0540bb101f

--94eb2c14a1288b71bb0540bb101f
Content-Type: text/plain; charset=UTF-8

Hi,

How you store your project configuration ? How you prepare workspace
(download each layer separately)?
Basic stuff, SW release should be reproducible (in easy way). Store
somewhere used hash of each piece or use tags. Non company assets should be
already somehow tagged or you use HEAD or master/-next ?

Br,
Chris Z

On Thu, Oct 27, 2016 at 8:22 AM, Edward Wingate <edwingate8@gmail.com>
wrote:

> On Thu, Mar 3, 2016 at 8:27 AM, Mark Hatle <mark.hatle@windriver.com>
> wrote:
> >  At some point during product development a lead/architect needs to make
> the
> > decision to 'freeze' development and at that point everything is
> tagged/branched
> > and only backports are used from them on.  (If the number of backports
> gets too
> > large, you MIGHT decide to selectively rebase.)
>
> I'm currently trying to figure out with how to control external layers
> in my Yocto build and found this thread.  I'm a little unclear on how
> to track a release to the version used on non-company layers.  Say I'm
> using poky, meta-openembedded, meta-xilinx and then my own layer,
> meta-me. When I freeze development and do a release, I can tag
> meta-me, but because I also treat non-company assets as RO, I
> shouldn't tag poky, meta-openembedded nor meta-xilinx (or should I? Is
> this where I use git's lightweight tagging as opposed to annotated
> tags?) When "everything is tagged/branched", does that somehow include
> tagging the non-company assets?  Thanks for any help.
>
> Ed
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c14a1288b71bb0540bb101f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div><div>How you store your project=
 configuration ? How you prepare workspace (download each layer separately)=
?<br></div><div>Basic stuff, SW release should be reproducible (in easy way=
). Store somewhere used hash of each piece or use tags. Non company assets =
should be already somehow tagged or you use HEAD or master/-next ?<br></div=
><div><br></div>Br,<br></div>Chris Z<br></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Thu, Oct 27, 2016 at 8:22 AM, Edward Wingat=
e <span dir=3D"ltr">&lt;<a href=3D"mailto:edwingate8@gmail.com" target=3D"_=
blank">edwingate8@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">On Thu, Mar 3, 2016 at 8:27 AM, Mark Hatle &lt;<a href=3D"mailto:m=
ark.hatle@windriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br>
&gt;=C2=A0 At some point during product development a lead/architect needs =
to make the<br>
&gt; decision to &#39;freeze&#39; development and at that point everything =
is tagged/branched<br>
&gt; and only backports are used from them on.=C2=A0 (If the number of back=
ports gets too<br>
&gt; large, you MIGHT decide to selectively rebase.)<br>
<br>
I&#39;m currently trying to figure out with how to control external layers<=
br>
in my Yocto build and found this thread.=C2=A0 I&#39;m a little unclear on =
how<br>
to track a release to the version used on non-company layers.=C2=A0 Say I&#=
39;m<br>
using poky, meta-openembedded, meta-xilinx and then my own layer,<br>
meta-me. When I freeze development and do a release, I can tag<br>
meta-me, but because I also treat non-company assets as RO, I<br>
shouldn&#39;t tag poky, meta-openembedded nor meta-xilinx (or should I? Is<=
br>
this where I use git&#39;s lightweight tagging as opposed to annotated<br>
tags?) When &quot;everything is tagged/branched&quot;, does that somehow in=
clude<br>
tagging the non-company assets?=C2=A0 Thanks for any help.<br>
<br>
Ed<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c14a1288b71bb0540bb101f--
