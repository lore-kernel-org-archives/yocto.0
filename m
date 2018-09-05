Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 348E4E00A85; Wed,  5 Sep 2018 14:36:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14EDBE00A54
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2018 14:36:55 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id t4-v6so3271731vke.9
	for <yocto@yoctoproject.org>; Wed, 05 Sep 2018 14:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=H7Y4lgLTExkKrSjsqEFqmqqyT8yhr9K6ZcuqFbIScJA=;
	b=phPkleX+mlilhj/GgZ8Wh4FO+VtxPbQjQwWn1vv2sr+NkETV2LsA/EXskKJrZP2AGt
	smypDfv5cclF/ZqUALsN7P4UQ5maR/inmuHWqIsc11DUb6gxhphsz5LpNERThEFhHgUc
	GYt9Vu0yQYb6nBrKt6Ux3aDpDSfB0+JhSPbjMfjG9E1oDJtcIfMwl+FBzup7Lb+r6ZbI
	JvO80m01FsFqnnfo8fBiEduZfIDYTTzqK+xJ2LYhMXeAOwDJIZ2+xCYoCGf5SaAfZizv
	Ugf7OE8QdQ/IFM+dVzXL8MfOT6Bfp8NPjn5ncMMvGp1XHXu6VsPsXuBEu22mUyEsWGVd
	ecnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=H7Y4lgLTExkKrSjsqEFqmqqyT8yhr9K6ZcuqFbIScJA=;
	b=nlj8uovVhsk6hzKr5ka4UNeWkpTv2bi2d8LURjC07rL8LlAQyqKbVr05UXwSIGKKWd
	zRSBgOV6mcMlnT86EVYmOwYRYAfwfkg2UPpdnW7HEZDzQx+mi5qbBmUyGIuHB9Uhorqk
	6isMh3AaIyclCKCJDtk0DVQ9sBYriZC3ib52yfkIAQ92duxaOTUnE9ZkAeVy/FooxQUq
	8U0xFX4f7Osh8NsZMcpSN+Cm6GCCSKnYB0Gb6fsx7Fdbat9FI/6puitgpAkt+Z4c2Lrg
	8n0vilsUEddbLQF5OMqK23mYZR9hC3jzmuzBUSNKdF4g2HorcV9y8hUq4KzwR4ln9Hsq
	upKA==
X-Gm-Message-State: APzg51AvKscpTqRRmkfUuc1SCtfWyyfg1yOumCteqR5ytbdY0av8/5lZ
	fEtqQiex9DjFV+oWwY/besXMSPstsku3ndUo1s6Osg==
X-Google-Smtp-Source: ANB0VdaIPvc61OdC1wkwbBBbxPubEmceGsHUM/Zqbp82A2RH6CiKtJxRxyK9TsprkdAeKZYOkBBajsCnBeZJz4dL4dQ=
X-Received: by 2002:a1f:a784:: with SMTP id
	q126-v6mr19828499vke.70.1536183415027; 
	Wed, 05 Sep 2018 14:36:55 -0700 (PDT)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Wed, 5 Sep 2018 23:36:43 +0200
Message-ID: <CAKRytNw7itxZiWLtaac0hky8fBDFPwKULzWEkGtt8G1TLGn6eA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Error in do_rootfs while builing on sumo with cmake the library called "libfmt" 4.1.0 (on rocko it was ok)
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
X-List-Received-Date: Wed, 05 Sep 2018 21:36:58 -0000
Content-Type: multipart/alternative; boundary="000000000000c33e5e057526926b"

--000000000000c33e5e057526926b
Content-Type: text/plain; charset="UTF-8"

