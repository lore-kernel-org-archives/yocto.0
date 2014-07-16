Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31DF1E0076F; Wed, 16 Jul 2014 02:36:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx2.kistler.com (mx2.kistler.com [195.49.77.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E460EE0074B
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 02:36:55 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,671,1400018400"; 
   d="scan'208";a="1758695"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx2.kistler.com with ESMTP/TLS/ADH-AES256-SHA;
	16 Jul 2014 11:36:51 +0200
Received: from mx2.kistler.com (unknown [192.168.52.58])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 11:36:49 +0200 (CEST)
X-IronPort-AV: E=Sophos;i="5.01,671,1400018400"; 
   d="scan'208";a="1758694"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx2.kistler.com with ESMTP/TLS/AES128-SHA; 16 Jul 2014 11:36:49 +0200
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%16]) with mapi
	id 14.03.0181.006; Wed, 16 Jul 2014 11:36:49 +0200
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Bash parser
Thread-Index: Ac+g1sdj2Darbfk6Q4C/8hU3dszAFA==
Date: Wed, 16 Jul 2014 09:36:49 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E66886164946@kihagwinex01.int.kistler.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Subject: Bash parser
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
X-List-Received-Date: Wed, 16 Jul 2014 09:36:59 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm creating my own image by implementing IMAGE_CMD_<myImage> in my custom =
.bbclass file.

In this method I'm using the bash syntax. But a lot of time the parser does=
n't manage to parse my file properly. Examples:

	TMP=3D"file1 file2"
	read -a scripts <<< $tmp
generates
	ShellSyntaxError: expecting here-document name, got '<'

Or=20

	TMP=3D"file1 file2"
	scripts=3D(${TMP})
generate
	ShellSyntaxError: LexToken(TOKEN,'${TMP}',0,0)


Other bash commands are parsed properly, but generate an error while execut=
ing them. Example:
	TMP=3D"file1, file2"
	tmp=3D${TMP//,/ }
generates
	Bad substitution
	| WARNING: exit code 2 from a shell command.


Does a page exist somewhere describing the bash features supported by the p=
arser and also the execution environment?=20
Are arrays supported at all?

Best regards

Isak Lichtenstein

