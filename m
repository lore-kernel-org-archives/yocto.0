Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA523E01610
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 06:29:40 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id aq17so3743441iec.6
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 06:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=qC/gBSAEW5zZjloSR4EEd5rfmLHKXzoZ7vALo2gjjE0=;
	b=iSBTQi0pQu4EohX1qdZ3MbkQBjTqRxZRRA2x2K6xu8RBoCJdWguQPqwcbX72LWf2Ga
	OPZvtEUJa7n6SrHrGAih2m1YDuBBhJqqk0E68wu8g4QeNDQYAvjyOReBZzD2PB2xGn9h
	XPS7H/bkI/xODwb6GXR7yICTBNNEKCPJodVFd2sRpg/pKosSgVxfm3RcxEldJuC9NXcK
	mkfiovvmU6htgiqR6yMVf4GJrkHNNaP4qm4FFj00aY6w0G1y+pUc4XT4iyVhfSlIG2c1
	ZYno4ub5Vfbp1T/AbSuhamV0tJ/FIdMLDSyD10j8DTWSrntncTYBmD5OnFdW40QaUyVC
	34SQ==
X-Received: by 10.50.26.36 with SMTP id i4mr6380433igg.33.1382016579850; Thu,
	17 Oct 2013 06:29:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Thu, 17 Oct 2013 06:29:19 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B8DD503B@pluto.melinkcorp.local>
References: <1VWQfo-0003JL-Ch@wolf.netmodule.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B8DD503B@pluto.melinkcorp.local>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 17 Oct 2013 10:29:19 -0300
Message-ID: <CAMCfZKEEqmFyuCbz9k7QPTW+rQjJhZ5mRGcFjeX=U7QdYCXetA@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
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
X-List-Received-Date: Thu, 17 Oct 2013 13:29:41 -0000
Content-Type: multipart/alternative; boundary=047d7bd76fe050eb6804e8efcf5b

--047d7bd76fe050eb6804e8efcf5b
Content-Type: text/plain; charset=ISO-8859-1

2013/10/17 Bryan Evenson <bevenson@melinkcorp.com>

> I know there is the EXTRA_USER_PARAMS feature for adding users and
> modifying a user's password, but I couldn't get it to work for root.  I
> tried adding:
>
> INHERIT += "extrausers"
> EXTRA_USERS_PARAMS = "\
>     usermod -p '<encrypted_password_goes_here>' root; \
>     "
>
> and I would get errors when building the image.  I can't remember the
> errors I got, but I couldn't get the build to complete when I tried to
> modify the root password in this manner.  The other way worked so I went
> with that.
>

Bryan,

I've tried that too.The issue raised for me was related to INHERIT +=
"extrausers", as soon as, it is not present on dylan branch.
So, I solved that with ROOTFS_POSTPROCESS_COMMAND strategy.

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--047d7bd76fe050eb6804e8efcf5b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2013/10/17 Bryan Evenson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenson@m=
elinkcorp.com" target=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span><br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">

<div id=3D":24i" style=3D"overflow:hidden">I know there is the EXTRA_USER_P=
ARAMS feature for adding users and modifying a user&#39;s password, but I c=
ouldn&#39;t get it to work for root. =A0I tried adding:<br>
<br>
INHERIT +=3D &quot;extrausers&quot;<br>
EXTRA_USERS_PARAMS =3D &quot;\<br>
=A0 =A0 usermod -p &#39;&lt;encrypted_password_goes_here&gt;&#39; root; \<b=
r>
=A0 =A0 &quot;<br>
<br>
and I would get errors when building the image. =A0I can&#39;t remember the=
 errors I got, but I couldn&#39;t get the build to complete when I tried to=
 modify the root password in this manner. =A0The other way worked so I went=
 with that.</div>

</blockquote></div><br>Bryan,</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">I&#39;ve tried that too.The issue raised for me was=
 related to=A0INHERIT +=3D &quot;extrausers&quot;, as soon as, it is not pr=
esent on dylan branch.</div>

<div class=3D"gmail_extra">So, I solved that with=A0ROOTFS_POSTPROCESS_COMM=
AND strategy.<br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div=
><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n ro=
ll*/<br>

</div></div>
</div></div>

--047d7bd76fe050eb6804e8efcf5b--
