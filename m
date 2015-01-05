Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B96BE00751; Mon,  5 Jan 2015 13:44:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73340E003E3
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 13:44:15 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2015 13:44:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="436789075"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by FMSMGA003.fm.intel.com with ESMTP; 05 Jan 2015 13:31:54 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 5 Jan 2015 13:44:15 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.76]) with mapi id
	14.03.0195.001; Mon, 5 Jan 2015 13:44:15 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] BSP guide refers to meta-fri2 as example for binary/
	data, it has none
Thread-Index: AQHQJF1nW83ytnDKJkqA9TfN+wertZyyF3rw
Date: Mon, 5 Jan 2015 21:44:14 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E908CE@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1412301317080.7369@localhost>
In-Reply-To: <alpine.LFD.2.11.1412301317080.7369@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: BSP guide refers to meta-fri2 as example for binary/ data, it has none
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
X-List-Received-Date: Mon, 05 Jan 2015 21:44:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Tuesday, December 30, 2014 10:20 AM
>To: Yocto discussion list
>Subject: [yocto] BSP guide refers to meta-fri2 as example for binary/ data=
, it
>has none
>
>
>  in sec 1.3.1 of BSP guide, there is an explanation of the README.sources=
 file.
>first, the text suggests that file is mandatory:
>
>"You must include a README.sources in the meta-bsp_name directory."

I understood that for a released BSP to be considered Yocto-compliant, the=
=20
README.sources files is a requirement.
>
>however, as i read it, it's really only necessary when a layer provides so=
me
>binary content in the binary/ subdirectory. the guide then goes on to clai=
m
>that the meta-fri2 layer does just that, but i see no binary content in th=
at layer
>-- in fact, none of the meta-intel sublayers appear to come with binary
>content. so perhaps that part of the guide can be updated to refer to an
>appropriate layer.

The wording here does imply that the sources are the ones used to generate =
the images that would be in the "binary/" directory.  Can someone tell me i=
f it would be more accurate to state that the README.sources file simply in=
dicates where the sources to build the BSP are period... regardless of whet=
her or not any binaries are included in that directory?  Knowing that would=
 help me make sure this section is not mis-leading.  Also, knowing that wou=
ld help me choose an appropriate example to point to for the README.sources=
 file.

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

