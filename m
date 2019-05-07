Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AE15E00CF4; Mon,  6 May 2019 23:41:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A64EE00C37
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 23:41:55 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id r76so2161890lja.12
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 23:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rxaTW0JfG/Nb22ZFFQOrAr7yUoAX6XTe7FuxCRpxp5s=;
	b=sDTuTciUSRHWNvcHbyeznIyQYi7NWwlk/PggasrfU/vveb1oNi40qg/Aw4eLdWnWT+
	0Y+w2/H4da8gTXZtNydd+BmEZ6RZli+2cK1WvwPoTbLlSxmt602ohV2J6X1veEdg6wMm
	Ugys/PVFyNFEiHmk9S7hjdyxEVqAXB5RFYwyxvA7uE6LYd/3GvZOKb2UbqPGt45IWAdq
	XGkuOicfbNhAanCu08b7koO18k26fbmkDk8+lRmfs3W2jUd2UTuRx3dpTu/Ks+F6HulL
	/vZmIjjlsfd4+UTi3JKP6uGP0T+KXq5ppskdyQ2HuPG376O3ymjhBR567czPhPjJ6jat
	8Fvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rxaTW0JfG/Nb22ZFFQOrAr7yUoAX6XTe7FuxCRpxp5s=;
	b=KR225ADxoDff9WL67YmUw6RxEZGVPVEqD3X9/dHb4U3cUJs/hIF4vIgHXfF/jql5Ps
	VUPYhSUKaYdyGJIeGl/13qz0UiK1fqnxUDfHSgNajKnDPfWvPqgYu/UtVSFB6mjuLiYs
	eHPYoVtOGKdC/3Km0I4F5kSGSqErv5t6XQcGpU0AA0yDzg2S7xpxPCxj7IyJuBOLfmUu
	66vgPR/+fIqTkh99sD016iALZarOv9kG00UQLJrMDFdPkbQoDvg9EPO5VMZ1ZgMXwdqK
	s1+QLKstsgToNNbhH3+QSGf40Qlf9QdymPT6JTGt65aW567PUYaHbyMDVeLLTQSCEeVy
	YI/Q==
X-Gm-Message-State: APjAAAUWngFAkvK0K+6BJpFfIwcIn70OkTvSqOT92yMyeyoXfXGcprL9
	pn/BGr+a5jG8iycNFdkMSbhZUkQpCyYw8I5pKn8=
X-Google-Smtp-Source: APXvYqwCbWt3/7CY06zg0t5D4ANzvi3gz3sN76NSWGvhzL1BS6nVCZzi1zQQQ0H8nYGS8PmPeWTSxLLhhLMry2/8DKc=
X-Received: by 2002:a2e:a308:: with SMTP id l8mr11394827lje.130.1557211314244; 
	Mon, 06 May 2019 23:41:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
	<008fb84a-45f1-3574-5c5a-ca22c9abaea1@basmevissen.nl>
	<CAA=hcWQ40ZCRwSnvxpqTGkBR24TwL6MsqvsqpruoFFaut+MjeA@mail.gmail.com>
In-Reply-To: <CAA=hcWQ40ZCRwSnvxpqTGkBR24TwL6MsqvsqpruoFFaut+MjeA@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 7 May 2019 08:41:42 +0200
Message-ID: <CAAx3WaAothTZrdYMb6rD=V3st3_ob2vMWL1WK5LnO6kSZQOAmw@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to define and build device tree in Yocto?
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
X-List-Received-Date: Tue, 07 May 2019 06:41:57 -0000
Content-Type: multipart/alternative; boundary="00000000000039cfc30588468356"

--00000000000039cfc30588468356
Content-Type: text/plain; charset="UTF-8"

Hi all,

Bas' defconfig trick (do_set_custom_defconfig) is already implemented by
Yocto itself: just add a file called defconfig to SRC_URI and the system
will apply it for you  (you can read kernel_do_configure in kernel.bbclass)
. For more information check
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#changing-the-configuration

> how did you do the defconfig usually?

The link I put above asks this question too.

>> # The first patch simply appends my custom DTS to the list of DTD files
in the Makefile

and

>> I usually don't need to make large modifications to the kernel source,
>> so I don't need to clone the kernel, but use the default kernel for the
>> SoC with some patches.

How do you generate that patches?

