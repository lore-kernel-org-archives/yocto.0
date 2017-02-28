Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E86C1E007BA; Tue, 28 Feb 2017 04:28:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.193 listed in dnsbl.sorbs.net]
Received: from mail-ot0-f193.google.com (mail-ot0-f193.google.com
	[74.125.82.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE34CE0074B
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 04:27:59 -0800 (PST)
Received: by mail-ot0-f193.google.com with SMTP id i1so993527ota.3
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 04:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EID4zD4lihAyX10LyVPW4F+4x5AtzXO5/ctHeBkAeAk=;
	b=eFKcNC08gUQCCJv8F4QXY9zpluW6dI1coExlOODKvsn3WT87JpupWQOgZRoDqNj2ir
	3V4yEJUJVk+i2kb7NKfgaVx4G28eK7i7SegSrPluCNu3apJU45/zP5KVE6da+FT/q7Az
	GMANZz7y6rn/N/zurMQKPMS/eCM6lwvmb2zBfgUwwXy0c6H/jpmsG2ycsV7Rueuk6ko9
	/00rmoEXl9cpC9j14h866PCJ2jwlXeG88zkJ5a3XpwZuPGhbY/vkvbEtIHMqRIsGJ8tf
	+ewEtz5V/kMeltEIPdXXjUJwJ1ZjZq6TZA544OkstaYAfZ3M/BX/vFc7BWA6mxl5I63c
	S1ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EID4zD4lihAyX10LyVPW4F+4x5AtzXO5/ctHeBkAeAk=;
	b=lR4MbVchYtKFXBnxDHqYLjFBLOhkM+mKRduuzoBfVVkeskOOkj49JmdOEy2+fIKfoh
	9YKd1QZESeNwYPXZz99trgAash7mFLYi/7evIk/t0Mfdg5mJBqidKLBV3lvs2HrNfzWe
	hGL8NHViYSTse1gfNNWIvd/1wgIJZFXemP9JhJY0UrZYn3KQfoih7NO8IbcwfhMPa8M1
	H+QcIP14JBbpGSPt5+Vp9CWte8D82t8cTaxFguQ3ZBqH5WgZQ8WpZ2juQBhybn7G8UNP
	6eTwAgXY3TpfdM6qvEcAVUvVGm8FyNWSwJP7UjZn6UQ6BqoR4ax/k/W6Hi2lDb+mUw2t
	nakw==
X-Gm-Message-State: AMke39ljoB4mwKwgAoo49R3uFA//SNnOhXr5bjFbn2ewU5dpeKycqKkKZG9jW1Zo6CMox+9IeiCjLbX+mjpt1w==
X-Received: by 10.157.54.139 with SMTP id h11mr1165463otc.86.1488284878578;
	Tue, 28 Feb 2017 04:27:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.40.228 with HTTP; Tue, 28 Feb 2017 04:27:58 -0800 (PST)
In-Reply-To: <CAMKF1soDaDOWnROQZ3HgpFKBZGFVg4vDKOSNqx99Xgg1J4_qwg@mail.gmail.com>
References: <CA+pXca3Whs=QnGPJA8KwOEx=jhJaLf7OTj7=6vbgFvCLf2n3gw@mail.gmail.com>
	<CAMKF1soDaDOWnROQZ3HgpFKBZGFVg4vDKOSNqx99Xgg1J4_qwg@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Tue, 28 Feb 2017 17:57:58 +0530
Message-ID: <CA+pXca3HpKqD9eyJS2MFiFLJTzsY5bQM3Wkk6U9Nu2f1xfNEnw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 28 Feb 2017 12:28:03 -0000
Content-Type: multipart/alternative; boundary=001a113ed44c8339630549965392

--001a113ed44c8339630549965392
Content-Type: text/plain; charset=UTF-8

Hi,
I am using krogoth branch of meta-altera.
in meta/classes/kernel-yocto.bbclass file
SRCTREECOVEREDTASKS += "do_kernel_configme do_validate_branches
do_kernel_configcheck do_kernel_checkout do_shared_workdir do_fetch
do_unpack do_patch"

if i remove "do_shared_workdir" . it worked. is this the right way.
Thanks.

On Tue, Feb 28, 2017 at 12:46 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Tue, Feb 21, 2017 at 6:31 AM praveen vattipalli <praveen.vatt@gmail.com>
> wrote:
>
>> Hi All,
>> I am using poky-krogoth source and meta-altera layer. I am building
>> kernel locally using externalsrc. while building external module i am
>> getting error.
>>
>
> Which branch of meta-altera are you using
>
>>
>>
>>
>> ERROR: Task do_make_scripts in /home/praveenk/source/
>> platform/build/../meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb depends
>> upon non-existent task do_shared_workdir in /home/praveenk/source/
>> platform/build/../meta-altera/recipes-kernel/linux/linux-
>> altera-ltsi_4.1.22.bb
>> ERROR: Command execution failed: 1
>>
>> linux.bb contains
>>
>> LINUX_VERSION = "4.1.22"
>> LINUX_VERSION_SUFFIX = "-ltsi"
>>
>> include linux-altera.inc
>>
>> SRC_URI = "file://${EXTERNALSRC}"
>>
>> LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=
>> d7810fab7487fb0aad327b76f1be7cd7"
>>
>> BUILD_DEFCONFIG = "socfpga_defconfig"
>> EXTERNALSRC = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"
>> EXTERNALSRC_BUILD = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"
>>
>> SRCREV_pn-${PN} = "${AUTOREV}"
>>
>> S= "${EXTERNALSRC}"
>>
>> hello-mod.bb  contains
>>
>> SUMMARY = "Example of how to build an external Linux kernel module"
>> LICENSE = "GPLv2"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"
>>
>> inherit module
>>
>> SRC_URI = "file://Makefile \
>>            file://hello.c \
>>            file://COPYING \
>>           "
>>
>>
>> S = "${WORKDIR}"
>>
>> # The inherit of module.bbclass will automatically name module packages
>> with
>> # "kernel-module-" prefix as required by the oe-core build environment.
>> ~
>>
>>
>> Am I missing anything?
>>
>> Thanks,
>> Praveen.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--001a113ed44c8339630549965392
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br></div>I am using krogoth branch=
 of meta-altera.<br></div>in meta/classes/kernel-yocto.bbclass file <br>SRC=
TREECOVEREDTASKS +=3D &quot;do_kernel_configme do_validate_branches do_kern=
el_configcheck do_kernel_checkout do_shared_workdir do_fetch do_unpack do_p=
atch&quot;<br><br></div>if i remove &quot;do_shared_workdir&quot; . it work=
ed. is this the right way.<br></div>Thanks.<br></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Tue, Feb 28, 2017 at 12:46 PM, Khem =
Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_=
blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div><br><div class=3D"gmail_quote"><span class=3D""><div>On Tue, Fe=
b 21, 2017 at 6:31 AM praveen vattipalli &lt;<a href=3D"mailto:praveen.vatt=
@gmail.com" target=3D"_blank">praveen.vatt@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div class=3D"m_8702066790997206627gmail_m=
sg"><div class=3D"m_8702066790997206627gmail_msg"><div class=3D"m_870206679=
0997206627gmail_msg"><div class=3D"m_8702066790997206627gmail_msg"><div cla=
ss=3D"m_8702066790997206627gmail_msg"><div class=3D"m_8702066790997206627gm=
ail_msg"><div class=3D"m_8702066790997206627gmail_msg">Hi All,<br class=3D"=
m_8702066790997206627gmail_msg"></div>I am using poky-krogoth=20
source and meta-altera layer. I am building kernel locally using=20
externalsrc. while building external module i am getting error.<br class=3D=
"m_8702066790997206627gmail_msg"></div></div></div></div></div></div></bloc=
kquote><div><br></div></span><div>Which branch of meta-altera are you using=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div class=3D"m=
_8702066790997206627gmail_msg"><div class=3D"m_8702066790997206627gmail_msg=
"><div class=3D"m_8702066790997206627gmail_msg"><div class=3D"m_87020667909=
97206627gmail_msg"><div class=3D"m_8702066790997206627gmail_msg"><div class=
=3D"m_8702066790997206627gmail_msg"><br class=3D"m_8702066790997206627gmail=
_msg"><br class=3D"m_8702066790997206627gmail_msg"><br class=3D"m_870206679=
0997206627gmail_msg"><span style=3D"color:rgb(255,0,0)" class=3D"m_87020667=
90997206627gmail_msg">ERROR: Task do_make_scripts in</span> /home/praveenk/=
source/<wbr>platform/build/../meta-<wbr>skeleton/recipes-kernel/hello-<wbr>=
mod/<a href=3D"http://hello-mod_0.1.bb" class=3D"m_8702066790997206627gmail=
_msg" target=3D"_blank">hello-mod_0.1.bb</a> <span style=3D"color:rgb(255,0=
,0)" class=3D"m_8702066790997206627gmail_msg">depends upon non-existent tas=
k do_shared_workdir in</span> /home/praveenk/source/<wbr>platform/build/../=
meta-altera/<wbr>recipes-kernel/linux/<a href=3D"http://linux-altera-ltsi_4=
.1.22.bb" class=3D"m_8702066790997206627gmail_msg" target=3D"_blank">linux-=
<wbr>altera-ltsi_4.1.22.bb</a><br class=3D"m_8702066790997206627gmail_msg">=
<span style=3D"color:rgb(255,0,0)" class=3D"m_8702066790997206627gmail_msg"=
>ERROR: Command execution failed: 1<br class=3D"m_8702066790997206627gmail_=
msg"></span><br class=3D"m_8702066790997206627gmail_msg"></div><a href=3D"h=
ttp://linux.bb" class=3D"m_8702066790997206627gmail_msg" target=3D"_blank">=
linux.bb</a> contains<br class=3D"m_8702066790997206627gmail_msg"><br class=
=3D"m_8702066790997206627gmail_msg">LINUX_VERSION =3D &quot;4.1.22&quot;<br=
 class=3D"m_8702066790997206627gmail_msg">LINUX_VERSION_SUFFIX =3D &quot;-l=
tsi&quot;<br class=3D"m_8702066790997206627gmail_msg"><br class=3D"m_870206=
6790997206627gmail_msg">include linux-altera.inc<br class=3D"m_870206679099=
7206627gmail_msg"><br class=3D"m_8702066790997206627gmail_msg">SRC_URI =3D =
&quot;file://${EXTERNALSRC}&quot;<br class=3D"m_8702066790997206627gmail_ms=
g"><br class=3D"m_8702066790997206627gmail_msg">LIC_FILES_CHKSUM =3D &quot;=
file://${S}/COPYING;md5=3D<wbr>d7810fab7487fb0aad327b76f1be7c<wbr>d7&quot;<=
br class=3D"m_8702066790997206627gmail_msg"><br class=3D"m_8702066790997206=
627gmail_msg">BUILD_DEFCONFIG =3D &quot;socfpga_defconfig&quot;<br class=3D=
"m_8702066790997206627gmail_msg">EXTERNALSRC =3D &quot;${TOPDIR}/../meta-al=
tera/<wbr>recipes-kernel/linux/files&quot;<br class=3D"m_870206679099720662=
7gmail_msg">EXTERNALSRC_BUILD =3D &quot;${TOPDIR}/../meta-altera/<wbr>recip=
es-kernel/linux/files&quot;<br class=3D"m_8702066790997206627gmail_msg"><br=
 class=3D"m_8702066790997206627gmail_msg">SRCREV_pn-${PN} =3D &quot;${AUTOR=
EV}&quot;<br class=3D"m_8702066790997206627gmail_msg"><br class=3D"m_870206=
6790997206627gmail_msg">S=3D &quot;${EXTERNALSRC}&quot;<br class=3D"m_87020=
66790997206627gmail_msg"><br class=3D"m_8702066790997206627gmail_msg"></div=
><a href=3D"http://hello-mod.bb" class=3D"m_8702066790997206627gmail_msg" t=
arget=3D"_blank">hello-mod.bb</a>=C2=A0 contains<br class=3D"m_870206679099=
7206627gmail_msg"><br class=3D"m_8702066790997206627gmail_msg">SUMMARY =3D =
&quot;Example of how to build an external Linux kernel module&quot;<br clas=
s=3D"m_8702066790997206627gmail_msg">LICENSE =3D &quot;GPLv2&quot;<br class=
=3D"m_8702066790997206627gmail_msg">LIC_FILES_CHKSUM =3D &quot;file://COPYI=
NG;md5=3D<wbr>12f884d2ae1ff87c09e5b7ccc2c4ca<wbr>7e&quot;<br class=3D"m_870=
2066790997206627gmail_msg"><br class=3D"m_8702066790997206627gmail_msg">inh=
erit module<br class=3D"m_8702066790997206627gmail_msg"><br class=3D"m_8702=
066790997206627gmail_msg">SRC_URI =3D &quot;file://Makefile \<br class=3D"m=
_8702066790997206627gmail_msg">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 file://hello.c \<br class=3D"m_8702066790997206627gmail_=
msg">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://CO=
PYING \<br class=3D"m_8702066790997206627gmail_msg">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;<br class=3D"m_8702066790997206627g=
mail_msg"><br class=3D"m_8702066790997206627gmail_msg"><br class=3D"m_87020=
66790997206627gmail_msg">S =3D &quot;${WORKDIR}&quot;<br class=3D"m_8702066=
790997206627gmail_msg"><br class=3D"m_8702066790997206627gmail_msg"># The i=
nherit of module.bbclass will automatically name module packages with<br cl=
ass=3D"m_8702066790997206627gmail_msg"># &quot;kernel-module-&quot; prefix =
as required by the oe-core build environment.<br class=3D"m_870206679099720=
6627gmail_msg">~=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br class=3D"m=
_8702066790997206627gmail_msg"><br class=3D"m_8702066790997206627gmail_msg"=
></div>Am I missing anything?<br class=3D"m_8702066790997206627gmail_msg"><=
br class=3D"m_8702066790997206627gmail_msg"></div>Thanks,<br class=3D"m_870=
2066790997206627gmail_msg"></div>Praveen.</div></div></div><span class=3D"H=
OEnZb"><font color=3D"#888888">
--<br class=3D"m_8702066790997206627gmail_msg">
______________________________<wbr>_________________<br class=3D"m_87020667=
90997206627gmail_msg">
yocto mailing list<br class=3D"m_8702066790997206627gmail_msg">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"m_8702066790997206627gma=
il_msg" target=3D"_blank">yocto@yoctoproject.org</a><br class=3D"m_87020667=
90997206627gmail_msg">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"m_8702066790997206627gmail_msg" target=3D"_blank">https://lists.=
yoctoproject.<wbr>org/listinfo/yocto</a><br class=3D"m_8702066790997206627g=
mail_msg">
</font></span></blockquote></div></div>
</blockquote></div><br></div>

--001a113ed44c8339630549965392--
