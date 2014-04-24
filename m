Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [180.151.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41D53E00B6E
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 08:28:14 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 23C7336B33;
	Thu, 24 Apr 2014 20:57:51 +0530 (IST)
Received: from GURCASV01.AD.ARICENT.COM (unknown [10.203.26.91])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by jaguar.aricent.com (Postfix) with ESMTP id 150BC36B32;
	Thu, 24 Apr 2014 20:57:50 +0530 (IST)
Received: from GURMBXV03.AD.ARICENT.COM (10.203.26.98) by
	GURMBXV03.AD.ARICENT.COM (10.203.26.98) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Thu, 24 Apr 2014 20:57:50 +0530
Received: from GURMBXV03.AD.ARICENT.COM ([fe80::3d22:6544:3caf:514]) by
	GURMBXV03.AD.ARICENT.COM ([fe80::3d22:6544:3caf:514%15]) with mapi id
	15.00.0775.031; Thu, 24 Apr 2014 20:57:50 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Paul Eggleton
	<paul.eggleton@linux.intel.com>, Khem Raj <raj.khem@gmail.com>
Thread-Topic: patching issue
Thread-Index: AQHPX9HAHFl90/naf0ON+89DB3i5/g==
Date: Thu, 24 Apr 2014 15:27:49 +0000
Message-ID: <27e070ca16304830944c61965e3a919e@GURMBXV03.AD.ARICENT.COM>
References: <mailman.16937.1398342313.26702.yocto@yoctoproject.org>
In-Reply-To: <mailman.16937.1398342313.26702.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.203.143.37]
MIME-Version: 1.0
X-TM-AS-MML: No
Subject: patching issue
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
X-List-Received-Date: Thu, 24 Apr 2014 15:28:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have scenario like the following:

SRC_URI =3D "\
     http://ftp.gnu.org/gnu/glibc/glibc-ports-2.13.tar.gz;name=3Dports \
        http://ftp.gnu.org/gnu/glibc/glibc-2.13.tar.gz;name=3Dglibc \
        file://glibc.patch \
         file://newlib.patch
"
SRC_URI[ports.md5sum] =3D "094e3c9b57da605917a780ab24575187"
SRC_URI[ports.sha256sum] =3D "41cbdc05bd7b233464d649b59b34405e5bf3998522640=
b9f98f2c4eb91e87322"
SRC_URI[glibc.md5sum] =3D "fafabe01cb9748acb0a11a6879ebaa7e"
SRC_URI[glibc.sha256sum] =3D "bd90d6119bcc2898befd6e1bbb2cb1ed3bb1c2997d5ea=
a6fdbca4ee16191a906"

LIC_FILES_CHKSUM =3D "file://LICENSES;md5=3D98a1128c4b58120182cbea3b1752d8b=
9"

#newlib source fetching
SRC_URI[newlib.md5sum] =3D "e5488f545c46287d360e68a801d470e8"
SRC_URI[newlib.sha256sum] =3D "c644b2847244278c57bec2ddda69d8fab5a7c767f3b9=
af69aa7aa3da823ff692"

SRC_URI_newlib =3D "\
        http://sourceforge.net/projects/devkitpro/files/sources/newlib/newl=
ib-1.20.0.tar.gz;name=3Dnewlib"

I have two patches and two different source as shown with fetching controll=
ed using SRC_URI_newlib and SRC_URI and I want to apply patches conditional=
ly on SRC_URI and SRC_URI_newlib . But fails to do so.
Can u help how to apply newlib.patch in SRC_URI_newlib and glibc.patch in S=
RC_URI.

If I keep newlib.patch in SRC_URI_newlib it is not considered and ignored.

Please help me out

Thanks in advance!!


Regards,
Rohit Jindal

"DISCLAIMER: This message is proprietary to Aricent and is intended solely =
for the use of the individual to whom it is addressed. It may contain privi=
leged or confidential information and should not be circulated or used for =
any purpose other than for what it is intended. If you have received this m=
essage in error, please notify the originator immediately. If you are not t=
he intended recipient, you are notified that you are strictly prohibited fr=
om using, copying, altering, or disclosing the contents of this message. Ar=
icent accepts no responsibility for loss or damage arising from the use of =
the information transmitted by this email including damage from virus."

