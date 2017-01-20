Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2260E003DB; Fri, 20 Jan 2017 09:07:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.175 listed in dnsbl.sorbs.net]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91479E0033D
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 09:07:53 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id j13so65981080iod.3
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 09:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oXQDVwuiZVZtJ2DsuE51JjixDfnhBj6F1+HJr3p1FV8=;
	b=c7LvWoGGFZKJlFJM+XKj29VEnfojHLamix2VPlqud/h4yzE91UAEXZnFVPebo4vYBa
	Lq6K1DKqN99b/w1VbZ4X6ZXagOl2dCCQ0oKQPBb8d9gI+QeceEdTV5WO1NDhII3RDSQI
	KSd5Lt1PH9pVj1rhXo8ACK5LPFKbxwJzbd9NolE2ecJ8DVSAOtXsthHmFgvuD9aQFwMC
	kx52x6ommJukMKcFMmmdd0qCNyXHIjx2b6IW76pU063ofq9L3kskkAm9BLDOS9tFcb0E
	hDed7l9lNWsOffrq6QAXomDqwCao10HF18NeKnAgplVGFYaKxdCwT1L1FEirkw0x0u2l
	uqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oXQDVwuiZVZtJ2DsuE51JjixDfnhBj6F1+HJr3p1FV8=;
	b=XRMWby+Q9NUtefjTeuiv1u+BSA/0FJjkJreAq15SBRTzpEEtotQFleTwDGToMmimIO
	vd0eCuFbIKWIa9dnS3U4fzmm0DPkO5iE8uymVzbAGoP2Elsr51qjXvVf+1LcP8JsMy68
	3i11GWMhzf+cJqy9/3XB1QUB4xAz4RglqNe03HbV7tW0fwb09bSHQql+P8U07q+3Bbur
	S1fpKe6hVYNlPZTjrrejqsRzSdgr7U5lBxs9uksG8jS4UMnw5PyoBHybez7CBQGBmDOL
	Pafdstiiu04hHvELl+iNsJnQk3pLxHOk3MjzPHCUj5af9zrPipYcPFGXaPdZAioQ6Y0q
	JcPA==
X-Gm-Message-State: AIkVDXIabIwqZ7YTKH2NYNqO0S379rCIRFvQvOnXOrRmH4eeYUQ8VglLUkKWuu9OTopq8aVokaSZaVLCW/BXV0nU
X-Received: by 10.107.53.13 with SMTP id c13mr14474164ioa.55.1484932072122;
	Fri, 20 Jan 2017 09:07:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.130.106 with HTTP; Fri, 20 Jan 2017 09:07:51 -0800 (PST)
In-Reply-To: <b2610f4ee0fe434e9820784963e2e0c3@FE-MBX1014.de.bosch.com>
References: <b2610f4ee0fe434e9820784963e2e0c3@FE-MBX1014.de.bosch.com>
From: Rick Altherr <raltherr@google.com>
Date: Fri, 20 Jan 2017 09:07:51 -0800
Message-ID: <CAPLgG==DimRGGufhUtxQGjEA95Tb_38O8ALg6qinYktW1Lm9Lg@mail.gmail.com>
To: "Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto - Building initramfs to run a shell script for the support of IMA/EVM
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
X-List-Received-Date: Fri, 20 Jan 2017 17:07:55 -0000
Content-Type: multipart/alternative; boundary=001a11449e90acf943054689b043

--001a11449e90acf943054689b043
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Did you look at
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/image=
s/core-image-minimal-initramfs.bb?
You do want to use the core-image class but some of the variables need to
be adjusted to build an initramfs.  OpenBMC does something similar to what
you are describing with their obmc-phosphor-initramfs (
https://github.com/openbmc/openbmc/blob/master/meta-phosphor/common/recipes=
-phosphor/images/obmc-phosphor-initramfs.bb)
that does a few things like applying staged rootfs updates before mounting
the rootfs.

On Fri, Jan 20, 2017 at 4:44 AM, Eswaran Vinothkumar (BEG-PT/PJ-IOT1) <
Vinothkumar.Eswaran@de.bosch.com> wrote:

