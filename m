Received: from smtp-fw-80007.amazon.com (smtp-fw-80007.amazon.com [99.78.197.218])
 by mx.groups.io with SMTP id smtpd.web12.2452.1626984310419682117
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 13:05:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=Mg92W3TI;
 spf=pass (domain: amazon.com, ip: 99.78.197.218, mailfrom: prvs=8306fed40=elberger@amazon.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1626984311; x=1658520311;
  h=to:references:from:message-id:date:mime-version:
   in-reply-to:content-transfer-encoding:subject;
  bh=b4ASCflkOWY1pL/wcv6Rj87DjJ2ZNOn19Mo1UfmAjUQ=;
  b=Mg92W3TIxojGlBgv+TyA/3mEPFi2s3tDVInrP2Rzmvao7dptp2HTUUGG
   On2YZUZJp1/JDrnJjOo5KfaKRKM85lpYq2+0miNhGOfFc6pdF1LMEgGFv
   9MCnTzQhRUzBp8S1FqwKoS6yABVU7WCaUiQZUXLOsUicMwaL8p2n4UtpW
   s=;
X-IronPort-AV: E=Sophos;i="5.84,261,1620691200"; 
   d="scan'208";a="14228950"
Subject: Re: [PATCH yocto-autobuilder-helper] Enable canary builds for meta-aws[aws-iot-device-sdk-cpp-v2] on x86-64 and arm64.
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com) ([10.25.36.210])
  by smtp-border-fw-80007.pdx80.corp.amazon.com with ESMTP; 22 Jul 2021 20:05:10 +0000
Received: from EX13MTAUWC002.ant.amazon.com (pdx1-ws-svc-p6-lb9-vlan3.pdx.amazon.com [10.236.137.198])
	by email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com (Postfix) with ESMTPS id 81E34A1E4F
	for <yocto@lists.yoctoproject.org>; Thu, 22 Jul 2021 20:05:09 +0000 (UTC)
Received: from EX13D44UWC004.ant.amazon.com (10.43.162.209) by
 EX13MTAUWC002.ant.amazon.com (10.43.162.240) with Microsoft SMTP Server (TLS)
 id 15.0.1497.23; Thu, 22 Jul 2021 20:05:09 +0000
Received: from EX13MTAUWC001.ant.amazon.com (10.43.162.135) by
 EX13D44UWC004.ant.amazon.com (10.43.162.209) with Microsoft SMTP Server (TLS)
 id 15.0.1497.23; Thu, 22 Jul 2021 20:05:08 +0000
Received: from u795025edef875e.ant.amazon.com (10.106.179.15) by
 mail-relay.amazon.com (10.43.162.232) with Microsoft SMTP Server (TLS) id
 15.0.1497.23 via Frontend Transport; Thu, 22 Jul 2021 20:05:08 +0000
To: <yocto@lists.yoctoproject.org>
References: <20210720110828.30148-1-elberger@amazon.com>
From: elberger@amazon.com
Organization: Amazon Web Services
Message-ID: <cdd1881a-ecdf-85f9-4450-89fcdf2a3698@amazon.com>
Date: Thu, 22 Jul 2021 16:05:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210720110828.30148-1-elberger@amazon.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,

What can I do to move this patch along - or did I miss anything?  
Apologies for my ignorance, it's my first time submitting a patch to YP.

Richard Elberger

On 7/20/21 7:08 AM, rpcme.github@gmail.com wrote:
> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you can confirm the sender and know the content is safe.
>
>
>
> From: Richard Elberger <elberger@amazon.com>
>
> This patch provides the buildbot system to make the aws-iot-device-sdk-cpp-v2.
> - build on poky
> - meta-openembedded and meta-aws are additional repo dependencies
> - build for the two dominant architectures: x86-64 and arm64.
>
> Signed-off-by: Richard Elberger <elberger@amazon.com>
> ---
>   config.json | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
>
> diff --git a/config.json b/config.json
> index 3709b40..f04fac8 100644
> --- a/config.json
> +++ b/config.json
> @@ -350,6 +350,23 @@
>                   "BBTARGETS": "agl-image-core-autobuilder"
>               }
>           },
> +        "meta-aws" : {
> +            "NEEDREPOS" : ["poky", "meta-openembedded", "meta-aws"],
> +            "ADDLAYER" : [
> +                "${BUILDDIR}/../meta-openembedded/meta-oe",
> +                "${BUILDDIR}/../meta-openembedded/meta-networking",
> +                "${BUILDDIR}/../meta-openembedded/meta-python",
> +                "${BUILDDIR}/../meta-aws"
> +            ],
> +            "step1" : {
> +                "MACHINE": "qemux86-64",
> +                "BBTARGETS": "aws-iot-device-sdk-cpp-v2"
> +            },
> +            "step2" : {
> +                "MACHINE": "qemuarm64",
> +                "BBTARGETS": "aws-iot-device-sdk-cpp-v2"
> +            }
> +        },
>          "bringup" : {
>               "BUILDINFO" : true,
>               "SSTATEDIR" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
> --
> 2.17.1
>

-- 
Richard Elberger
Principal Technologist
AWS IoT

+1 646.927.6897
+1 203.942.8039 – mobile
elberger@amazon.com – email