I know that the kernel repo is huge, but having a local kernel tree can be
very useful and allows you to do all the patchworks easily. It also speeds
up the test if you are planning to upgrade some part of it.

Best regards,
Gabriele

Il giorno mar 7 mag 2019 alle ore 02:14 JH <jupiter.hce@gmail.com> ha
scritto:

> Hi Bas and Gabriele,
>
> Thank you so much for you advice.
>
> > My usual way of doing it is as follows:
> >
> > I usually don't need to make large modifications to the kernel source,
> > so I don't need to clone the kernel, but use the default kernel for the
> > SoC with some patches.
>
> So do I.
>
> > I use a platform support layer and add a .bbappend file for the (arm)
> > kernel to add a custom dts and .config files, together with some small
> > patches:
> >
> > *** File meta-<platform>/recipes-kernel/linux/linux-<version>_%.bbappend:
> >
> > THISAPPENDFILESDIR := "${THISDIR}/files"
> > FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> >
> > require linux-set-custom-defconfig.inc
> > require linux-add-custom-dts.inc
> >
> > # The first patch simply appends my custom DTS to the list of DTD files
> > in the Makefile
> > SRC_URI += \
> >          "file://add-custom-dts.patch \
> >           file://some_other.patch \
> >           file://another_driver_patch.patch \
> >          "
> >
> > *** File meta-<platform>/recipes-kernel/linux/linux-add-custom-dts.inc
> >
> > do_add_platform_dts() {
> >       cp -f "${THISAPPENDFILESDIR}/custom.dts" \
> >              "${WORKDIR}/git/arch/arm/boot/dts"
> > }
>
> That is exactly I am looking for the proper location of the dts files,
> thank you so much.
>
> > addtask add_platform_dts before do_preconfigure after do_patch
> >
> > *** File
> > meta-<platform>/recipes-kernel/linux/linux-set-custom-defconfig.inc
> >
> > do_set_custom_defconfig() {
> >          cp -f "${THISAPPENDFILESDIR}/defconfig" "${WORKDIR}/defconfig"
> > }
> >
> > addtask set_custom_defconfig before do_preconfigure after do_patch
>
> Good advice, I missed that one, how did you do the defconfig usually?
> Compile it in kernel source like using following command?
>
> make ARCH=arm imx_v6_v7_defconfig
>
> > It is maybe a bit complex, but it saves cloning the kernel for the sake
> > of just adding a single DTS with defconfig and a few patches.
>
> That is procedure I was looking for.
>
> > Hope this helps,
>
> Great helps, thank you so much.
>
> - jupiter
>
> > Bas.
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000039cfc30588468356
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi=
 all,</div><div><br></div><div>Bas&#39; defconfig trick (<span class=3D"gma=
il-im">do_set_custom_defconfig) is already implemented by Yocto itself: jus=
t add a file called defconfig to SRC_URI and the system will apply it for y=
ou=C2=A0 (you can read kernel_do_configure in kernel.bbclass) . For more in=
formation check <a href=3D"https://www.yoctoproject.org/docs/latest/mega-ma=
nual/mega-manual.html#changing-the-configuration">https://www.yoctoproject.=
org/docs/latest/mega-manual/mega-manual.html#changing-the-configuration</a>=
<br></span></div><div><span class=3D"gmail-im"><br></span></div><div><span =
class=3D"gmail-im">&gt;  how did you do the defconfig usually?</span></div>=
<div><span class=3D"gmail-im"><br></span></div><div><span class=3D"gmail-im=
">The link I put above asks this question too.</span></div><div><span class=
=3D"gmail-im"><br></span></div><div><span class=3D"gmail-im"><span class=3D=
"gmail-im">&gt;&gt; # The first patch simply appends my custom DTS to the l=
ist of DTD files in the Makefile</span></span></div><div><span class=3D"gma=
il-im"><span class=3D"gmail-im"><br></span></span></div><div><span class=3D=
"gmail-im"><span class=3D"gmail-im">and <br></span></span></div><div><span =
class=3D"gmail-im"><span class=3D"gmail-im"><br></span></span></div><div><s=
pan class=3D"gmail-im"><span class=3D"gmail-im"><span class=3D"gmail-im">&g=
t;&gt; I usually don&#39;t need to make large modifications to the kernel s=
ource,<br>
&gt;&gt; so I don&#39;t need to clone the kernel, but use the default kerne=
l for the<br>
&gt;&gt; SoC with some patches.</span></span></span></div><div><span class=
=3D"gmail-im"><span class=3D"gmail-im"><span class=3D"gmail-im"><br></span>=
</span></span></div><div><span class=3D"gmail-im"><span class=3D"gmail-im">=
How do you generate that patches? <br></span></span></div><div><span class=
=3D"gmail-im"><span class=3D"gmail-im"><br></span></span></div><div><span c=
lass=3D"gmail-im"><span class=3D"gmail-im">I know that the kernel repo is h=
uge, but having a local kernel tree can be very useful and allows you to do=
 all the patchworks easily. It also speeds up the test if you are planning =
