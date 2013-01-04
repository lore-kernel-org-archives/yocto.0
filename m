Return-Path: <wmat@alphatroop.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9596E013CE
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 03:34:31 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id k10so19996063iea.29
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2013 03:34:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=p5a9uMJhHhwjKhVgL2OcA+eqosXN6c8xdwSLslcBcgM=;
	b=MKMfL1+CCLiqxjq0SYXlndyZHD0wvfX5vi7+L0GdObGH5RQiF7Casef06C46J7dLBJ
	kvO3CbNuGgtWkUbBviR/kih7a5DSU4sI4VP1txs1Hq5rr3Ny5z2t0rP74JhAlV3fiU8z
	7DzuVGluiVqNDF/oWX/vENwU6cVMDwbHkyxHX284vV15vcRsodSMBZntlKCg/xrlvYs3
	+1dNbkC5h9Dv67VkQbopURvKCyLvN2D7o8S/oNvKhhrTOKdqspn+Yckl0OBJ0TsPlv/Y
	tUGp0AUVtiwWE0Walq09rJp7isS5LqpHUDm6wrWmH1A/yKZw2zIHKFa4tSsIfdL00Zc6
	7u4Q==
Received: by 10.50.108.161 with SMTP id hl1mr39236347igb.101.1357299271317;
	Fri, 04 Jan 2013 03:34:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.169 with HTTP; Fri, 4 Jan 2013 03:34:10 -0800 (PST)
X-Originating-IP: [24.246.30.132]
In-Reply-To: <2b77c4be.fa75.13c0455c02d.Coremail.huanmateme@163.com>
References: <2b77c4be.fa75.13c0455c02d.Coremail.huanmateme@163.com>
From: Bill Traynor <wmat@alphatroop.com>
Date: Fri, 4 Jan 2013 06:34:10 -0500
Message-ID: <CAGfZjq4+JFT_HA-1SitqkWaxWgOztrd7XyQc7vBMfhTLauVGkw@mail.gmail.com>
To: Biao <huanmateme@163.com>
X-Gm-Message-State: ALoCoQnpw1DZkcV5YA2KjIo+/BOjtS8yijgb/wWQP/lgo5Su79e6MBeZr+nATgIMLx9aV2zmda/D
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Where does the 'PN' is set.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Jan 2013 11:34:31 -0000
Content-Type: multipart/alternative; boundary=f46d0402a9afebb7c504d274dc08

--f46d0402a9afebb7c504d274dc08
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jan 4, 2013 at 1:53 AM, Biao <huanmateme@163.com> wrote:

> Hi,
>
> In meta/conf/documentation.conf
> PN[doc] = "PN holds the name of the package (Package Name). It is gathered
> from the bitbake-file filename"
>
> I would like to know where does the so-called 'gather' exactly happens?
> For example, does it mean the bitbake core get the 'PN = u-boot' by
> cutting of the name of 'u-boot_2011.03.bb'?
>

Yes, within the context of the build process, PN refers to the Package Name
that is extracted from the recipe file name.  So your example is correct.

For reference, see the PN variable description in the Yocto Project
Reference manual:
http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#var-P

The "gathering" occurs during the Bitbake parsing step.  Roughly, parsing
occurs in the following order:  configuration files, classes, bbfiles.



>
> Thanks,
> Biao
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f46d0402a9afebb7c504d274dc08
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Jan 4, 2013 at 1:53 AM, Biao <span dir=3D"ltr">&lt=
;<a href=3D"mailto:huanmateme@163.com" target=3D"_blank">huanmateme@163.com=
</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">

<div style=3D"line-height:1.7;font-size:14px;font-family:arial"><div>Hi,</d=
iv><div><br></div><div>In meta/conf/documentation.conf</div>PN[doc] =3D &qu=
ot;PN holds the name of the package (Package Name). It is gathered from the=
 bitbake-file filename&quot;<div>

<br></div><div>I would like to know where does the so-called &#39;gather&#3=
9; exactly happens?</div><div>For example, does it mean the bitbake core ge=
t the &#39;PN =3D u-boot&#39; by cutting of the name of &#39;<a href=3D"htt=
p://u-boot_2011.03.bb" target=3D"_blank">u-boot_2011.03.bb</a>&#39;?</div>

</div></blockquote><div><br></div><div style>Yes, within the context of the=
 build process, PN refers to the Package Name that is extracted from the re=
cipe file name. =A0So your example is correct.</div><div style><br></div>

<div style>For reference, see the PN variable description in the Yocto Proj=
ect Reference manual: =A0<a href=3D"http://www.yoctoproject.org/docs/curren=
t/poky-ref-manual/poky-ref-manual.html#var-P">http://www.yoctoproject.org/d=
ocs/current/poky-ref-manual/poky-ref-manual.html#var-P</a></div>

<div style><br></div><div style>The &quot;gathering&quot; occurs during the=
 Bitbake parsing step. =A0Roughly, parsing occurs in the following order: =
=A0configuration files, classes, bbfiles.</div><div style><br></div><div st=
yle>

=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex"><div style=3D"line-height:1.7;font-size:14px;font=
-family:arial">

<div><br></div><div>Thanks,</div><div>Biao=A0</div></div><br>______________=
_________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--f46d0402a9afebb7c504d274dc08--
