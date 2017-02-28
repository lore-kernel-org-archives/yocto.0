Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D1ACE008D0; Tue, 28 Feb 2017 07:02:08 -0800 (PST)
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
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8C31E00524
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 07:02:06 -0800 (PST)
Received: by mail-ua0-f182.google.com with SMTP id x24so16064808uab.0
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 07:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5KZDJQ6H9yzLEONLUJOs2Yp8+cXzTG1+V/8SMmTHxLw=;
	b=A4chMHII2Tug0ojLQtEqPdRKOBKuoEpGYRI0bgTs2iC8jWvw+47oeOc6sfg3u9U6Sx
	Yqat6a6gnjxgQ5OpbMG7zY63dxecCYFgWQctGZhClXvo65xfbXKuOkFavSlTxR3Dwdnf
	B/O5Tm4eI6RPEKxEMb+e5nhA5MXzz7OdAsEMjx1Kknb5y5/sO6UjARwbpk0PtxqOLGkJ
	2a4mAnYZCglK4NKG3pvoIdYryvzXJhIDkW6Xrf/ziY8uajlhLcg7ZBsd84Xs/FKRH1k8
	6gbrnOAT/jzZoyAXUEHNhyz7Xl6V1MUS7aNw6ar5s+wo5XplhMRVSzaggVsKgecXwEiu
	ixxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5KZDJQ6H9yzLEONLUJOs2Yp8+cXzTG1+V/8SMmTHxLw=;
	b=dJgcQeS/x3TPffrqFD5X0IyXATKaBUKTmvn9U2kPi7TS445FNoGZOYXPuufz9QmSuJ
	mQU3gyVOhdEdiX0Be+jLJwM4dqF6NMtLTs4Ig6gLIVAA5kkdYk4AbnD2Dv3RQE9Gxi1I
	HZmYAJd4fU11l8zXYzYneV3LJ33CD1avepSy6oT0jZ0D8bJlfWUMKO+1tYgdU6IosTCd
	WG6BU0f9WRTTSqZfB82QeinRyXJLD0xvjVfTO1SQE84ddcY75PGA1ljc8BX8HjVjn3OT
	BSY6t3KOFTluoiBUh1phM6alxYxSNJXARzBHPn1orR/hwZkNRbqKk6sK1tTcSuMWChW9
	248g==
X-Gm-Message-State: AMke39k9gCfZMXJ5EbLIf883PCAViIGm2rpgtJlGK8+tYq2QqUQjfVe/8Ytpr0TmZ/9uQWa99Ha0pQ478gkaeA==
X-Received: by 10.176.69.161 with SMTP id u30mr1220146uau.101.1488294125640;
	Tue, 28 Feb 2017 07:02:05 -0800 (PST)
MIME-Version: 1.0
References: <CA+pXca3Whs=QnGPJA8KwOEx=jhJaLf7OTj7=6vbgFvCLf2n3gw@mail.gmail.com>
	<CAMKF1soDaDOWnROQZ3HgpFKBZGFVg4vDKOSNqx99Xgg1J4_qwg@mail.gmail.com>
	<CA+pXca3HpKqD9eyJS2MFiFLJTzsY5bQM3Wkk6U9Nu2f1xfNEnw@mail.gmail.com>
In-Reply-To: <CA+pXca3HpKqD9eyJS2MFiFLJTzsY5bQM3Wkk6U9Nu2f1xfNEnw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 28 Feb 2017 15:01:55 +0000
Message-ID: <CAMKF1soRd_1Aaes7-ky0f2ef+ye03y+qH3xcwCqHwtg7J=-5Aw@mail.gmail.com>
To: praveen vattipalli <praveen.vatt@gmail.com>
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
X-List-Received-Date: Tue, 28 Feb 2017 15:02:08 -0000
Content-Type: multipart/alternative; boundary=94eb2c11c960ae322c0549987abd

--94eb2c11c960ae322c0549987abd
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 5:27 AM praveen vattipalli <praveen.vatt@gmail.com>
wrote:

> Hi,
> I am using krogoth branch of meta-altera.
> in meta/classes/kernel-yocto.bbclass file
> SRCTREECOVEREDTASKS += "do_kernel_configme do_validate_branches
> do_kernel_configcheck do_kernel_checkout do_shared_workdir do_fetch
> do_unpack do_patch"
>
> if i remove "do_shared_workdir" . it worked. is this the right way.
>


