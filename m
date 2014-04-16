Return-Path: <katutxakurra@gmail.com>
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F360E00C02
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:28:45 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id hn18so1241456igb.11
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KTTn2CtkK9Na+BltAyvzWQWr3fSjIruKHZuaqhnTBn0=;
	b=Er1BUr1y9P/ScN+OPB1uMrnrAQQVz7arZc7mrMU4ray/oJmtmgDKzjXViRP2FtVAzn
	QAYEMi5AM2F5axq/eYTPoz4q+iYmUhJuVSAC4kanXogNOiPHxwq+/MZWSTHBxbEMMh6a
	XExlE8dOYcxoFpjZiGVo+VZw//jzYGF14mXH19MYl+U4jE7pqKm+tKvUJHlEIm/VumGh
	jwW+c9OOiJQcM3sINNqudgc0xu8d+ZcT168easb1ML31OuQqspQGFZWOoNs8U1Q/3DIS
	V3M63HgdEdwFFbwwIrNu4WkE97scRMzieut6r7lWHxZjiUw+a8weTAR23RMS0yE5neGP
	7aQQ==
MIME-Version: 1.0
X-Received: by 10.50.85.18 with SMTP id d18mr10853198igz.42.1397665725360;
	Wed, 16 Apr 2014 09:28:45 -0700 (PDT)
Received: by 10.50.115.2 with HTTP; Wed, 16 Apr 2014 09:28:45 -0700 (PDT)
In-Reply-To: <2723535.xEbZsL9sAs@peggleto-mobl5.ger.corp.intel.com>
References: <CAM1ZcoVDa-mgYRYuPJqJQ4uKHNeVz+btnfFA=FnkD1xxhiFJvw@mail.gmail.com>
	<3854657.kzt0VK3YnP@peggleto-mobl5.ger.corp.intel.com>
	<CAM1ZcoU3JHc98j=6TbZXEdwkzHGCVCh11XJup289vYi_pQQQ+g@mail.gmail.com>
	<2723535.xEbZsL9sAs@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 16 Apr 2014 17:28:45 +0100
Message-ID: <CAM1ZcoUuebe55sDijir5xVqF36KuHmrax8PrqvxHPp0TptaEcg@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: non empty package group
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
X-List-Received-Date: Wed, 16 Apr 2014 16:28:46 -0000
Content-Type: multipart/alternative; boundary=089e0153703013317304f72b69b5

--089e0153703013317304f72b69b5
Content-Type: text/plain; charset=UTF-8

I see, but I don't want to feed the package from a repo, I just want to
include all the files in the package.
I'm now trying to set
PREFERRED_PROVIDER_each-recipe = "mypackagegroup"
hoping that it will change the location of the files from their individual
recipes/packages to the packagegroup.
I've just cleaned the entire tmp folder, I will find out tomorrow if this
worked.

Thanks



2014-04-16 17:17 GMT+01:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> On Wednesday 16 April 2014 17:09:19 Katu Txakur wrote:
> > yes, it does "inherit packagegroup" and all the packages are installed.
> > What I would like to have is a mypackagegroup.ipk that I can copy to any
> > system to install all the files, binaries.... in those recipes using
> "opkg
> > install mypackage.ipk"
> > The problem that I have is that the files, binaries... of the recipes in
> > RDEPENDS_${PN} are not included in the mypackagegroup.ipk. Do you know
> how
> > can I include them?
>
> opkg and similar package managers simply aren't designed to work like that;
> it's expected that both devices would have access to the same package feeds
> and therefore you would just install the packagegroup package on each
> system
> in the same way.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e0153703013317304f72b69b5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I see, but I don&#39;t want to feed the pac=
kage from a repo, I just want to include all the files in the package.<br><=
/div>I&#39;m now trying to set <br>PREFERRED_PROVIDER_each-recipe =3D &quot=
;mypackagegroup&quot; <br>
hoping that it will change the location of the files from their individual =
recipes/packages to the packagegroup.<br></div>I&#39;ve just cleaned the en=
tire tmp folder, I will find out tomorrow if this worked.<br><br></div>
Thanks<br><div><div><div><br></div></div></div></div><div class=3D"gmail_ex=
tra"><br><br><div class=3D"gmail_quote">2014-04-16 17:17 GMT+01:00 Paul Egg=
leton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com=
" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Wednesday 16 April 2014 1=
7:09:19 Katu Txakur wrote:<br>
&gt; yes, it does &quot;inherit packagegroup&quot; and all the packages are=
 installed.<br>
&gt; What I would like to have is a mypackagegroup.ipk that I can copy to a=
ny<br>
&gt; system to install all the files, binaries.... in those recipes using &=
quot;opkg<br>
&gt; install mypackage.ipk&quot;<br>
&gt; The problem that I have is that the files, binaries... of the recipes =
in<br>
&gt; RDEPENDS_${PN} are not included in the mypackagegroup.ipk. Do you know=
 how<br>
&gt; can I include them?<br>
<br>
</div>opkg and similar package managers simply aren&#39;t designed to work =
like that;<br>
it&#39;s expected that both devices would have access to the same package f=
eeds<br>
and therefore you would just install the packagegroup package on each syste=
m<br>
in the same way.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--089e0153703013317304f72b69b5--
