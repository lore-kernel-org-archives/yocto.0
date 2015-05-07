Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04862E005B9; Thu,  7 May 2015 12:11:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 24156E00477
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 12:11:43 -0700 (PDT)
Received: from SESTOEX09.enea.se ([fe80::94d8:372f:210c:b4da]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Thu, 7 May 2015 21:11:39 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "paul@paulbarker.me.uk" <paul@paulbarker.me.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: opkg and gpg signed ipk packages 
Thread-Index: AdCI+ZjarVNF61XcTQi9Xt8o9Ye/rg==
Date: Thu, 7 May 2015 19:11:39 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48258ED362@sestoex09.enea.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.1.188]
MIME-Version: 1.0
Subject: opkg and gpg signed ipk packages
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
X-List-Received-Date: Thu, 07 May 2015 19:11:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Does opkg have support for gpg signed ipk packages? It seems like that opkg=
 does not recognize gpg signed files.=20

root@p2020rdb:~# opkg list-upgradable
curl - 7.35.0-r2.0 - 7.35.0-r3.0
curl-dbg - 7.35.0-r2.0 - 7.35.0-r3.0
libcurl5 - 7.35.0-r2.0 - 7.35.0-r3.0
root@p2020rdb:~# opkg upgrade curl
Upgrading curl on root from 7.35.0-r2.0 to 7.35.0-r3.0...
Downloading http://domain.com/tmp/ipk/ppce500v2/curl_7.35.0-r3.0_ppce500v2.=
ipk.asc.
Collected errors:
 * deb_extract: /tmp/opkg-tslkbd/curl_7.35.0-r3.0_ppce500v2.ipk.asc: invali=
d magic
 * opkg_install_pkg: Failed to unpack control files from /tmp/opkg-tslkbd/c=
url_7.35.0-r3.0_ppce500v2.ipk.asc.
root@p2020rdb:~#

I have updated the Package file manually:
Package: curl
Version: 7.35.0-r3.0
Depends: libcurl5 (>=3D 7.35.0), libz1 (>=3D 1.2.8), libc6 (>=3D 2.19)
Section: console/network
Architecture: ppce500v2
Maintainer: ENEA <issues@enea.com>
MD5Sum: 725f019d72b6f70845ae19299230738a
Size: 95616
Filename: curl_7.35.0-r3.0_ppce500v2.ipk.asc
Source: http://curl.haxx.se/download/curl-7.35.0.tar.bz2 file://pkgconfig_f=
ix.patch file://CVE-2014-3613.patch file://configure_ac.patch
Description:  Command line tool and library for client-side URL transfers  =
Command line
 tool and library for client-side URL transfers.
OE: curl
HomePage: http://curl.haxx.se/
License: MIT
Priority: optional

Thanks
//Sona

