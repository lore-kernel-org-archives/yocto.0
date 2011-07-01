Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F8D94C80A1D
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2011 03:45:15 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Jul 2011 01:45:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,456,1304319600"; d="scan'208";a="22284189"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 01 Jul 2011 01:45:06 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 1 Jul 2011 16:45:00 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 1 Jul 2011 16:45:00 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Fri, 1 Jul 2011
	16:44:59 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'NiQingliang' <niqingliang@insigma.com.cn>, Saul Wold <sgw@linux.intel.com>
Date: Fri, 1 Jul 2011 16:44:58 +0800
Thread-Topic: [yocto] dependency gui problem
Thread-Index: Acw3nIeURvCrwOy2Q7GPbv0WBNryWwALYE6g
Message-ID: <1865303E0DED764181A9D882DEF65FB6A1FA38BB68@shsmsx502.ccr.corp.intel.com>
References: <1309399927.1876.7.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BD@shsmsx502.ccr.corp.intel.com>
	<1309400982.1876.10.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BF@shsmsx502.ccr.corp.intel.com>
	<1309403903.24059.8.camel@localhost.localdomain>
	<4E0D0CEE.1000907@linux.intel.com>
	<1309484065.10559.7.camel@localhost.localdomain>
	<1309484869.10559.9.camel@localhost.localdomain>
	<1309488329.10559.12.camel@localhost.localdomain>
	<1309490029.25082.1.camel@localhost.localdomain>
In-Reply-To: <1309490029.25082.1.camel@localhost.localdomain>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 01 Jul 2011 08:45:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

NiQingliang wrote:
> I have changed that code section, and solved my problem, but I don't
> know if it is the right way.
>=20
>             if isinstance(event, bb.event.CacheLoadCompleted):
>                  pbar.hide()
>                  continue
>             .......
>             if isinstance(event, bb.event.ParseCompleted):
>                  pbar.hide()
>                  continue
>=20
> On Fri, 2011-07-01 at 10:45 +0800, NiQingliang wrote:
>> I have looked the fiel depexp.py, and have some doubt:
>>=20
>> why in "ParseCompleted", the progress bar will hide, but in
>> "CacheLoadCompleted", it will not???????
I guess there should be a ParseCompleted event after the CacheLoadCompleted=
 event(?), but on your host, the ParseCompleted doesn't happen somehow?

I'm not sure your change is ok, because if it's a generic issue, why can't =
I reproduce the issue?

>> I don't think these two events need different process.
>>=20
>>             if isinstance(event, bb.event.CacheLoadCompleted):
>>                 gtk.gdk.threads_enter()
>>                 pbar.update(progress_total, progress_total)
>>                 gtk.gdk.threads_leave()
>>                 continue
>>             .......
>>             if isinstance(event, bb.event.ParseCompleted):         =20
>>                 pbar.hide() continue
>>=20

Thanks,
-- Dexuan

