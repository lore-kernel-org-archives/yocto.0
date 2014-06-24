Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5FC4E00566; Tue, 24 Jun 2014 02:32:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.179 listed in list.dnswl.org]
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1103E003D2
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 02:31:56 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id uz6so16539obc.24
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 02:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qk2D36fapzIAp+JiBtbrM+24ukiiG1C4QzEMe06QCGE=;
	b=lVmiQV7fD2cEdArQOu3W9uvt99T+pTosbWNC6ZBm58/xYpguwqRQ0cFhQ0fgrK/Pb/
	arDAXeCLqWTH4s+Jwqzb9CuBhm7yjHwB67kGEwo4nHn6CLnE/GV25vKhCC+BYpcAtnrk
	O6UqE0A/Xxky8GH4EdCdBMHZZUJE8sK5hS8UlCZg/AjyYsrtvvRNPPIGqygMucLetzWD
	d1kKxWoR5bHN1ag9CWf7QEhMwCG+05xuYxnkQ19qCVhYFstz0xeN5p62HTS+QyOrW2YJ
	yMmWMADwzfKG9p0ycPoZgWBXSV0C1iBaKAVmIU/xGtsSD6r/366HMpMimIa0XQ8mxtoM
	I4ww==
MIME-Version: 1.0
X-Received: by 10.60.173.146 with SMTP id bk18mr70233oec.29.1403602315968;
	Tue, 24 Jun 2014 02:31:55 -0700 (PDT)
Received: by 10.202.188.134 with HTTP; Tue, 24 Jun 2014 02:31:55 -0700 (PDT)
In-Reply-To: <CACG32bCxxVXKDHqaUaf7fNg=BWdpbe1zZoKiqVr8jFMmDUV4dQ@mail.gmail.com>
References: <CACG32bCxxVXKDHqaUaf7fNg=BWdpbe1zZoKiqVr8jFMmDUV4dQ@mail.gmail.com>
Date: Tue, 24 Jun 2014 15:01:55 +0530
Message-ID: <CAE_REAuqKcAVoyppz6Uo++yuqjraBrkCH-fPFRrdFpDxQNR_ZQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Pradeep kumar <topradeepyaduvanshi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling openvswitch module in yocto
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
X-List-Received-Date: Tue, 24 Jun 2014 09:32:07 -0000
Content-Type: multipart/alternative; boundary=089e011777d973047104fc91a12b

--089e011777d973047104fc91a12b
Content-Type: text/plain; charset=UTF-8

Hi,

In your recipe, you just need to enable,

EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR} KARCH=${TARGET_ARCH}"

This will build openvswitch module against your kernel source. I did this
and I did not find any issues and it built module against my kernel.

Can you paste more logs here ??

//Gaurang Shastri


On Tue, Jun 24, 2014 at 2:19 PM, Pradeep kumar <
topradeepyaduvanshi@gmail.com> wrote:

> *on x-86 openvswitch compiling steps are as follows:*
> ->./boot.sh
> ->./configure --with-linux=/lib/modules/`uname -r`/build
> ->make
> ->make install
>  by following these steps an openvswitch kernel  module get built in
> *openvswitch-1.10.0/datapath/linux/openvswitch.ko*
>
> *i Am using following steps to cross-compile openvswitch for power pc*
>
> ->export
> PATH=$PATH:/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/board/tmp/sysroots/x86_64-linux/usr/bin/ppc64e6500-fsl_networking-linux
>
> ->./boot.sh
>
>
> ->./configure --host=x86 --target=powerpc KARCH=powerpc
> CC=powerpc64-fsl_networking-linux-gcc
> --with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git/
>  --enable-ssl=no --prefix=/openvswitch_utils
>
>
> ->make ARCH=powerpc CROSS_COMPILE=powerpc-fsl_networking-linux-
>
> ->sudo make ARCH=powerpc CROSS_COMPILE=powerpc-fsl_networking-linux-
> install
> .
> .
> .
> By following these steps an *openvswitch kernel  module get built in
> openvswitch-2.1.2/datapath/linux/openvswitch.ko for powerpc arch.*
>
> *Now i want to do the same thing using openvswitch_1.10.0.bb
> <http://openvswitch_2.1.2.bb> file*.
> # Don't compile kernel modules by default since it heavily depends on
>  30 # kernel version. Use the in-kernel module for now.
>  31 # distro layers can enable with EXTRA_OECONF_pn_openvswitch += ""
>  32 # *EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR}
> KARCH=${TARGET_ARCH}"*
>
> acc. to my understanding which can be achieved by uncommenting this line
> and passing kernel source directory path in openvswitch_1.10.0.bb  :
> *EXTRA_OECONF =
> "--with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git KARCH=powerpc
> in openvswitch_1.10.0.bb <http://openvswitch_1.10.0.bb>*
>
> *bitbake -c compile openvswitch*
>
> but it is showing error:*do_compile failed,oe_runmake failed*
> and showing .../git/x86/include/asm/unistd...files are missing...
> i am new to yocto kindly help me regarding above described issue.thanks in
> advance.ITZ URGENT.if u need to see full logs plz ask for the same.
> Regards
> Pradeep Kumar
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e011777d973047104fc91a12b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>In your recipe, you just need to en=
able,</div><div><br></div><div>EXTRA_OECONF =3D &quot;--with-linux=3D${STAG=
ING_KERNEL_DIR} KARCH=3D${TARGET_ARCH}&quot;<br></div><div><br></div><div>T=
his will build openvswitch module against your kernel source. I did this an=
d I did not find any issues and it built module against my kernel.</div>
<div><br></div><div>Can you paste more logs here ??</div><div><br></div><di=
v>//Gaurang Shastri</div></div><div class=3D"gmail_extra"><br><br><div clas=
s=3D"gmail_quote">On Tue, Jun 24, 2014 at 2:19 PM, Pradeep kumar <span dir=
=3D"ltr">&lt;<a href=3D"mailto:topradeepyaduvanshi@gmail.com" target=3D"_bl=
ank">topradeepyaduvanshi@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div><d=
iv><div><div><b>on x-86 openvswitch compiling steps are as follows:</b><br>=
</div>
-&gt;./boot.sh<br></div>-&gt;./configure --with-linux=3D/lib/modules/`uname=
 -r`/build<br></div>-&gt;make <br>
