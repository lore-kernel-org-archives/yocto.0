Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E7BDE007DC; Mon,  4 Aug 2014 02:40:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DE09E007D3
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 02:40:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Aug 2014 02:40:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,796,1400050800"; d="scan'208";a="583066757"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga002.jf.intel.com with ESMTP; 04 Aug 2014 02:40:39 -0700
Received: from irsmsx108.ger.corp.intel.com (163.33.3.3) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 4 Aug 2014 10:40:35 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.250]) by
	IRSMSX108.ger.corp.intel.com ([169.254.11.3]) with mapi id
	14.03.0195.001; Mon, 4 Aug 2014 10:40:35 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Patrick Doyle <wpdster@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to determine which tasks bitbake just ran?
Thread-Index: AQHPr8gjysbF8OMKXUKdRpZy5EmXkA==
Date: Mon, 4 Aug 2014 09:40:34 +0000
Message-ID: <D00512A5.46433%belen.barros.pena@intel.com>
References: <CAF_dkJAy-nn0SyUNUNMdSiqpkXHFPZoOeNFgME8w6U4BqMWp-g@mail.gmail.com>
In-Reply-To: <CAF_dkJAy-nn0SyUNUNMdSiqpkXHFPZoOeNFgME8w6U4BqMWp-g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.3.140616
x-originating-ip: [10.237.224.33]
MIME-Version: 1.0
Subject: Re: How to determine which tasks bitbake just ran?
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
X-List-Received-Date: Mon, 04 Aug 2014 09:40:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B758F9276529B64080457F7CF3E32BB7@intel.com>
Content-Transfer-Encoding: quoted-printable



On 12/06/2014 19:53, "Patrick Doyle" <wpdster@gmail.com> wrote:

>But I notice that tmp/work/arm<TAB>/myrecipe still exists, so, in my
>paranoia, I like to rm -rf tmp/work/arm<TAB>/myrecipe just to make
>sure that my clean slate really is clean

Toaster might help with that paranoia thing too ;) It will show you which
tasks are running from scratch (your clean slate really is clean) and
which ones are reusing artefacts.

Cheers

Bel=E9n






