Return-Path: <Alex.deVries@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16F414C808B0
	for <yocto@yoctoproject.org>; Tue, 21 Dec 2010 16:30:31 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBLMUT4o013804
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 21 Dec 2010 14:30:29 -0800 (PST)
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.2.204]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.01.0255.000;
	Tue, 21 Dec 2010 14:30:29 -0800
From: "deVries, Alex" <Alex.deVries@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: What hosts do we support?
Thread-Index: AQHLoV6rLUgfi1mxIEeUkLiCvQpj9w==
Date: Tue, 21 Dec 2010 22:30:29 +0000
Message-ID: <6DF2F895-51BF-43C8-AED5-486C0C1DB17C@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.144.219]
MIME-Version: 1.0
Subject: What hosts do we support?
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
X-List-Received-Date: Tue, 21 Dec 2010 22:30:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <7621865CCF74AE4A8E79D9BDDEFCC5DD@corp.ad.wrs.com>
Content-Transfer-Encoding: quoted-printable


I think we're at the point where we should think of what makes a host suppo=
rted, and what expectations we have of that host. The situation is undocume=
nted and a bit frustrating today. =20

It should be really easy to get going with YML/poky. We should consider opt=
imizing the following workflow:
1. Install a minimal distribution
2. Download YML/poky, run it
3. Follow only the instructions provided
4. Complete a build

It may be required that the user has root access temporarily to update pack=
ages.  Only packages provided by the distribution vendor should need to be =
installed. The user should only have to make changes once.  The need for th=
ese changes should be minimized.

Yocto can then advertise a finite list of supported distributions, with the=
 goal of widening the list over time.

Feedback?  Are these reasonable guidelines?


- A=

