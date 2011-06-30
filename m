Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2774B4C8007E
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2011 21:18:56 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Jun 2011 19:18:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,446,1304319600"; d="scan'208";a="22142462"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 29 Jun 2011 19:18:54 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 30 Jun 2011 10:18:37 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 30 Jun 2011 10:18:36 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'NiQingliang' <niqingliang@insigma.com.cn>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 30 Jun 2011 10:18:36 +0800
Thread-Topic: [yocto] dependency gui problem
Thread-Index: Acw2yuThfGbB3Lq7QOeVrDPdRR+ilAAAI0Fw
Message-ID: <1865303E0DED764181A9D882DEF65FB6A1F4FC67BD@shsmsx502.ccr.corp.intel.com>
References: <1309399927.1876.7.camel@localhost.localdomain>
In-Reply-To: <1309399927.1876.7.camel@localhost.localdomain>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: dependency gui problem
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
X-List-Received-Date: Thu, 30 Jun 2011 02:18:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

NiQingliang wrote:
> after make build dir, and set env, follow cmd works normally.
> bitbake -g -u depexp core-image-minimal
>=20
> but once builded, the cmd works abnormal, the symptom like that:
What does "once builded" mean?

> the "loading cache" window goes 100% quickly, but after that, the
> window always be there, and the parent window "dependency explorer"
> become no-response. I have waited half an hour, and it still there.
>=20

Thanks,
-- Dexuan=

