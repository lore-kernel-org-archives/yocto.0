Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E83CCE0098A; Fri,  8 May 2015 07:26:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9042CE0097D
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 07:26:30 -0700 (PDT)
Received: from SESTOEX09.enea.se ([fe80::94d8:372f:210c:b4da]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0224.002; Fri, 8 May 2015 16:26:27 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: Paul Barker <paul@paulbarker.me.uk>
Thread-Topic: opkg and gpg signed ipk packages
Thread-Index: AQHQiQF1GoctQW/hYkC8XY65YpEcWJ1xw3SQ
Date: Fri, 8 May 2015 14:26:26 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48258EEECD@sestoex09.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48258ED362@sestoex09.enea.se>
	<20150507200911.GA19158@bang.betafive.co.uk>
In-Reply-To: <20150507200911.GA19158@bang.betafive.co.uk>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.142.231]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg and gpg signed ipk packages
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
X-List-Received-Date: Fri, 08 May 2015 14:26:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Paul for your quick feedback .

> opkg 0.2.x only has support for checking the package feed signature. To u=
se
> this, add the line 'option check_signature 1' to your opkg.conf file and =
place a
> Packages.sig file next to the Packages file in your package feed. ASCII-
> armoured signatures are not supported.

Ok, even if we can't sign the individual .ipk files, by signing the Package=
s file we can achieve some
Level of authentication, e.g. if someone tampers with the .ipk files they c=
an't change the matching=20
checksum in the Packages.sig. The checksumming algorithm used for packages =
is MD5 now which is
 not really secure. Is it possible to use another algorithm. I guess if we =
use a better checksum for=20
packages, there is no need for Signing each individual .ipk patches, signin=
g package feed (Packages)=20
would be enough. Right?

> opkg-0.3.0-rc2 extends this. Signatures for each package are supported, a=
dd
> the line 'option check_pkg_signature 1' to your opkg.conf file to use thi=
s.
> Then for a package named package_v1.ipk you'd need to create a
> package_v1.ipk.sig file in the same directory. ASCII-armoured signatures =
are
> used with the file extension .asc instead of .sig if the line 'option
> signature_type gpg-asc' is added to your opkg.conf file. The 'Filename' i=
n the
> package feed should always refer to the ipk file, the signature is detach=
ed
> rather than included with the file.
> I've not used these options in a while so I might have remembered
> something wrong, but the general idea is right.
>=20

//Sona

