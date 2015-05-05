Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44F59E009D6; Tue,  5 May 2015 08:54:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4E94E009AF
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 08:54:37 -0700 (PDT)
Received: by widdi4 with SMTP id di4so152320085wid.0
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 08:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=RXpfOtFEFCVzGadxSIbQnzKghKN+lMCHLki/tz9+Few=;
	b=HuPTjXie3F/Zy2SAAd10Ub1iYSLCBfHfmkoD+99bJ87zYVdsLoADur2HBFkJuZlgwq
	l/OAXjsylKHst3xqjEgtG+NLjUR+MIClLEipiAvRj6/tEgVu5XwDlBLPmp1yDF8GlWFT
	AxPdHZNxQ8/eVNcUkRqdwW1IiYO/eBlGs2xVPST9oMv24bnb+VzlOiv9VG1gvzgY4zIk
	gavT1NPXupsnraLP9n59cmWFllc0oIGxfxfD/TNzizG0IEh+sl9aTtK83dGsgBHxgUqx
	4zTs82w33hfzXi1Lf3sNvWDAJmt2JOBbWted4adEey67V7dHEONqXqx6tqw0zhsnrVPS
	h40w==
X-Received: by 10.180.85.42 with SMTP id e10mr5255152wiz.17.1430841276810;
	Tue, 05 May 2015 08:54:36 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id go4sm16799248wib.1.2015.05.05.08.54.36
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 May 2015 08:54:36 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 5 May 2015 17:54:41 +0200
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20150505155441.GE2378@jama>
References: <1430839611-22671-1-git-send-email-akuster808@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1430839611-22671-1-git-send-email-akuster808@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] suricata: Fix QA warnings
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
X-List-Received-Date: Tue, 05 May 2015 15:54:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 05, 2015 at 08:26:51AM -0700, Armin Kuster wrote:
> WARNING: QA Issue: suricata rdepends on nspr, but it isn't a build depend=
ency? [build-deps]
> WARNING: QA Issue: suricata rdepends on nss, but it isn't a build depende=
ncy? [build-deps]

Shouldn't it be build dependency?

>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/suricata/suricata_2.0.7.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/recipes-security/suricata/suricata_2.0.7.bb b/recipes-securi=
ty/suricata/suricata_2.0.7.bb
> index 7e99791..813deff 100644
> --- a/recipes-security/suricata/suricata_2.0.7.bb
> +++ b/recipes-security/suricata/suricata_2.0.7.bb
> @@ -54,4 +54,4 @@ fi
>  FILES_${PN} +=3D "${sysconfdir}/suricata ${logdir}/suricata"
>  FILES_${PN}-dev +=3D "/usr/lib/python2.7/site-packages"
> =20
> -RDEPENDS_${PN} +=3D " python"
> +RDEPENDS_${PN} +=3D " python nspr nss"
> --=20
> 2.3.5
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

