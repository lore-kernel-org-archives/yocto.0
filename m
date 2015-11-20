Return-Path: <jonathan.P.schaaf@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17D02E00B63; Fri, 20 Nov 2015 13:29:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,KHOP_DYNAMIC,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.149.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 4045 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Nov 2015 13:29:38 PST
Received: from mx0a-00176a03.pphosted.com (mx0a-00176a03.pphosted.com
	[67.231.149.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13132E00B5D
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 13:29:38 -0800 (PST)
Received: from pps.filterd (m0047963.ppops.net [127.0.0.1])
	by m0047963.ppops.net-00176a03. (8.15.0.59/8.15.0.59) with SMTP id
	tAKKLwbV016929
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 15:22:13 -0500
Received: from alpmlip11.e2k.ad.ge.com ([12.43.191.1])
	by m0047963.ppops.net-00176a03. with ESMTP id 1y5yt1part-10
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 15:22:12 -0500
Received: from unknown (HELO ALPMBHT03.e2k.ad.ge.com) ([3.159.19.196])
	by alpmlip11.e2k.ad.ge.com with ESMTP/TLS/AES128-SHA;
	20 Nov 2015 15:22:06 -0500
Received: from CINURCNA23.e2k.ad.ge.com (3.159.212.171) by
	ALPMBHT03.e2k.ad.ge.com (3.159.19.196) with Microsoft SMTP Server (TLS)
	id 14.3.266.1; Fri, 20 Nov 2015 15:22:06 -0500
Received: from CINURCNA02.e2k.ad.ge.com ([169.254.2.148]) by
	CINURCNA23.e2k.ad.ge.com ([169.254.4.13]) with mapi id 14.03.0224.002;
	Fri, 20 Nov 2015 15:22:05 -0500
From: "Schaaf, Jonathan P (GE Healthcare)" <jonathan.P.schaaf@ge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Application Whitelisting on Yocto?
Thread-Index: AQHRI9EfJXKqXQ8rqEa67XvGvmAnHA==
Date: Fri, 20 Nov 2015 20:22:05 +0000
Message-ID: <D274DD0C.1BCB7%jonathan.p.schaaf@ge.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [3.159.212.181]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-11-20_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0
	malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam
	adjust=0 reason=mlx scancount=1 engine=8.0.1-1507310000
	definitions=main-1511200347
Subject: Application Whitelisting on Yocto?
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
X-List-Received-Date: Fri, 20 Nov 2015 21:29:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F7C6F60255627E49800B28B017B51786@mail.ad.ge.com>
Content-Transfer-Encoding: quoted-printable

Hi Everyone,

I'm relatively new to Yocto, and am starting to work on a project that is p=
retty minimalistic.  Other than busybox, there will only be a handful of ru=
nning services and executables.  I'd like to use some sort of application w=
hitelisting technology to help keep the system secure.  My google-foo is in=
sufficient to reveal any options that are "simple."  Does anyone on the lis=
t have suggestions?  I'd strongly prefer to avoid experimental kernel patch=
es, and I'd also prefer to avoid trying to create an selinux policy from sc=
ratch...  unless that's a lot easier to do than I think it would be.

Thoughts?

Jonathan

