Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE5ACE00E55; Thu, 18 Jan 2018 19:04:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 609A8E00D7F
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 19:04:16 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w0J34GHX026033
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 19:04:16 -0800 (PST)
Received: from ALA-MBC.corp.ad.wrs.com ([169.254.1.62]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0361.001;
	Thu, 18 Jan 2018 19:04:16 -0800
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [opkg-utils PATCH] update-alternatives: fix the sed
	pattern	in remove_alt
Thread-Index: AQHTkNE5kynq8rnRf02HysutM46jt6N6gkgA
Date: Fri, 19 Jan 2018 03:04:15 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA01566DA1EA@ALA-MBC.corp.ad.wrs.com>
References: <20180119025413.553-1-jackie.huang@windriver.com>
In-Reply-To: <20180119025413.553-1-jackie.huang@windriver.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.177.48]
MIME-Version: 1.0
Subject: Re: [opkg-utils PATCH] update-alternatives: fix the sed pattern	in remove_alt
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
X-List-Received-Date: Fri, 19 Jan 2018 03:04:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sorry I forgot adding opkg-devel, so I just re-sent with opkg-devel added i=
n.

Thanks,
Jackie

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of jackie.huang@windriver.com
> Sent: Friday, January 19, 2018 10:54
> To: yocto@yoctoproject.org
> Subject: [yocto] [opkg-utils PATCH] update-alternatives: fix the sed patt=
ern in
> remove_alt
>=20
> From: Jackie Huang <jackie.huang@windriver.com>
>=20
> '\>' is to matches the end of a word, but the executable is
> not always a 'word', e.g. /usr/lib64/busybox/usr/bin/[
>=20
> then such alternatives can not be removed.
>=20
> So change to use '\s' in the pattern since the following
> character of the $path is whitespace.
>=20
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>  update-alternatives | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/update-alternatives b/update-alternatives
> index ffad853..ce7d66c 100644
> --- a/update-alternatives
> +++ b/update-alternatives
> @@ -80,7 +80,7 @@ remove_alt() {
>  	[ ! -f $ad/$name ] && return 0
>=20
>  	path=3D`echo $path | protect_slashes | protect_special_character`
> -	sed -ne "/^$path\>.*/!p" $ad/$name > $ad/$name.new
> +	sed -ne "/^$path\s.*/!p" $ad/$name > $ad/$name.new
>  	mv $ad/$name.new $ad/$name
>  }
>=20
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

