Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB690E00536
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 09:30:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Oct 2011 09:30:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,480,1312182000"; d="scan'208";a="58228459"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 03 Oct 2011 09:30:56 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 3 Oct 2011 09:30:56 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.146]) with mapi id
	14.01.0323.003; Mon, 3 Oct 2011 09:30:56 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>
Thread-Topic: Fixes to consider for a Bernard point release.
Thread-Index: AQHMgenTOi9qC4GYf0K6CCQDgazd6Q==
Date: Mon, 3 Oct 2011 16:30:55 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F2E061@ORSMSX101.amr.corp.intel.com>
References: <4E86510E.1000207@intel.com>
In-Reply-To: <4E86510E.1000207@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fixes to consider for a Bernard point release.
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
X-List-Received-Date: Mon, 03 Oct 2011 16:30:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you Scott. This is a great list to start with.=20

Hi Everyone,

I changed the email subject and moved this thread to the public mailing lis=
t. Let's use this thread as the place to collect patches we recommend for t=
he 1.0 Bernard point release. So please contribute if you have something in=
 mind. But please make sure that this effort won't affect any of your 1.1 r=
elease related work. 1.1 release is our priority now.

Thanks!
Song

-----Original Message-----
From: Scott Garman [mailto:scott.a.garman@intel.com]=20
Sent: Friday, September 30, 2011 4:30 PM
To: Liu, Song
Cc: Yocto Project Discussions
Subject: Security related fixes to consider for a Bernard point release.

Hi Song,

At the last staff meeting, Paul brought up the possibility of doing=20
another point-release for Bernard, at least to include some security=20
fixes. I went and ran a scan on the bernard recipe versions using my CVE=20
checker scripts, and came up with this short list of security fixes that=20
we may wish to consider:

python CVE-2011-1015=20
http://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2011-1015
libpng CVE-2011-2690=20
http://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2011-2690
libpng CVE-2011-2692=20
http://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2011-2692

So it looks like only the python and libpng recipes would need to be=20
upgraded.

Scott

--=20
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

