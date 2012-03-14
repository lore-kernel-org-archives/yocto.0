Return-Path: <jiajun.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54A12E0137C
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 08:08:11 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Mar 2012 08:08:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118825482"
Received: from azsmsx603.amr.corp.intel.com ([10.2.161.23])
	by azsmga001.ch.intel.com with ESMTP; 14 Mar 2012 08:08:11 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx603.amr.corp.intel.com (10.2.161.23) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 14 Mar 2012 08:08:10 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.142]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Wed, 14 Mar 2012 23:08:08 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Yocto weekly bug trend charts -- WW10
Thread-Index: Ac0B7A3PJCPTD+7mRh+TJ+y8glcqOgAAqhiAAAAeP/A=
Date: Wed, 14 Mar 2012 15:08:08 +0000
Message-ID: <90741FE9B50D654690EB940EDB456C8E08974C@SHSMSX101.ccr.corp.intel.com>
References: <90741FE9B50D654690EB940EDB456C8E08954E@SHSMSX101.ccr.corp.intel.com>
	<CDED78A957032E45B3239CDDA7642D150849C70B@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <CDED78A957032E45B3239CDDA7642D150849C70B@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: Yocto weekly bug trend charts -- WW10
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Mar 2012 15:08:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Xu, Jiajun
>> Sent: Wednesday, March 14, 2012 7:09 AM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Yocto weekly bug trend charts -- WW10
>>=20
>> Hi all,
>> 	The overall open bug trend increased a lot in last week. WDD number
>> and Open Bug number are 886 and 173. Due to the bugzilla upgrade,
>> some functions do not work, which make QA bug statistic a little
>> late. Bug status of WW10 could be found on
>> https://wiki.yoctoproject.org/wiki/Yocto_Bug_Trend.
>=20
> Thanks! I see a big "fix" rate this week but the WDD went up. Is this
> because most of the fixed bugs were really enhancements?

Sorry, Dave. I made a mistake here. There is auto function missing in curre=
nt version of bugzilla that I have to do everything by manual. I work out t=
he open bug number and WDD number by today. But I only collected the number=
 of NEW/FIX bugs reported during last 7 days, which makes the trend looks a=
bnormal. Now I have updated the trend with correct data only for WW10. The =
WDD number decreased a lot in WDD with more bugs got fixed.
BTW, we do have lots of enh bugs got fixed in this week with WDD number inc=
reased a lot. You may notice that in next week's bug trend.

Best Regards,
Jiajun



