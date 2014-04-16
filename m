Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 692A0E00C03
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:09:19 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id tp5so10639882ieb.40
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pEYWgDCxKrYpH7aFFujwk+0Pb1scwtd9GbnKVCvLLLY=;
	b=okK+8ZHB/8OhZYKFFRFQOOl5o9F0ffciRLsBp5L2ywLmqZ+SjNKo9Mvr8sq9IEGhP8
	zBMWI8XGLOpjMpnxFY3ZjD5jZTnbtDQk3I14P141ZkukDPaP7trHYv0/Ku0YXT8Xf13B
	isCVcqxgRRlBkN7R7D49d159/BxAshJpcZahXPJhtf9I1Pp+o3o2dZivtyWGToTHQyts
	izbSejpdyLh0w4J5TKuYTWjMjuhe4w2SIFcoh3/M06yPjdVPlEgyYXB9o4IK3CR33r5A
	5SWGwoHxOdTsldEq9AmZg8/kd2o6lYRLDWfdfBzormflvE+aiLg03hD/rfi3kTasdimd
	Yc6w==
MIME-Version: 1.0
X-Received: by 10.50.1.5 with SMTP id 5mr5802112igi.13.1397664559245; Wed, 16
	Apr 2014 09:09:19 -0700 (PDT)
Received: by 10.50.115.2 with HTTP; Wed, 16 Apr 2014 09:09:19 -0700 (PDT)
In-Reply-To: <3854657.kzt0VK3YnP@peggleto-mobl5.ger.corp.intel.com>
References: <CAM1ZcoVDa-mgYRYuPJqJQ4uKHNeVz+btnfFA=FnkD1xxhiFJvw@mail.gmail.com>
	<3854657.kzt0VK3YnP@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 16 Apr 2014 17:09:19 +0100
Message-ID: <CAM1ZcoU3JHc98j=6TbZXEdwkzHGCVCh11XJup289vYi_pQQQ+g@mail.gmail.com>
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
X-List-Received-Date: Wed, 16 Apr 2014 16:09:20 -0000
Content-Type: multipart/alternative; boundary=e89a8f64737f91b1d604f72b2358

--e89a8f64737f91b1d604f72b2358
Content-Type: text/plain; charset=UTF-8

Thanks Paul,

yes, it does "inherit packagegroup" and all the packages are installed.
What I would like to have is a mypackagegroup.ipk that I can copy to any
system to install all the files, binaries.... in those recipes using "opkg
install mypackage.ipk"
The problem that I have is that the files, binaries... of the recipes in
RDEPENDS_${PN} are not included in the mypackagegroup.ipk. Do you know how
can I include them?



2014-04-16 16:59 GMT+01:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> On Wednesday 16 April 2014 16:54:11 Katu Txakur wrote:
> > I have some recipes that generate multiple packages.
> > I also have a package group that groups all the recipes.
> > I would like to use the package created with the packagegroup recipe to
> > install all the files coming from my recipes into the target system. The
> > aim is to have one package that will install/update all the binaries,
> > libraries and config of the recipes included in the packagegroup.
> > How can I include all the files in the recipes added to REDEPENDS of the
> > package group into the package to do this?
> > I've tried RPROVIDES but the .ipk package created from the
> > mypackagegroup.bbrecipe doesn't include any of the files.
>
> If your packagegroup recipe does "inherit packagegroup" and sets
> RDEPENDS_${PN} to depend upon the packages within the group, that will
> ensure
> that the packages get installed when the packagegroup's package is
> installed.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--e89a8f64737f91b1d604f72b2358
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Thanks Paul,<br><br></div>yes, it does &quo=
t;inherit packagegroup&quot; and all the packages are installed.<br>What I =
would like to have is a mypackagegroup.ipk that I can copy to any system to=
 install all the files, binaries.... in those recipes using &quot;opkg inst=
all mypackage.ipk&quot;<br>
</div>The problem that I have is that the files, binaries... of the recipes=
 in=C2=A0 RDEPENDS_${PN} are not included in the mypackagegroup.ipk. Do you=
 know how can I include them?<br><br></div></div><div class=3D"gmail_extra"=
><br>
<br><div class=3D"gmail_quote">2014-04-16 16:59 GMT+01:00 Paul Eggleton <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=
=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span>:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Wednesday 16 April 2014 16:54:11=
 Katu Txakur wrote:<br>
&gt; I have some recipes that generate multiple packages.<br>
&gt; I also have a package group that groups all the recipes.<br>
&gt; I would like to use the package created with the packagegroup recipe t=
o<br>
&gt; install all the files coming from my recipes into the target system. T=
he<br>
&gt; aim is to have one package that will install/update all the binaries,<=
br>
&gt; libraries and config of the recipes included in the packagegroup.<br>
&gt; How can I include all the files in the recipes added to REDEPENDS of t=
he<br>
&gt; package group into the package to do this?<br>
&gt; I&#39;ve tried RPROVIDES but the .ipk package created from the<br>
</div></div>&gt; mypackagegroup.bbrecipe doesn&#39;t include any of the fil=
es.<br>
<br>
If your packagegroup recipe does &quot;inherit packagegroup&quot; and sets<=
br>
RDEPENDS_${PN} to depend upon the packages within the group, that will ensu=
re<br>
that the packages get installed when the packagegroup&#39;s package is inst=
alled.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--e89a8f64737f91b1d604f72b2358--
