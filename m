Return-Path: <jack.c.kiefer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D63EE00BB6; Mon, 10 Jul 2017 11:16:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jack.c.kiefer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.169 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6FFDE00B76
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 11:16:56 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id w19so60120114uac.0
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 11:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=RHwFsyL9eEXFqsGmbvhkxZqjiBUrZpYQIpf6xV6DKQk=;
	b=EURc89aYBA+FbgP+Q2HSpnmagFOYz0R/ctbROIcaZmHalGQ2ffghd5DcAtHHv3+bmL
	axMNRBzSU5CqC/iExK8dBW30sQIDcaMai5T8tCHAw46/FVddD0UlFyhHmU4rRQtLaLqk
	PfU0V9RTo8EtRetqYtuu+k8Z+lIoyQ762ba0naDGvc8rtNbO+rEGQ1vZFh8cOv6h0I/J
	Rrx2Z/obfFrz+poImBo0XuhmHCXAnpvVzusYjPX9vf9JwKzbY6fFHfyyN9pp0WDSQ2gt
	5d3ytKNuh9AhYXYVuWWsMwqSBe5tVUOw18CCiAwi6DOqnbICrIRc+mKj3BsCnixBNVM+
	ywVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=RHwFsyL9eEXFqsGmbvhkxZqjiBUrZpYQIpf6xV6DKQk=;
	b=FqiawuPkPtyUI7WPp2s7g8Z6kyG7pKw2ckzDufLmPX61/kOZGSwYbqFRayl4x4bgrz
	OKViKdlHuQWlogc7pDwsU0g6zFa5KWb4Y4VwNRbuHpFIya9aSJxucVTSUhex7rNDu94c
	YhqqJ0L/7lU0Xhn3gO3CnveQxhUXVZAS32ZH3+yrkvjyZ+RE1nN2b+8u3HKRaEnCXBqL
	owUi8GonQdPaN4S+XiSMWp0dPiRFmd3NjuK37pO81xwo/qn11tyshyfjbUni6fV6ULpI
	k+jD+1lPYAnZxb2Ssr57eVjWKcZacwySuTV3tnHM34vIBK/lOJ/BFo+twc0+Tw+4CHWF
	6V1w==
X-Gm-Message-State: AIVw112McK8B5w7tlnmDB5hyTTLmB/SXPnjnZPFUToSWCyo+Fka5Q8hR
	1gKA3EzCkSvjn2UHPD0iI8XvwRXJDw==
X-Received: by 10.176.90.201 with SMTP id x9mr9915389uae.129.1499710615740;
	Mon, 10 Jul 2017 11:16:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAJQwCK__xrOSmtex3jTp6sY9X7e6ySJJxFA3hQW3Obq=toCurQ@mail.gmail.com>
	<96e845c3-4f0b-69e6-ae3c-b2f201c33cdc@gmail.com>
In-Reply-To: <96e845c3-4f0b-69e6-ae3c-b2f201c33cdc@gmail.com>
From: Jack Kiefer <jack.c.kiefer@gmail.com>
Date: Mon, 10 Jul 2017 18:16:45 +0000
Message-ID: <CAJQwCK95Fwjh5q+8FvhjNWChHdHDQi_WOtZCaQwzGv50qBzU-A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
Subject: Re: Openssh patch being overriden by original unpatched file
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
X-List-Received-Date: Mon, 10 Jul 2017 18:16:58 -0000
Content-Type: multipart/alternative; boundary="f403045f8b528466c40553fa9602"

--f403045f8b528466c40553fa9602
Content-Type: text/plain; charset="UTF-8"

Ah, yes, apologies if I wasn't very clear. That is what I ended up doing.
What I was originally after was trying to modify the file in a way such
that if an update to openssh were to change the way the config file is laid
out there would be a better chance that my modifications would still be
compatible. That is, a potential update to the default config file is
unlikely to change the way a specific option I'm modifying is handled, but
if any other major/breaking changes are made to how the config file works
then my own layer's entire sshd_config would be inappropriate for the new
version of openssh and would need to be manually replaced and updated. This
manual work is what I am trying to avoid.

On Mon, Jul 10, 2017 at 12:02 PM Khem Raj <raj.khem@gmail.com> wrote:

