Return-Path: <ccchung1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21EBAE00B6D; Mon, 11 Jan 2016 02:56:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ccchung1990[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D77C9E00AD7
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 02:55:57 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id f206so261806241wmf.0
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 02:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=a0o3bkW7/a/YfC9dkx4FJdRxMdP6PY/gBqRVpFjU4qw=;
	b=bHgQcBz+dpcDWWRwAVSfFx09Rgg8r5FekABvrmMjD37j207HBIWpTm0ly9KJwdrju/
	RIcMTz/IOkg26jQMGBRVyhsRQs0/IbUaRwbb120oCnKpZGuzDfeTxyTZBrSreoeG5NYH
	iKmuTaNHlOZ68TCM92m4LuOIPj9TRrf7dnMJcwsojJ+4RqG1G6o8jWl/aOC//h/qASDT
	7a/B/JHGbv4jNTY1dpb3T3SRKSbRj87gw4J3LmtYM8kig6Ne2lpjlyrSDdYq9VQ8oECR
	WvM3olKyYYlgghAZ4mf/Z0Uu2z2lGCnbaMt8p2fIiOaIY51DXhptSROVPoJrRmt6UpXF
	oVEw==
MIME-Version: 1.0
X-Received: by 10.28.32.206 with SMTP id g197mr13451749wmg.28.1452509756552;
	Mon, 11 Jan 2016 02:55:56 -0800 (PST)
Received: by 10.194.103.38 with HTTP; Mon, 11 Jan 2016 02:55:56 -0800 (PST)
Date: Mon, 11 Jan 2016 18:55:56 +0800
Message-ID: <CAC4O6cfTsF4k0nw78=VML25DMyjL0Rf0sS9Y3ELTe5x-enbE1A@mail.gmail.com>
From: CHENG-CHANG CHUNG <ccchung1990@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 11 Jan 2016 06:21:13 -0800
Subject: ERROR: Unable to install packages.
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
X-List-Received-Date: Mon, 11 Jan 2016 10:56:01 -0000
Content-Type: multipart/alternative; boundary=001a113d7d68127f5005290cc86e

--001a113d7d68127f5005290cc86e
Content-Type: text/plain; charset=UTF-8

I want to move files to root file system. My SRC_URI is a tar.gz file.
Include many file and directory.

BB detail :

SUMMARY = "Simple move application"
SECTION = "move"
LICENSE = "CLOSED"
INHIBIT_PACKAGE_STRIP = "1"
INSANE_SKIP_${PN} = "ldflags"
SRC_URI = "file://rootfs.tar.gz"
S = "${WORKDIR}/rootfs-overlay"
do_install() {
            mkdir -p ${D}/usr/bin/rootfs-overlay
             cp -a ${S}/* ${D}/usr/bin/rootfs-overlay
}


I bitbake this recipes in success but bitbake image is error.(do_rootfs)

Log is
DEBUG: Executing python function rootfs_process_ignore
DEBUG: Python function rootfs_process_ignore finished
DEBUG: Executing python function rootfs_runtime_mapping
DEBUG: Python function rootfs_runtime_mapping finished
DEBUG: Executing python function do_rootfs
NOTE: configuring RPM platform settings
NOTE: configuring RPM system provides
NOTE: configuring RPM DB settings
NOTE: configuring Smart settings
NOTE: Note: adding Smart channel demo_test (80)
NOTE: Note: adding Smart channel armv7a_vfp_neon (75)
NOTE: Note: adding Smart channel armv5e (70)
NOTE: Note: adding Smart channel all (65)
NOTE: adding Smart RPM DB channel
NOTE: Note: configuring RPM cross-install scriptlet_wrapper
NOTE: ###### Generate rootfs #######
NOTE: Executing
'/home/carter/Yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
--update -q /home/carter/Yocto/poky/build/tmp/deploy/rpm/all' ...
NOTE: Executing
'/home/carter/Yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
--update -q /home/carter/Yocto/poky/build/tmp/deploy/rpm/armv5e' ...
NOTE: Executing
'/home/carter/Yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
--update -q /home/carter/Yocto/poky/build/tmp/deploy/rpm/armv7a_vfp_neon'
...
NOTE: Installing the following packages: move run-postinsts
packagegroup-core-boot helloworld
NOTE: to be installed: move@armv7a_vfp_neon run-postinsts@all
packagegroup-core-boot@demo_test helloworld@armv7a_vfp_neon
NOTE: /home/carter/Yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart
--data-dir=/home/carter/Yocto/poky/build/tmp/work/demo_test-poky-linux-gnueabi/hello-world/1.0-r0/rootfs/var/lib/smart
install -y move@armv7a_vfp_neon run-postinsts@all
packagegroup-core-boot@demo_test helloworld@armv7a_vfp_neon
ERROR: Unable to install packages. Command
'/home/carter/Yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart
--data-dir=/home/carter/Yocto/poky/build/tmp/work/rtdemo_test-poky-linux-gnueabi/hello-world/1.0-r0/rootfs/var/lib/smart
install -y move@armv7a_vfp_neon run-postinsts@all
packagegroup-core-boot@demo_test helloworld@armv7a_vfp_neon' returned 1:
Loading cache...
Updating cache...               ########################################
[100%]
Computing transaction...error: Can't install move-0.0-r0@armv7a_vfp_neon:
no package provides libnl-3.so.200

DEBUG: Python function do_rootfs finished
ERROR: Function failed: do_rootfs
-----------------------------------------------------------------------
------
Carter

--001a113d7d68127f5005290cc86e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I want to move files to root file system.=C2=A0My SRC=
_URI is a tar.gz file.</div><div>Include many file and directory. </div><di=
v><br></div><div>BB detail :</div><div><br></div><div>SUMMARY =3D &quot;Sim=
ple move application&quot;<br>SECTION =3D &quot;move&quot;</div><div>LICENS=
E =3D &quot;CLOSED&quot;</div><div>INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<=
/div><div>INSANE_SKIP_${PN} =3D &quot;ldflags&quot;</div><div>SRC_URI =3D &=
quot;file://rootfs.tar.gz&quot;</div><div>S =3D &quot;${WORKDIR}/rootfs-ove=
rlay&quot;</div><div>do_install() {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mkdir -p ${D}/usr/bin/rootfs-overlay</div><d=
iv>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 cp -a ${S}/* ${D}/usr/bin/rootfs-overlay<br>}</div><div><br></div><div><br=
></div><div>I bitbake this recipes in success but bitbake image is error.(d=
o_rootfs)</div><div><br></div><div>Log is </div><div>DEBUG: Executing pytho=
n function rootfs_process_ignore<br>DEBUG: Python function rootfs_process_i=
gnore finished<br>DEBUG: Executing python function rootfs_runtime_mapping<b=
r>DEBUG: Python function rootfs_runtime_mapping finished<br>DEBUG: Executin=
g python function do_rootfs<br>NOTE: configuring RPM platform settings<br>N=
OTE: configuring RPM system provides<br>NOTE: configuring RPM DB settings<b=
r>NOTE: configuring Smart settings<br>NOTE: Note: adding Smart channel demo=
_test (80)<br>NOTE: Note: adding Smart channel armv7a_vfp_neon (75)<br>NOTE=
: Note: adding Smart channel armv5e (70)<br>NOTE: Note: adding Smart channe=
l all (65)<br>NOTE: adding Smart RPM DB channel<br>NOTE: Note: configuring =
RPM cross-install scriptlet_wrapper<br>NOTE: ###### Generate rootfs #######=
<br>NOTE: Executing &#39;/home/carter/Yocto/poky/build/tmp/sysroots/x86_64-=
linux/usr/bin/createrepo --update -q /home/carter/Yocto/poky/build/tmp/depl=
oy/rpm/all&#39; ...<br>NOTE: Executing &#39;/home/carter/Yocto/poky/build/t=
mp/sysroots/x86_64-linux/usr/bin/createrepo --update -q /home/carter/Yocto/=
poky/build/tmp/deploy/rpm/armv5e&#39; ...<br>NOTE: Executing &#39;/home/car=
ter/Yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo --update =
-q /home/carter/Yocto/poky/build/tmp/deploy/rpm/armv7a_vfp_neon&#39; ...<br=
>NOTE: Installing the following packages: move run-postinsts packagegroup-c=
ore-boot helloworld<br>NOTE: to be installed: move@armv7a_vfp_neon run-post=
insts@all packagegroup-core-boot@demo_test helloworld@armv7a_vfp_neon<br>NO=
TE: /home/carter/Yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart -=
-data-dir=3D/home/carter/Yocto/poky/build/tmp/work/demo_test-poky-linux-gnu=
eabi/hello-world/1.0-r0/rootfs/var/lib/smart install -y move@armv7a_vfp_neo=
n run-postinsts@all packagegroup-core-boot@demo_test helloworld@armv7a_vfp_=
neon<br>ERROR: Unable to install packages. Command &#39;/home/carter/Yocto/=
poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart --data-dir=3D/home/carte=
r/Yocto/poky/build/tmp/work/rtdemo_test-poky-linux-gnueabi/hello-world/1.0-=
r0/rootfs/var/lib/smart install -y move@armv7a_vfp_neon run-postinsts@all p=
ackagegroup-core-boot@demo_test helloworld@armv7a_vfp_neon&#39; returned 1:=
<br>Loading cache...<br>Updating cache...=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #######################=
################# [100%]</div><div>Computing transaction...error: Can&#39;t=
 install move-0.0-r0@armv7a_vfp_neon: no package provides libnl-3.so.200</d=
iv><div><br>DEBUG: Python function do_rootfs finished<br>ERROR: Function fa=
iled: do_rootfs<br clear=3D"all"></div><div><div class=3D"gmail_signature">=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div><div><span style=3D"color:rgb(0=
,0,0);font-family:&quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica=
,Arial,&quot;Lucida Grande&quot;,sans-serif;font-size:12.72px">------------=
---------------------</span><span style=3D"color:rgb(0,0,0);font-family:&qu=
ot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida G=
rande&quot;,sans-serif;font-size:12.72px">--------------------------</span>=
<span style=3D"color:rgb(0,0,0);font-family:&quot;Helvetica Neue&quot;,&quo=
t;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif;font-=
size:13px">------------</span><span style=3D"color:rgb(0,0,0);font-family:&=
quot;Helvetica Neue&quot;,&quot;Segoe UI&quot;,Helvetica,Arial,&quot;Lucida=
 Grande&quot;,sans-serif;font-size:13px">------</span><font color=3D"#00000=
0"><br></font></div><div><font color=3D"#000000">Carter</font></div><div><f=
ont color=3D"#000000"><br></font></div></div></div></div></div></div></div>
</div>

--001a113d7d68127f5005290cc86e--
