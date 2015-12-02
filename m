Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97146E00718; Wed,  2 Dec 2015 03:31:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 406F0E005A2
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 03:30:58 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 02 Dec 2015 03:30:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,372,1444719600"; 
   d="scan'208";a="6110382"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
	by fmsmga004.fm.intel.com with ESMTP; 02 Dec 2015 03:30:39 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.163]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.143]) with mapi id
	14.03.0248.002; Wed, 2 Dec 2015 11:30:37 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Luke  Starrett  (Lucas)" <lstarret@broadcom.com>
Thread-Topic: [yocto] generating shared-state statistics from build
Thread-Index: AQHRLPSfpEmb3wwLIUW2VCme+yBZfJ63j9AA
Date: Wed, 2 Dec 2015 11:30:37 +0000
Message-ID: <D28486CA.6BFF2%belen.barros.pena@intel.com>
References: <DB59870584238C45879465F0A2E5C3F1807544@IRVEXCHMB14.corp.ad.broadcom.com>
	<20151201162313.GB9354@jama>
	<D2848265.6BFCF%belen.barros.pena@intel.com>
In-Reply-To: <D2848265.6BFCF%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.8.151023
x-originating-ip: [10.237.224.34]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: generating shared-state statistics from build
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
X-List-Received-Date: Wed, 02 Dec 2015 11:31:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <FEDC0DF42E06C3459F8071AAD2673A01@intel.com>
Content-Transfer-Encoding: quoted-printable



On 02/12/2015 11:28, "Barros Pena, Belen" <belen.barros.pena@intel.com>
wrote:

>
>On 01/12/2015 16:23, "yocto-bounces@yoctoproject.org on behalf of Martin
>Jansa" <yocto-bounces@yoctoproject.org on behalf of
>martin.jansa@gmail.com> wrote:
>
>>On Tue, Dec 01, 2015 at 03:23:01PM +0000, Luke (Lucas) Starrett wrote:
>>> Hi,
>>>=20
>>> Is there any existing way to track usage of shared state by a build?
>>>In a multi-user environment I'm interesting in knowing how often a build
>>>is hitting in the shared state cache vs. rebuilding.  Typically would
>>>have a globally visible shared state cache mirror updated by a
>>>nightly/periodic build, and a user-level shared state pointed to by one
>>>or more local workspaces.  We would want to understand if we have
>>>excessive cases for which the cache is not used.
>>>=20
>>> I'm sure there's some way I can post-process numerous logs for a given
>>>image to get this info, but thought maybe this has been solved already.
>>
>>Inherit buildstats-summary
>
>Toaster would be another way: the tasks information shows which tasks used
>shared state objects, and which ones tried by didn't. It's explained here:

I meant here

https://www.youtube.com/watch?v=3DD4-9vGSxQtw


Bel=E9n

>
>
>
>
>>
>>--=20
>>Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>


