Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD7FCE0084A; Mon,  8 Dec 2014 10:17:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6614FE007C1
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 10:17:42 -0800 (PST)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-8.us.mimecast.lan; Mon, 08 Dec 2014 13:17:39 -0500
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 8 Dec 2014 10:17:39 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 8 Dec 2014 10:17:37 -0800
Thread-Topic: Debugging opkg installs
Thread-Index: AdATEz8WWVNR8aWcReOSeGbeTMv0OA==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDB5625DA@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: ZKjXatiJQamCBmxWUy7yng-1
Subject: Debugging opkg installs
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
X-List-Received-Date: Mon, 08 Dec 2014 18:17:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I'm looking for some tips on debugging package install problems.=20
Recently I've had a problem where edits to a pkg_postinst function in one o=
f my recipes was not getting run when rebuilding my image. The only way I c=
ould get the pkg_postinst() function to run was to wipe out my complete ope=
nembedded build/tmp directory and let it rebuild everything from scratch (a=
nd the sstate cache). I'd really like to understand what was going on here.=
 My guess is there was some sort of flag somewhere that was telling the opk=
g to not run the postinst script for that package because it had already be=
en done once.=20

It would also be nice to know how to run opkg installs locally on my dev sy=
stem to test out recipes but I haven't quite worked out the right tools in =
place on my dev system and or what the right commands are.

Thanks,
Matt S.=20


