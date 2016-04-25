Return-Path: <prvs=9923708e44=michael.davis@essvote.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DCC8E009A0; Mon, 25 Apr 2016 12:52:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Apr 2016 12:52:04 PDT
Received: from m2.essvote.com (m2.essvote.com [66.37.226.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDF46E00857
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 12:52:04 -0700 (PDT)
X-AuditID: 0a00029b-f79ce6d000000d36-5e-571e71dcd323
Received: from ESS-EX01.essvote.corp.local (Unknown_Domain [172.16.110.40])
	by m2.essvote.com (Symantec Messaging Gateway) with SMTP id
	2F.08.03382.CD17E175; Mon, 25 Apr 2016 14:37:01 -0500 (CDT)
Received: from ESS-EX01.essvote.corp.local ([::1]) by
	ESS-EX01.essvote.corp.local ([::1]) with mapi id 14.03.0235.001;
	Mon, 25 Apr 2016 14:37:00 -0500
From: "Davis, Michael" <michael.davis@essvote.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto][meta-mono] Mono XSP Issue
Thread-Index: AQHRnynV+EE2whtxEEWgevUzzniRyw==
Date: Mon, 25 Apr 2016 19:37:00 +0000
Message-ID: <1651812.Atu5PGlqyj@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.1.162]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNLMWRmVeSWpSXmKPExsWyRiBPQ/duoVy4wbS1whaTXq5hc2D0aD/R
	xxbAGMVtk5RYUhacmZ6nb5fAnXG56xd7QaNkxeWHFxkbGO+JdTFyckgImEj8uTWLEcIWk7hw
	bz1bFyMXh5DAUUaJe9cnM4MkhARmMUp8OygLYrMJGEmcu74JrEFEwFTixbEvbCC2sICWxMLP
	G5kg4voS529dgKrRkzjed5MdxGYRUJXoWfyDtYuRg4NXwExi9yp/kDAj0N7vp9aAtTILiEvc
	ejKfCeIeAYkle84zQ9iiEi8f/2OFsOUkTnYeZIGo15FYsPsTG4RtJXFlwlKouLbEsoWvwXp5
	BQQlTs58wjKBUWQWkhWzkLTPQtI+C0n7LCTtCxhZVzHy5RrppRYXl+WXpOol5+duYgRGARcD
	0+wdjHsmOBxiFOBgVOLhncEkGy7EmlhWXJl7iFGag0VJnHfHfL5wIYH0xJLU7NTUgtSi+KLS
	nNTiQ4xMHJyHGCU4uKREilPzUlKLEktLMuJBsRZfDIw2qQbG/sZ47ostyzbe3bcvY7Na0MvP
	P4rdG7wOPDw682Ka3Jcs/1L72EVpz88kBBQFzDhm9O9qh+ulVS1NF5tzbtbmX7q/cUm86P73
	kaZBeTe2zf4nnCn6yFX2pLXAtQrfeUVTzpUtl4rv2c917FvTn2if5MsvjH3PH9mdtGn/hblO
	R/nnNSWW113+r8RSnJFoqMVcVJwIALdb5/9+AgAA
X-Mailman-Approved-At: Wed, 27 Apr 2016 08:31:54 -0700
Subject: [meta-mono] Mono XSP Issue
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
X-List-Received-Date: Mon, 25 Apr 2016 19:52:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <51D0FFDEADD64C4EAB3E86D7F267AA90@essvote.com>
Content-Transfer-Encoding: quoted-printable

I am trying to build mono with the mono-xsp (fastcgi) package.
Compiling works fine, however on the final image all the scripts are incorr=
ect. =20
For example /usr/bin/fastcgi-mono-server4 has the following contents.

#!/bin/sh
exec /build/product/tmp-glibc/sysroots/x86_64-linux/usr/bin/mono $MONO_OPTI=
ONS=20
"/usr/lib/mono/2.0/mod-mono-server2.exe" "$@"

It is pointing to the mono binary on my build system instead of on the targ=
et=20
system.

I am currently running of meta-mono master with the latest version of jethr=
o. =20
A grep of all files containing that incorrect path is below.

grep -r /build/monte/tmp-glibc/sysroots/x86_64-linux
usr/lib/mono/gac/monodoc/1.0.0.0__0738eb9f132ed756/monodoc.dll.config:     =
          =20
<add key=3D"docPath" value=3D"/build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/lib/monodoc" />
usr/bin/mod-mono-server:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/mono/2.0/mod-mono-server2.exe" "=
$@"
usr/bin/asp-state2:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/xsp/2.0/asp-state2.exe" "$@"
usr/bin/fastcgi-mono-server:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/mono/2.0/fastcgi-mono-server2.ex=
e"=20
"$@"
usr/bin/xsp:exec /build/monte/tmp-glibc/sysroots/x86_64-linux/usr/bin/mono=
=20
$MONO_OPTIONS "/usr/lib/mono/2.0/xsp2.exe" "$@"
usr/bin/dbsessmgr2:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/xsp/2.0/dbsessmgr2.exe" "$@"
usr/bin/xsp4:exec /build/monte/tmp-glibc/sysroots/x86_64-linux/usr/bin/mono=
=20
$MONO_OPTIONS "/usr/lib/mono/4.5/xsp4.exe" "$@"
usr/bin/fastcgi-mono-server4:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/mono/4.5/fastcgi-mono-server4.ex=
e"=20
"$@"
usr/bin/mod-mono-server2:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/mono/2.0/mod-mono-server2.exe" "=
$@"
usr/bin/mono-fpm:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/mono/4.5/mono-fpm.exe" "$@"
usr/bin/mod-mono-server4:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/mono/4.5/mod-mono-server4.exe" "=
$@"
usr/bin/dbsessmgr4:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/xsp/4.0/dbsessmgr4.exe" "$@"
usr/bin/xsp2:exec /build/monte/tmp-glibc/sysroots/x86_64-linux/usr/bin/mono=
=20
$MONO_OPTIONS "/usr/lib/mono/2.0/xsp2.exe" "$@"
usr/bin/asp-state4:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/xsp/4.0/asp-state4.exe" "$@"
usr/bin/asp-state:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/xsp/2.0/asp-state2.exe" "$@"
usr/bin/fastcgi-mono-server2:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/mono/2.0/fastcgi-mono-server2.ex=
e"=20
"$@"
usr/bin/dbsessmgr:exec /build/monte/tmp-glibc/sysroots/x86_64-
linux/usr/bin/mono $MONO_OPTIONS "/usr/lib/xsp/2.0/dbsessmgr2.exe" "$@"


Thanks,
Mike Davis

