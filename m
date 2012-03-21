Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B18C8E013A5
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 00:35:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Mar 2012 00:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121412789"
Received: from azsmsx603.amr.corp.intel.com ([10.2.161.23])
	by azsmga001.ch.intel.com with ESMTP; 21 Mar 2012 00:34:33 -0700
Received: from chspprodmsx101.amr.corp.intel.com (10.2.67.97) by
	azsmsx603.amr.corp.intel.com (10.2.161.23) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 21 Mar 2012 00:34:33 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	CHSPPRODMSX101.amr.corp.intel.com (10.2.67.97) with Microsoft SMTP
	Server (TLS) id 14.1.355.2; Wed, 21 Mar 2012 00:34:32 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Wed, 21 Mar 2012 15:34:30 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Saul Wold
	<sgw@linux.intel.com>
Thread-Topic: [yocto] [PATCH 0/1] perfer older version of lttng-ust in poky
	distro
Thread-Index: AQHNAbxTu69kEhBJekqt+bLSlYfirZZzcg4AgAAIAACAAOtEEA==
Date: Wed, 21 Mar 2012 07:34:30 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD03652@SHSMSX102.ccr.corp.intel.com>
References: <cover.1331713200.git.lianhao.lu@intel.com>
	<4F6927DC.6030800@linux.intel.com> <4F692E92.3040507@windriver.com>
In-Reply-To: <4F692E92.3040507@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] perfer older version of lttng-ust in poky distro
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
X-List-Received-Date: Wed, 21 Mar 2012 07:35:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Bruce Ashfield wrote on 2012-03-21:
> On 12-03-20 8:59 PM, Saul Wold wrote:
>> On 03/14/2012 01:27 AM, Lianhao Lu wrote:
>>> Set the PREFERRED_VERSION of lttng-ust to use lttng-ust instead of
>>> lttng2-ust in poky distro. This fixed yocto bug #2062.
>>>=20
>>> The lttng2 is very different in terms of architecture and usage model,
>>> compared
>>> to lttng. The eclipse upstream lttng plugin won't be able to support
>>> lttng2 until
>>> the eclipse Juno release(Jun 27th, 2012).
>>>=20
>> This patch seems to break the lttng-2.0/lttng-tools build. Please verify
>> that we can build lttng-2.0 bits or somehow handle both.
>>=20
>> I am not sure the kernel will support the older lttng, in which case
>> using lttng-ust from the older release will not work, so we can not use
>> the eclipse with it anyways.
>=20
> It won't. Since lttng 1.x wasn't ported past 2.6.38 (and released), since
> lttng was moving to 2.x and the new CTF, there wasn't any sense in
> porting it ourselves.
>=20
> That being said, it IS possible for both 1.x and 2.x to co-exist, but
> we don't have the weeks (or the value) in making the port.

Just like Bruce said, I double checked that the older lttng-ust 1.x can wor=
k upon new kernel 3.2.11. So Saul, please ignore this patch. I'll send anot=
her patch to oe-core to change the name of new 2.x lttng-ust to lttng2-ust,=
 so that it's possible to have them co-exist.

Best Regards
-Lianhao

>>=20
>> Sau!
>>=20
>>> The following changes since commit
>>> 8e9f6fc77ac4763f4ed1f6e7b720420c220ba6e2:
>>> Richard Purdie (1):
>>> dates: Fix unpackaged files warning
>>>=20
>>> are available in the git repository at:
>>>=20
>>> git://git.pokylinux.org/poky-contrib llu/bug2062
>>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dllu/bug2062
>>>=20
>>> Lianhao Lu (1):
>>> poky.conf: Prefer lttng-ust instead of lttng2-ust.
>>>=20
>>> meta-yocto/conf/distro/poky.conf | 3 +++
>>> 1 files changed, 3 insertions(+), 0 deletions(-)
>>>=20

