Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05298E00B47; Fri, 14 Oct 2016 11:04:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCEFFE00404
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 11:04:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 14 Oct 2016 11:04:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,493,1473145200"; d="scan'208";a="1053913421"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by fmsmga001.fm.intel.com with ESMTP; 14 Oct 2016 11:04:22 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 14 Oct 2016 11:04:21 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.16]) by
	ORSMSX153.amr.corp.intel.com ([10.22.226.247]) with mapi id
	14.03.0248.002; Fri, 14 Oct 2016 11:04:17 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: Winfried <winfried_mb2@xmsnet.nl>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [meta-mingw] Patch needed to let linker find lto plugin
Thread-Index: AQHSJkCheJXLNudKDUKv93VjpT9H66CoPJOg
Date: Fri, 14 Oct 2016 18:04:16 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B61189A70C@ORSMSX112.amr.corp.intel.com>
References: <f419ba0dedc9dd5e42222c811d75f486@xmsnet.nl>
In-Reply-To: <f419ba0dedc9dd5e42222c811d75f486@xmsnet.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [meta-mingw] Patch needed to let linker find lto plugin
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
X-List-Received-Date: Fri, 14 Oct 2016 18:04:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Could you please elaborate on what do you mean by "built it as-is".
I tested the meta layer with some cases I considered typical
or most common. (I think I enumerated them in my original
message). Apparently I missed one.

Thanks

Juro


> -----Original Message-----
> From: Winfried [mailto:winfried_mb2@xmsnet.nl]
> Sent: Friday, October 14, 2016 10:26 AM
> To: yocto@yoctoproject.org
> Cc: Bystricky, Juro <juro.bystricky@intel.com>
> Subject: [meta-mingw] Patch needed to let linker find lto plugin
>=20
> Recently the meta-mingw layer was updated to krogoth by Juro Bystricky.
> Thanks !
> However when I build it as-is, the linker fails because it can't load
> the lto plugin.
>=20
> After applying commit a06e473590207f72b11d273a09de2c8a889c381e from
> meta-mingw-contrib (by Mark Hatle), the error disappeared.
>=20
> See:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw-
> contrib/commit/?h=3Dmgh/jetho/meta-
> mingw&id=3Da06e473590207f72b11d273a09de2c8a889c381e
>=20
> regards,
> W. Dobbe

