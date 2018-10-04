Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E526E00566; Thu,  4 Oct 2018 11:23:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tdhammer99[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FBC9E00519
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 11:23:49 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id y81-v6so8301446oia.6
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 11:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0ZoDvVpqRtVhGxuW9nQtvEGL45spy9qMCdVkWrHM4N8=;
	b=no1ZHMjDGI8JfVKptzlnzesDScuzH+SGZ5RMq2iKcUH3j3Dk1fJCd4qOhrf6pei74L
	jl7kfVEEMh4koqeJrnbK4TW5LysHWgtI/XhntUc4jOOz8S8OV5/oYqFLTYsgIkY65vy8
	N4Zf7Ox3vYKusN7zNy7ROmT+lY2GGO/uTaK1UKULMqvtHxL863xLcEPLLf7rbKL5eTkN
	Bkmk+RXYajVZnfVvBYsKA4K+fRS45XTRmwNI4ocw9jR3JvVGAltKf+SMSppUHUeeSiPR
	GyKhdWNQ6ZlUgWKYFPXIPWJ0FUb6rrRz08Gq++dr9HEI7EgwJmKvU1UnKDIy13BQqHbo
	hE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0ZoDvVpqRtVhGxuW9nQtvEGL45spy9qMCdVkWrHM4N8=;
	b=oowZeA/BW7shmWdB0AweGvN+j9pym3Ygke8b73S7BpBZXB2z9qE81088M6KXDZAZhZ
	X/CKAOR8ZxZ8Vk0pHTFKxpBWEn9EEojt3kzJi+qgxeaaaUSGVBfp9SGel0OF+oz39V4S
	JscUUIv9qItNxU/zV0XFdSZwLgkM9wr1EbNZh4taTEQaBdU1SXJs/AuPDZKRmgVwTbqb
	2MJ+JIa6M0ppO5vMjNlWJPMsIF5lGeEm6eXd9+8qKZpclx3ydlSigg8X6A7xkIo+eIyV
	NwCveXCjuXakYYizg5Oesp/xn/JijITXkjGMGtkeJTjGfPWWl1jFOnrQ3BmUM5+4wHBH
	JzWQ==
X-Gm-Message-State: ABuFfoigDOai1GxUIWWwpz7RMrlmeSWG4/UPQFLNpjdIwxuQRYdUO/uH
	s6Hitce41TIM+Y3cpuiBXCSbD9oICY1Q+cJ1ELo=
X-Google-Smtp-Source: ACcGV60VA0x8WunRm5mxOIHJS3rQIRO2s+oFwsMJCvRQKfOuGKMSHN0qN/Rm28byszZjwFza+Iof3r8rJRx0VB+DdPU=
X-Received: by 2002:aca:505:: with SMTP id 5-v6mr3863605oif.365.1538677428589; 
	Thu, 04 Oct 2018 11:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <CALh9vaUAcgWqOytyo9Z=Q++Y8JXBNtx7pA1YRyW=THtF6O2T7w@mail.gmail.com>
	<CAJTo0La_UUWuAeR1tGAFaY87qTmcubJBDxnUX0DoX9LHhkMeRA@mail.gmail.com>
In-Reply-To: <CAJTo0La_UUWuAeR1tGAFaY87qTmcubJBDxnUX0DoX9LHhkMeRA@mail.gmail.com>
From: Tim Hammer <tdhammer99@gmail.com>
Date: Thu, 4 Oct 2018 14:23:37 -0400
Message-ID: <CALh9vaVnRb=AN6v93UotQiyRKfrCGCyn6wO=xTpjfKFpNP9gYA@mail.gmail.com>
To: ross.burton@intel.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: DEPENDS=libusb1 | libusb-compat not building package
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
X-List-Received-Date: Thu, 04 Oct 2018 18:23:50 -0000
Content-Type: multipart/alternative; boundary="0000000000008e1bde05776b413b"

--0000000000008e1bde05776b413b
Content-Type: text/plain; charset="UTF-8"

Even with libusb1 in DEPENDS it fails. It may be in the configure script
(which works fine "outside" of a bitbake build), but what I am confused
about is the lack of any libusb content in my cc-tool build tree.

When I added boost to the DEPENDS, I got the headers and libraries in
recipe-sysroot/...
I am not getting any libusb stuff there with libusb1 in DEPENDS.


On Thu, Oct 4, 2018 at 2:01 PM Burton, Ross <ross.burton@intel.com> wrote:

> The recipe you're after for DEPENDS is libusb1.  If that doesn't work
> then there's a bug in the configure script.
>
> Ross
> On Thu, 4 Oct 2018 at 18:19, Tim Hammer <tdhammer99@gmail.com> wrote:
> >
> > I am trying to write a recipe for cc-tool (
> https://sourceforge.net/projects/cctool/) and ran into the following
> error during the build:
> >
> > | checking for libusb-1.0 >= 1.0.0... no
> > | configure: error: Package requirements (libusb-1.0 >= 1.0.0) were not
> met:
> > |
> > | No package 'libusb-1.0' found
> >
> >
> > I have added "libusb1" and then tried "libusb-compat" and also "libusb"
> as well as "libusb-1.0" to my recipe's DEPENDS but nothing gets
> fetched/built.
> >
> > I previously encountered the same failure with Boost and adding it to
> DEPENDS was the solution. What am I missing for libusb-1.0?
> >
> > Do I need to instead modify the configure input to look in a different
> location for libusb-1.0?
> > --
> >
> > .Tim
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>


-- 

.Tim

--0000000000008e1bde05776b413b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>Even with libusb1 in DEPENDS it fails. It may be =
in the configure script (which works fine &quot;outside&quot; of a bitbake =
build), but what I am confused about is the lack of any libusb content in m=
y cc-tool build tree.</div><div><br></div><div>When I added boost to the DE=
PENDS, I got the headers and libraries in recipe-sysroot/...</div><div>I am=
 not getting any libusb stuff there with libusb1 in DEPENDS.</div><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Oct 4, =
2018 at 2:01 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">r=
oss.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>The recipe you&#39;re after for DEPENDS is libusb1.=C2=A0 If that doesn&#3=
9;t work<br>
then there&#39;s a bug in the configure script.<br>
<br>
Ross<br>
On Thu, 4 Oct 2018 at 18:19, Tim Hammer &lt;<a href=3D"mailto:tdhammer99@gm=
ail.com" target=3D"_blank">tdhammer99@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I am trying to write a recipe for cc-tool (<a href=3D"https://sourcefo=
rge.net/projects/cctool/" rel=3D"noreferrer" target=3D"_blank">https://sour=
ceforge.net/projects/cctool/</a>) and ran into the following error during t=
he build:<br>
&gt;<br>
&gt; | checking for libusb-1.0 &gt;=3D 1.0.0... no<br>
&gt; | configure: error: Package requirements (libusb-1.0 &gt;=3D 1.0.0) we=
re not met:<br>
&gt; |<br>
&gt; | No package &#39;libusb-1.0&#39; found<br>
&gt;<br>
&gt;<br>
&gt; I have added &quot;libusb1&quot; and then tried &quot;libusb-compat&qu=
ot; and also &quot;libusb&quot; as well as &quot;libusb-1.0&quot; to my rec=
ipe&#39;s DEPENDS but nothing gets fetched/built.<br>
&gt;<br>
&gt; I previously encountered the same failure with Boost and adding it to =
DEPENDS was the solution. What am I missing for libusb-1.0?<br>
&gt;<br>
&gt; Do I need to instead modify the configure input to look in a different=
 location for libusb-1.0?<br>
&gt; --<br>
&gt;<br>
&gt; .Tim<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr"><br><span style=3D"font-family:arial narrow,sans-serif">.Tim</span><br>=
</div></div>

--0000000000008e1bde05776b413b--
