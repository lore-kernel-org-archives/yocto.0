Return-Path: <vincent.arvis@transport.alstom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60DC9E00961; Fri, 24 Feb 2017 06:40:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [159.245.16.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 621 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Feb 2017 06:40:44 PST
Received: from MCEGSMTP4.alstom.com (mcegsmtp4.alstom.com [159.245.16.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0305E0049D
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 06:40:43 -0800 (PST)
Received: from 041-smtp-out.Alstom.com (unknown [141.251.120.148]) by
	MCEGSMTP4.alstom.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-SHA384)
	id 6acf_2a81_10108352_be02_45e5_bdfb_3ac3ec6ec07d;
	Fri, 24 Feb 2017 15:30:20 +0100
Received: from AM3PR48MB0099.041d.mgd.msft.net (141.251.119.147) by
	AM3PR48MB0116.041d.mgd.msft.net (141.251.120.148) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.919.13; Fri, 24 Feb 2017 14:30:15 +0000
Received: from AM3PR48MB0099.041d.mgd.msft.net ([141.251.119.147]) by
	AM3PR48MB0099.041d.mgd.msft.net ([141.251.119.147]) with mapi id
	15.01.0919.021; Fri, 24 Feb 2017 14:30:15 +0000
From: ARVIS Vincent <vincent.arvis@transport.alstom.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Jetro / ls1046 : SDK with toolchains for both 32 and 64
	bits
Thread-Index: AdKOqn9v6PE+48mDSyuOZppQ9pAExA==
Date: Fri, 24 Feb 2017 14:30:15 +0000
Message-ID: <0d4a7eca6f724118b6d12b8553dd111e@AM3PR48MB0099.041d.mgd.msft.net>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.119.68]
x-ms-office365-filtering-correlation-id: 390e7cb6-c311-49a1-f3dc-08d45cc1a62b
MIME-Version: 1.0
Cc: LE-GLOANNEC Cedric <cedric.le-gloannec@transport.alstom.com>
Subject: Yocto Jetro / ls1046 : SDK with toolchains for both 32 and 64 bits
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
X-List-Received-Date: Fri, 24 Feb 2017 14:40:47 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear All

I am looking for help around the way to request yocto generating a SDK with=
 toolchains for ARM processor.
These toolchains shall provide the capability to compile executables in 64 =
bits (aarch64) and 32 bits (armv7a architecture).

For X86, this seems very simple : In the local.conf, adding this is enough =
:
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "i586"

But for ARM (LS1046 from NXP), it is not as evident : in the local.conf, we=
 add :
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"

This correctly add 32 bits libraries both in the image and in the SDK.
But the SDK only provides the gcc for 64 bits, not for 32 bits.
Only 64 bits environment file is provided.

Does someone have some experience on this?

Thanks in advance and best regards

--
Vincent ARVIS


________________________________
CONFIDENTIALITY : This e-mail and any attachments are confidential and may =
be privileged. If you are not a named recipient, please notify the sender i=
mmediately and do not disclose the contents to another person, use it for a=
ny purpose or store or copy the information in any medium.

