Return-Path: <PStath@Axxcelera.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D5D2E00824; Mon,  2 Feb 2015 11:52:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Feb 2015 11:52:28 PST
Received: from RIC-MS02.MWSG.int (static-96-253-69-114.rcmdva.fios.verizon.net
	[96.253.69.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80369E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 11:52:28 -0800 (PST)
Received: from RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845]) by
	RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845%10]) with mapi id
	14.03.0123.003; Mon, 2 Feb 2015 14:51:17 -0500
From: "Stath, Paul" <PStath@Axxcelera.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Unset task_name[noexec] in bbappend
Thread-Index: AQHQPyDouipgp7KQOUuk1l6D/unTZQ==
Date: Mon, 2 Feb 2015 19:51:15 +0000
Message-ID: <5B5D636C5F0AA747B37D0EFC72B563C42D606583@RIC-MS02.MWSG.int>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.129]
MIME-Version: 1.0
Subject: Unset task_name[noexec] in bbappend
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
X-List-Received-Date: Mon, 02 Feb 2015 19:52:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

=0A=
If there any way in the bbappend file to override <task_name>[noexec] =3D "=
1" specified in the parent .bb file?=0A=
=0A=
I want to extend the package-index task, and need to fetch a couple of conf=
iguration files.=0A=
The package-index.bb task contains do_fetch[noexec] =3D "1", so the fetch i=
s not performed.=0A=
=0A=
--=0A=
Paul Stath=0A=
Axxcelera Broadband Wireless=