to upgrade some part of it.</span></span></div><div><span class=3D"gmail-im=
"><span class=3D"gmail-im"><br></span></span></div><div><span class=3D"gmai=
l-im"><span class=3D"gmail-im">Best regards, <br></span></span></div><div><=
span class=3D"gmail-im"><span class=3D"gmail-im">Gabriele<br></span></span>=
</div><span class=3D"gmail-im"></span></div></div></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mar 7 mag=
 2019 alle ore 02:14 JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupite=
r.hce@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi Bas and Gabriele,<br>
<br>
Thank you so much for you advice.<br>
<br>
&gt; My usual way of doing it is as follows:<br>
&gt;<br>
&gt; I usually don&#39;t need to make large modifications to the kernel sou=
rce,<br>
&gt; so I don&#39;t need to clone the kernel, but use the default kernel fo=
r the<br>
&gt; SoC with some patches.<br>
<br>
So do I.<br>
<br>
&gt; I use a platform support layer and add a .bbappend file for the (arm)<=
br>
&gt; kernel to add a custom dts and .config files, together with some small=
<br>
&gt; patches:<br>
&gt;<br>
&gt; *** File meta-&lt;platform&gt;/recipes-kernel/linux/linux-&lt;version&=
gt;_%.bbappend:<br>
&gt;<br>
&gt; THISAPPENDFILESDIR :=3D &quot;${THISDIR}/files&quot;<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
&gt;<br>
&gt; require linux-set-custom-defconfig.inc<br>
&gt; require linux-add-custom-dts.inc<br>
&gt;<br>
&gt; # The first patch simply appends my custom DTS to the list of DTD file=
s<br>
&gt; in the Makefile<br>
&gt; SRC_URI +=3D \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;file://add-custom-dts.patch \<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://some_other.patch \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://another_driver_patch.pa=
tch \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;<br>
&gt; *** File meta-&lt;platform&gt;/recipes-kernel/linux/linux-add-custom-d=
ts.inc<br>
&gt;<br>
&gt; do_add_platform_dts() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cp -f &quot;${THISAPPENDFILESDIR}/custom.dts=
&quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${WORKDIR}/git/a=
rch/arm/boot/dts&quot;<br>
&gt; }<br>
<br>
That is exactly I am looking for the proper location of the dts files,<br>
thank you so much.<br>
<br>
&gt; addtask add_platform_dts before do_preconfigure after do_patch<br>
&gt;<br>
&gt; *** File<br>
&gt; meta-&lt;platform&gt;/recipes-kernel/linux/linux-set-custom-defconfig.=
inc<br>
&gt;<br>
&gt; do_set_custom_defconfig() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cp -f &quot;${THISAPPENDFILESDIR}/de=
fconfig&quot; &quot;${WORKDIR}/defconfig&quot;<br>
&gt; }<br>
&gt;<br>
&gt; addtask set_custom_defconfig before do_preconfigure after do_patch<br>
<br>
Good advice, I missed that one, how did you do the defconfig usually?<br>
Compile it in kernel source like using following command?<br>
<br>
make ARCH=3Darm imx_v6_v7_defconfig<br>
<br>
&gt; It is maybe a bit complex, but it saves cloning the kernel for the sak=
e<br>
&gt; of just adding a single DTS with defconfig and a few patches.<br>
<br>
That is procedure I was looking for.<br>
<br>
&gt; Hope this helps,<br>
<br>
Great helps, thank you so much.<br>
<br>
- jupiter<br>
<br>
&gt; Bas.<br>
&gt;<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000039cfc30588468356--
