Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3A26E009D9; Thu, 16 Jul 2015 16:16:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 671D9E009CC
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 16:16:22 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GNGIha015564; Thu, 16 Jul 2015 18:16:18 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071618161859-1340537 ;
	Thu, 16 Jul 2015 18:16:18 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 18:16:11 -0500
Message-Id: <cover.1437083171.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 06:16:18 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 06:16:18 PM,
	Serialize complete at 07/16/2015 06:16:18 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_06:, , signatures=0
Subject: [meta-mono] [PATCH 00/11] Refactor common mono build bits into mono.bbclass
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
X-List-Received-Date: Thu, 16 Jul 2015 23:16:26 -0000

Building CLI packages involves lots of boilerplate recipe settings, particularly
involving FILES and DEPENDS. This is a first attempt at refactoring these
settings into a single bbclass that can be inherited by all CLI packages that do
not require unusual build settings.

I attempted to refactor every recipe in the layer with these exceptions:

- cefglue, because it doesn't actually install anything (!)
- monotools-server, because I haven't been able to build it successfully
- mono-upnp and taglib-sharp because I don't use them


The following changes since commit 136ed556de19bd497279d6c3ae8704551fb1ec4d:

  mono-xsp-3.x.inc: use autogen.sh (2015-07-16 18:56:23 +0100)

are available in the git repository at:

  git://github.com/rtollert/meta-mono dev/rtollert/v4/bbclass
  https://github.com/rtollert/meta-mono/tree/dev/rtollert/v4/bbclass

Richard Tollerton (11):
  mono.bbclass: add
  dbus-sharp-glib: use mono.bbclass
  dbus-sharp: use mono.bbclass
  fsharp.inc: use mono.bbclass
  mono-addins: use mono.bbclass
  mono-helloworld: use mono.bbclass
  mono-xsp: use mono.bbclass
  mono-basic-4.xx.inc: use mono.bbclass
  gtk-sharp.inc: use mono.bbclass and make some FILES fixes
  gtk-sharp-native: remove mono-native dependency
  gtk-sharp: remove mono-native dependency

 classes/mono.bbclass                               | 32 ++++++++++++++++++++++
 recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc   | 13 ++-------
 recipes-mono/dbus-sharp/dbus-sharp.inc             | 13 +--------
 recipes-mono/fsharp/fsharp.inc                     | 19 +------------
 recipes-mono/gtk-sharp/gtk-sharp-native_2.12.21.bb |  2 +-
 recipes-mono/gtk-sharp/gtk-sharp.inc               | 23 +++-------------
 recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb        |  2 +-
 recipes-mono/mono-addins/mono-addins.inc           | 14 ++--------
 recipes-mono/mono-basic/mono-basic-4.xx.inc        | 13 +--------
 recipes-mono/mono-helloworld/mono-helloworld.inc   |  4 +--
 recipes-mono/mono-xsp/mono-xsp-3.x.inc             |  3 +-
 11 files changed, 47 insertions(+), 91 deletions(-)
 create mode 100644 classes/mono.bbclass

-- 
2.4.4


