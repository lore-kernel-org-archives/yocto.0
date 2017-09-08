Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F737E00CD2; Fri,  8 Sep 2017 13:45:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5600E00B01
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 13:45:15 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id e69so122748pfg.4
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 13:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aC4NwHdv0QLc3/jTGL1A7KPT5SLjNQTWugVoo809ZB0=;
	b=dy2oXRIgslk9Fa19OHOqFQP6YrmCzTn2fljyldgUKIsoPOzPjkeuXwFIdAw+N85F/t
	MpZ3DgYOeC9T/Qnrm7C3Z/msspu/OwZ+eG7WsMqhKRG3jv5TNPO+T3uXVzcZVJ7DtJNb
	xU/1FL5H7POwjv3DYEoo0OQjfJ/BgY15BjxZTwIN7cus5C/AlO9T2B22VXZBjm+vrU6h
	q+uyjEu+8r2x3WSg2L+DtQYwck4ub6dkTpI5dGygBvatUs9EqMk4+2jc0YNj4xO+oJ6/
	NVSJ5hU8g6TpNQUASIWlwuYH+sWWxNqm0Fd8/CgieebztSKuROY7CYj2j+HD++epruqp
	R8xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aC4NwHdv0QLc3/jTGL1A7KPT5SLjNQTWugVoo809ZB0=;
	b=jeRgDrUQPf8NouHB6VCnOpwllHbq3MUh/5BqdzNhax9sdyFwmVduTKwaaKbDaHZ0uQ
	P3ZQ2HhJqeUeFh0fRpt+CG6h5lgDJjoNCm1A+jCHA/+XFfsUiTflPWDQRl+pJR1+yikk
	YAs7LFFDoyrxpHjg6QtNc9A/uTqZyY3/1gAdFt9R+/J10ta4hcCMHuM2Y139sX3ynFcf
	bV7+1rfspHOdoJn3+9g8clfUSc7mRP+xjqJ3DvsF9VUOUXt+6yC/gA1+wkz0deeZMwN6
	qQ5vXUd0FcgdhUxVuMMXU9jzrvcU1rCxBrYyj2MEdW2xaoxHGikhmVbKZRGicwRmK84B
	YSpA==
X-Gm-Message-State: AHPjjUi+BdnZ9A/N/c0rBUaxXqZiQEqKbeSr6qvX1pTCPo+2SStnyg6L
	5oQGvBwUFZUBhMWGUdNd0SmKIvf9pFGSa3P+rxc=
X-Google-Smtp-Source: ADKCNb6GzmT/unntIl1rVpyDP9gNB5VWOiQydkiZfB2SYzan0OBIxxeZnETUN5fv10a8Pfk+xxYy6KYOnzxdkYcRWCE=
X-Received: by 10.98.202.138 with SMTP id y10mr4308887pfk.151.1504903515118;
	Fri, 08 Sep 2017 13:45:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.189.8 with HTTP; Fri, 8 Sep 2017 13:44:44 -0700 (PDT)
In-Reply-To: <1504897181-17561-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1504897181-17561-1-git-send-email-philippe.coval@osg.samsung.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 8 Sep 2017 13:44:44 -0700
Message-ID: <CAMKF1srQLdRbgka6Sy39OZPSeV-vofHAFu+hrNb3=UCcaCvzpw@mail.gmail.com>
To: Philippe Coval <philippe.coval@osg.samsung.com>
Cc: iotivity-dev@lists.iotivity.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, kishen.maloor@intel.com
Subject: Re: [meta-oic][PATCH] iotivity_1.2.1: Hotfix: Add ORIGIN rpath for binutils-2.29
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
X-List-Received-Date: Fri, 08 Sep 2017 20:45:16 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 8, 2017 at 11:59 AM, Philippe Coval
<philippe.coval@osg.samsung.com> wrote:
> Set RPATH to ORIGIN as supported by gcc/ld (-rpath=\$ORIGIN)
>
> Observed issue on poky master was:
>
>   ld: warning: libconnectivity_abstraction.so, \
>   needed by out/yocto/x86_64/release/liboctbstack.so,
>   not found (try using -rpath or -rpath-link)
>   out/yocto/x86_64/release/liboctbstack.so: \
>   undefined reference to `coap_write_block_opt'
>
> Note that problem is also about to be fixed upstream directly in scons files.
>
> Bug: https://jira.iotivity.org/browse/IOT-2651
> Relate-to: https://gerrit.iotivity.org/gerrit/#/c/22355/
> Thanks-to: Mikko Ylinen <mikko.ylinen@intel.com>
> Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
> ---
>
> Origin: https://github.com/tizenteam/meta-oic/tree/sandbox/pcoval/on/master/review
>
>  recipes-core/iotivity/iotivity_1.2.1.bb | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-core/iotivity/iotivity_1.2.1.bb b/recipes-core/iotivity/iotivity_1.2.1.bb
> index c8fb8fd..bd7943e 100644
> --- a/recipes-core/iotivity/iotivity_1.2.1.bb
> +++ b/recipes-core/iotivity/iotivity_1.2.1.bb
> @@ -1,4 +1,4 @@
> -PR = "r1"
> +PR = "r2"

We have PR server these days. So drop this.

>  SUMMARY = "IoTivity framework and SDK sponsored by the Open Connectivity Foundation."
>  DESCRIPTION = "IoTivity is an open source software framework enabling seamless device-to-device connectivity to address the emerging needs of the Internet of Things."
>  HOMEPAGE = "https://www.iotivity.org/"
> @@ -36,6 +36,7 @@ SRC_URI += "${url_mbedtls};name=mbedtls;destsuffix=${S}/extlibs/mbedtls/mbedtls;
>
>  inherit pkgconfig scons
>
> +TARGET_LDFLAGS_append = " -Wl,-rpath-link=\\$$ORIGIN"
>

Can we use LDFLAGS here

>  python () {
>      IOTIVITY_TARGET_ARCH = d.getVar("TARGET_ARCH", True)
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

