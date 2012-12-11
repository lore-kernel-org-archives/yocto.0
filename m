Return-Path: <matsumoto.hiroo@jp.fujitsu.com>
Received: from fgwmail5.fujitsu.co.jp (fgwmail5.fujitsu.co.jp [192.51.44.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37519E00770
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 01:55:24 -0800 (PST)
Received: from m4.gw.fujitsu.co.jp (unknown [10.0.50.74])
	by fgwmail5.fujitsu.co.jp (Postfix) with ESMTP id 9FD4E3EE081
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 18:55:22 +0900 (JST)
Received: from smail (m4 [127.0.0.1])
	by outgoing.m4.gw.fujitsu.co.jp (Postfix) with ESMTP id 7601045DE59
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 18:55:22 +0900 (JST)
Received: from s4.gw.fujitsu.co.jp (s4.gw.fujitsu.co.jp [10.0.50.94])
	by m4.gw.fujitsu.co.jp (Postfix) with ESMTP id 5D76345DE58
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 18:55:22 +0900 (JST)
Received: from s4.gw.fujitsu.co.jp (localhost.localdomain [127.0.0.1])
	by s4.gw.fujitsu.co.jp (Postfix) with ESMTP id 51D7D1DB803E
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 18:55:22 +0900 (JST)
Received: from g01jpexchyt29.g01.fujitsu.local
	(g01jpexchyt29.g01.fujitsu.local [10.128.193.112])
	by s4.gw.fujitsu.co.jp (Postfix) with ESMTP id 017CC1DB803F
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 18:55:22 +0900 (JST)
Received: from G01JPEXMBYT23.g01.fujitsu.local ([10.128.193.131]) by
	g01jpexchyt29 ([10.128.193.112]) with mapi id 14.02.0309.002;
	Tue, 11 Dec 2012 18:55:17 +0900
From: "Matsumoto, Hiroo" <matsumoto.hiroo@jp.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Is LICENSE in a recipe of groff correct
Thread-Index: Ac3Xhm/1XdfHrXfVRYKbKtpeoqKZoQ==
Date: Tue, 11 Dec 2012 09:55:22 +0000
Message-ID: <C2BCE4ECCB7E6645A9B84891C13CF76E1BFFD87B@g01jpexmbyt23>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-securitypolicycheck: OK by SHieldMailChecker v1.8.4
x-originating-ip: [10.24.19.138]
MIME-Version: 1.0
Subject: Is LICENSE in a recipe of groff correct
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
X-List-Received-Date: Tue, 11 Dec 2012 09:55:24 -0000
Content-Language: ja-JP
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi


A recipe of groff, which is meta/recipes-extended/groff/groff_1.20.1.bb,
shows that license of groff is GPLv2, but COPYING file in groff-1.20.1
shows that license of groff is GPLv3.

I think that license is GPLv2 until groff-1.19.2 and is GPLv3 from groff-1.=
20.1.


Regards.

Hiroo MATSUMOTO

