Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BECABE00ED6; Mon,  9 May 2016 06:43:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EAFBE00B60
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 06:43:12 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id o133so65950894vka.0
	for <yocto@yoctoproject.org>; Mon, 09 May 2016 06:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4/WtdfHNDwXsIV+XbTT/gRx442bCl85czb4Q3M866kw=;
	b=eD4x/F44MWADjWTuEDjTK4uJ4VWHfqSaG6Wq9RCgMSRXyiVXPaCQ02+PpBArdGEvDt
	Zej/zL3Rv4ag0UAVKS9bhiF4FW1OSKewlZyjVe6TpununaOj7hL1kFw4y6JVEQiNp3Jx
	WwT5Qnz5VPVjgoSulDeUB7fbGmh/1+H7b7ox0VVQ4cEV5TkSm+vIb8Iv/Qj0UcHk/qzS
	mYS06Fl9gpnEDUqxj0bNyJWa73e/hSLOTOcEcdoB6HcoNNE5pkV05j8WtBbHtMgTRhzG
	PTe2WxJ3RYGtjTKJQWQZ5uPev3PmMNn8Jf6HyFZI+yj0b1uki7Rb5idChl/OGedzKFmX
	hwdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4/WtdfHNDwXsIV+XbTT/gRx442bCl85czb4Q3M866kw=;
	b=dN0F7BIiCw7HVet3aol6+8Qu8z2NGVH6k9j7YykJfITiW688Mri99Ww9Vemild9FvE
	POXM4S0vx7rQsiIZ/JOFh8I3vvj61uURB3VM4LSPgHrcWQSeiEyh+OonzE67oWwro47s
	3Io50m04Hp/KxWi1ta7HQ3POSL1jhki8/5Gh+3DASWTvIiw58B0NrMfjMWtvglI9g2tX
	vClGdp7z5x56EgajEyLew+Oo+lFxVgePOVUM52l7L1QITcCI18r8oL9u7bIoR/e1J22Q
	u2NyHrTf0I2k0hRAm5iKQXZY5W5aZr6GlXOM6hbweT82znZ/AeMhgy+z0LosFN/Vq49n
	pUOA==
X-Gm-Message-State: AOPr4FWlZSPZtivC3Mx3x1UP1JpsfXYEtwQoa97Yduwp+V4JFVPlSm/SzO4nkbSrtnMNE8X/lvYSs/U1vN+lFg==
X-Received: by 10.31.228.133 with SMTP id b127mr6466769vkh.90.1462801391859;
	Mon, 09 May 2016 06:43:11 -0700 (PDT)
MIME-Version: 1.0
References: <CABfz71et_oJJH1TM-HTHeW4UO2qJGtPH1nhDsyzcFqbqE6truQ@mail.gmail.com>
	<DF27FF27-F925-4CC9-A2D4-E07FF0704B7F@gmail.com>
In-Reply-To: <DF27FF27-F925-4CC9-A2D4-E07FF0704B7F@gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
Date: Mon, 09 May 2016 13:43:02 +0000
Message-ID: <CABfz71c8p_MXRUA5XhdE3R=C_5iYt9ndjm-RXPvNopX7ynQteA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using multiple versions of package (PACKAGECONFIG) in the same bitbake
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
X-List-Received-Date: Mon, 09 May 2016 13:43:16 -0000
Content-Type: multipart/alternative; boundary=94eb2c094fb856d072053268fdcd

--94eb2c094fb856d072053268fdcd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks,

What I winded up doing is using bbappend to remove fstab from base-files. I
then created two separate packages with different fstab files, and added
each of them into their own image.

On Sun, May 8, 2016 at 1:09 PM Khem Raj <raj.khem@gmail.com> wrote:

