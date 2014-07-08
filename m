Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70EC4E00559; Tue,  8 Jul 2014 16:55:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1759FE00547
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 16:55:17 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h15so1269156igd.14
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 16:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JG2mm/NRlwfRdM86EqGN++mfp3K4mFKeEhjn/KHeGYM=;
	b=YuGUQJf/YjIctDtUaK/v42wrKnjwvJvEF6r0OEwQdHuLnzpGYPDS7Vyi+GcnY07Vh5
	R0K/ZEyNMhTyRu0UWex4NzFPII/FksOmxicMNA10t1XXYPxDUOvCdOPFPei47DXaqYWc
	1ERvAQ3RnGA8C0NpI9Et8Oslj020ji9Hm9NF8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=JG2mm/NRlwfRdM86EqGN++mfp3K4mFKeEhjn/KHeGYM=;
	b=lPGLwYoS4U9Ygri+avNgqRZjPlkZiyz4EFQz+lUlbnI3re/+6QUUbK8dZSlFNlwrLV
	r44FfBiG5JovImaHK8hB5t/7RB7HdXmnusD0L2TX5axkP9VODhZAwLhkgVtCdQ2sxQWq
	7ByrduoH8ZTs6ba+xr7cD9o27fEMdJRlJhJCUyaHyV7x3DXkeeJMLpjIVjB6SG8H0I9p
	t5nawaK8AkwummMK4WjrN4A0ugDyBBl4RhQ1RCEmBAJgPQpzP/0RZ2jy37bVpHZSXzXB
	rS6WjFv2/V4b3o2NVqsz3Q4HtPim6TpcpHTILiH0VR7SShOku03yzmvi5/p0fwCjryoI
	LBxg==
X-Gm-Message-State: ALoCoQk/maBdCpClByy8TLNgtoZhQ4oqC4vOTMDRGL8UT0PnSbZVa51PED7fMfDHxS8I3lPBTAXS
MIME-Version: 1.0
X-Received: by 10.43.117.133 with SMTP id fm5mr42204268icc.3.1404863717025;
	Tue, 08 Jul 2014 16:55:17 -0700 (PDT)
Received: by 10.50.225.73 with HTTP; Tue, 8 Jul 2014 16:55:16 -0700 (PDT)
In-Reply-To: <CAGM0ZdSqzU4t1=mtefVEcyo2XGY_jyDZEp+BHKkd1q+NS8Vn-w@mail.gmail.com>
References: <CAGM0ZdTnjLQXoh6aFeURUv1N_7-gga7wLgPg-JMjaB2-jgVWRQ@mail.gmail.com>
	<CA+gsK-pcPST5iGiVmfVQt+CPMeKfkci_P3Zn2J-onFNj7CNGCg@mail.gmail.com>
	<CAGM0ZdSqzU4t1=mtefVEcyo2XGY_jyDZEp+BHKkd1q+NS8Vn-w@mail.gmail.com>
Date: Tue, 8 Jul 2014 16:55:16 -0700
Message-ID: <CA+gsK-riepzPtNbbOCcU77Zg0EgMYqjk+gG13ZQQkjF85Hauiw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Bharath Chandra <ellurubharath29@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL
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
X-List-Received-Date: Tue, 08 Jul 2014 23:55:21 -0000
Content-Type: multipart/alternative; boundary=bcaec517c920cfbf1b04fdb75273

--bcaec517c920cfbf1b04fdb75273
Content-Type: text/plain; charset=UTF-8

Hi Barath,

That alone won't work. You can either quick and dirty add

IMAGE_INSTALL_append = " coreutils"

to your conf/local.conf file or you write your recipe but it will need to
include another image recipe:

>
> DESCRIPTION = "A test image for Gumstix boards."
> LICENSE = "CLOSED"
>
>      require recipes-core/images/core-image-base.bb


> IMAGE_INSTALL += " \
>           coreutils \
> "
>
>
then you can build your image with bitbake -k myimage given that you named
you recipe above myimage.bb

Rudi

--bcaec517c920cfbf1b04fdb75273
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Barath,<br><br></div>That alone won&#39;t wor=
k. You can either quick and dirty add<br><br></div>IMAGE_INSTALL_append =3D=
 &quot; coreutils&quot;<br><br>to your conf/local.conf file or you write yo=
ur recipe but it will need to include another image recipe:<br>
<div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr"><br><div><table style=3D"border-width:0px 1px 1p=
x;border-right-style:solid;border-bottom-style:solid;border-left-style:soli=
d;border-right-color:rgb(221,221,221);border-bottom-color:rgb(221,221,221);=
border-left-color:rgb(221,221,221);border-spacing:0px;border-collapse:colla=
pse;empty-cells:show;font-size:12px;line-height:15.600000381469727px;paddin=
g:0px;margin:0px auto;table-layout:fixed;width:1330px;color:rgb(0,0,0);font=
-family:Verdana,Arial,&#39;Bitstream Vera Sans&#39;,Helvetica,sans-serif">

<tbody><tr style=3D"font-size:13px;line-height:normal"><td style=3D"font-si=
ze:11px;font-family:monospace;overflow:hidden;padding:1px 2px;vertical-alig=
n:top">DESCRIPTION =3D &quot;A test image for Gumstix boards.&quot;<br>LICE=
NSE =3D &quot;CLOSED&quot;<br>

<br></td></tr></tbody></table></div></div></blockquote><div>=C2=A0=C2=A0=C2=
=A0=C2=A0 require recipes-core/images/<a href=3D"http://core-image-base.bb"=
>core-image-base.bb</a><br></div><div>=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
<div dir=3D"ltr"><div><table style=3D"border-width:0px 1px 1px;border-right=
-style:solid;border-bottom-style:solid;border-left-style:solid;border-right=
-color:rgb(221,221,221);border-bottom-color:rgb(221,221,221);border-left-co=
lor:rgb(221,221,221);border-spacing:0px;border-collapse:collapse;empty-cell=
s:show;font-size:12px;line-height:15.600000381469727px;padding:0px;margin:0=
px auto;table-layout:fixed;width:1330px;color:rgb(0,0,0);font-family:Verdan=
a,Arial,&#39;Bitstream Vera Sans&#39;,Helvetica,sans-serif">
<tbody><tr style=3D"font-size:13px;line-height:normal"><td style=3D"font-si=
ze:11px;font-family:monospace;overflow:hidden;padding:1px 2px;vertical-alig=
n:top">IMAGE_INSTALL +=3D &quot; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 co=
reutils \<br>&quot;<br><br>
</td></tr></tbody></table></div></div></blockquote></div><div dir=3D"ltr"><=
div><font face=3D"garamond, serif"><span style=3D"border-collapse:collapse;=
color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br></s=
pan></font></div>
<div><font face=3D"garamond, serif"><span style=3D"border-collapse:collapse=
;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">then y=
ou can build your image with bitbake -k myimage <font face=3D"garamond, ser=
if">given that you named you recipe above <a href=3D"http://myimage.bb">myi=
mage.bb</a><br>
<br></font></span></font></div><div><font face=3D"garamond, serif"><span st=
yle=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial,sa=
ns-serif;font-size:13px"><font face=3D"garamond, serif">Rudi<br></font></sp=
an></font></div>
<div><font face=3D"garamond, serif"><span style=3D"border-collapse:collapse=
;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br></=
span></font></div><div><font face=3D"garamond, serif"><span style=3D"border=
-collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif;font=
-size:13px"><br>
</span></font></div></div>
</div></div>

--bcaec517c920cfbf1b04fdb75273--
