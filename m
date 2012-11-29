Return-Path: <matsumoto.hiroo@jp.fujitsu.com>
Received: from fgwmail5.fujitsu.co.jp (fgwmail5.fujitsu.co.jp [192.51.44.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55B7FE00348
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 03:17:06 -0800 (PST)
Received: from m1.gw.fujitsu.co.jp (unknown [10.0.50.71])
	by fgwmail5.fujitsu.co.jp (Postfix) with ESMTP id D3DA03EE081
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 20:17:04 +0900 (JST)
Received: from smail (m1 [127.0.0.1])
	by outgoing.m1.gw.fujitsu.co.jp (Postfix) with ESMTP id BD25E45DE55
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 20:17:04 +0900 (JST)
Received: from s1.gw.fujitsu.co.jp (s1.gw.fujitsu.co.jp [10.0.50.91])
	by m1.gw.fujitsu.co.jp (Postfix) with ESMTP id A59A045DE58
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 20:17:04 +0900 (JST)
Received: from s1.gw.fujitsu.co.jp (localhost.localdomain [127.0.0.1])
	by s1.gw.fujitsu.co.jp (Postfix) with ESMTP id 970481DB8053
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 20:17:04 +0900 (JST)
Received: from g01jpexchyt24.g01.fujitsu.local
	(g01jpexchyt24.g01.fujitsu.local [10.128.193.107])
	by s1.gw.fujitsu.co.jp (Postfix) with ESMTP id 4E0351DB8048
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 20:17:04 +0900 (JST)
Received: from G01JPEXMBYT23.g01.fujitsu.local ([10.128.193.131]) by
	g01jpexchyt24 ([10.128.193.107]) with mapi id 14.02.0309.002;
	Thu, 29 Nov 2012 20:16:57 +0900
From: "Matsumoto, Hiroo" <matsumoto.hiroo@jp.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Who does add RPM sigunature to package in Yocto ?
Thread-Index: Ac3OI6vYEDs+KeCgQLqvMzULcXKCBw==
Date: Thu, 29 Nov 2012 11:17:00 +0000
Message-ID: <C2BCE4ECCB7E6645A9B84891C13CF76E1BFFBA69@g01jpexmbyt23>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-securitypolicycheck: OK by SHieldMailChecker v1.8.4
x-originating-ip: [10.24.19.138]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 29 Nov 2012 08:14:00 -0800
Subject: Who does add RPM sigunature to package in Yocto ?
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
X-List-Received-Date: Thu, 29 Nov 2012 11:17:06 -0000
Content-Language: ja-JP
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi


I tried to make rpm package with Yocto (poky's tag is 1.3_M1.final) and I c=
ould do it.
When I run rpm command with -qip option, there is a warning of RPM signatur=
e.

  $ rpm -qip tmp/deploy/rpm/i586/perl-5.14.2-r6.i586.rpm
  warning: tmp/deploy/rpm/i586/perl-5.14.2-r6.i586.rpm: Header V4 DSA/SHA1 =
Signature, key ID 196ceb6f: NOKEY
  Name        : perl                         Relocations: (not relocatable)
  Version     : 5.14.2                            Vendor: (none)
  Release     : r6                            Build Date: Fri Nov 30 04:21:=
57 2012
  Install Date: (not installed)               Build Host: CentOS-6.3-x8664
  Group       : devel                         Source RPM: perl-5.14.2-r6.sr=
c.rpm
  Size        : 5776                             License: Artistic-1.0 | GP=
L-1.0
  Signature   : DSA/SHA1, Fri Nov 30 04:21:57 2012, Key ID c07688a5196ceb6f
  Packager    : Poky <poky@yoctoproject.org>
  URL         : http://www.perl.org/
  Summary     : perl version 5.14.2-r6
  Description :
  Perl is a popular scripting language.

But I don't generate any GPG key.

  $ ls -l ~/.gnupg/
  total 12
  -rw-------. 1 <me> <me> 7856 Aug  7 02:45 gpg.conf
  -rw-------. 1 <me> <me>    0 Aug  7 02:45 pubring.gpg
  -rw-------. 1 <me> <me>    0 Aug  7 02:45 secring.gpg
  -rw-------. 1 <me> <me>   40 Aug  7 02:45 trustdb.gpg
  $ gpg --list-keys
  $ # Nothing

Who did add this signature ? (poky/meta/classes/package_rpm.bbclass ?)
Which key is used for this signature ?
Can I avoid adding a sigunature with any option ?


Regards.

Hiroo MATSUMOTO