Please send this as a patch

>
> Thanks.native']
> NOTE: Runtime target 'packagegroup-meshwifi' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['packagegroup-meshwifi',
> 'plumewifi', 'openvswitch-native', 'util-linux-uuidgen-native']
> ERROR: Required build target 'comcast-br
>
> On Tue, Feb 28, 2017 at 12:46 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On Tue, Feb 21, 2017 at 6:31 AM praveen vattipalli <praveen.vatt@gmail.com>
> wrote:
>
> Hi All,
> I am using poky-krogoth source and meta-altera layer. I am building kernel
> locally using externalsrc. while building external module i am getting
> error.
>
>
> Which branch of meta-altera are you using
>
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
>
>

--94eb2c11c960ae322c0549987abd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div>On Tue, Feb 28, 2017 at 5:27 AM pr=
aveen vattipalli &lt;<a href=3D"mailto:praveen.vatt@gmail.com">praveen.vatt=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cla=
ss=3D"gmail_msg"><div class=3D"gmail_msg"><div class=3D"gmail_msg"><div cla=
ss=3D"gmail_msg"><div class=3D"gmail_msg">Hi,<br class=3D"gmail_msg"></div>=
I am using krogoth branch of meta-altera.<br class=3D"gmail_msg"></div>in m=
eta/classes/kernel-yocto.bbclass file <br class=3D"gmail_msg">SRCTREECOVERE=
DTASKS +=3D &quot;do_kernel_configme do_validate_branches do_kernel_configc=
heck do_kernel_checkout do_shared_workdir do_fetch do_unpack do_patch&quot;=
<br class=3D"gmail_msg"><br class=3D"gmail_msg"></div>if i remove &quot;do_=
shared_workdir&quot; . it worked. is this the right way.</div></div></block=
quote><div><br></div><div><br></div><div>Please send this as a patch=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_msg"><div class=3D"=
gmail_msg"><br class=3D"gmail_msg"></div>Thanks.native&#39;]<br class=3D"gm=
ail_msg"></div><div class=3D"gmail_msg">NOTE: Runtime target &#39;packagegr=
oup-meshwifi&#39; is unbuildable, removing...</div><div class=3D"gmail_msg"=
>Missing or unbuildable dependency chain was: [&#39;packagegroup-meshwifi&#=
39;, &#39;plumewifi&#39;, &#39;openvswitch-native&#39;, &#39;util-linux-uui=
dgen-native&#39;]</div><div class=3D"gmail_msg">ERROR: Required build targe=
t &#39;comcast-br</div><div class=3D"gmail_extra gmail_msg"><br class=3D"gm=
ail_msg"><div class=3D"gmail_quote gmail_msg">On Tue, Feb 28, 2017 at 12:46=
 PM, Khem Raj <span class=3D"gmail_msg">&lt;<a href=3D"mailto:raj.khem@gmai=
l.com" class=3D"gmail_msg" target=3D"_blank">raj.khem@gmail.com</a>&gt;</sp=
an> wrote:<br class=3D"gmail_msg"><blockquote class=3D"gmail_quote gmail_ms=
g" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div class=3D"gmail_msg"><br class=3D"gmail_msg"><div class=3D"gmail_quote =
gmail_msg"><span class=3D"gmail_msg"><div class=3D"gmail_msg">On Tue, Feb 2=
1, 2017 at 6:31 AM praveen vattipalli &lt;<a href=3D"mailto:praveen.vatt@gm=
ail.com" class=3D"gmail_msg" target=3D"_blank">praveen.vatt@gmail.com</a>&g=
t; wrote:<br class=3D"gmail_msg"></div><blockquote class=3D"gmail_quote gma=
il_msg" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmai=
l_msg"><div class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gm=
ail_msg"><div class=3D"m_8700692231478789494m_8702066790997206627gmail_msg =
gmail_msg"><div class=3D"m_8700692231478789494m_8702066790997206627gmail_ms=
g gmail_msg"><div class=3D"m_8700692231478789494m_8702066790997206627gmail_=
msg gmail_msg"><div class=3D"m_8700692231478789494m_8702066790997206627gmai=
l_msg gmail_msg"><div class=3D"m_8700692231478789494m_8702066790997206627gm=
ail_msg gmail_msg">Hi All,<br class=3D"m_8700692231478789494m_8702066790997=
206627gmail_msg gmail_msg"></div>I am using poky-krogoth=20
source and meta-altera layer. I am building kernel locally using=20
externalsrc. while building external module i am getting error.<br class=3D=
"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg"></div></div=
></div></div></div></div></blockquote><div class=3D"gmail_msg"><br class=3D=
"gmail_msg"></div></span><div class=3D"gmail_msg">Which branch of meta-alte=
ra are you using</div><blockquote class=3D"gmail_quote gmail_msg" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"gmail_msg"><div class=3D"m_8700692231478789494h5 gmail_msg"><div class=
=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg"><div cla=
ss=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg"><div c=
lass=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg"><div=
 class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg"><d=
iv class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg">=
<div class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg=
"><br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_ms=
g"><br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_m=
sg"><br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_=
msg"><span style=3D"color:rgb(255,0,0)" class=3D"m_8700692231478789494m_870=
2066790997206627gmail_msg gmail_msg">ERROR: Task do_make_scripts in</span> =
/home/praveenk/source/platform/build/../meta-skeleton/recipes-kernel/hello-=
mod/<a href=3D"http://hello-mod_0.1.bb" class=3D"m_8700692231478789494m_870=
2066790997206627gmail_msg gmail_msg" target=3D"_blank">hello-mod_0.1.bb</a>=
 <span style=3D"color:rgb(255,0,0)" class=3D"m_8700692231478789494m_8702066=
790997206627gmail_msg gmail_msg">depends upon non-existent task do_shared_w=
orkdir in</span> /home/praveenk/source/platform/build/../meta-altera/recipe=
s-kernel/linux/<a href=3D"http://linux-altera-ltsi_4.1.22.bb" class=3D"m_87=
00692231478789494m_8702066790997206627gmail_msg gmail_msg" target=3D"_blank=
">linux-altera-ltsi_4.1.22.bb</a><br class=3D"m_8700692231478789494m_870206=
6790997206627gmail_msg gmail_msg"><span style=3D"color:rgb(255,0,0)" class=
=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg">ERROR: C=
ommand execution failed: 1<br class=3D"m_8700692231478789494m_8702066790997=
206627gmail_msg gmail_msg"></span><br class=3D"m_8700692231478789494m_87020=
66790997206627gmail_msg gmail_msg"></div><a href=3D"http://linux.bb" class=
=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg" target=
=3D"_blank">linux.bb</a> contains<br class=3D"m_8700692231478789494m_870206=
6790997206627gmail_msg gmail_msg"><br class=3D"m_8700692231478789494m_87020=
66790997206627gmail_msg gmail_msg">LINUX_VERSION =3D &quot;4.1.22&quot;<br =
class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg">LIN=
UX_VERSION_SUFFIX =3D &quot;-ltsi&quot;<br class=3D"m_8700692231478789494m_=
8702066790997206627gmail_msg gmail_msg"><br class=3D"m_8700692231478789494m=
_8702066790997206627gmail_msg gmail_msg">include linux-altera.inc<br class=
=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg"><br clas=
s=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg">SRC_URI=
 =3D &quot;file://${EXTERNALSRC}&quot;<br class=3D"m_8700692231478789494m_8=
702066790997206627gmail_msg gmail_msg"><br class=3D"m_8700692231478789494m_=
8702066790997206627gmail_msg gmail_msg">LIC_FILES_CHKSUM =3D &quot;file://$=
{S}/COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7&quot;<br class=3D"m_8700=
692231478789494m_8702066790997206627gmail_msg gmail_msg"><br class=3D"m_870=
0692231478789494m_8702066790997206627gmail_msg gmail_msg">BUILD_DEFCONFIG =
=3D &quot;socfpga_defconfig&quot;<br class=3D"m_8700692231478789494m_870206=
6790997206627gmail_msg gmail_msg">EXTERNALSRC =3D &quot;${TOPDIR}/../meta-a=
ltera/recipes-kernel/linux/files&quot;<br class=3D"m_8700692231478789494m_8=
702066790997206627gmail_msg gmail_msg">EXTERNALSRC_BUILD =3D &quot;${TOPDIR=
}/../meta-altera/recipes-kernel/linux/files&quot;<br class=3D"m_87006922314=
78789494m_8702066790997206627gmail_msg gmail_msg"><br class=3D"m_8700692231=
478789494m_8702066790997206627gmail_msg gmail_msg">SRCREV_pn-${PN} =3D &quo=
t;${AUTOREV}&quot;<br class=3D"m_8700692231478789494m_8702066790997206627gm=
ail_msg gmail_msg"><br class=3D"m_8700692231478789494m_8702066790997206627g=
mail_msg gmail_msg">S=3D &quot;${EXTERNALSRC}&quot;<br class=3D"m_870069223=
1478789494m_8702066790997206627gmail_msg gmail_msg"><br class=3D"m_87006922=
31478789494m_8702066790997206627gmail_msg gmail_msg"></div><a href=3D"http:=
//hello-mod.bb" class=3D"m_8700692231478789494m_8702066790997206627gmail_ms=
g gmail_msg" target=3D"_blank">hello-mod.bb</a>=C2=A0 contains<br class=3D"=
m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg"><br class=3D=
"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg">SUMMARY =3D=
 &quot;Example of how to build an external Linux kernel module&quot;<br cla=
