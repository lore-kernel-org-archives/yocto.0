Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14D98E00D7E; Tue, 30 Jan 2018 03:11:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427F7E00D5F
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 03:11:12 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id d13so11053469iog.5
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 03:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hVqEJ8NkOs/5Lut4Gxd2SFMEsLLPvUs5Rrvd+UnHt2w=;
	b=pkSYXDfgSAO7LRUQ1j7Q7icaw6c3I1/rnjDIdi9jqOGbRqGq7Ihi3yen2HyOWqdGks
	ovTaF3pNPeDXf/Mvxh4QWP2b8xxbsF+5wzr3+rQ1RMwQPNZoPHx6NMDk4ULPzHGhK+Oa
	mbgl0OelEQxdf8h7TAG2OoP7gET61Z0whuJ1H3YC8jdlDhaAT3bQOidZE0EhbpD7omCX
	X9ts4nlNX6Jt4cdm6PN433s1g9uH6jgG4s9/dQ6ZVHv/8Njay5FhF4Opc4stkbueyJjc
	tHmX8XJUXKWdV2yKlmzXt3bUZpj0kBycj/mIHI3TJpql1lAuf1jFR8uvTO1di8iAe/9r
	cwSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hVqEJ8NkOs/5Lut4Gxd2SFMEsLLPvUs5Rrvd+UnHt2w=;
	b=Ii+KNm1vWaa11FZrU7OJofgoPM7tVgFRYS1bqCMcHM78R+fpT7szIuJA2BrK/yRiHd
	GHWq0B0IZ0KTReyx0V9dYy2xxMuB2JA5OfL4mcP7SYT2G09dbkc+utcVMTiwznNSlrCW
	OB2NjGg9pGn+Gv70B9M4+lPZwvjc2ycJ3DjFrKowmA4K50vFn7IciO9F5WvgwPmO2FMj
	R2q90ArhhkeDnlfRZeuZmFCmosaeDiRK8M9GFpo5D9Xuw5BXI/uEokN5sZePpJSXmVDt
	o716Idzs6wag15Us9iwiFRLip2Lxi5gGvhcwvQom1uoaOM0/hwErosY77amNoU2NQbht
	IYFA==
X-Gm-Message-State: AKwxytfp6Y+UBNQe1jd4TAr6LMPXi0+1CxSH0gPPkXlkaj05KRC0wb6v
	GdKzSkCfKTHyb4pBnDzrOLWbO13HMMPUV3JVwpWB9g==
X-Google-Smtp-Source: AH8x224jPGFBZ9rr1V/JrZM+LgbcZ2MDnjC0J6hIA6hkWGgkHdPF33ZpyxLNhfcxQOCeu3DxkpTbAO1Z6IgV9/5/BH4=
X-Received: by 10.107.133.75 with SMTP id h72mr28978510iod.227.1517310672479; 
	Tue, 30 Jan 2018 03:11:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Tue, 30 Jan 2018 03:10:52 -0800 (PST)
In-Reply-To: <315129699.1783214.1517309025623@mail.yahoo.com>
References: <315129699.1783214.1517309025623.ref@mail.yahoo.com>
	<315129699.1783214.1517309025623@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 30 Jan 2018 11:10:52 +0000
Message-ID: <CAJTo0Larma2wZMTYfT7Fw16N25D5Vx+GeWFCbxOJGcJhxAc20A@mail.gmail.com>
To: Alexandru Nicolae <alexandru.nicolae0807@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing an rpm without repackaging
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
X-List-Received-Date: Tue, 30 Jan 2018 11:11:14 -0000
Content-Type: multipart/alternative; boundary="001a113ec5e4a5c2890563fc6b6a"

--001a113ec5e4a5c2890563fc6b6a
Content-Type: text/plain; charset="UTF-8"

So first, You can't put ROOTFS_POSTPROCESS_COMMAND inside a recipe as it
needs to be inside an image recipe specifically.

You generally can't take an RPM from somewhere else and inject it into OE
to use directly.  One good reason is that the package manager used is
configurable, so what do you want to happen if you set PACKAGE_CLASSES to
package_ipk and rpm isn't available?

