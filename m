Return-Path: <jan.siegmund0@hm.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3312DE00DCA; Wed,  8 Nov 2017 08:01:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [129.187.255.138 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from postout2.mail.lrz.de (postout2.mail.lrz.de [129.187.255.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6E2CE00D18
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:01:09 -0800 (PST)
Received: from lxmhs52.srv.lrz.de (localhost [127.0.0.1])
	by postout2.mail.lrz.de (Postfix) with ESMTP id 3yX9yF0dkmzybX
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 17:01:09 +0100 (CET)
X-Virus-Scanned: by amavisd-new at lrz.de in lxmhs52.srv.lrz.de
Received: from postout2.mail.lrz.de ([127.0.0.1])
	by lxmhs52.srv.lrz.de (lxmhs52.srv.lrz.de [127.0.0.1]) (amavisd-new,
	port 20024) with LMTP id CXGjWqrjzZDz for <yocto@yoctoproject.org>;
	Wed,  8 Nov 2017 17:01:08 +0100 (CET)
Received: from BADWLRZ-SWMBX12.ads.mwn.de (BADWLRZ-SWMBX12.ads.mwn.de
	[IPv6:2001:4ca0:0:108::168])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(Client CN "BADWLRZ-SWMBX12", Issuer "BADWLRZ-SWMBX12" (not verified))
	by postout2.mail.lrz.de (Postfix) with ESMTPS id 3yX9yD6PDjzybS
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 17:01:08 +0100 (CET)
Received: from BADWLRZ-SWMBX09.ads.mwn.de (2001:4ca0:0:108::165) by
	BADWLRZ-SWMBX12.ads.mwn.de (2001:4ca0:0:108::168) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1261.35; Wed, 8 Nov 2017 17:01:08 +0100
Received: from BADWLRZ-SWMBX09.ads.mwn.de ([fe80::28c9:20b8:a4d6:473c]) by
	BADWLRZ-SWMBX09.ads.mwn.de ([fe80::28c9:20b8:a4d6:473c%12]) with mapi
	id 15.01.1261.035; Wed, 8 Nov 2017 17:01:08 +0100
From: "Siegmund, Jan" <jan.siegmund0@hm.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Building snaps whilst building yocto
Thread-Index: AQHTWKqivZocGszXfkOYqrAznXo7Cg==
Date: Wed, 8 Nov 2017 16:01:08 +0000
Message-ID: <2123d0fed518407aa1e75811b22a3911@hm.edu>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.111.95.84]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 09 Nov 2017 08:01:46 -0800
Subject: Building snaps whilst building yocto
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
X-List-Received-Date: Wed, 08 Nov 2017 16:01:19 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi all,

Is there already a class/template around which creates snaps from recipes w=
hilst building yocto and/or afterwards using the SDK?


Thanks=

