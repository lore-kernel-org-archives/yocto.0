Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BAF8E003FA; Mon,  9 Mar 2015 08:38:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [15.217.136.92 listed in list.dnswl.org]
Received: from g2t1383g.austin.hp.com (g2t1383g.austin.hp.com [15.217.136.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CDAAE00289
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 08:38:16 -0700 (PDT)
Received: from g1t5425.austin.hp.com (g1t5425.austin.hp.com [15.216.225.55])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hp.com (Postfix) with ESMTPS id 64197A8A
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 15:38:16 +0000 (UTC)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g1t5425.austin.hp.com (Postfix) with ESMTPS id 3E69C94
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 15:38:12 +0000 (UTC)
Received: from G2W4312.americas.hpqcorp.net (16.197.24.214) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Mon, 9 Mar 2015 15:37:31 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.112]) by
	G2W4312.americas.hpqcorp.net ([16.197.24.214]) with mapi id
	14.03.0169.001; Mon, 9 Mar 2015 15:37:31 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building local sources
Thread-Index: AdBafiuM8BphySveR1iK+p+A2lh0EA==
Date: Mon, 9 Mar 2015 15:37:30 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A806904248@G2W2533.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.29]
MIME-Version: 1.0
Subject: Building local sources
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
X-List-Received-Date: Mon, 09 Mar 2015 15:38:20 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

 I need some help regarding this since I cannot find out how to achieve thi=
s.  I have a git repo with a lot of code splitted in module, such as:

	/.git
	/module_a
	/module_b

 Etc...

  I want to compile those modules using a bitbake recipe within yocto so I =
created the following tree structure:

	/.git
	/module_a
	/module_b
	/poky
		/meta-modules
			/recipes-<category>
				/module_a
					module_a.bb
			/recipes-<category>
				/module_b
					module_b.bb

  So far so good, but now I am having issue with unpack/compile step, my mo=
dules are make-based (not autotools and not CMake).  So I used EXTRA_OEMAKE=
 to get them to use the proper target toolchain.  Problem lies with the SRC=
_URI, my files from module_a gets copied into $WORKDIR and not into $S, as =
such the compile step failed.  I understand that SRC_URI is not really the =
proper usage in such situation, appears to be meant to retrieve external pa=
ckages and some files here and there, mostly patches.  Even thought all my =
modules are within a git repo, I do not want to extract the full repo for e=
ach modules either.

  I am now looking into writing my own unpack function to move my code unde=
r S manually, but I was wondering if yocto had something to support this mo=
del and I simply missed it or if writing a custom unpack is the appropriate=
 solution (likely I'll have to create a class so that all my modules use th=
e same unpack behavior).

Yannick Koehler