Another reason is that any dependencies inside the RPM are most likely
based on another distribution, so most likely won't be resolvable.  Any
postinst scripts will be assuming the target distro, and most likely won't
work.

The solution for arbitrary packages from other distribution is to use
bin_package to unpack it, then use FILES_ to put it back into a
Yocto-native package of your choice.

Ross


On 30 January 2018 at 10:43, Alexandru Nicolae <
alexandru.nicolae0807@yahoo.com> wrote:

> Hello guys,
>
> I know that this have been discussed before, but I couldn't find a
> solution that works for me.
>
> I'm trying to install a rpm package, but every approach I've taken seems
> wrong. In the ideal case I would like a recipe that just copies the rpm
> somewhere on the rootfs and then execute a post-process command to install
> that rpm. Something like:
>
> SRC_URI = "file://net-snmp-${PV}.rpm"
>
> FILE_${PN} = "/"
> ROOTFS_POSTPROCESS_COMMAND += "${STAGING_BINDIR_NATIVE}/rpm -ivh
> --root=${IMAGE_ROOTFS}/ /*.rpm"
>
> I tried this sollution but I'm not able to copy the rpm as it is on the
> rootfs.
>
> I have also tried using the *bin_package *class and I was able to fully
> bake my image, but it seems that the rpm is just unpacked on the rootfs,
> not installed as I expected.
>
> Can you please help me with a working example of a recipe?
>
> Thank you,
> Alex
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113ec5e4a5c2890563fc6b6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So first, You can&#39;t put ROOTFS_POSTPROCESS_COMMAND ins=
ide a recipe as it needs to be inside an image recipe specifically.<div><br=
></div><div>You generally can&#39;t take an RPM from somewhere else and inj=
ect it into OE to use directly.=C2=A0 One good reason is that the package m=
anager used is configurable, so what do you want to happen if you set PACKA=
GE_CLASSES to package_ipk and rpm isn&#39;t available?</div><div><br></div>=
<div>Another reason is that any dependencies inside the RPM are most likely=
 based on another distribution, so most likely won&#39;t be resolvable.=C2=
=A0 Any postinst scripts will be assuming the target distro, and most likel=
y won&#39;t work.</div><div><br></div><div>The solution for arbitrary packa=
ges from other distribution is to use bin_package to unpack it, then use FI=
LES_ to put it back into a Yocto-native package of your choice.</div><div><=
br></div><div>Ross</div><div><br></div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On 30 January 2018 at 10:43, Alexandru Nicolae =
<span dir=3D"ltr">&lt;<a href=3D"mailto:alexandru.nicolae0807@yahoo.com" ta=
rget=3D"_blank">alexandru.nicolae0807@yahoo.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div><div style=3D"font-family:Helvetica Neue,=
Helvetica,Arial,sans-serif;font-size:13px"><div>Hello guys,</div><div><br><=
/div><div>I know that this have been discussed before, but I couldn&#39;t f=
ind a solution that works for me.</div><div><br></div><div>I&#39;m trying t=
o install a rpm package, but every approach I&#39;ve taken seems wrong. In =
the ideal case I would like a recipe that just copies the rpm somewhere on =
the rootfs and then execute a post-process command to install that rpm. Som=
ething like:</div><div><br></div><div>SRC_URI =3D &quot;file://net-snmp-${P=
V}.rpm&quot;<br></div><div><br></div><div>FILE_${PN} =3D &quot;/&quot;</div=
><div>ROOTFS_POSTPROCESS_COMMAND +=3D &quot;${STAGING_BINDIR_NATIVE}/rpm -i=
vh --root=3D${IMAGE_ROOTFS}/ /*.rpm&quot;<br></div><div><br></div><div>I tr=
ied this sollution but I&#39;m not able to copy the rpm as it is on the roo=
tfs.=C2=A0</div><div><br></div><div>I have also tried using the <b>bin_pack=
age </b>class and I was able to fully bake my image, but it seems that the =
rpm is just unpacked on the rootfs, not installed as I expected.</div><div>=
<br></div><div>Can you please help me with a working example of a recipe?</=
div><div><br></div><div>Thank you,</div><div>Alex</div><div><br></div><div>=
<br></div></div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113ec5e4a5c2890563fc6b6a--
