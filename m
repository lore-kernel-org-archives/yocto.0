Return-Path: <Brian.Wenholz@med.ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72B6AE0043F; Fri, 18 Jul 2014 17:24:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [67.231.157.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 8787 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Jul 2014 17:24:20 PDT
Received: from mx0b-00176a03.pphosted.com (mx0b-00176a03.pphosted.com
	[67.231.157.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C424E003C1
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 17:24:20 -0700 (PDT)
Received: from pps.filterd (m0048299.ppops.net [127.0.0.1])
	by m0048299.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id
	s6ILuCSZ025889
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 17:57:52 -0400
Received: from alpmlip11.e2k.ad.ge.com ([12.43.191.1])
	by m0048299.ppops.net-00176a03. with ESMTP id 1n7audg53j-1
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 17:57:52 -0400
Received: from unknown (HELO ALPMBHT03.e2k.ad.ge.com) ([3.159.19.196])
	by alpmlip11.e2k.ad.ge.com with ESMTP/TLS/AES128-SHA;
	18 Jul 2014 17:47:45 -0400
Received: from ALPURCND16.e2k.ad.ge.com (3.159.19.170) by
	ALPMBHT03.e2k.ad.ge.com (3.159.19.196) with Microsoft SMTP Server (TLS)
	id 14.3.195.1; Fri, 18 Jul 2014 17:57:52 -0400
Received: from ALPURAPA22.e2k.ad.ge.com ([169.254.4.70]) by
	ALPURCND16.e2k.ad.ge.com ([169.254.10.123]) with mapi id 14.03.0174.002;
	Fri, 18 Jul 2014 17:57:51 -0400
From: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
To: Chris Tapp <opensource@keylevel.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] core-image-x11 screen resolution
Thread-Index: AQHPos90vAMvqABrb0mKPNUVAkT6A5umX+ZA
Date: Fri, 18 Jul 2014 21:57:51 +0000
Message-ID: <4F1B91CF7B31604FABE8442530201B7812205967@ALPURAPA22.e2k.ad.ge.com>
References: <D628D33F-1776-4BEA-8D2B-3F98CB94B921@keylevel.com>
In-Reply-To: <D628D33F-1776-4BEA-8D2B-3F98CB94B921@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [3.159.19.187]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.14,
	0.0.0000
	definitions=2014-07-18_05:2014-07-18, 2014-07-18,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1402240000 definitions=main-1407180259
Subject: Re: core-image-x11 screen resolution
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
X-List-Received-Date: Sat, 19 Jul 2014 00:24:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Chris,

To do this I use a custom xorg.conf file by creating a bbappend for the xse=
rver-xf86-config recipe in my own layer. Just needs the FILESEXTRAPATHS_pre=
pend and PR variables updated. Then you place the custom file in the xserve=
r-xf86-config or files directory. I keep my layer appends in the same relat=
ive structure as the full recipe for my own sanity.

Hope this helps.

Brian Wenholz=20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Tapp
Sent: Friday, July 18, 2014 4:59 PM
To: Yocto Project
Subject: [yocto] core-image-x11 screen resolution

Is there an easy/quick way to set the screen resolution used when core-imag=
e-x11 starts X?

I.e. something that can be added into local.conf?

Chris Tapp

opensource@keylevel.com
www.keylevel.com

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

