Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 748604C80FD4
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 18:02:21 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Nov 2010 16:02:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,190,1288594800"; d="scan'208";a="857022110"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2010 16:02:20 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 13 Nov 2010 08:02:19 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sat, 13 Nov 2010 08:02:18 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Saul Wold <sgw@linux.intel.com>, Yocto Project Discussion
	<yocto@yoctoproject.org>
Date: Sat, 13 Nov 2010 08:02:17 +0800
Thread-Topic: [yocto] [PULL] multimedia upgrades and disk optmization,
	Dongxiao Xu, 2010/11/12
Thread-Index: AcuCjyKJcoE1UCTCS8Kt9cDMzuSZfwANp/XQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A30215825@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A302157EF@shsmsx501.ccr.corp.intel.com>
	<4CDD7965.6060206@linux.intel.com>
In-Reply-To: <4CDD7965.6060206@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PULL] multimedia upgrades and disk optmization, Dongxiao Xu, 2010/11/12
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
X-List-Received-Date: Sat, 13 Nov 2010 00:02:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Saul Wold wrote:
> On 11/12/2010 03:24 AM, Xu, Dongxiao wrote:
>> Hi Saul,
>>=20
>> This pull request contains some gstreamer recipe upgrades and disk
>> space optimization, please help to review and pull.=20
>>=20
> Dongxiao,
>=20
> Will you have a distro tracking pull request also?

Hi Saul,

Here is the pull request for distro tracking fields.

 meta/conf/distro/include/distro_tracking_fields.inc |   26 ++++++++++-----=
-----
 1 file changed, 13 insertions(+), 13 deletions(-)

Dongxiao Xu (1):
      distro_tracking: Update distro tracking for gstreamer and gst-* recip=
es

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddxu4/dist=
ro

>=20
>> Thanks,
>> Dongxiao
>>=20
>>   meta/classes/sstate.bbclass
> Minor nit, traditional the options go between the command and the
> file list, so I fixed this to be "rm -rf ${SSTATE_BUILDDIR}".=20

Yes you are right, thanks for the fixing.

Thanks,
Dongxiao

>=20
> Sau!
>                                                       |    3
>>   meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.19.bb     =20
>>   |   24
>>   meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb     =20
>>   |   24
>>   meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.29.bb    =20
>>   |   22
>>   meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb    =20
>>   |   22
>>   meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.23.bb    =20
>>   |   19
>>   meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb    =20
>>   |   19
>>   meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.15.bb    =20
>>   |   19
>>   meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb    =20
>>   |   19
>> =20
>> =20
>> =20
>> meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/check_fix.patch=20
>> |   17
>> meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gst-inspect-check-er=
ror.patch
>> |   14
>> meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstregistrybinary.c
>> |  487 ----------
>> meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstregistrybinary.h
>> |  194 ---
>> meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/check_fix.patch=20
>> |   17
>> meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gst-inspect-check-er=
ror.patch
>> |   14
>> meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.c
>> |  487 ++++++++++
>> meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.h
>> |  194 +++ meta/recipes-multimedia/gstreamer/gstreamer_0.10.29.bb  =20
>> |   30 meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb      =20
>> |   30 19 files changed, 829 insertions(+), 826 deletions(-)       =20
>>=20
>> Dongxiao Xu (6):
>>        sstate.bbclass: Remove the temp sstate-build-* directories in
>>        WORKDIR gstreamer: Upgrade to version 0.10.30
>>        gst-plugins-base: Upgraded to version 0.10.30
>>        gst-plugins-good: Upgraded to version 0.10.25
>>        gst-plugins-bad: Upgraded to version 0.10.20
>>        gst-plugins-ugly: Upgraded to version 0.10.16
>>=20
>> Pull URL:
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddxu4/distro
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