ss=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg">LICENS=
E =3D &quot;GPLv2&quot;<br class=3D"m_8700692231478789494m_8702066790997206=
627gmail_msg gmail_msg">LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D12f=
884d2ae1ff87c09e5b7ccc2c4ca7e&quot;<br class=3D"m_8700692231478789494m_8702=
066790997206627gmail_msg gmail_msg"><br class=3D"m_8700692231478789494m_870=
2066790997206627gmail_msg gmail_msg">inherit module<br class=3D"m_870069223=
1478789494m_8702066790997206627gmail_msg gmail_msg"><br class=3D"m_87006922=
31478789494m_8702066790997206627gmail_msg gmail_msg">SRC_URI =3D &quot;file=
://Makefile \<br class=3D"m_8700692231478789494m_8702066790997206627gmail_m=
sg gmail_msg">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
file://hello.c \<br class=3D"m_8700692231478789494m_8702066790997206627gmai=
l_msg gmail_msg">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 file://COPYING \<br class=3D"m_8700692231478789494m_8702066790997206627=
gmail_msg gmail_msg">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 &quot;<br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gma=
il_msg"><br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gm=
ail_msg"><br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg g=
mail_msg">S =3D &quot;${WORKDIR}&quot;<br class=3D"m_8700692231478789494m_8=
702066790997206627gmail_msg gmail_msg"><br class=3D"m_8700692231478789494m_=
8702066790997206627gmail_msg gmail_msg"># The inherit of module.bbclass wil=
l automatically name module packages with<br class=3D"m_8700692231478789494=
m_8702066790997206627gmail_msg gmail_msg"># &quot;kernel-module-&quot; pref=
ix as required by the oe-core build environment.<br class=3D"m_870069223147=
8789494m_8702066790997206627gmail_msg gmail_msg">~=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 <br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gma=
il_msg"><br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gm=
ail_msg"></div>Am I missing anything?<br class=3D"m_8700692231478789494m_87=
02066790997206627gmail_msg gmail_msg"><br class=3D"m_8700692231478789494m_8=
702066790997206627gmail_msg gmail_msg"></div>Thanks,<br class=3D"m_87006922=
31478789494m_8702066790997206627gmail_msg gmail_msg"></div>Praveen.</div></=
div></div><span class=3D"m_8700692231478789494HOEnZb gmail_msg"><font color=
=3D"#888888" class=3D"gmail_msg">
--<br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_ms=
g">
_______________________________________________<br class=3D"m_8700692231478=
789494m_8702066790997206627gmail_msg gmail_msg">
yocto mailing list<br class=3D"m_8700692231478789494m_8702066790997206627gm=
ail_msg gmail_msg">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"m_8700692231478789494m_8=
702066790997206627gmail_msg gmail_msg" target=3D"_blank">yocto@yoctoproject=
.org</a><br class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gm=
ail_msg">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg" t=
arget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br class=
=3D"m_8700692231478789494m_8702066790997206627gmail_msg gmail_msg">
</font></span></blockquote></div></div>
</blockquote></div><br class=3D"gmail_msg"></div>
</blockquote></div></div>

--94eb2c11c960ae322c0549987abd--