I created a custom meta-layer to build libfmt 4.1.0 (
https://github.com/fmtlib/fmt).
Since this library uses cmake, I created this receipe:

--------------------------------
*SUMMARY = "fmt"*
*SECTION = "base"*

*SRC_URI = "https://github.com/fmtlib/fmt/archive/${PV}.tar.gz
<https://github.com/fmtlib/fmt/archive/${PV}.tar.gz>"*
*S = "${WORKDIR}/fmt-${PV}"*

*SRC_URI[md5sum] = "057d1fc49f6d3114e29e8cc72cf70e08"*
*SRC_URI[sha256sum] =
"46628a2f068d0e33c716be0ed9dcae4370242df135aed663a180b9fd8e36733d"*

*inherit cmake*
*EXTRA_OECMAKE = ""*
--------------------------------

Adding fmt as a dependency into my local.conf and running "bitbake fmt" I'm
able to build the library without issues.

But, when I run "bitbake my-image-name" to bundle everything I receive the
error below (ONLY WITH SUMO, on ROCKO everything was perfect).
The same receipe on rocko is absolutely ok. This error appears only on sumo.

--------------------------------
*ERROR: my-image-develop-1.0-r0 do_rootfs: Could not invoke dnf. Command
'/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/recipe-sysroot-native/usr/bin/dnf
-y -c
/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/rootfs/etc/yum.repos.d
--repofrompath=oe-repo,/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/oe-rootfs-repo
--installroot=/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/rootfs
--setopt=logdir=/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/temp
--nogpgcheck install mender rpm fmt shadow base-passwd dnf
packagegroup-core-sdk packagegroup-core-boot run-postinsts
packagegroup-core-standalone-sdk-target packagegroup-my-deps-develop'
returned 1:*
*Added oe-repo repo from
/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/oe-rootfs-repo*
*Last metadata expiration check: 0:00:00 ago on Wed 05 Sep 2018 08:05:11 PM
UTC.*
*No match for argument: fmt*
*Error: Unable to find a match*

*ERROR: my-image-develop-1.0-r0 do_rootfs: Function failed: do_rootfs*
*ERROR: Logfile of failure stored in:
/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/temp/log.do_rootfs.64931*
*ERROR: Task
(/home/ks89/git/poky/meta-custom-layer-sumo/meta-custom-layer-dev/recipes-core/images/my-image-develop.bb:do_rootfs)
failed with exit code '1'*
*NOTE: Tasks Summary: Attempted 3973 tasks of which 3655 didn't need to be
rerun and 1 failed.*

*Summary: 1 task failed:*
*
/home/ks89/git/poky/meta-custom-layer-sumo/meta-custom-layer-dev/recipes-core/images/my-image-develop.bb:do_rootfs*
*Summary: There were 2 ERROR messages shown, returning a non-zero exit
code.*
--------------------------------


*Do you have any suggestions? I'm completely blocked and I cannot update my
device to sumo because this library is a dependency of another important
library that I'm using.*
*So, I have to add fmt.*

Thank u,
Ks89

--000000000000c33e5e057526926b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I created a custom meta-layer to build libfmt 4.1.0 (<a hr=
ef=3D"https://github.com/fmtlib/fmt">https://github.com/fmtlib/fmt</a>).<di=
v>Since this library uses cmake, I created this receipe:</div><div><br></di=
v><div>--------------------------------<br></div><div><div><i><font color=
=3D"#0000ff">SUMMARY =3D &quot;fmt&quot;</font></i></div><div><i><font colo=
r=3D"#0000ff">SECTION =3D &quot;base&quot;</font></i></div><div><i><font co=
lor=3D"#0000ff"><br></font></i></div><div><i><font color=3D"#0000ff">SRC_UR=
I =3D &quot;<a href=3D"https://github.com/fmtlib/fmt/archive/${PV}.tar.gz">=
https://github.com/fmtlib/fmt/archive/${PV}.tar.gz</a>&quot;</font></i></di=
v><div><i><font color=3D"#0000ff">S =3D &quot;${WORKDIR}/fmt-${PV}&quot;</f=
ont></i></div><div><i><font color=3D"#0000ff"><br></font></i></div><div><i>=
<font color=3D"#0000ff">SRC_URI[md5sum] =3D &quot;057d1fc49f6d3114e29e8cc72=
cf70e08&quot;</font></i></div><div><i><font color=3D"#0000ff">SRC_URI[sha25=
6sum] =3D &quot;46628a2f068d0e33c716be0ed9dcae4370242df135aed663a180b9fd8e3=
6733d&quot;</font></i></div><div><i><font color=3D"#0000ff"><br></font></i>=
</div><div><i><font color=3D"#0000ff">inherit cmake</font></i></div><div><i=
><font color=3D"#0000ff">EXTRA_OECMAKE =3D &quot;&quot;</font></i></div></d=
iv><div>--------------------------------<i><br></i></div><div><br></div><di=
v>Adding fmt as a dependency into my local.conf and running &quot;bitbake f=
mt&quot; I&#39;m able to build the library without issues.</div><div><br></=
div><div>But, when I run &quot;bitbake my-image-name&quot; to bundle everyt=
hing I receive the error below (ONLY WITH SUMO, on ROCKO everything was per=
fect).</div><div>The same receipe on rocko is absolutely ok. This error app=
ears only on sumo.</div><div><br></div><div>-------------------------------=
-</div><div><div><font color=3D"#cc0000"><i><b>ERROR: my-image-develop-1.0-=
r0 do_rootfs: Could not invoke dnf. </b>Command &#39;/home/ks89/git/poky/bu=
ild/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/recipe-s=
ysroot-native/usr/bin/dnf -y -c /home/ks89/git/poky/build/tmp/work/imx6ulle=
vk-poky-linux-gnueabi/my-image-develop/1.0-r0/rootfs/etc/dnf/dnf.conf --set=
opt=3Dreposdir=3D/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-g=
nueabi/my-image-develop/1.0-r0/rootfs/etc/yum.repos.d --repofrompath=3Doe-r=
epo,/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/my-ima=
ge-develop/1.0-r0/oe-rootfs-repo --installroot=3D/home/ks89/git/poky/build/=
tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/rootfs --set=
opt=3Dlogdir=3D/home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnu=
eabi/my-image-develop/1.0-r0/temp --nogpgcheck install mender rpm fmt shado=
w base-passwd dnf packagegroup-core-sdk packagegroup-core-boot run-postinst=
s packagegroup-core-standalone-sdk-target packagegroup-my-deps-develop&#39;=
 returned 1:</i></font></div><div><font color=3D"#cc0000"><i>Added oe-repo =
repo from /home/ks89/git/poky/build/tmp/work/imx6ullevk-poky-linux-gnueabi/=
my-image-develop/1.0-r0/oe-rootfs-repo</i></font></div><div><font color=3D"=
#cc0000"><i>Last metadata expiration check: 0:00:00 ago on Wed 05 Sep 2018 =
08:05:11 PM UTC.</i></font></div><div><font color=3D"#cc0000"><i>No match f=
or argument: fmt</i></font></div><div><font color=3D"#cc0000"><i>Error: Una=
ble to find a match</i></font></div><div><font color=3D"#cc0000"><i><br></i=
></font></div><div><font color=3D"#cc0000"><i>ERROR: my-image-develop-1.0-r=
0 do_rootfs: Function failed: do_rootfs</i></font></div><div><font color=3D=
"#cc0000"><i>ERROR: Logfile of failure stored in: /home/ks89/git/poky/build=
/tmp/work/imx6ullevk-poky-linux-gnueabi/my-image-develop/1.0-r0/temp/log.do=
_rootfs.64931</i></font></div><div><font color=3D"#cc0000"><i>ERROR: Task (=
/home/ks89/git/poky/meta-custom-layer-sumo/meta-custom-layer-dev/recipes-co=
re/images/my-image-develop.bb:do_rootfs) failed with exit code &#39;1&#39;<=
/i></font></div><div><font color=3D"#cc0000"><i>NOTE: Tasks Summary: Attemp=
ted 3973 tasks of which 3655 didn&#39;t need to be rerun and 1 failed.</i><=
/font></div><div><font color=3D"#cc0000"><i><br></i></font></div><div><font=
 color=3D"#cc0000"><i>Summary: 1 task failed:</i></font></div><div><font co=
lor=3D"#cc0000"><i>=C2=A0 /home/ks89/git/poky/meta-custom-layer-sumo/meta-c=
ustom-layer-dev/recipes-core/images/my-image-develop.bb:do_rootfs</i></font=
></div><div><font color=3D"#cc0000"><i>Summary: There were 2 ERROR messages=
 shown, returning a non-zero exit code.</i></font></div></div><div>--------=
------------------------<br></div><div><br></div><div><br></div><div><b>Do =
you have any suggestions? I&#39;m completely blocked and I cannot update my=
 device to sumo because this library is a dependency of another important l=
ibrary that I&#39;m using.</b></div><div><b>So, I have to add fmt.</b></div=
><div><b><font color=3D"#ff00ff"><br></font></b></div><div>Thank u,</div><d=
iv>Ks89</div><div><br></div></div>

--000000000000c33e5e057526926b--
