Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08FEFE0177C
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 10:26:18 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id ez12so2374393wid.3
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 10:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+e1ihDWJV2ddsRX+gD52XYv49oIcFGsawPG0Ow6CHuA=;
	b=TGPcuOgs5hrWoTUcoDftcCpWizyQb10etVEsLZkDV0cWPO3FRctnyK4pqfhuSOI6B9
	mRWZ0a189yDoK+Rkd1F5PihPZwB6OvDL9hNRHIufZE05f0gUDvXhqHYwuB86lOwyiuOu
	VlmtA44wxp+wVD8Zn9qGvRH6FEumg2UpaGKABwkcJWiPE3cS5jZloyxx5sL4dULq/v5U
	UYrIF3NnwOgbcn5q/wn+nQOFcxmNYMAHi2qcm5PLui8goes42Nh/jMzbOaWx3RjuHZrc
	Jl3q/zX27GZHUdMANb28L9xL6t4wlchWZX1TmJXp8mbJBh9fObrLLFG3PPZQTcWhXeCn
	lIPA==
MIME-Version: 1.0
X-Received: by 10.180.211.7 with SMTP id my7mr2932884wic.17.1382808376792;
	Sat, 26 Oct 2013 10:26:16 -0700 (PDT)
Received: by 10.194.179.198 with HTTP; Sat, 26 Oct 2013 10:26:16 -0700 (PDT)
In-Reply-To: <CAMCfZKFKjEV-oqUOAFVP7gmAzPCBE0LiNry5YPOPMd=jxcBMMQ@mail.gmail.com>
References: <CAMCfZKHWyKwJ3BquFk=hpRx7nrJN_rzbCRZvTeAFTj5FU6X7zA@mail.gmail.com>
	<CA+chaQd1GEzyBfOSOfmxdy8qh6a5EJ+J-Yero9sKpV0DfhF1sg@mail.gmail.com>
	<CAMCfZKFKjEV-oqUOAFVP7gmAzPCBE0LiNry5YPOPMd=jxcBMMQ@mail.gmail.com>
Date: Sat, 26 Oct 2013 19:26:16 +0200
Message-ID: <CA+chaQfG7QeJd17-4KFteybX3uuzhMuM9xraORKQBGyqM0ymvg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BAD_RECOMMENDATIONS / BAD_RECOMMENDS not working
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
X-List-Received-Date: Sat, 26 Oct 2013 17:26:22 -0000
Content-Type: multipart/alternative; boundary=001a11c259f0175f2304e9a82ae8

--001a11c259f0175f2304e9a82ae8
Content-Type: text/plain; charset=UTF-8

Add .bbappend for packagegroup-core-qt4e and remove qt-demo-init from
RDEPENDS_${PN} there.


On Fri, Oct 25, 2013 at 5:38 PM, Diego Sueiro <diego.sueiro@gmail.com>wrote:

>
> 2013/10/25 Martin Jansa <martin.jansa@gmail.com>
>
>> BAD_RECOMMENDATIONS work only for packages which are installed because
>> something has them in RRECOMMENDS, if your custom image has qt-demo-init in
>> IMAGE_INSTALL or pulled by RDEPENDS in some variable, than it won't be
>> removed (and shouldn't be).
>>
>
> Thanks Martin,
>
> qt-demo-init is listed as RDEPENDS on packagegroup-core-qt4e.
> As soon as my image recipe have a IMAGE_INSTALL =
> "packagegroup-core-qt4e", I'll have to remove the init script with ROOTFS_POSTPROCESS_COMMAND.
> That is it?
>
> The renaming question is: packagegroup-core-qt4e should include
> qt-demo-init with RRECOMENDS instead of RDEPENDS?
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>

--001a11c259f0175f2304e9a82ae8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Add .bbappend for packagegroup-core-qt4e and remove qt-dem=
o-init from RDEPENDS_${PN} there.<br></div><div class=3D"gmail_extra"><br><=
br><div class=3D"gmail_quote">On Fri, Oct 25, 2013 at 5:38 PM, Diego Sueiro=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"=
_blank">diego.sueiro@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">=
<div class=3D"im"><br><div class=3D"gmail_quote">2013/10/25 Martin Jansa <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_bl=
ank">martin.jansa@gmail.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">

<div>BAD_RECOMMENDATIONS work only for packages which are installed because=
 something has them in RRECOMMENDS, if your custom image has qt-demo-init i=
n IMAGE_INSTALL or pulled by RDEPENDS in some variable, than it won&#39;t b=
e removed (and shouldn&#39;t be).<br>


</div></blockquote></div><br></div>Thanks Martin,</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">qt-demo-init is listed as RDEPE=
NDS on=C2=A0packagegroup-core-qt4e.</div><div class=3D"gmail_extra">As soon=
 as my image recipe have a IMAGE_INSTALL =3D &quot;packagegroup-core-qt4e&q=
uot;, I&#39;ll have to remove the init script with=C2=A0<span style=3D"font=
-family:arial,sans-serif;font-size:13px">ROOTFS_POSTPROCESS_COMMAND. That i=
s it?</span></div>


<div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div>The=
=C2=A0renaming=C2=A0question is: packagegroup-core-qt4e should include qt-d=
emo-init with RRECOMENDS instead of RDEPENDS?</div><div class=3D"im"><div><=
br></div><div>
Regards,</div>

<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n rol=
l*/<br></div></div></div>
</div></div>
</blockquote></div><br></div>

--001a11c259f0175f2304e9a82ae8--
