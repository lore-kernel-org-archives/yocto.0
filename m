Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0616E006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 06:52:01 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2013 06:52:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,768,1378882800"; d="scan'208";a="433484896"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2013 06:52:01 -0800
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 25 Nov 2013 06:52:00 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX112.amr.corp.intel.com ([169.254.12.221]) with mapi id
	14.03.0123.003; Mon, 25 Nov 2013 06:52:01 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ksize.py and dirsize.py scripts not in dora tarball,
	is that deliberate?
Thread-Index: AQHO6DtGvhPR+4j6CUaC5CvO30bIApo2Cwrw
Date: Mon, 25 Nov 2013 14:52:00 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F51186@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311230555380.9634@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311230555380.9634@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: ksize.py and dirsize.py scripts not in dora tarball, is that deliberate?
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
X-List-Received-Date: Mon, 25 Nov 2013 14:52:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hmm... did these not get included in poky during the release?

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Saturday, November 23, 2013 2:59 AM
>To: Yocto discussion list
>Subject: [yocto] ksize.py and dirsize.py scripts not in dora tarball, is t=
hat
>deliberate?
>
>
>  current dev manual:
>
>http://www.yoctoproject.org/docs/latest/dev-manual/dev-
>manual.html#understand-what-gives-your-image-size
>
>claims:
>
>"To help you see where you currently are with kernel and root filesystem
>sizes, you can use two tools found in the Source Directory in the scripts
>directory:
>
>ksize.py: Reports component sizes for the kernel build objects.
>
>dirsize.py: Reports component sizes for the root filesystem."
>
>  however, the current dora tarball doesn't contain these scripts, while o=
e-
>core contains them more specifically under the scripts/tiny/ subdirectory.
>thoughts?
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

