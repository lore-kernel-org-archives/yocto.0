Return-Path: <martin.beaudet@intelia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D915E008EC; Wed,  8 Apr 2015 08:40:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.77.80.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out-1.satelmail.com (smtp-out-1.satelcom.qc.ca
	[208.77.80.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B99FE003A8
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 08:40:57 -0700 (PDT)
Received: from mta-1.satelcom.qc.ca (mta-1.satelcom.qc.ca [172.16.16.49])
	by smtp-out-1.satelmail.com (Postfix) with ESMTP id 96DEE42CFD
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 11:40:56 -0400 (EDT)
Received: from assp-db2.satelcom.qc.ca (unknown [172.16.16.118])
	by mta-1.satelcom.qc.ca (Postfix) with ESMTPS id 95D9441FE3
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 11:40:56 -0400 (EDT)
Received: from smtp-1.satelcom.qc.ca (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by assp-db2.satelcom.qc.ca (Postfix) with ESMTPS id 7E85A37BBC
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 11:42:13 -0400 (EDT)
Received: from smtp-1.satelcom.qc.ca ([172.16.16.54]
	helo=smtp-1.satelcom.qc.ca)
	by assp-db.satelcom.qc.ca with SMTP (2.4.3); 8 Apr 2015 11:42:13 -0400
Received: from remote.intelia.com (unknown [204.80.6.198])
	by smtp-1.satelcom.qc.ca (Postfix) with ESMTPS id 6658D41E70
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 11:40:55 -0400 (EDT)
Received: from CT-SERVEUR.ctaq.local ([fe80::7895:8268:18d2:9278]) by
	CT-SERVEUR.ctaq.local ([fe80::7895:8268:18d2:9278%10]) with mapi;
	Wed, 8 Apr 2015 11:40:55 -0400
From: Martin Beaudet <martin.beaudet@intelia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 8 Apr 2015 11:40:53 -0400
Thread-Topic: Yocto Dizzy + Beaglebone + Qt5 (Internal compiler error)
Thread-Index: AdByEjZS9IBCgF3BSIekkTxmlg4wLQ==
Message-ID: <muid.2540d9f782.00FFF1D896D3FF4482179DF8C27DEFAFA329F13E9F@CT-SERVEUR.ctaq.local>
Accept-Language: fr-FR, fr-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: fr-FR, fr-CA
MIME-Version: 1.0
X-Assp-Version: 2.4.3(15059) on assp-db.satelcom.qc.ca
X-Assp-ID: assp-db.satelcom.qc.ca a119-07733-11253
X-Assp-Session: B3E76420 (mail 1)
X-Assp-Envelope-From: martin.beaudet@intelia.com
X-Assp-Intended-For: yocto@yoctoproject.org
X-Assp-Server-TLS: yes
Subject: Yocto Dizzy + Beaglebone + Qt5 (Internal compiler error)
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
X-List-Received-Date: Wed, 08 Apr 2015 15:40:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm building an image for the beaglebone. I would like to use (at least) th=
e version 5.4 of QT with elgfs platform.=20
Also the hardware accelerated support on Beaglebone Black.

Here is what I've done yet :

	# SHELL COMMAND :
	$ mkdir poky
	$ git clone -b dizzy git://git.yoctoproject.org/poky
	$ cd poky
	$ git clone git://git.yoctoproject.org/meta-ti
	$ git clone -b dizzy git://github.com/meta-qt5/meta-qt5.git
	$ git clone -b dizzy git://git.openembedded.org/meta-openembedded
	$ git clone -b daisy https://bitbucket.org/embarcados/meta-embarcados.git
	$ source oe-init-build-env beaglebone

	# FILE : poky/beaglebone/conf/local.conf
	DISTRO_FEATURES_remove =3D "x11 wayland"

	 # FILE : poky/beaglebone/conf/bblayers.conf
	BBLAYERS ?=3D \
	  ${TOPDIR}/../meta \
	  ${TOPDIR}/../meta-yocto \
	  ${TOPDIR}/../meta-openembedded/meta-oe \
	  ${TOPDIR}/../meta-ti \
	  ${TOPDIR}/../meta-qt5 \
	  ${TOPDIR}/../meta-embarcados \
	  ${TOPDIR}/../meta-embarcados/meta-bbb \

	# SHELL COMMAND :
	$ bitbake qt5-image-demo

Now I'm getting a compiler error :=20

	/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnuea=
bi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp=
: In function 'bool loadPO(Translator&, QIODevice&, ConversionData&)':
	/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnuea=
bi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp=
:717:1: internal compiler error: in add_stores, at var-tracking.c:6000
	}
	^
	Please submit a full bug report,
	with preprocessed source if appropriate.
	See <http://gcc.gnu.org/bugs.html> for instructions.
	Makefile:934: recipe for target '.obj/po.o' failed
	make[3]: *** [.obj/po.o] Error 1
	make[3]: Leaving directory '/home/test/poky/beaglebone/tmp/work/cortexa8t2=
hf-vfp-neon-poky-linux-gnueabi/qttools/5.3.2-r0/build/src/linguist/lupdate'
	Makefile:66: recipe for target 'sub-lupdate-make_first' failed
	make[2]: *** [sub-lupdate-make_first] Error 2
	make[2]: *** Waiting for unfinished jobs....
	compiling /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-l=
inux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/sha=
red/po.cpp
	compiling /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-l=
inux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/sha=
red/ts.cpp
	compiling /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-l=
inux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/sha=
red/ts.cpp
	/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnuea=
bi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp=
: In function 'bool loadPO(Translator&, QIODevice&, ConversionData&)':
	/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnuea=
bi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp=
:717:1: internal compiler error: in add_stores, at var-tracking.c:6000
	}
	^
	Please submit a full bug report,
	with preprocessed source if appropriate.
	See <http://gcc.gnu.org/bugs.html> for instructions.
	Makefile:1022: recipe for target '.obj/po.o' failed
	make[3]: *** [.obj/po.o] Error 1
	make[3]: *** Waiting for unfinished jobs....
	compiling /home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-l=
inux-gnueabi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/sha=
red/ts.cpp
	/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnuea=
bi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp=
: In function 'bool loadPO(Translator&, QIODevice&, ConversionData&)':
	/home/test/poky/beaglebone/tmp/work/cortexa8t2hf-vfp-neon-poky-linux-gnuea=
bi/qttools/5.3.2-r0/qttools-opensource-src-5.3.2/src/linguist/shared/po.cpp=
:717:1: internal compiler error: in add_stores, at var-tracking.c:6000
	}
	^

I read about similar error here (https://bugs.launchpad.net/gcc-linaro/+bug=
/1312931) but they seem to indicate that this error has been fixed in new r=
elease of GCC and they are talking about 4.8 so I supposed it has been fixe=
d in 4.9 ?

I hope somebody can point me out the problem because I'm out of idea.

Best regards,
Martin