> On 7/10/17 10:48 AM, Jack Kiefer wrote:
> > Howdy all,
> >
> > I've been having a bit of an interesting time trying to ship a modified
> > sshd_config file to my images using Yocto Morty. I first tried adding a
> > .bbappend to the openssh recipe in which I prepended a patch file that
> > would modify sshd_config to my liking. Interestingly, Yocto would
> > definitely run do_patch and presumably patch the file successfully (I
> > ensured the patch was correct by manually using the patch command), but
> > somehow the patched file was still overridden by the original file in
> > the final version of the image.
> >
> > I've been able to temporarily remedy this by using the .bbappend to
> > simply use an entire modified sshd_config file from its FILES directory
> > rather than applying a patch.
> >
> > Is this how Yocto is supposed to behave? Is there a more correct way of
> > providing fairly version-agnostic modifications to config files like
> this?
> >
>
> this file is specified in SRC_URI as a whole to be copied from recipe
> area to build area
>
> SRC_URI =
> "http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-${PV}.tar.gz
> \
>            file://sshd_config \
>            file://ssh_config \
> ...
>
> when you want to override such cases where a conf file is provides via
> the metadata on top of original sources then you can create a .bbappend
> in your own layer and let bitbake parse it via adding
>
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> and then put your sshd_config file in your own layer e.g under
> recipes-connectivity/openssh/openssh/
>
> This will instruct bitbake to use the config file from your overlay
> also pay attention to layer priority, usually you want your own layer
> to have higher priority and appear before other layers in BBPATH
>
>
> > Thanks!
> > Jack
> >
> >
>
>
>

--f403045f8b528466c40553fa9602
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ah, yes, apologies if I wasn&#39;t very clear. That is wha=
t I ended up doing. What I was originally after was trying to modify the fi=
le in a way such that if an update to openssh were to change the way the co=
nfig file is laid out there would be a better chance that my modifications =
would still be compatible. That is, a potential update to the default confi=
g file is unlikely to change the way a specific option I&#39;m modifying is=
 handled, but if any other major/breaking changes are made to how the confi=
g file works then my own layer&#39;s entire sshd_config would be inappropri=
ate for the new version of openssh and would need to be manually replaced a=
nd updated. This manual work is what I am trying to avoid.=C2=A0</div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Jul 10, 2017 at 12:02 PM=
 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 7/10/17 10:48 AM, Jac=
k Kiefer wrote:<br>
&gt; Howdy all,<br>
&gt;<br>
&gt; I&#39;ve been having a bit of an interesting time trying to ship a mod=
ified<br>
&gt; sshd_config file to my images using Yocto Morty. I first tried adding =
a<br>
&gt; .bbappend to the openssh recipe in which I prepended a patch file that=
<br>
&gt; would modify sshd_config to my liking. Interestingly, Yocto would<br>
&gt; definitely run do_patch and presumably patch the file successfully (I<=
br>
&gt; ensured the patch was correct by manually using the patch command), bu=
t<br>
&gt; somehow the patched file was still overridden by the original file in<=
br>
&gt; the final version of the image.<br>
&gt;<br>
&gt; I&#39;ve been able to temporarily remedy this by using the .bbappend t=
o<br>
&gt; simply use an entire modified sshd_config file from its FILES director=
y<br>
&gt; rather than applying a patch.<br>
&gt;<br>
&gt; Is this how Yocto is supposed to behave? Is there a more correct way o=
f<br>
&gt; providing fairly version-agnostic modifications to config files like t=
his?<br>
&gt;<br>
<br>
this file is specified in SRC_URI as a whole to be copied from recipe<br>
area to build area<br>
<br>
SRC_URI =3D<br>
&quot;<a href=3D"http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openss=
h-$%7BPV%7D.tar.gz" rel=3D"noreferrer" target=3D"_blank">http://ftp.openbsd=
.org/pub/OpenBSD/OpenSSH/portable/openssh-${PV}.tar.gz</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://sshd_config \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://ssh_config \<br>
...<br>
<br>
when you want to override such cases where a conf file is provides via<br>
the metadata on top of original sources then you can create a .bbappend<br>
in your own layer and let bitbake parse it via adding<br>
<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
and then put your sshd_config file in your own layer e.g under<br>
recipes-connectivity/openssh/openssh/<br>
<br>
This will instruct bitbake to use the config file from your overlay<br>
also pay attention to layer priority, usually you want your own layer<br>
to have higher priority and appear before other layers in BBPATH<br>
<br>
<br>
&gt; Thanks!<br>
&gt; Jack<br>
&gt;<br>
&gt;<br>
<br>
<br>
</blockquote></div>

--f403045f8b528466c40553fa9602--
