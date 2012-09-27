Return-Path: <tocallaghan@meyn.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe003.messaging.microsoft.com [65.55.88.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F324E01351
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 07:14:14 -0700 (PDT)
Received: from mail170-tx2-R.bigfish.com (10.9.14.242) by
	TX2EHSOBE012.bigfish.com (10.9.40.32) with Microsoft SMTP Server id
	14.1.225.23; Thu, 27 Sep 2012 14:14:13 +0000
Received: from mail170-tx2 (localhost [127.0.0.1])	by
	mail170-tx2-R.bigfish.com (Postfix) with ESMTP id B7092600BF	for
	<yocto@yoctoproject.org>; Thu, 27 Sep 2012 14:14:13 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:157.56.252.37; KIP:(null); UIP:(null); IPV:NLI;
	H:DB3PRD0510HT001.eurprd05.prod.outlook.com; RD:none; EFVD:NLI
X-SpamScore: 1
X-BigFish: PS1(zzd5b2izz1202h1d1ah1d2ahzzz2fh2a8h668h839h944hd25hf0ah107ah1220h1288h12a5h12a9h12bdh137ah13b6h1155h)
Received-SPF: pass (mail170-tx2: domain of meyn.com designates 157.56.252.37
	as permitted sender) client-ip=157.56.252.37;
	envelope-from=tocallaghan@meyn.com;
	helo=DB3PRD0510HT001.eurprd05.prod.outlook.com ; .outlook.com ; 
Received: from mail170-tx2 (localhost.localdomain [127.0.0.1]) by mail170-tx2
	(MessageSwitch) id 1348755251469225_18349;
	Thu, 27 Sep 2012 14:14:11 +0000 (UTC)
Received: from TX2EHSMHS014.bigfish.com (unknown [10.9.14.235])	by
	mail170-tx2.bigfish.com (Postfix) with ESMTP id 6B2B23400AD	for
	<yocto@yoctoproject.org>; Thu, 27 Sep 2012 14:14:11 +0000 (UTC)
Received: from DB3PRD0510HT001.eurprd05.prod.outlook.com (157.56.252.37) by
	TX2EHSMHS014.bigfish.com (10.9.99.114) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Thu, 27 Sep 2012 14:14:10 +0000
Received: from DB3PRD0510MB368.eurprd05.prod.outlook.com ([169.254.4.186]) by
	DB3PRD0510HT001.eurprd05.prod.outlook.com ([10.255.46.36]) with mapi
	id 14.16.0190.008; Thu, 27 Sep 2012 14:14:07 +0000
From: Tim O'Callaghan <tocallaghan@meyn.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Autogen and libopts/Autoopts - native package that generates
	the source for a target package.
Thread-Index: Ac2cum/qRJB25/vvTDuK9oBqH8VIMg==
Date: Thu, 27 Sep 2012 14:14:07 +0000
Message-ID: <12F9B0C37BAC49429468AA27112A5F5B37B7B988@DB3PRD0510MB368.eurprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [93.154.102.135]
MIME-Version: 1.0
X-OriginatorOrg: meyn.com
Subject: Autogen and libopts/Autoopts - native package that generates the source for a target package.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 27 Sep 2012 14:14:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a recipe that uses GNU autoopts, which generates a dependency on lib=
opts. This is the  library that is required for any package using autoopts =
to compile.

GNU autoopts is a tool that is found embedded in GNU autogen as an example =
of autogen use, but is also a package in its own right. When you configure =
and build autogen, you also configure and build autoopts. When you build au=
toopts, it in turn builds the libopts shared library, static library and so=
urce tarball. The tarball is so that it can be used inside your packages so=
urce tree, for systems that do not have libopts installed. As far as I can =
tell via Google, most packages just embed the libopts in their source tree =
e.g. TCPRELAY and ntp.=20

As autogen and autoopts are required native packages, If the target package=
 requires libopts, then in this case it finds the libopts.so from native an=
d then at image creation time it complains that the library is not availabl=
e. To build libopts for the target, you need to either build the whole depe=
ndency tree behind autogen, which will build autoopts and the wanted librar=
y (with or without bludgeoning autogen's configure script into shape), or s=
hare the source tarball during the native building stage for downstream con=
sumers. My first thought was to copy the src tarball to DL_DIR, and have a =
corresponding target libopts.bb recipe or similar, but as it turns out auto=
gen has a mechanism for this, `autoopts-config libsrc` (as per the libopts =
tarball README). The tarball is not designed to be configured as a standalo=
ne library and plugs into the packages configure - which as you can guess I=
'm in the process of doing for this package.

So I'm posting this to the list for others who may trip over it, and as a q=
uestion as to what to do, in the general case where you have something gene=
rated by a package in 'native' and you want to share it with a package in '=
target'. Rebuild everything? Create a finder script?=20

Regards,

Tim.


