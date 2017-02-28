Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 111ECE0077F; Mon, 27 Feb 2017 23:16:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.179 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC539E00655
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 23:16:33 -0800 (PST)
Received: by mail-ua0-f179.google.com with SMTP id f54so3994669uaa.1
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 23:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=pNa7Uq68Tj8TqLTnUUCWrjkSfNnhnSBG4Nj6kO5Doxk=;
	b=DZxmW4zQ3Eec1FbdpGk3bXByaZ3tws0lrpleTNzEVudvu1ckP/JrT3KtQsF29pXM+i
	LDUhwL+RA8d5Z4QQkD3HmEEWcSL3r5oFE2YEbDaOgKRnQu6ByoPeaDW0Awc75MTH3Qkd
	Wk4o222+5cB3caaaussDxX7liejBU1MzDm/VysUczsofYT8nFeo30Rb3cvZpC0aLFVOM
	X205E01eiAiG7m/xxhu6mvYWNYxaX4/H1IyHYzQKuFiRg2SrffPN0sHPbf4LQ11aBsq3
	frPLLvieuIQTZFnb2VKdJ1frVQ970xJ7Q8Vcq31qZScJmqtvDJf/MGCzwMdgjsld+lmV
	F2/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=pNa7Uq68Tj8TqLTnUUCWrjkSfNnhnSBG4Nj6kO5Doxk=;
	b=NcSczCSbYZEdt3WR+wdsdyLeQEVZQDzUnzaYxg+xg23LCkU9sh86yc+M6rP1hcNujI
	5oLGyMRGcmePH/SU2q2SiDIPxp6zb7ciBCXlaBCENQT5GWDN9bsQJUoxS5xJN2yCQqG/
	ViGbpYxL3A3Yw6rI5R/b053py9NyspAu+FsOw+loKtubx4zbL6H3WmBlIDTkX3HP8Fg0
	qqNfjBy05T6N/LWLDZuchZp/IzQhYYAwMzsBxNS4iB/GDO+mWzTdKjp2UZJHZaM97DHx
	/SewtQUTfKyvogmG9L1D9U3LUXgqShzOGFFsB3/wrN9hTH8mnz4KstKmYEA0RZaoMbr8
	K9lg==
X-Gm-Message-State: AMke39kbczhBCKVnFrrInuqnSkCVFyipxCsYeHGW46kD28b87TN0R3jZcGD5PTDKyhIjboniesme4utytvXjhw==
X-Received: by 10.176.83.123 with SMTP id y56mr299818uay.141.1488266192717;
	Mon, 27 Feb 2017 23:16:32 -0800 (PST)
MIME-Version: 1.0
References: <CA+pXca3Whs=QnGPJA8KwOEx=jhJaLf7OTj7=6vbgFvCLf2n3gw@mail.gmail.com>
In-Reply-To: <CA+pXca3Whs=QnGPJA8KwOEx=jhJaLf7OTj7=6vbgFvCLf2n3gw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 28 Feb 2017 07:16:21 +0000
Message-ID: <CAMKF1soDaDOWnROQZ3HgpFKBZGFVg4vDKOSNqx99Xgg1J4_qwg@mail.gmail.com>
To: praveen vattipalli <praveen.vatt@gmail.com>, yocto <yocto@yoctoproject.org>
Subject: Re: error while compiling external module in Krogoth branch
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
X-List-Received-Date: Tue, 28 Feb 2017 07:16:36 -0000
Content-Type: multipart/alternative; boundary=94eb2c191bc0bf8ddf054991f965

--94eb2c191bc0bf8ddf054991f965
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 21, 2017 at 6:31 AM praveen vattipalli <praveen.vatt@gmail.com>
wrote:

> Hi All,
> I am using poky-krogoth source and meta-altera layer. I am building kernel
> locally using externalsrc. while building external module i am getting
> error.
>

Which branch of meta-altera are you using

