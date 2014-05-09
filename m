Return-Path: <jessica.zhang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3471E0073A; Fri,  9 May 2014 13:43:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga03.intel.com (unknown [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 860CAE00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 13:43:15 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 May 2014 13:43:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1020,1389772800"; d="scan'208";a="430130333"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 09 May 2014 13:43:09 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 9 May 2014 13:43:08 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.198]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.138]) with mapi id
	14.03.0123.003; Fri, 9 May 2014 13:43:08 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?iso-8859-1?Q?S=E9bastien_Taylor?= <me@staylor.ca>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse CMake Errors
Thread-Index: AQHPa7ijbesH0/AEY0+GJ5XRyF1jxps4twDA
Date: Fri, 9 May 2014 20:43:07 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C805C6AF6@ORSMSX103.amr.corp.intel.com>
References: <68F4E435-B3B6-4E88-A17E-76391406923B@staylor.ca>
In-Reply-To: <68F4E435-B3B6-4E88-A17E-76391406923B@staylor.ca>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Eclipse CMake Errors
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
X-List-Received-Date: Fri, 09 May 2014 20:43:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Could you please file a bug for this in yocto project bugzilla?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of S=E9bastien Taylor
Sent: Friday, May 09, 2014 11:27 AM
To: yocto@yoctoproject.org
Subject: [yocto] Eclipse CMake Errors

When using an Eclipse Yocto CMake project, errors in cmake are simply repor=
ted as a generic error.  Is there an existing method of having the plugin d=
isplay the detailed cmake stdout/stderr output instead?

Example error, 'Configuring project' has encountered a problem.  Build of p=
roject failed 1.


--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