> Hello Yocto community developers,
>
>
>
> I am currently working on the task of porting an existing build system to
> Yocto to create customized Linux distribution for an embedded product. I
> have successfully created a bare box image, the kernel and root file syst=
em
> image and the system startup is working fine.
>
>
>
> I am now investigating on creating the initramfs using Yocto and have gon=
e
> through the Yocto documents for the same.
>
>
>
> Adding the options :
>
> INITRAMFS_FSTYPES =3D "cpio.gz"
>
> INITRAMFS_IMAGE =3D "custom-initramfs"  =C3=A0 my recipe which inherited
> core-image.bb recipe
>
>
>
> Results in the creation of =E2=80=98custom-image-20170120105621.rootfs.cp=
io.gz=E2=80=99
> file.
>
>
>
> We are using initramfs to run a script which before mounting the root fil=
e
> system checks for ima policy and also responsible for loading the evm-key=
s.
> In short, the initramfs contains a script which is executed before mounti=
ng
> the main root file system. So I think I need to follow a different
> procedure than the one I mentioned above for my use case. Also we are usi=
ng
> systemd as the init system and for the initramfs I don=E2=80=99t need sys=
v or
> systemd as all I will do is running a script in initramfs.
>
>
>
> Is there a better way of creating this structure in Yocto, any informatio=
n
> would be helpful.
>
>
>
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
>
>
>
> *Vinothkumar Eswaran BEG-PT/PJ-IOT1 *
> Tel. +49(7062)911-02 <+49%207062%2091102>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11449e90acf943054689b043
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Did you look at=C2=A0<a href=3D"http://git.yoctoproject.or=
g/cgit/cgit.cgi/poky/tree/meta/recipes-core/images/core-image-minimal-initr=
amfs.bb">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-c=
ore/images/core-image-minimal-initramfs.bb</a>?=C2=A0 You do want to use th=
e core-image class but some of the variables need to be adjusted to build a=
n initramfs.=C2=A0 OpenBMC does something similar to what you are describin=
g with their obmc-phosphor-initramfs (<a href=3D"https://github.com/openbmc=
/openbmc/blob/master/meta-phosphor/common/recipes-phosphor/images/obmc-phos=
phor-initramfs.bb">https://github.com/openbmc/openbmc/blob/master/meta-phos=
phor/common/recipes-phosphor/images/obmc-phosphor-initramfs.bb</a>) that do=
es a few things like applying staged rootfs updates before mounting the roo=
tfs.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri,=
 Jan 20, 2017 at 4:44 AM, Eswaran Vinothkumar (BEG-PT/PJ-IOT1) <span dir=3D=
"ltr">&lt;<a href=3D"mailto:Vinothkumar.Eswaran@de.bosch.com" target=3D"_bl=
ank">Vinothkumar.Eswaran@de.bosch.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_3631563516865396683WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hello Yocto community developers,<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am currently working on the task of porting an exis=
ting build system to Yocto to create customized Linux distribution for an e=
mbedded product. I have successfully created a
 bare box image, the kernel and root file system image and the system start=
up is working fine.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am now investigating on creating the initramfs usin=
g Yocto and have gone through the Yocto documents for the same.<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Adding the options :<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">INITRAMFS_FSTYPES =3D &quot;cpio.gz&quot;<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">INITRAMFS_IMAGE =3D &quot;custom-initramfs&quot;=C2=
=A0
</span><span style=3D"font-size:10.0pt;font-family:Wingdings">=C3=A0</span>=
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"> =
my recipe which inherited <a href=3D"http://core-image.bb" target=3D"_blank=
">core-image.bb</a> recipe<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Results in the creation of =E2=80=98custom-image-2017=
0120105621.<wbr>rootfs.cpio.gz=E2=80=99 file.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">We are using initramfs to run a script which before m=
ounting the root file system checks for ima policy and also responsible for=
 loading the evm-keys. In short, the initramfs
 contains a script which is executed before mounting the main root file sys=
tem. So I think I need to follow a different procedure than the one I menti=
oned above for my use case. Also we are using systemd as the init system an=
d for the initramfs I don=E2=80=99t need
 sysv or systemd as all I will do is running a script in initramfs.<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Is there a better way of creating this structure in Y=
octo, any information would be helpful.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">Mit freundlichen Gr=C3=BC=C3=
=9Fen / Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1<br>
</b><br>
Tel. </span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:black"><a href=3D"tel:+49%207062%2091102" value=3D"+4970629=
1102" target=3D"_blank">+49(7062)911-02</a>
</span><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:black"><br>
<br>
</span><u></u><u></u></p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a11449e90acf943054689b043--
