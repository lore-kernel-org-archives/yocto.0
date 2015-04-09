Return-Path: <martin.beaudet@intelia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83C45E008EC; Thu,  9 Apr 2015 12:20:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.77.80.51 listed in list.dnswl.org]
Received: from smtp-out-1.satelmail.com (smtp-out-1.satelcom.qc.ca
	[208.77.80.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5873E0049A
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 12:19:58 -0700 (PDT)
Received: from mta-1.satelcom.qc.ca (mta-1.satelcom.qc.ca [172.16.16.49])
	by smtp-out-1.satelmail.com (Postfix) with ESMTP id A986B4207A
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 15:19:57 -0400 (EDT)
Received: from assp-db2.satelcom.qc.ca (unknown [172.16.16.118])
	by mta-1.satelcom.qc.ca (Postfix) with ESMTPS id A80B541EF9
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 15:19:57 -0400 (EDT)
Received: from smtp-1.satelcom.qc.ca (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by assp-db2.satelcom.qc.ca (Postfix) with ESMTPS id 7C2C837BBC
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 15:19:57 -0400 (EDT)
Received: from smtp-1.satelcom.qc.ca ([172.16.16.54]
	helo=smtp-1.satelcom.qc.ca)
	by assp-db.satelcom.qc.ca with SMTP (2.4.3); 9 Apr 2015 15:19:57 -0400
Received: from remote.intelia.com (unknown [204.80.6.198])
	by smtp-1.satelcom.qc.ca (Postfix) with ESMTPS id E18B641E3F
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 15:19:56 -0400 (EDT)
Received: from CT-SERVEUR.ctaq.local ([fe80::7895:8268:18d2:9278]) by
	CT-SERVEUR.ctaq.local ([fe80::7895:8268:18d2:9278%10]) with mapi;
	Thu, 9 Apr 2015 15:19:56 -0400
From: Martin Beaudet <martin.beaudet@intelia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 9 Apr 2015 15:19:56 -0400
Thread-Topic: Beaglebone Black - LCD 7''
Thread-Index: AdBy96Edrv2pbW1WSm+22d5rk0P7eQ==
Message-ID: <muid.6541868fd6.00FFF1D896D3FF4482179DF8C27DEFAFA329F1401E@CT-SERVEUR.ctaq.local>
Accept-Language: fr-FR, fr-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: fr-FR, fr-CA
MIME-Version: 1.0
X-Assp-Version: 2.4.3(15059) on assp-db.satelcom.qc.ca
X-Assp-ID: assp-db.satelcom.qc.ca a119-07197-08528
X-Assp-Session: B2A259BC (mail 1)
X-Assp-Envelope-From: martin.beaudet@intelia.com
X-Assp-Intended-For: yocto@yoctoproject.org
X-Assp-Server-TLS: yes
Subject: Beaglebone Black - LCD 7''
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
X-List-Received-Date: Thu, 09 Apr 2015 19:20:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I build a Beaglebone Black image using Yocto with this configuration :=20

	BB_VERSION        =3D "1.22.0"
	BUILD_SYS         =3D "x86_64-linux"
	NATIVELSBSTRING   =3D "Ubuntu-14.10"
	TARGET_SYS        =3D "arm-poky-linux-gnueabi"
	MACHINE           =3D "beaglebone"
	DISTRO            =3D "poky"
	DISTRO_VERSION    =3D "1.6.2"
	TUNE_FEATURES     =3D "armv7a vfp thumb neon callconvention-hard cortexa8"
	TARGET_FPU        =3D "vfp-neon"
	meta
	meta-yocto        =3D "daisy:02e603e48c6e0b0492f596890adadf6590fa692c"
	meta-oe           =3D "daisy:d3d14d3fcca7fcde362cf0b31411dc4eea6d20aa"
	meta-ti           =3D "daisy:3a95559c124d3ce8c076b3fae5859435977d1ac2"
	meta-qt5          =3D "master:87235825459d376bf4537c9523eb2496e15893aa"

The on HDMI works very well. I have force a better resolution for my 24'' m=
onitor by doing :

	#uEnv.txt
	optargs=3Dvideo=3DHDMI-A-1:1280x720@60

Now I'm trying to get an LCD 7'' working but without success. Even if I hav=
e tried many options in the uEnv.txt.

Now someone point me to try this DTS file : https://github.com/RobertCNelso=
n/dtb-rebuilder/blob/3.14-ti/src/arm/am335x-bone-4dcape-70t.dtsi and use th=
e DTB builder.

I did not try yet, hope it will work, but is there a way to automate this p=
rocess in Yocto ?

Best regards,



