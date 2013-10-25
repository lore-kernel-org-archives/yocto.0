Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8A97E016CF
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 08:39:08 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id u16so6691566iet.18
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 08:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4+n8uJDySthJUuff1bXuA/q/I9P9dbC7xFh6ljEJixU=;
	b=B7w7yRU7uwtUt7VDbSpTvFMUa6phhnJUuq1caLmgZsjXBPl6/vx2uKc25xu1Y5AsEi
	Tt+5o71qML6tLnCvlnzSQzRcfCzZ+EQqZXt06GJkL2Nh0qoKeukLNgppC9G/6gTaEQts
	M7rJ9dcWtavAVpDRWuUV7epA1+dYkTlym8ZUqVyhGNOo3LeSnhUQECKkECGGfV6CzfGn
	GoJtprkbEv23D57AvTMGqmGYbPnOJ0dXD7wgorZLOUTf6cweXM7DCk76NScLOp1+SFcC
	uc2HihMfVxz1F1XM+SzdiaSD8BcPhPCjLQG9+dFIO4IST4Ebp78nqYSYHJe1dVeYfJjH
	FIJA==
X-Received: by 10.50.43.131 with SMTP id w3mr2690820igl.17.1382715547344; Fri,
	25 Oct 2013 08:39:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Fri, 25 Oct 2013 08:38:47 -0700 (PDT)
In-Reply-To: <CA+chaQd1GEzyBfOSOfmxdy8qh6a5EJ+J-Yero9sKpV0DfhF1sg@mail.gmail.com>
References: <CAMCfZKHWyKwJ3BquFk=hpRx7nrJN_rzbCRZvTeAFTj5FU6X7zA@mail.gmail.com>
	<CA+chaQd1GEzyBfOSOfmxdy8qh6a5EJ+J-Yero9sKpV0DfhF1sg@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 25 Oct 2013 13:38:47 -0200
Message-ID: <CAMCfZKFKjEV-oqUOAFVP7gmAzPCBE0LiNry5YPOPMd=jxcBMMQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
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
X-List-Received-Date: Fri, 25 Oct 2013 15:39:09 -0000
Content-Type: multipart/alternative; boundary=047d7bfea18606b5fe04e9928dd3

--047d7bfea18606b5fe04e9928dd3
Content-Type: text/plain; charset=ISO-8859-1

2013/10/25 Martin Jansa <martin.jansa@gmail.com>

> BAD_RECOMMENDATIONS work only for packages which are installed because
> something has them in RRECOMMENDS, if your custom image has qt-demo-init in
> IMAGE_INSTALL or pulled by RDEPENDS in some variable, than it won't be
> removed (and shouldn't be).
>

Thanks Martin,

qt-demo-init is listed as RDEPENDS on packagegroup-core-qt4e.
As soon as my image recipe have a IMAGE_INSTALL = "packagegroup-core-qt4e",
I'll have to remove the init script with ROOTFS_POSTPROCESS_COMMAND. That
is it?

The renaming question is: packagegroup-core-qt4e should include
qt-demo-init with RRECOMENDS instead of RDEPENDS?

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--047d7bfea18606b5fe04e9928dd3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2013/10/25 Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jans=
a@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span><br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex">

<div>BAD_RECOMMENDATIONS work only for packages which are installed because=
 something has them in RRECOMMENDS, if your custom image has qt-demo-init i=
n IMAGE_INSTALL or pulled by RDEPENDS in some variable, than it won&#39;t b=
e removed (and shouldn&#39;t be).<br>

</div></blockquote></div><br>Thanks Martin,</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">qt-demo-init is listed as RDEPENDS on=
=A0packagegroup-core-qt4e.</div><div class=3D"gmail_extra">As soon as my im=
age recipe have a IMAGE_INSTALL =3D &quot;packagegroup-core-qt4e&quot;, I&#=
39;ll have to remove the init script with=A0<span style=3D"font-family:aria=
l,sans-serif;font-size:13px">ROOTFS_POSTPROCESS_COMMAND. That is it?</span>=
</div>

<div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div sty=
le>The=A0renaming=A0question is: packagegroup-core-qt4e should include qt-d=
emo-init with RRECOMENDS instead of RDEPENDS?</div><div><br></div><div>Rega=
rds,</div>

<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n rol=
l*/<br></div></div>
</div></div>

--047d7bfea18606b5fe04e9928dd3--
