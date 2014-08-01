Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE79AE006B7; Fri,  1 Aug 2014 04:23:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 601D6E00572
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 04:23:17 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 01 Aug 2014 04:23:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="366673134"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2014 04:20:05 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.239]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.12]) with mapi id
	14.03.0195.001; Fri, 1 Aug 2014 12:23:01 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Zou, Ke (Wind
	River)" <ke.zou@windriver.com>
Thread-Topic: Yocto 1.7_M2 weekly test report
Thread-Index: AQHPrXrzSfu97Dj08k6xdoBejZrU9A==
Date: Fri, 1 Aug 2014 11:23:00 +0000
Message-ID: <D0014CA6.7338%alexandru.c.georgescu@intel.com>
References: <1FFB62CE8AEB0D4298B51122D8903E96219ECD61@IRSMSX104.ger.corp.intel.com>
	<1406883147.13346.199.camel@ted>
In-Reply-To: <1406883147.13346.199.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.3.140616
x-originating-ip: [10.237.108.87]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.7_M2 weekly test report
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
X-List-Received-Date: Fri, 01 Aug 2014 11:23:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D2B1F1C4AA28EE48AF25973C8BA59A60@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Richard,
It may be a mistake in the test run (and I think you are referring to
6443).
Ke, can you have a look at the ADT test runs from here:
https://wiki.yoctoproject.org/wiki/index.php?title=3DWW30_-_2014-07-22_-_We=
ek
ly_-_1.7_M2?

I see that you added 6443 to the test runs but no TC is marked as failed.
If so, can you update them?

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania




On 01/08/14 11:52, "Richard Purdie" <richard.purdie@linuxfoundation.org>
wrote:

>If bug 6442 really still present in M2, or is it resolved?
>
>Cheers,
>
>Richard
>


