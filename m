Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5AA64C800C0
	for <yocto@yoctoproject.org>; Thu, 12 May 2011 21:11:17 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 19:11:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,362,1301900400"; 
   d="scan'208";a="1615946"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2011 19:11:16 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 13 May 2011 10:11:07 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 13 May 2011 10:11:04 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Fri, 13 May 2011 10:11:01 +0800
Thread-Topic: [yocto] [PATCH 0/4][Image Creator]Put extra requested fields
	into	different cache files
Thread-Index: AcwREcIiplinneD+T9i4By6AhDCXQAAAAZrw
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C574854@shsmsx501.ccr.corp.intel.com>
References: <cover.1305250702.git.liping.ke@intel.com>
In-Reply-To: <cover.1305250702.git.liping.ke@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/4][Image Creator]Put extra requested fields into	different cache files
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
X-List-Received-Date: Fri, 13 May 2011 02:11:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Richard
I resend the patch and corrected some problems including:

1) name bitbake_mode -> extracaches
2) move extra cache definition to a different files

And I test against cs (Add files missing from previous change, 	bc367526f85=
ec11f82826fa5ce6607b9e73f9273)

And I did meet the problem of EOF of codeparser.py. But I found you have a =
new changeset for it, so it should be ok.

And I found the mail sequence is not correct (patch 2/4 is the first one...=
).=20
I verified patch 1~4 be applied sequentially, each patch will not break any=
 previous code base:)

As for multiple bitbake_mode support, if you have any input or suggestions,=
 just let me know. I will make the patch for it.
The reason I did not make it right away is that it will cause extra_cache a=
rray related code expanding(time stamping judging, several place etc).
I want to have a confirmation for the current patches and then make further=
 improvement.

Thanks a lot for your help!
criping


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Liping Ke
> Sent: Friday, May 13, 2011 9:50 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [PATCH 0/4][Image Creator]Put extra requested fields int=
o
> different cache files
>=20
> From: Liping Ke <liping.ke@intel.com>
>=20
> Below four patches are for putting extra requested fields inito different
> cache files instead of using only on bb_cache.dat. Now image creator need
> extra three fields. And in the future, there might be more similar reques=
ts.
> For each extra requestor, we will save the requested fields data into a
> separate cache files so that those who don't need it will not be impacted
> with larger fields and large data files.
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lke/cache_impl
>   Browse:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dlke/cache_impl
>=20
> Thanks,
>     Liping Ke <liping.ke@intel.com>
> ---
>=20
>=20
> Liping Ke (4):
>   This patch introduce new param bitbake_mode into Cache.py.
>   This patch splits Cache Data Retrieve method from Data Fields.
>   This patch introduces Extra required fields for image creator.
>   This patch implements independent cache for Extra Cache Fields
>     Request
>=20
>  bitbake/lib/bb/cache.py       |  161
> ++++++++++++++++++++++++++++++++---------
>  bitbake/lib/bb/cooker.py      |   55 ++++++++++----
>  bitbake/lib/bb/extra_cache.py |   29 ++++++++
>  3 files changed, 196 insertions(+), 49 deletions(-)
>  create mode 100644 bitbake/lib/bb/extra_cache.py
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

