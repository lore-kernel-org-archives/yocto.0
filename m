Return-Path: <erik.boto@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F31CBE00953; Thu,  6 Sep 2018 12:10:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (erik.boto[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 554F7E00939
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 12:10:39 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id b11-v6so5756881pfo.3
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2018 12:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5q8QcoFrMNT68BQqxXbvymmRjhFAwfZB1fNAcFU2dsA=;
	b=NFc+4OBCNB+3J68DsrS9KjPx7eQ8HMO7Oukm4DNZ5AFAZnHN7hrvOJGU65PGK0UPvI
	JvzLMrpF99jkQ7O9nuBeTeJjxh9pqR1din0Wo96A6gfWXzigMPb9GhYQ/9ERuYgC9Tdc
	8DZ8hdzpVOmoCFAoa/y6lMzqcNEQ4/CcHQ61fEITX6A2J/rIcqJ1R7KYJUdVs94SZtcj
	CIJ9FmrzD9MXla0wU+2Igb7NQZaPp34j/VF8yh7g7qz/BggDwEKjBaxRweIIpHmtBnL/
	EE/W6vmT+mXc90KuP9mLOWYKOJJf82638ltF9Kw3zEAPQfYX0t0G7prdfmENUfOk8GSW
	gF3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5q8QcoFrMNT68BQqxXbvymmRjhFAwfZB1fNAcFU2dsA=;
	b=sdur6bAe4Yiy/HxdaznC55SFQzs7iv4efDDzW6ythxMu4awVNPXMnxLXRah24QKL/N
	14TWVPXIuutMpSgZTi6PUnwpH59o5kRRY39hKEN04Q/izpPjfjIXusJClTRgmMcgYY3Q
	8ZwlqcOvf17z4Qd+6l5x9T/OpM+rmtmmJmdxMBpzCu9LwCL+b0JXVqfC3jqX7zuMfxxs
	nxSgv5+0taxDGvCf5EoPROHIb1CmtlchczgQvANQs/W0Q+isNrLjABsx9f4sbTjzrQW1
	z+26pW9Zm6Li8l63pMhGKXfXccSrselO76PGshALVvQiSy00BupjQ36mYNWPP+l0PgIN
	VMKA==
X-Gm-Message-State: APzg51CUL4Usc9EZte461n8nZc2NcKe66SuLpyOCtryv5OTjoAKlCL5v
	RE4wlI/yliGm/pnwmZ2CyQzf+K7qxFREBHbuGB+Vng==
X-Google-Smtp-Source: ANB0VdYSiJhIHPkqeicC5rQ8u+/2wDfXlnb4OLidRYohzxKtfdI9JDqjQEMUM9BPm0qu0g3ao47U9YdVnPRQ3BTKMrY=
X-Received: by 2002:a62:c0a:: with SMTP id u10-v6mr4472875pfi.43.1536261038933;
	Thu, 06 Sep 2018 12:10:38 -0700 (PDT)
MIME-Version: 1.0
References: <CACsVzKiq8gco767SGV_U-WiMNuvp-H+d_u030mBhzCPJzrkobw@mail.gmail.com>
In-Reply-To: <CACsVzKiq8gco767SGV_U-WiMNuvp-H+d_u030mBhzCPJzrkobw@mail.gmail.com>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Date: Thu, 6 Sep 2018 21:10:27 +0200
Message-ID: <CALNvYWOaXtrpM1Zu+W4QVOE1viDgBLfTgZBQ1AP4njWZ+t=SVA@mail.gmail.com>
To: Antonio Santagiuliana <santantonioswap@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: curl package config
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
X-List-Received-Date: Thu, 06 Sep 2018 19:10:40 -0000
Content-Type: multipart/alternative; boundary="000000000000820b63057538a51b"

--000000000000820b63057538a51b
Content-Type: text/plain; charset="UTF-8"

Hi,

On Thu, Sep 6, 2018 at 8:01 PM Antonio Santagiuliana <
santantonioswap@gmail.com> wrote:

> Hello
> I am trying to enable the SMB protocol when building curl library by Yocto
> the original recipe is under meta/recipes-support/curl
>
> in my image's local.conf I have
> IMAGE_INSTALL_append += "curl-dev"
>
> curl is built correctly, but SMB is disabled
>
> So I tried to add a .bbappend file with same name as the recipe's name,
> with this line only :
> PACKAGECONFIG = "--enable-smb"
>
> but I still have SMB disaabled on curl.
>
> Which is the right way to enable it with PACKAGECONFIG?
> or another way ?
>

You just want to add "smb" to the variable PACKAGECONFIG in the bbappend.
But since the original recipe uses ??= to assign the default PACKAGECONFIG
value you probably want to either redefine the whole variable as the
original recipe, but adding "smb"
PACKAGECONFIG = "${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} gnutls
libidn proxy threaded-resolver verbose zlib smb"

I think it could work if you use _append as well, since I think that's
added after the ??= operator is evaluated. So you can also try (note the
space before smb):
PACKAGECONFIG_append = " smb"

Cheers,
Erik

thank you
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000820b63057538a51b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On =
Thu, Sep 6, 2018 at 8:01 PM Antonio Santagiuliana &lt;<a href=3D"mailto:san=
tantonioswap@gmail.com">santantonioswap@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hello<div>I am trying to ena=
ble the SMB protocol when building curl library by Yocto<div>the original r=
ecipe is under meta/recipes-support/curl</div><div><br></div><div>in my ima=
ge&#39;s local.conf I have=C2=A0</div><div>IMAGE_INSTALL_append=C2=A0+=3D &=
quot;curl-dev&quot;</div><div><br></div><div>curl is built correctly, but S=
MB is disabled</div><div><br></div><div>So I tried to add a .bbappend file =
with same name as the recipe&#39;s name, with this line only :</div><div>PA=
CKAGECONFIG =3D &quot;--enable-smb&quot;=C2=A0</div><div><br></div><div>but=
 I still have SMB disaabled on curl.</div><div><br></div><div>Which is the =
right way to enable it with PACKAGECONFIG?</div><div>or another way ?</div>=
</div></div></blockquote><div>=C2=A0</div><div>You just want to add &quot;s=
mb&quot; to the variable PACKAGECONFIG in the bbappend. But since the origi=
nal recipe uses ??=3D to assign the default PACKAGECONFIG value you probabl=
y want to either redefine the whole variable as the original recipe, but ad=
ding &quot;smb&quot;</div><div>PACKAGECONFIG =3D &quot;${@bb.utils.filter(&=
#39;DISTRO_FEATURES&#39;, &#39;ipv6&#39;, d)} gnutls libidn proxy threaded-=
resolver verbose zlib smb&quot;<br></div><div><br></div><div>I think it cou=
ld work if you use _append as well, since I think that&#39;s added after th=
e ??=3D operator is evaluated. So you can also try (note the space before s=
mb):</div><div>PACKAGECONFIG_append =3D &quot; smb&quot;</div><div><br></di=
v><div>Cheers,</div><div>Erik</div><div><br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><div><div>thank you</div><div><br></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000820b63057538a51b--
