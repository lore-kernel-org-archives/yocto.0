Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CEC9E00853; Wed,  4 Mar 2015 02:47:10 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AE07E0076F
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 02:47:01 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2015 02:45:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,687,1418112000"; d="scan'208";a="686682187"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
	by fmsmga002.fm.intel.com with ESMTP; 04 Mar 2015 02:46:47 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.236]) by
	IRSMSX109.ger.corp.intel.com ([169.254.13.103]) with mapi id
	14.03.0195.001; Wed, 4 Mar 2015 10:46:46 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Yang, Liezhi (Wind River)" <liezhi.yang@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [Recipe reporting system] Upgradable recipe name list
Thread-Index: AQHQVmiCTutu2MpPy0K1B3+UiHydcw==
Date: Wed, 4 Mar 2015 10:46:45 +0000
Message-ID: <D11C91BF.559D6%belen.barros.pena@intel.com>
References: <20150302111637.6493.33723@packages.yoctoproject.org>
	<54F6A0FE.1070901@windriver.com>
In-Reply-To: <54F6A0FE.1070901@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.7.141117
x-originating-ip: [10.237.224.79]
MIME-Version: 1.0
Cc: "Limon, Anibal" <anibal.limon@intel.com>
Subject: Re: [Recipe reporting system] Upgradable recipe name list
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
X-List-Received-Date: Wed, 04 Mar 2015 10:47:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8F099BC4BC9F914383FA45609CB6531D@intel.com>
Content-Transfer-Encoding: quoted-printable



On 04/03/2015 06:06, "Robert Yang" <liezhi.yang@windriver.com> wrote:

>
>
>On 03/02/2015 07:16 PM, recipe-report@yoctoproject.org wrote:
>> python-git            0.3.6        0.3/                  Robert Yang
>
>It there anything wrong with the reporting system, please ? Please see
>the "0.3/".

Looks like a bug:

http://packages.yoctoproject.org/rrs/recipedetail/277/

The upgrade to 0.3.6 is listed there.

Could you open an issue in Bugzilla?

Cheers

Bel=E9n


>
>// Robert
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


