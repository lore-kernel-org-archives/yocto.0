Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19611E008ED; Tue,  4 Nov 2014 02:16:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7F3AE00874
	for <yocto@yoctoproject.org>; Tue,  4 Nov 2014 02:16:45 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Nov 2014 02:16:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,312,1413270000"; d="scan'208";a="631034291"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 04 Nov 2014 02:16:44 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Tue, 4 Nov 2014 10:16:37 +0000
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.3]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.125]) with mapi id
	14.03.0195.001; Tue, 4 Nov 2014 10:16:37 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Upper-case letters in package names OK?
Thread-Index: AQHP+BhqCSee8mt2cUGDSWS5Z4jxrg==
Date: Tue, 4 Nov 2014 10:16:36 +0000
Message-ID: <D07E5789.4D2A8%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.5.141003
x-originating-ip: [10.237.224.33]
MIME-Version: 1.0
Subject: Re: Upper-case letters in package names OK?
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
X-List-Received-Date: Tue, 04 Nov 2014 10:16:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B81D36D8EDC95A40BA8281D0B3B540A2@intel.com>
Content-Transfer-Encoding: quoted-printable


On 03/11/2014 14:40, "Vuille, Martin (Martin)" <vmartin@avaya.com> wrote:

>Just noticed in Toaster that for that package it is reporting the package
>name as =B3foo-=B2 instead of =B3foo-Bar=B2.

We'll look into it.

Thanks!

Bel=E9n


