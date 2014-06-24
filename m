Return-Path: <topradeepyaduvanshi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF0A9E003D2; Tue, 24 Jun 2014 01:49:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (topradeepyaduvanshi[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD122E00282
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 01:49:50 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id db12so7159840veb.21
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 01:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=2iS6I91v7A75KTcTw+r2vnidZWiCN+PMAFkCuBm62FA=;
	b=0NFEZwjB7U1iQeusot1aTTTTSfXmrKol61DsszVLiAuo5dXqT4EkxehStUfHb3qoIn
	hga5pgOo8byQrw6jkv7axLoS7fOjNo9ugHBBYAeu2RkpEZtToi4OCpzhIUlim/AVwiem
	U7fP0H2CR+deHNb+LUb/9MjYhxv4et1wC32ZFmFd/7TKdHsu/M9Mopsd9C94fG9ZUFCZ
	VHIv5Cg+n9lBmsAwC091sJ33RpwbAfEbCm3qJmDFV7yyqRDmG4GtmAMXn3ul3QXt/leW
	6Z22xYCKl5/ivdUSYMwKNgzCPXAlFB7cCflEvJ0bbDr3dmeJVPxb5kkdmgh7qLkwQKph
	ob1Q==
MIME-Version: 1.0
X-Received: by 10.58.195.172 with SMTP id if12mr24631575vec.12.1403599789875; 
	Tue, 24 Jun 2014 01:49:49 -0700 (PDT)
Received: by 10.220.73.202 with HTTP; Tue, 24 Jun 2014 01:49:49 -0700 (PDT)
Date: Tue, 24 Jun 2014 14:19:49 +0530
Message-ID: <CACG32bCxxVXKDHqaUaf7fNg=BWdpbe1zZoKiqVr8jFMmDUV4dQ@mail.gmail.com>
From: Pradeep kumar <topradeepyaduvanshi@gmail.com>
To: yocto@yoctoproject.org
Subject: Compiling openvswitch module in yocto
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
X-List-Received-Date: Tue, 24 Jun 2014 08:49:59 -0000
Content-Type: multipart/alternative; boundary=047d7b675980e1e8ec04fc910a4d

--047d7b675980e1e8ec04fc910a4d
Content-Type: text/plain; charset=ISO-8859-1

*on x-86 openvswitch compiling steps are as follows:*
->./boot.sh
->./configure --with-linux=/lib/modules/`uname -r`/build
->make
->make install
 by following these steps an openvswitch kernel  module get built in
*openvswitch-1.10.0/datapath/linux/openvswitch.ko*

*i Am using following steps to cross-compile openvswitch for power pc*

->export
PATH=$PATH:/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/board/tmp/sysroots/x86_64-linux/usr/bin/ppc64e6500-fsl_networking-linux

->./boot.sh


->./configure --host=x86 --target=powerpc KARCH=powerpc
CC=powerpc64-fsl_networking-linux-gcc
--with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git/
 --enable-ssl=no --prefix=/openvswitch_utils


->make ARCH=powerpc CROSS_COMPILE=powerpc-fsl_networking-linux-

->sudo make ARCH=powerpc CROSS_COMPILE=powerpc-fsl_networking-linux- install
.
.
.
By following these steps an *openvswitch kernel  module get built in
openvswitch-2.1.2/datapath/linux/openvswitch.ko for powerpc arch.*

*Now i want to do the same thing using openvswitch_1.10.0.bb
<http://openvswitch_2.1.2.bb> file*.
# Don't compile kernel modules by default since it heavily depends on
 30 # kernel version. Use the in-kernel module for now.
 31 # distro layers can enable with EXTRA_OECONF_pn_openvswitch += ""
 32 # *EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR}
KARCH=${TARGET_ARCH}"*

acc. to my understanding which can be achieved by uncommenting this line
and passing kernel source directory path in openvswitch_1.10.0.bb  :
*EXTRA_OECONF =
"--with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git
KARCH=powerpc
in openvswitch_1.10.0.bb <http://openvswitch_1.10.0.bb>*

*bitbake -c compile openvswitch*

but it is showing error:*do_compile failed,oe_runmake failed*
and showing .../git/x86/include/asm/unistd...files are missing...
i am new to yocto kindly help me regarding above described issue.thanks in
advance.ITZ URGENT.if u need to see full logs plz ask for the same.
Regards
Pradeep Kumar

--047d7b675980e1e8ec04fc910a4d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><b>on x-86 openvsw=
itch compiling steps are as follows:</b><br></div>-&gt;./boot.sh<br></div>-=
&gt;./configure --with-linux=3D/lib/modules/`uname -r`/build<br></div>-&gt;=
make <br>
</div>-&gt;make install<br></div>
=A0by following these steps an openvswitch kernel=A0 module get built in <b=
>openvswitch-1.10.0/datapath/linux/openvswitch.ko</b><br><br></div><div><b>=
i Am using following steps to cross-compile openvswitch for power pc</b><br=
>
<div><br></div><div>-&gt;export PATH=3D$PATH:/home/nova/new_yocto1.4/QorIQ-=
SDK-V1.4-20130814-yocto/board/tmp/sysroots/x86_64-linux/usr/bin/ppc64e6500-=
fsl_networking-linux</div><div><br></div><div>-&gt;./boot.sh=A0</div><div><=
br>
</div><div><br></div><div>-&gt;./configure --host=3Dx86 --target=3Dpowerpc =
KARCH=3Dpowerpc CC=3Dpowerpc64-fsl_networking-linux-gcc --with-linux=3D/hom=
e/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tm=
p/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git/ =A0--en=
able-ssl=3Dno --prefix=3D/openvswitch_utils</div>
<div><br></div><div><br></div><div>-&gt;make ARCH=3Dpowerpc CROSS_COMPILE=
=3Dpowerpc-fsl_networking-linux-</div><div><br></div><div>-&gt;sudo make AR=
CH=3Dpowerpc CROSS_COMPILE=3Dpowerpc-fsl_networking-linux- install</div>.<b=
r>.<br>
.<br></div><div>By following these steps an <b>openvswitch kernel=A0 module=
 get built in openvswitch-2.1.2/datapath/linux/openvswitch.ko for powerpc a=
rch.</b><br></div><div><br></div><b>Now i want to do the same thing using <=
a href=3D"http://openvswitch_2.1.2.bb" target=3D"_blank">openvswitch_1.10.0=
.bb</a> file</b>.<br>
# Don&#39;t compile kernel modules by default since it heavily depends on<b=
r>=A030 # kernel version. Use the in-kernel module for now.<br>=A031 # dist=
ro layers can enable with EXTRA_OECONF_pn_openvswitch +=3D &quot;&quot;<br>=
=A032 # <b>EXTRA_OECONF =3D &quot;--with-linux=3D${STAGING_KERNEL_DIR} KARC=
H=3D${TARGET_ARCH}&quot;</b><br>
<br></div>acc. to my understanding which can be achieved by uncommenting th=
is line and passing kernel source directory path in <a href=3D"http://openv=
switch_1.10.0.bb">openvswitch_1.10.0.bb</a> =A0:<br><b>EXTRA_OECONF =3D &qu=
ot;--with-linux=3D/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/bui=
ld_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/=
3.8-r17.3/git=A0KARCH=3Dpowerpc in <a href=3D"http://openvswitch_1.10.0.bb"=
>openvswitch_1.10.0.bb</a></b></div>
<div><br></div><div><b>bitbake -c compile openvswitch</b><br><br></div>but =
it is showing error:<b>do_compile failed,oe_runmake failed</b><div>and show=
ing .../git/x86/include/asm/unistd...files are missing...</div><div>i am ne=
w to yocto kindly help me regarding above described issue.thanks in advance=
.ITZ URGENT.if u need to see full logs plz ask for the same.<br clear=3D"al=
l">
<div><div dir=3D"ltr"><div><div>Regards<br></div>Pradeep Kumar<br></div></d=
iv></div>
</div></div>

--047d7b675980e1e8ec04fc910a4d--
