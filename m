Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BA33E00752; Mon,  5 Jan 2015 23:22:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B23E004F2
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 23:22:42 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2015 23:20:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,706,1413270000"; d="scan'208";a="657386440"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2015 23:22:41 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.55]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.113]) with mapi id
	14.03.0195.001; Tue, 6 Jan 2015 07:22:40 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: William Mills <wmills@ti.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] My config got stuck in the toaster
Thread-Index: AQHQKYGNzJ3Nwy51okK8Jn45OLVuRg==
Date: Tue, 6 Jan 2015 07:22:39 +0000
Message-ID: <D0D18B24.50D10%belen.barros.pena@intel.com>
References: <EC0CC42105A97F4A81EA36CDF61DDAD45CA40387@DLEE11.ent.ti.com>
	<549EFEF1.1040604@ti.com> <D0C5AB88.50A09%belen.barros.pena@intel.com>
	<54AAC194.7050002@ti.com>
In-Reply-To: <54AAC194.7050002@ti.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.6.141106
x-originating-ip: [10.252.172.112]
MIME-Version: 1.0
Subject: Re: My config got stuck in the toaster
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
X-List-Received-Date: Tue, 06 Jan 2015 07:22:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A58B0AF9CE3DCE479C0DC3A2D3F7BAD8@intel.com>
Content-Transfer-Encoding: quoted-printable



On 05/01/2015 22:23, "William Mills" <wmills@ti.com> wrote:

>
>
>On 12/28/2014 02:16 AM, Barros Pena, Belen wrote:
>> On 28/12/2014 00:18, "William Mills" <wmills@ti.com> wrote:
>>
>>> BTW: Building "world" does not look nice in toaster.  It list 100s of
>>> build targets instead of just "world".
>>
>> Anything with "does not look nice in toaster" is probably my problem.
>>
>> Can I ask you to open an issue in Bugzilla for this, so that we can put
>> some thought into how to present 'world' builds?
>>
>
>Done.
>https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7110
>
>Thanks.
>
>I also noticed that the "toaster manual" link in the upper corner of the
>UI links to the Hob manual not the toaster manual.
>
>I am running 1.7 code but the URL in templates/base.html looks OK to me.
>The website seems to be redirecting this to the hob manual.
>
>I filed the following bug against infrastructure with you in CC.
>https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7111

Excellent. Thanks!

Bel=E9n

>
>-- Bill
>
>


