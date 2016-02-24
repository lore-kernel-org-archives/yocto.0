Return-Path: <radzy@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C131E007B5; Wed, 24 Feb 2016 09:53:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30DA5E006AE
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 09:53:24 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u1OHrMpp013508
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 24 Feb 2016 09:53:22 -0800
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.1.108]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0248.002;
	Wed, 24 Feb 2016 09:53:21 -0800
From: "Radzykewycz, T (Radzy)" <radzy@windriver.com>
To: "BURTON, ROSS" <ross.burton@intel.com>
Thread-Topic: [yocto] [meta-selinux][PATCH] swig is in meta-oe, remove this
	copy
Thread-Index: AQHRa2nD1CVCj7hxZ0uPOTIkpQxma584rSIA//98eliAA9I1AP//hYLr
Date: Wed, 24 Feb 2016 17:53:21 +0000
Message-ID: <33006C99F5A5194A9B7A7715DFA3E383EB81CE0C@ALA-MBB.corp.ad.wrs.com>
References: <1455922741-3342-1-git-send-email-radzy@windriver.com>
	<56CB1DC8.1030505@windriver.com>
	<33006C99F5A5194A9B7A7715DFA3E383EB81AF8A@ALA-MBB.corp.ad.wrs.com>,
	<CAJTo0LaRP_AY9X3A5pLDY72NmKNjg3M0L6QLrO+rDuRY9vpa2Q@mail.gmail.com>
In-Reply-To: <CAJTo0LaRP_AY9X3A5pLDY72NmKNjg3M0L6QLrO+rDuRY9vpa2Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.216.89]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
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
X-List-Received-Date: Wed, 24 Feb 2016 17:53:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


________________________________________
> From: Burton, Ross [ross.burton@intel.com]
> Sent: Wednesday, February 24, 2016 9:10 AM
> To: Radzykewycz, T (Radzy)
> Cc: Hatle, Mark; yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-selinux][PATCH] swig is in meta-oe, remove thi=
s copy
>=20
> On 22 February 2016 at 14:51, Radzykewycz, T (Radzy) <radzy@windriver.com=
<mailto:radzy@windriver.com>> wrote:
> It's easy enough to update the one in meta-selinux, if the decision is
> to keep the duplicate.  I have a 3.0.6 =3D> 3.0.8 update ready to upload
> to meta-oe, and I can do meta-selinux at the same time.
>=20
> In master at least, swig isn't in meta-oe and oe-core has 3.0.8 already. =
 oe-core jethro has 3.0.6.  Basically, there's no reason for anything targe=
ting jethro onwards to ship swig.
>=20
> Ross

Thanks, Ross.

Yes, I realized yesterday that I had been working on an older branch.  So
no change is needed.

Enjoy!

				-- radzy