</div>-&gt;make install<br></div>
=C2=A0by following these steps an openvswitch kernel=C2=A0 module get built=
 in <b>openvswitch-1.10.0/datapath/linux/openvswitch.ko</b><br><br></div><d=
iv><b>i Am using following steps to cross-compile openvswitch for power pc<=
/b><br>

<div><br></div><div>-&gt;export PATH=3D$PATH:/home/nova/new_yocto1.4/QorIQ-=
SDK-V1.4-20130814-yocto/board/tmp/sysroots/x86_64-linux/usr/bin/ppc64e6500-=
fsl_networking-linux</div><div><br></div><div>-&gt;./boot.sh=C2=A0</div><di=
v>
<br>
</div><div><br></div><div>-&gt;./configure --host=3Dx86 --target=3Dpowerpc =
KARCH=3Dpowerpc CC=3Dpowerpc64-fsl_networking-linux-gcc --with-linux=3D/hom=
e/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tm=
p/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git/ =C2=A0-=
-enable-ssl=3Dno --prefix=3D/openvswitch_utils</div>

<div><br></div><div><br></div><div>-&gt;make ARCH=3Dpowerpc CROSS_COMPILE=
=3Dpowerpc-fsl_networking-linux-</div><div><br></div><div>-&gt;sudo make AR=
CH=3Dpowerpc CROSS_COMPILE=3Dpowerpc-fsl_networking-linux- install</div>.<b=
r>.<br>

.<br></div><div>By following these steps an <b>openvswitch kernel=C2=A0 mod=
ule get built in openvswitch-2.1.2/datapath/linux/openvswitch.ko for powerp=
c arch.</b><br></div><div><br></div><b>Now i want to do the same thing usin=
g <a href=3D"http://openvswitch_2.1.2.bb" target=3D"_blank">openvswitch_1.1=
0.0.bb</a> file</b>.<br>

# Don&#39;t compile kernel modules by default since it heavily depends on<b=
r>=C2=A030 # kernel version. Use the in-kernel module for now.<br>=C2=A031 =
# distro layers can enable with EXTRA_OECONF_pn_openvswitch +=3D &quot;&quo=
t;<br>=C2=A032 # <b>EXTRA_OECONF =3D &quot;--with-linux=3D${STAGING_KERNEL_=
DIR} KARCH=3D${TARGET_ARCH}&quot;</b><br>

<br></div>acc. to my understanding which can be achieved by uncommenting th=
is line and passing kernel source directory path in <a href=3D"http://openv=
switch_1.10.0.bb" target=3D"_blank">openvswitch_1.10.0.bb</a> =C2=A0:<br><b=
>EXTRA_OECONF =3D &quot;--with-linux=3D/home/nova/new_yocto1.4/QorIQ-SDK-V1=
.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-l=
inux/linux-qoriq-sdk/3.8-r17.3/git=C2=A0KARCH=3Dpowerpc in <a href=3D"http:=
//openvswitch_1.10.0.bb" target=3D"_blank">openvswitch_1.10.0.bb</a></b></d=
iv>

<div><br></div><div><b>bitbake -c compile openvswitch</b><br><br></div>but =
it is showing error:<b>do_compile failed,oe_runmake failed</b><div>and show=
ing .../git/x86/include/asm/unistd...files are missing...</div><div>i am ne=
w to yocto kindly help me regarding above described issue.thanks in advance=
.ITZ URGENT.if u need to see full logs plz ask for the same.<br clear=3D"al=
l">

<div><div dir=3D"ltr"><div><div>Regards<span class=3D"HOEnZb"><font color=
=3D"#888888"><br></font></span></div><span class=3D"HOEnZb"><font color=3D"=
#888888">Pradeep Kumar<br></font></span></div></div></div>
</div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--089e011777d973047104fc91a12b--
