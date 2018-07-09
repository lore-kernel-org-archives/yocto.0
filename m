Return-Path: <michael.allwright@ulb.ac.be>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7BD3E00E4B; Mon,  9 Jul 2018 08:28:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [164.15.128.114 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Jul 2018 08:28:12 PDT
Received: from mxin.ulb.ac.be (mxin.ulb.ac.be [164.15.128.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8787E0080A
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 08:28:12 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HdDABgfkNb/zFSfUpdg0wugWGEIoEdk?=
	=?us-ascii?q?xyFAAGNKocIAQqHNCE4FAECAQECAQECAgJpKIVidQEGNwIkEgEFAT2FGJswgx4?=
	=?us-ascii?q?8iwmCHIdEGWqBOohugVY/g3CFdYI0glUCh2mRZgcCgUAwjTSIB4VWkgEPIYE3I?=
	=?us-ascii?q?oFSTSCBBAaCM5BTPY8BAQE?=
X-IPAS-Result: =?us-ascii?q?A2HdDABgfkNb/zFSfUpdg0wugWGEIoEdkxyFAAGNKocIAQq?=
	=?us-ascii?q?HNCE4FAECAQECAQECAgJpKIVidQEGNwIkEgEFAT2FGJswgx48iwmCHIdEGWqBO?=
	=?us-ascii?q?ohugVY/g3CFdYI0glUCh2mRZgcCgUAwjTSIB4VWkgEPIYE3IoFSTSCBBAaCM5B?=
	=?us-ascii?q?TPY8BAQE?=
Received: from mail-wm0-f49.google.com ([74.125.82.49])
	by smtp.ulb.ac.be with ESMTP/TLS/AES128-GCM-SHA256;
	09 Jul 2018 17:27:10 +0200
Received: by mail-wm0-f49.google.com with SMTP id z6-v6so11255801wma.0
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 08:27:10 -0700 (PDT)
X-Gm-Message-State: APt69E2kzBtn9AT/jvxvFQK5gh3fXLq84E0ZgKPlP7BDTaExqu0ePZ1V
	H/Wn2hUfRbDRnvsMPT3XNbNDin45k5qCKPUGwlc=
X-Google-Smtp-Source: AAOMgperY3raZVjGfZNOmFKTHATSntCz2JcBqiCG/FT7anAJHzpdw66I5yDsw+P/Q0fCBHTYxTT02iopwPNWCtOAUi4=
X-Received: by 2002:a1c:9e8a:: with SMTP id
	h132-v6mr12051599wme.48.1531150030123; 
	Mon, 09 Jul 2018 08:27:10 -0700 (PDT)
MIME-Version: 1.0
From: Michael Allwright <michael.allwright@ulb.ac.be>
Date: Mon, 9 Jul 2018 17:27:40 +0200
X-Gmail-Original-Message-ID: <CALcgO_4bg5JX1Zf93fJY671GnCLk_sDR6qesPBcym9q3QiACbw@mail.gmail.com>
Message-ID: <CALcgO_4bg5JX1Zf93fJY671GnCLk_sDR6qesPBcym9q3QiACbw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Including a header from an external kernel module
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
X-List-Received-Date: Mon, 09 Jul 2018 15:28:14 -0000
Content-Type: multipart/alternative; boundary="000000000000a4b905057092a5dd"

--000000000000a4b905057092a5dd
Content-Type: text/plain; charset="UTF-8"

Hello,

I think it would be useful to extend the hello-mod recipe in meta-skeleton
to demonstrate some slightly more complicated scenarios. For example, I am
trying to find out how to have two external kernel modules A and B, where
module B #includes a header file provided by module A.

I have made module B depend on module A, however, I believe I am still
missing one or two steps in my recipe for module A such that the header
file is copied into the shared kernel staging directory where module B can
find it.

So far I have tried the following:

FILES_${PN}-dev += "/usr/include/linux/mfd/module-a.h"

FILES_kernel-headers += "${includedir}/linux/mfd/module-a.h"

do_install_append () {
   install -d ${D}${includedir}/linux/mfd
   install -m 644 ${S}/module-a ${D}${includedir}/linux/mfd/module-a.h
}

In module B, I want to be able to:

#include <linux/mfd/module-a.h>

--000000000000a4b905057092a5dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,</div><div><br></div><div>I think it would=
 be useful to extend the hello-mod recipe in meta-skeleton to demonstrate s=
ome slightly more complicated scenarios. For example, I am trying to find o=
ut how to have two external kernel modules A and B, where module B #include=
s a header file provided by module A.</div><div><br></div><div>I have made =
module B depend on module A, however, I believe I am still missing one or t=
wo steps in my recipe for module A such that the header file is copied into=
 the shared kernel staging directory where module B can find it.</div><div>=
<br></div><div>So far I have tried the following:</div><div><br></div><div>=
FILES_${PN}-dev +=3D &quot;/usr/include/linux/mfd/module-a.h&quot;</div><di=
v><br></div><div>FILES_kernel-headers +=3D &quot;${includedir}/linux/mfd/mo=
dule-a.h&quot;</div><div><br></div><div>do_install_append () {</div><div>=
=C2=A0 =C2=A0install -d ${D}${includedir}/linux/mfd</div><div>=C2=A0 =C2=A0=
install -m 644 ${S}/module-a ${D}${includedir}/linux/mfd/module-a.h</div><d=
iv>}</div><div><br></div><div>In module B, I want to be able to:</div><div>=
<br></div><div>#include &lt;linux/mfd/module-a.h&gt;</div></div></div>

--000000000000a4b905057092a5dd--
