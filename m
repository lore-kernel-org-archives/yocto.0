Return-Path: <sebastian.brand@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DB14E00C44; Mon, 15 Apr 2019 05:39:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
X-Greylist: delayed 476 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Apr 2019 05:39:29 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40441E00BAA
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 05:39:29 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 4D18318485
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 14:31:32 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id Hyqt0SVUDbNT for <yocto@yoctoproject.org>;
	Mon, 15 Apr 2019 14:31:31 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id B21DB18443
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 14:31:31 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 957871A069
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 14:31:31 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 89F561A067
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 14:31:31 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 14:31:31 +0200 (CEST)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by seth.se.axis.com (Postfix) with ESMTP id 7EABE1687
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 14:31:31 +0200 (CEST)
Received: from XBOX04.axis.com (10.0.5.18) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Mon, 15 Apr 2019 14:31:31 +0200
Received: from XBOX04.axis.com ([fe80::210a:724b:68cb:a917]) by
	XBOX04.axis.com ([fe80::210a:724b:68cb:a917%22]) with mapi id
	15.00.1365.000; Mon, 15 Apr 2019 14:31:31 +0200
From: Sebastian Brand <sebastian.brand@axis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: File synchronization on ubifs/xfs
Thread-Index: AQHU84YucEUJJZbSQUuVV9NOFu4bWg==
Date: Mon, 15 Apr 2019 12:31:31 +0000
Message-ID: <1555331491145.40864@axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: File synchronization on ubifs/xfs
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
X-List-Received-Date: Mon, 15 Apr 2019 12:39:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,=0A=
=0A=
I stumbled into an file synchronization problem, and I am curious if there =
are more people using  Yocto and ubifs/xfs/similar that have an interest of=
 "fsync before rename"?=0A=
=0A=
When trying to atomically update a file a common flow is "create copy, edit=
 copy, rename copy->original", but this does for some file systems not guar=
antee that the file is not empty after a power fail. A more correct flow is=
 "create copy, edit copy, fsync copy, rename copy->original", at least acco=
rding to file system developers. This has been discussed a lot and the gene=
ral status seems to be that many file system developers think that applicat=
ions that does not fsync before rename are broken, and many application dev=
elopers think that fsync is implied at rename and this needs to be fixed in=
 the file systems. (I am (trying to) not picking a side, and just trying to=
 solve my problems :) )=0A=
=0A=
Since some file systems common in embedded systems (UBIFS, XFS) does not im=
plement automatic fsync before rename, this becomes a bit of a problem if a=
pplications in Yocto does not sync "correctly". One of these applications i=
s sed (in-place edit), and I am currently working on a patch to add fsync b=
efore rename (as a feature). Busybox are not interested in the feature (as =
they are of the opinion that this should be solved in the file system), but=
 I am curious if there is any interest in these kind of features in Yocto?=
=0A=
=0A=
Regards,=0A=
Sebastian=

