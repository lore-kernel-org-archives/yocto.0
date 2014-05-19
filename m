Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5157EE0070F; Mon, 19 May 2014 13:37:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga03.intel.com (unknown [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E12FCE00342
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 13:37:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 May 2014 13:37:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,869,1392192000"; d="scan'208";a="434140891"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 19 May 2014 13:37:04 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 19 May 2014 13:36:59 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX156.amr.corp.intel.com ([169.254.8.176]) with mapi id
	14.03.0123.003; Mon, 19 May 2014 13:36:58 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>
Thread-Topic: [yocto] my recent change to the dylan branch of meta-darwin
Thread-Index: AQHPb9NAMzlWwZxry02Z1CZflmMYu5tI2doA
Date: Mon, 19 May 2014 20:36:58 +0000
Message-ID: <6DC0AFF1-BFCA-4233-A655-0B3E87C2F1FA@intel.com>
References: <B6C50B5A-EFE4-4865-B40C-794A237D1A75@intel.com>
In-Reply-To: <B6C50B5A-EFE4-4865-B40C-794A237D1A75@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.113.53]
MIME-Version: 1.0
Cc: Yocto Project Main <yocto@yoctoproject.org>
Subject: Re: my recent change to the dylan branch of meta-darwin
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
X-List-Received-Date: Mon, 19 May 2014 20:37:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <584D6F58F0A92D4EA4122D0BD870703E@intel.com>
Content-Transfer-Encoding: quoted-printable

Richard, et al=97

Ping? I=92m working on this, but it would help to know whether I should pre=
pare a patch against the current (bad) head of branch or if I should prepar=
e a patch against the previous revision?


=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group

On May 14, 2014, at 17:18, Woodyatt, James <james.woodyatt@intel.com> wrote=
:

> Richard=97
>=20
> I think I broke the meta-darwin layer with this commit.
>=20
>> commit f4122e22257c784e9eb1b564e8ef16cd2e83cd03
>> Author: Woodyatt, James <james.woodyatt@intel.com>
>> Date:   Thu May 1 19:03:41 2014 +0000
>>=20
>>    odcctools2: Remove use of "new typename" constructors
>>=20
>>    These are specific to gcc 4.8 and removing these allows the build
>>    to succeed on host systemd with have gcc 4.7.
>>=20
>>    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>=20
> This fixes the build on GCC 4.4, but it now breaks with GCC 4.6.3.  Not a=
n improvement.  I think this change should be rolled back in the Yocto proj=
ect =91dylan=92 branch.  My sincere apologies for this error.  I will work =
on a better patch that more precisely addresses the issue.
>=20
> =97
> james woodyatt <james.woodyatt@intel.com>
> Software Architect, New Devices Group
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