> On May 8, 2016, at 6:50 AM, Paul Knopf <pknopf@medxchange.com> wrote:
>
> I have two rootfs. My main image, and the initramfs image for the kernel
> (INITRAMFS_IAMGE and INITRAMFS_IMAGE_BUNDLE).
>
> I need to provide different fstab files for each build.
>
> I have added a .bbappend for the base-files recipe to use a customized
> fstab.
>
> In the bbappend file, I'd like to add PACKAGECONFIG support to the packag=
e
> to customize it for each rootfs.
>
> However, it seems that I can only PACKAGECONFIG for a recipe in the
> local.conf. How do I add features to a package at a "image-recipe.bb"
> level?
>
> Maybe I should create a separate recipe all together that overwrite fstab=
?
> Then, I can include this "base-files-overrite-fstab" in the appropriate
> image recipe?
>
>
> you can write a shell function doing this in image recipe and then hook i=
t
> up to tweak the rootfs after its created during image build.
>
> your_func() {
> =E2=80=A6..
> }
>
> ROOTFS_POSTPROCESS_COMMAND +=3D =E2=80=9Cyour_functon;=E2=80=9D
>
>
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
> --

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--94eb2c094fb856d072053268fdcd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks,<div><br></div><div>What I winded up doing is using=
 bbappend to remove fstab from base-files. I then created two separate pack=
ages with different fstab files, and added each of them into their own imag=
e.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, May 8=
, 2016 at 1:09 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.kh=
em@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div st=
yle=3D"word-wrap:break-word"><div><blockquote type=3D"cite"><div>On May 8, =
2016, at 6:50 AM, Paul Knopf &lt;<a href=3D"mailto:pknopf@medxchange.com" t=
arget=3D"_blank">pknopf@medxchange.com</a>&gt; wrote:</div><br><div><div di=
r=3D"ltr"><div>I have two rootfs. My main image, and the initramfs image fo=
r the kernel (INITRAMFS_IAMGE and INITRAMFS_IMAGE_BUNDLE).</div><div><br></=
div><div>I need to provide different fstab files for each build.</div><div>=
<br></div><div>I have added a .bbappend for the base-files recipe to use a =
customized fstab.</div><div><br></div><div>In the bbappend file, I&#39;d li=
ke to add PACKAGECONFIG support to the package to customize it for each roo=
tfs.</div><div><br></div><div>However, it seems that I can only PACKAGECONF=
IG for a recipe in the local.conf. How do I add features to a package at a =
&quot;<a href=3D"http://image-recipe.bb/" target=3D"_blank">image-recipe.bb=
</a>&quot; level?</div><div><br></div><div>Maybe I should create a separate=
 recipe all together that overwrite fstab? Then, I can include this &quot;b=
ase-files-overrite-fstab&quot; in the appropriate image recipe?</div></div>=
</div></blockquote><div><br></div></div></div><div style=3D"word-wrap:break=
-word"><div><div>you can write a shell function doing this in image recipe =
and then hook it up to tweak the rootfs after its created during image buil=
d.</div><div><br></div><div>your_func() {</div><div>=E2=80=A6..</div><div>}=
</div><div><br></div><div>ROOTFS_POSTPROCESS_COMMAND +=3D =E2=80=9Cyour_fun=
cton;=E2=80=9D</div><div>=C2=A0</div><blockquote type=3D"cite"><div></div><=
/blockquote></div></div><div style=3D"word-wrap:break-word"><div><blockquot=
e type=3D"cite"><div><div dir=3D"ltr"><br clear=3D"all"><div><div><div dir=
=3D"ltr"><div>Thanks,</div><div>Paul Knopf</div><div>Software Engineer</div=
><div>Med X Change, Inc</div><div><a href=3D"mailto:pknopf@medxchange.com" =
target=3D"_blank">pknopf@medxchange.com</a></div></div></div></div>
</div></div></blockquote></div></div><div style=3D"word-wrap:break-word"><d=
iv><blockquote type=3D"cite"><div>
-- <br>_______________________________________________<br>yocto mailing lis=
t<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><=
/div></blockquote></div></div></blockquote></div><div dir=3D"ltr">-- <br></=
div><div dir=3D"ltr"><p dir=3D"ltr">Thanks,<br>
Paul Knopf<br>
Software Engineer<br>
Med X Change, Inc<br>
<a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a></p>
</div>

--94eb2c094fb856d072053268fdcd--
