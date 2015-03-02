Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1042FE0077E; Mon,  2 Mar 2015 15:02:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80936E003FA
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 15:02:47 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2015 15:01:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,678,1418112000"; d="scan'208";a="692968422"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2015 15:02:28 -0800
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 2 Mar 2015 15:02:26 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.137]) by
	ORSMSX114.amr.corp.intel.com ([169.254.8.194]) with mapi id
	14.03.0195.001; Mon, 2 Mar 2015 15:02:26 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] assuming someone will update kernel versions in kernel
	dev	manual?
Thread-Index: AQHQVB/dgtzZEXOX+0eg/HnsKDwBOp0J0Tpg
Date: Mon, 2 Mar 2015 23:02:25 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EB9D39@ORSMSX106.amr.corp.intel.com>
References: <alpine.LFD.2.11.1503010759040.29306@localhost>
In-Reply-To: <alpine.LFD.2.11.1503010759040.29306@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: Re: assuming someone will update kernel versions in kernel dev	manual?
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
X-List-Received-Date: Mon, 02 Mar 2015 23:02:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I scrubbed out the old examples and references.  There were quite a few.  Y=
ou might want to take a look and be sure that everything is good.  See http=
://www.yoctoproject.org/docs/1.8/kernel-dev/kernel-dev.html.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Sunday, March 01, 2015 5:01 AM
>To: Yocto discussion list
>Subject: [yocto] assuming someone will update kernel versions in kernel de=
v
>manual?
>
>
>  still perusing kernel dev manual and there are references to version 3.4=
,
>which doesn't even exist anymore as a recipe in OE. should i assume that
>someone will be doing a sweeping update of the KDM and bringing it up to,
>say, 3.19?
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
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

