Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B770E00AAB; Thu,  3 Mar 2016 05:28:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0441EE009EA
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 05:28:16 -0800 (PST)
Received: from serv030.corp.eldorado.org.br (200.148.226.2) by
	smtp1.eldorado.org.br (200.148.226.10) with Microsoft SMTP Server (TLS)
	id 14.3.123.3; Thu, 3 Mar 2016 10:28:04 -0300
Received: from serv031.corp.eldorado.org.br (192.168.4.31) by
	serv030.corp.eldorado.org.br (192.168.4.30) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Thu, 3 Mar 2016 10:28:08 -0300
Received: from serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3]) by
	serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3%14]) with mapi
	id 15.00.0775.031; Thu, 3 Mar 2016 10:28:08 -0300
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: exception using rpm 4.11.2 
Thread-Index: AdF1UDeIDtGBaKs1R9C/NrDJitVhxA==
Date: Thu, 3 Mar 2016 13:28:08 +0000
Message-ID: <898ae2730efb41d8befe307151fa29e5@serv031.corp.eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [177.220.10.3]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAC+NgFjrNIsWRWlGSWpSXmKPExsVyYsojJt0n1jfCDGYdfXSY1WLSyzVsDowe7Sf62AIYo1gz85LyKxJYM/rOvWEt+MtSsfplO0sDYydLFyMXh5DADkaJ/WuPM0M4exkl5r3ogMqcYpRYsvAlaxcjJwebgKfE9bdtzCC2iICpxItjX9hAbGEBFYlvS9ZBxTUlZq6/zAph60nsmrCDqYuRg4MFqKbpkQ9ImFfAW2LW7CYmEJtRQFZi7p+97CA2s4C4xK0n88HiEgLaEttf7WOFsHUkNl1bxQJhO0v8fP+WGcIWkFiy5zyUrSTRe/sdVK+oxMvH/6B6dSVerXoNVRMo8eHxFkYI21TizZJLUDNtJU6s/csMM//H1htQvfIS/+/dh6pxkLhx6D1UjYLEgWdfoXYFSPxY8AuqPlji/+NFbBB2ucTMpW2MMPF1XZ2sMPMnrlwE1Rsp0TH9BMsERuNZSN6HsHUkFuz+xAZha0ssW/iaeRY46AQlTs58wrKAkWUVo1RxbkmBoV5yflGBXmpOSn5RYkq+Xn5Rul5S0SZGSILg2sF4YbX7IUYmDs5bjNIcB5iEONISi0sKEouLhVjy8vNSpaAJR6qBUfqTdldibpHDOYcLp0o5ueU333rVwGCnmmy79/6vzZdi4+wvWi/auVZXSemZ7pfV2fOXzV7zyejLvOl+gplFctvrIlqV12/lqtkyzXTVyQ3b9xx9oC7unbCi56+G+dsmuRUHAuqW/4hwbO8rEurfdSqRp3/ar5J3x15sONmRenbmjZ3iC9JehCmxFGckGmoxFxUnAgC4Yu+T3gIAAA==
Subject: exception using rpm 4.11.2
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
X-List-Received-Date: Thu, 03 Mar 2016 13:28:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

When trying to install a rpm inside a qemux86-64 machine (core-image-lsb), =
I got this error:

root@qemux86-64:~# rpm -ivh apacheds-2.0.0-M20-x86_64.rpm
warning: apacheds-2.0.0-M20-x86_64.rpm: Header V4 DSA/SHA1 Signature, key I=
D 99aede43: NOKEY
traps: rpm[1059] trap divide error ip:7fa07488caae sp:7fff5f7c6af0 error:0 =
in librpm.so.3.2.1[7fa074871000+5d000]
Floating point exception

root@qemux86-64:~# rpm --version
RPM version 4.11.2

The rpm recipe used is the Jethro one.

This error doesn't happen if I choose rpm 5.4 (from rpm5.org).


Please any help on this?

Thanks in advance.


Alexandre

