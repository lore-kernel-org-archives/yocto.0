Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66DD8E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 07:56:10 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Jun 2012 07:56:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="116563421"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Jun 2012 07:56:09 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 27 Jun 2012 07:56:09 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.115]) with mapi id
	14.01.0355.002; Wed, 27 Jun 2012 07:56:08 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: jfabernathy <jfabernathy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Yocto Development Manual Appendix B redux
Thread-Index: AQHNVHSsB49NCH8sDUK1Xg31WO2TvJcOQOlw
Date: Wed, 27 Jun 2012 14:56:08 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A13712@ORSMSX101.amr.corp.intel.com>
References: <4FEB1E80.2090404@gmail.com>
In-Reply-To: <4FEB1E80.2090404@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Yocto Development Manual Appendix B redux
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
X-List-Received-Date: Wed, 27 Jun 2012 14:56:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Awesome!  Both documentation points have been dealt with.  Thanks for runni=
ng through this stuff Jim.

Scott

-----Original Message-----
From: jfabernathy [mailto:jfabernathy@gmail.com]=20
Sent: Wednesday, June 27, 2012 7:54 AM
To: Rifenbark, Scott M; yocto@yoctoproject.org
Subject: Yocto Development Manual Appendix B redux

Just to simplify the previous thread on this subject.

To solve the issue I brought up about the Development Manual Appendix B=20
examples, it boils down to this:

1.  A denzil branch of poky-extra has now been created to solve the bug=20
I experienced.
2.  The only instruction that needs to be added to the appendix is to=20
have the user checkout the denzil branch of poky-extra to match the fact=20
that they are using the denzil branch of poky.
3.  The warning about a kernel parameter mismatch should be ignored.  A=20
note to this effect would be helpful.

With the 3 items taken into account, the examples run as documented=20
either doing B.1, then B.2 or just starting with B.2.

Jim A


