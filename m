Return-Path: <prvs=03290f32f=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48D7DE0097C; Thu, 16 May 2019 01:17:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [68.232.133.110 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 May 2019 01:17:13 PDT
Received: from esa9.bmw.c3s2.iphmx.com (esa9.bmw.c3s2.iphmx.com
	[68.232.133.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD405E00942
	for <yocto@lists.yoctoproject.org>;
	Thu, 16 May 2019 01:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1557994634; x=1589530634;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=r0FAhdVD0IyHMzZE6r0YrPy8D+hSFCckv2oiLV42m5M=;
	b=LwisbXvF+kOT7T02n91i0Sueqoa4iXKpBd74FOzARXih8VEDMCo1YKNC
	G8GDCehmpPrx6MDlzXgyCt5l1TFza9AiFq5NuKnHtorE0Yf1BgwLSScrt
	PzjgZihRxlsMrHvtVQAgcthLVWjpqVNbrPAw2ZR18rWOm5BE5I1XS4QgR A=;
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
	esa9.bmw.c3s2.iphmx.com with ESMTP/TLS; 16 May 2019 10:15:16 +0200
Received: from esabb4.muc ([160.50.100.33])  by esagw6.muc with ESMTP/TLS;
	16 May 2019 10:15:13 +0200
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp)
	([160.48.96.46])
	by esabb4.muc with ESMTP/TLS; 16 May 2019 10:15:12 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10j.europe.bmw.corp
	(160.48.96.46) with Microsoft SMTP Server (TLS;
	Thu, 16 May 2019 10:15:12 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.004;
	Thu, 16 May 2019 10:15:12 +0200
From: <Mikko.Rapeli@bmw.de>
To: <martin.jansa@gmail.com>
Thread-Topic: [yocto] [meta-gplv2][warrior][master][PATCH] licenses: restore
	Elfutils-Exception from oe-core
Thread-Index: AQHVC798kI0HxGGC9EabkgSbszgVcQ==
Date: Thu, 16 May 2019 08:15:12 +0000
Message-ID: <20190516081512.GJ3459@hiutale>
References: <20190515105700.22802-1-Martin.Jansa@gmail.com>
In-Reply-To: <20190515105700.22802-1-Martin.Jansa@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.34]
MIME-Version: 1.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-gplv2][warrior][master][PATCH] licenses: restore Elfutils-Exception from oe-core
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
X-List-Received-Date: Thu, 16 May 2019 08:17:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <696F472080AA834AA9BB4A94915670E8@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Wed, May 15, 2019 at 10:57:00AM +0000, Martin Jansa wrote:
> * it's still used by:
>   recipes-devtools/elfutils/elfutils_0.148.bb:LICENSE =3D "(GPL-2+ & Elfu=
tils-Exception)"
> * was removed in oe-core with:
>   http://git.openembedded.org/openembedded-core/commit/?id=3D88188807a6ac=
9bab738a69f6b4caba9ed092d78f
> * causing:
>   do_rootfs: The license listed Elfutils-Exception was not in the license=
s collected for recipe elfutils

Looks good!

Reviewed-by: Mikko Rapeli <mikko.rapeli@bmw.de>

> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  conf/layer.conf             |  2 ++
>  licenses/Elfutils-Exception | 12 ++++++++++++
>  2 files changed, 14 insertions(+)
>  create mode 100644 licenses/Elfutils-Exception
>=20
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 59f6a89..44c6712 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -15,3 +15,5 @@ LAYERVERSION_gplv2 =3D "1"
>  LAYERDEPENDS_gplv2 =3D "core"
> =20
>  LAYERSERIES_COMPAT_gplv2 =3D "warrior"
> +
> +LICENSE_PATH +=3D "${LAYERDIR}/licenses"
> diff --git a/licenses/Elfutils-Exception b/licenses/Elfutils-Exception
> new file mode 100644
> index 0000000..627d769
> --- /dev/null
> +++ b/licenses/Elfutils-Exception
> @@ -0,0 +1,12 @@
> +   This file describes the limits of the Exception under which you are a=
llowed
> +   to distribute Non-GPL Code in linked combination with Red Hat elfutil=
s.
> +   For the full text of the license, please see one of the header files
> +   included with the source distribution or the file COPYING found in th=
e
> +   top level directory of the source.
> +
> +   The Approved Interfaces are the functions declared in the files:
> +
> +   libelf.h
> +   libdw.h
> +   libdwfl.h
> +
> --=20
> 2.17.1
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=

