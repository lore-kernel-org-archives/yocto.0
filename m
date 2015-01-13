Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D899E00873; Tue, 13 Jan 2015 06:57:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91D7EE00823
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 06:57:15 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 13 Jan 2015 06:52:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="439994277"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2015 06:44:25 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.31]) with mapi id
	14.03.0195.001; Tue, 13 Jan 2015 06:57:15 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Trevor Woerner <twoerner@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] PDF manual support
Thread-Index: AdAvPTfs2OLcKNIbRquUaPipNR9tdgARlN8AABCZZcA=
Date: Tue, 13 Jan 2015 14:57:14 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E938C9@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
	<54B53112.6050302@gmail.com>
In-Reply-To: <54B53112.6050302@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: PDF manual support
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
X-List-Received-Date: Tue, 13 Jan 2015 14:57:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Trevor,=20

Are you generating those on your own or are you using the "pdf:" target fro=
m the Makefile that is currently part of the repo?

>-----Original Message-----
>From: Trevor Woerner [mailto:twoerner@gmail.com]
>Sent: Tuesday, January 13, 2015 6:52 AM
>To: Rifenbark, Scott M; Yocto discussion list
>Subject: Re: [yocto] PDF manual support
>
>On 01/13/15 09:28, Rifenbark, Scott M wrote:
>> I am seriously considering dumping the PDF manuals for the 1.8 release. =
 The
>PDF output is less than good and there seems to have been no enthusiasm fo=
r
>this form during the past 4 years.  Comments?
>
>I tend to generate PDFs from git://git.yoctoproject.org/yocto-docs and rea=
d
>those. So as long as I can still generate these on my own I'll be okay wit=
h
>whatever changes work for you.

