Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87B03E016C4
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 05:15:58 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id ar20so3583541iec.26
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 05:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mbPR3+9xkPy1IzoV33Z3fbLMaDcBizBCLsEurszuSr4=;
	b=WwOC6cQMKBNJwMkYLdYXgE7VZPW0yiRzZXaPFXna7V89J3XVC3Lm8TFkJujy5XyL0m
	YqgBrAbVuVya8+wBpvm48V7dV9eLNKhWGcUFaMxpJ6lqQn6rpE/f7xIbMxyU9OFRcadt
	5+O30vWlywdOqvH/5Q+9yokQfz31YlceHo6XsoOJEKsCW2DQBhGMs0hTkKrdvh7Ble/P
	Oc/zNTo7Wma+K5PyDLQOqaWj2nyc9tuZEUvcrVAqdULQRGt71W3BBkLfA9LSLb0nwP9r
	Fim5D3iho3Zbz5y9AyjHgE6EMVQyJyiQVaQNASUS4gOmU2voti0HgstD/89ioB2eILkE
	a1eQ==
X-Received: by 10.50.26.36 with SMTP id i4mr6105581igg.33.1382012156921; Thu,
	17 Oct 2013 05:15:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Thu, 17 Oct 2013 05:15:36 -0700 (PDT)
In-Reply-To: <1VWQfo-0003JL-Ch@wolf.netmodule.com>
References: <1VWQfo-0003JL-Ch@wolf.netmodule.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 17 Oct 2013 09:15:36 -0300
Message-ID: <CAMCfZKHiX3G4f9NhgzPA=RPvcqW9WKiMagy6eP42rT3ojPL65A@mail.gmail.com>
To: David Andrey <David.Andrey@netmodule.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: default root password
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
X-List-Received-Date: Thu, 17 Oct 2013 12:15:58 -0000
Content-Type: multipart/alternative; boundary=047d7bd76fe0b055b504e8eec7ca

--047d7bd76fe0b055b504e8eec7ca
Content-Type: text/plain; charset=ISO-8859-1

2013/10/16 David Andrey <David.Andrey@netmodule.com>

> Hi,
>
> There are lot of threads floating around, and a FAQ without answer.
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_p
> assword
>
> So what is the official way to set a default root password ?
> Using a sed command on /etc/passwd through ROOTFS_POSTPROCESS_COMMAND or
> is there any other built-in solution ?
>
> regards
> David
>

David,

Did you find another way to achieve this?

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bd76fe0b055b504e8eec7ca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">2013/10/16 David Andrey <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:David.Andrey@netmodule.com" target=3D"_blank">David.Andrey@netmodule.=
com</a>&gt;</span><br><div class=3D"gmail_extra"><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;=
padding-left:1ex">

Hi,<br>
<br>
There are lot of threads floating around, and a FAQ without answer.<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_th=
e_root_p" target=3D"_blank">https://wiki.yoctoproject.org/wiki/FAQ:How_do_I=
_set_or_change_the_root_p</a><br>
assword<br>
<br>
So what is the official way to set a default root password ?<br>
Using a sed command on /etc/passwd through ROOTFS_POSTPROCESS_COMMAND or<br=
>
is there any other built-in solution ?<br>
<br>
regards<br>
David<br></blockquote><div><br></div><div style>David,</div><div style><br>=
</div><div style>Did you find another way to achieve this?</div><div><br></=
div><div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br=
>

</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex">______________________________________=
_________<br>


yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div></div>

--047d7bd76fe0b055b504e8eec7ca--