>
>
>
> ERROR: Task do_make_scripts in
> /home/praveenk/source/platform/build/../meta-skeleton/recipes-kernel/hello-mod/
> hello-mod_0.1.bb depends upon non-existent task do_shared_workdir in
> /home/praveenk/source/platform/build/../meta-altera/recipes-kernel/linux/
> linux-altera-ltsi_4.1.22.bb
> ERROR: Command execution failed: 1
>
> linux.bb contains
>
> LINUX_VERSION = "4.1.22"
> LINUX_VERSION_SUFFIX = "-ltsi"
>
> include linux-altera.inc
>
> SRC_URI = "file://${EXTERNALSRC}"
>
> LIC_FILES_CHKSUM =
> "file://${S}/COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>
> BUILD_DEFCONFIG = "socfpga_defconfig"
> EXTERNALSRC = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"
> EXTERNALSRC_BUILD = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"
>
> SRCREV_pn-${PN} = "${AUTOREV}"
>
> S= "${EXTERNALSRC}"
>
> hello-mod.bb  contains
>
> SUMMARY = "Example of how to build an external Linux kernel module"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"
>
> inherit module
>
> SRC_URI = "file://Makefile \
>            file://hello.c \
>            file://COPYING \
>           "
>
>
> S = "${WORKDIR}"
>
> # The inherit of module.bbclass will automatically name module packages
> with
> # "kernel-module-" prefix as required by the oe-core build environment.
> ~
>
>
> Am I missing anything?
>
> Thanks,
> Praveen.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c191bc0bf8ddf054991f965
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div>On Tue, Feb 21, 2017 at 6:31 AM pr=
aveen vattipalli &lt;<a href=3D"mailto:praveen.vatt@gmail.com">praveen.vatt=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cla=
ss=3D"gmail_msg"><div class=3D"gmail_msg"><div class=3D"gmail_msg"><div cla=
ss=3D"gmail_msg"><div class=3D"gmail_msg"><div class=3D"gmail_msg"><div cla=
ss=3D"gmail_msg">Hi All,<br class=3D"gmail_msg"></div>I am using poky-krogo=
th=20
source and meta-altera layer. I am building kernel locally using=20
externalsrc. while building external module i am getting error.<br class=3D=
"gmail_msg"></div></div></div></div></div></div></blockquote><div><br></div=
><div>Which branch of meta-altera are you using</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div class=3D"gmail_msg"><div class=3D"gmail_msg"><div class=3D"gm=
ail_msg"><div class=3D"gmail_msg"><div class=3D"gmail_msg"><div class=3D"gm=
ail_msg"><br class=3D"gmail_msg"><br class=3D"gmail_msg"><br class=3D"gmail=
_msg"><span style=3D"color:rgb(255,0,0)" class=3D"gmail_msg">ERROR: Task do=
_make_scripts in</span> /home/praveenk/source/platform/build/../meta-skelet=
on/recipes-kernel/hello-mod/<a href=3D"http://hello-mod_0.1.bb" class=3D"gm=
ail_msg" target=3D"_blank">hello-mod_0.1.bb</a> <span style=3D"color:rgb(25=
5,0,0)" class=3D"gmail_msg">depends upon non-existent task do_shared_workdi=
r in</span> /home/praveenk/source/platform/build/../meta-altera/recipes-ker=
nel/linux/<a href=3D"http://linux-altera-ltsi_4.1.22.bb" class=3D"gmail_msg=
" target=3D"_blank">linux-altera-ltsi_4.1.22.bb</a><br class=3D"gmail_msg">=
<span style=3D"color:rgb(255,0,0)" class=3D"gmail_msg">ERROR: Command execu=
tion failed: 1<br class=3D"gmail_msg"></span><br class=3D"gmail_msg"></div>=
<a href=3D"http://linux.bb" class=3D"gmail_msg" target=3D"_blank">linux.bb<=
/a> contains<br class=3D"gmail_msg"><br class=3D"gmail_msg">LINUX_VERSION =
=3D &quot;4.1.22&quot;<br class=3D"gmail_msg">LINUX_VERSION_SUFFIX =3D &quo=
t;-ltsi&quot;<br class=3D"gmail_msg"><br class=3D"gmail_msg">include linux-=
altera.inc<br class=3D"gmail_msg"><br class=3D"gmail_msg">SRC_URI =3D &quot=
;file://${EXTERNALSRC}&quot;<br class=3D"gmail_msg"><br class=3D"gmail_msg"=
>LIC_FILES_CHKSUM =3D &quot;file://${S}/COPYING;md5=3Dd7810fab7487fb0aad327=
b76f1be7cd7&quot;<br class=3D"gmail_msg"><br class=3D"gmail_msg">BUILD_DEFC=
ONFIG =3D &quot;socfpga_defconfig&quot;<br class=3D"gmail_msg">EXTERNALSRC =
=3D &quot;${TOPDIR}/../meta-altera/recipes-kernel/linux/files&quot;<br clas=
s=3D"gmail_msg">EXTERNALSRC_BUILD =3D &quot;${TOPDIR}/../meta-altera/recipe=
s-kernel/linux/files&quot;<br class=3D"gmail_msg"><br class=3D"gmail_msg">S=
RCREV_pn-${PN} =3D &quot;${AUTOREV}&quot;<br class=3D"gmail_msg"><br class=
=3D"gmail_msg">S=3D &quot;${EXTERNALSRC}&quot;<br class=3D"gmail_msg"><br c=
lass=3D"gmail_msg"></div><a href=3D"http://hello-mod.bb" class=3D"gmail_msg=
" target=3D"_blank">hello-mod.bb</a>=C2=A0 contains<br class=3D"gmail_msg">=
<br class=3D"gmail_msg">SUMMARY =3D &quot;Example of how to build an extern=
al Linux kernel module&quot;<br class=3D"gmail_msg">LICENSE =3D &quot;GPLv2=
&quot;<br class=3D"gmail_msg">LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=
=3D12f884d2ae1ff87c09e5b7ccc2c4ca7e&quot;<br class=3D"gmail_msg"><br class=
=3D"gmail_msg">inherit module<br class=3D"gmail_msg"><br class=3D"gmail_msg=
">SRC_URI =3D &quot;file://Makefile \<br class=3D"gmail_msg">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://hello.c \<br class=
=3D"gmail_msg">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 file://COPYING \<br class=3D"gmail_msg">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;<br class=3D"gmail_msg"><br class=3D"gmail_msg"=
><br class=3D"gmail_msg">S =3D &quot;${WORKDIR}&quot;<br class=3D"gmail_msg=
"><br class=3D"gmail_msg"># The inherit of module.bbclass will automaticall=
y name module packages with<br class=3D"gmail_msg"># &quot;kernel-module-&q=
uot; prefix as required by the oe-core build environment.<br class=3D"gmail=
_msg">~=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br class=3D"gmail_msg"><br class=
=3D"gmail_msg"></div>Am I missing anything?<br class=3D"gmail_msg"><br clas=
s=3D"gmail_msg"></div>Thanks,<br class=3D"gmail_msg"></div>Praveen.</div>
--<br class=3D"gmail_msg">
_______________________________________________<br class=3D"gmail_msg">
yocto mailing list<br class=3D"gmail_msg">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"gmail_msg" target=3D"_bl=
ank">yocto@yoctoproject.org</a><br class=3D"gmail_msg">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"gmail_msg" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br class=3D"gmail_msg">
</blockquote></div></div>

--94eb2c191bc0bf8ddf054991f965--
