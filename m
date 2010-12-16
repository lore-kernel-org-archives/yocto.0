Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6106E4C80BCF
	for <yocto@yoctoproject.org>; Wed, 15 Dec 2010 19:58:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Dec 2010 17:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,352,1288594800"; d="scan'208";a="868736933"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2010 17:58:45 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 09:58:10 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 16 Dec 2010 09:58:09 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Saul Wold <sgw@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 16 Dec 2010 09:58:08 +0800
Thread-Topic: [yocto] [PATCH 0/1] bug#565: adding environment files
Thread-Index: Acua+bT3VViNHYGaQsqdzfzQC+6QWgByl73g
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1D26A616C1@shsmsx502.ccr.corp.intel.com>
References: <cover.1292242072.git.lianhao.lu@intel.com>
	<4D06701B.807@linux.intel.com>
In-Reply-To: <4D06701B.807@linux.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/1] bug#565: adding environment files
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
X-List-Received-Date: Thu, 16 Dec 2010 01:58:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Saul,

I've fixed and resubmitted the patch. Sorry for not following the patch sub=
mission convention.

Best Regards,
-Lianhao=20

Saul Wold wrote on 2010-12-14:
> On 12/13/2010 04:07 AM, Lianhao Lu wrote:
>> I rebased the previous patch of adding package of environment files
>> to be compatible with the new cross-canadian.bbclass
>>=20
> Lianhao,
>=20
> This may require Richard to look at a little more closely, I do notice
> that you are missing the LIC_FILES_CHKSUM, for this on you can use one
> similar to recipes-core/tasks/task-base.bb
>=20
> The first line of the commit message synopsis needs to be more
> descriptive, and the bug id needs to be in the commit message so that
> we can parse it out later.
>=20
> Synopsis is normally
> <recipe | file> : Synopsis
>=20
> Example:
> meta-environment: Added package of meta-environment-${TARGET_ARCH} for
> environment files.
>=20
> In the body of the commit message you can add the bug id according to
> this format:
>=20
> [BUGID# NNN], where NNN is the bugid
>=20
> Please fix these issues and resubmit, also you should use the
> poky@yoctoproject.org for bug submissions.
>=20
> Sau!
>=20
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: llu/bug565
>>    Browse:
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dllu/bug565
>>=20
>> Thanks,
>>      Lianhao Lu<lianhao.lu@intel.com>
>> ---
>>=20
>>=20
>> Lianhao Lu (1):
>>    Fix bug #565.
>>   meta/classes/toolchain-scripts.bbclass         |   32 ++++++++++
>>   meta/recipes-core/meta/meta-environment.bb     |   74
>>   ++++++++++++++++++++++++
>>   meta/recipes-core/tasks/task-cross-canadian.bb |    1 + 3 files
>>   changed, 107 insertions(+), 0 deletions(-) create mode 100644
>>   meta/recipes-core/meta/meta-environment.bb
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Best Regards,
Lianhao



