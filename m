Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECFA9E0094C; Tue, 18 Apr 2017 01:21:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBEDEE00839
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 01:20:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v3I8KucG021910
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 01:20:57 -0700
Received: from ALA-MBC.corp.ad.wrs.com ([fe80::fcbe:9b7:1141:89a1]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0294.000;
	Tue, 18 Apr 2017 01:20:55 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-selinux][PATCH] systemd: no need to inherit
	enable-selinux
Thread-Index: AQHSjNhcQPo6l0YwqU2c/0BvM3eht6HLH6GA
Date: Tue, 18 Apr 2017 08:20:55 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B722036@ALA-MBC.corp.ad.wrs.com>
References: <20170222064446.13162-1-jackie.huang@windriver.com>
In-Reply-To: <20170222064446.13162-1-jackie.huang@windriver.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.111]
MIME-Version: 1.0
Subject: Re: [meta-selinux][PATCH] systemd: no need to inherit	enable-selinux
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
X-List-Received-Date: Tue, 18 Apr 2017 08:21:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ping.

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of jackie.huang@windriver.com
> Sent: Wednesday, February 22, 2017 14:45
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-selinux][PATCH] systemd: no need to inherit enable=
-
> selinux
>=20
> From: Jackie Huang <jackie.huang@windriver.com>
>=20
> The selinux PACKAGECONFIG is properly handled in
> the recipe in oe-core, no need to inherit the
> enable-selinux bbclass.
>=20
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>  recipes-core/systemd/systemd_%.bbappend | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/recipes-core/systemd/systemd_%.bbappend b/recipes-
> core/systemd/systemd_%.bbappend
> index 8d9029b..f1bdaf8 100644
> --- a/recipes-core/systemd/systemd_%.bbappend
> +++ b/recipes-core/systemd/systemd_%.bbappend
> @@ -1,2 +1 @@
>  inherit enable-audit
> -inherit enable-selinux
> --
> 2.8.3
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

