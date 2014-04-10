Return-Path: <romain145@gmail.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA087E00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 07:53:33 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id sa20so3434789veb.22
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 07:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=BcdZdCkujQ9OYFAT5pBnnwfsaJWMH37OwddIeu+pWQU=;
	b=oLX4SDre9UaGMs8/3wwdBJAatdp7wt75U8z2dcTN6+/pixdmB8MRMhcNNDnzzZabJG
	IpX+VzSom48T+kvBx7UTPiZpnYi55vGeyw5EijU4bNmF4m8IXDyRwpyO0t4WtWPV7J7+
	NntvNNEvATfHwM4uCOivL4ouCmjvWVzGmtSr6b8Dc+fd8o4G2ecQ97KIkjugBlzdga+h
	CXXIzN36DHJfyN+l7BlqsF68cr3nENTud02ZnLhvwRgBYFANBp8C8DxBGXhNax164ov4
	zsFptPhRfqSz9+sQYFV6EhYiSfgBKl7zgbjCSlA+C+R/zTA/IMhKbiYa3Pn256deuQ1l
	wmYQ==
X-Received: by 10.58.90.99 with SMTP id bv3mr406738veb.34.1397141612158; Thu,
	10 Apr 2014 07:53:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.236.163 with HTTP; Thu, 10 Apr 2014 07:53:12 -0700 (PDT)
In-Reply-To: <2070676.utD6R3GvnO@peggleto-mobl5.ger.corp.intel.com>
References: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
	<2070676.utD6R3GvnO@peggleto-mobl5.ger.corp.intel.com>
From: Romain <romain145@gmail.com>
Date: Thu, 10 Apr 2014 15:53:12 +0100
Message-ID: <CAKfC58tJSvWfPF0OZnBgawqw7+-7FOEzOikb=Qhwtz0vJFaTWQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: PREFERRED_PROVIDER entry in local.conf
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
X-List-Received-Date: Thu, 10 Apr 2014 14:53:33 -0000
Content-Type: multipart/alternative; boundary=089e01182b8e7e681d04f6b1614b

--089e01182b8e7e681d04f6b1614b
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

I am now using "openssh-sshd" in IMAGE_INSTALL and it solved the problem.
For jpeg unfortunately it can't be solved like this because others recipes
depends on jpeg. I think the PREFERRED_PROVIDER is the only solution to
choose between jpeg and libjpeg-turbo.

Cheers,
Romain


On 10 April 2014 14:31, Paul Eggleton <paul.eggleton@linux.intel.com>wrote:
>
> Of these, only PREFERRED_PROVIDER_sshd = "openssh" would be expected to
> work.
> However, testing it locally I think there is a problem here; I'll do some
> more
> investigation.
>
> That said, one workaround would be to find where you have "sshd" in
> RDEPENDS or
> IMAGE_INSTALL and just use the specific name (openssh-sshd) in there
> instead.
> (I'm assuming this is in one of your layers or modifications since we don't
> have runtime dependencies on "sshd" in the core itself.)

--089e01182b8e7e681d04f6b1614b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>I am now using &quot;openssh-s=
shd&quot; in IMAGE_INSTALL and it solved the problem.</div><div>For jpeg un=
fortunately it can&#39;t be solved like this because others recipes depends=
 on jpeg. I think the PREFERRED_PROVIDER is the only solution to choose bet=
ween jpeg and libjpeg-turbo.</div>

<div class=3D"gmail_extra"><br clear=3D"all"><div>Cheers,<br>Romain<br></di=
v>
<br><br><div class=3D"gmail_quote">On 10 April 2014 14:31, Paul Eggleton <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=
=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:=A0<blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">

<div><div class=3D"h5"><span style=3D"color:rgb(34,34,34)">Of these, only P=
REFERRED_PROVIDER_sshd =3D &quot;openssh&quot; would be expected to work.</=
span><br></div></div>
However, testing it locally I think there is a problem here; I&#39;ll do so=
me more<br>
investigation.<br>
<br>
That said, one workaround would be to find where you have &quot;sshd&quot; =
in RDEPENDS or<br>
IMAGE_INSTALL and just use the specific name (openssh-sshd) in there instea=
d.<br>
(I&#39;m assuming this is in one of your layers or modifications since we d=
on&#39;t<br>
have runtime dependencies on &quot;sshd&quot; in the core itself.)</blockqu=
ote></div><br></div></div>

--089e01182b8e7e681d04f6b1614b--
