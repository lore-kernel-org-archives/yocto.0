Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8D20E00347
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 13:46:09 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 11 Jul 2012 13:46:08 -0700
Received: by lbbgj3 with SMTP id gj3so1994956lbb.25
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 13:46:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=kv4xNaEVuALwSJaw/iJZKifYl7VVg4p+6LFhNuzq4jw=;
	b=jQAzRQu72kKFptYSE4am1S+unvbiyIPmGyT/e03eAPaBdFKeZMkU5edWMDqHADmkgI
	9FRYvSGOZUtLxq9d6fGYTDgrhzwYE+CHG/YraDM6zeJQDtx16zO5Nd+tthpCQCFoDM60
	yIr5i6ZxF/gWS39IcLisdt9i9zQSP+wduIjUGpk/fQ3npUeAqHb5LYcpx7bmLbicTrT7
	QuWEaG+Z/G6uB5cGxXCNHctjiiEAUESKTCTRutHT+o1kN5+daTLKGes/8np72rHDuM0i
	aeCuOo1Y8oZJjPf1fv7rJUcQcWkUnijgOPkfkntCNz1dC+iNINSKxJDXjbT07RdrQEoD
	v0ew==
MIME-Version: 1.0
Received: by 10.152.109.166 with SMTP id ht6mr50919662lab.46.1342039566764;
	Wed, 11 Jul 2012 13:46:06 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Wed, 11 Jul 2012 13:46:06 -0700 (PDT)
In-Reply-To: <1342029945-10625-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1342029945-10625-1-git-send-email-kevin.strasser@linux.intel.com>
Date: Wed, 11 Jul 2012 13:46:06 -0700
Message-ID: <CAPhnLPBevh9tLyFeQqG_EA24JcoEcPw0s21s07Qo=bcqkfg9DQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
X-Gm-Message-State: ALoCoQlQVJf//H45FRjUB+WXkmtWTLLUq063FoMmLpYlAUJQFjDID1UrZBq7jKqEIesf3gFmYqMZ
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] [meta-baryon] add build documentation
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
X-List-Received-Date: Wed, 11 Jul 2012 20:46:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 11, 2012 at 11:05 AM, Kevin Strasser
<kevin.strasser@linux.intel.com> wrote:
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  README |   24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/README b/README
> index 2a9c77d..8303cdf 100644
> --- a/README
> +++ b/README
> @@ -27,6 +27,30 @@ to yocto@yoctoproject.org with '[meta-baryon]' in the subject.
>
>
>
> +Building the meta-baryon layer
> +------------------------------
> +
> +After you download meta-baryon, be sure to add its location to bblayers.conf.
> +
> +The meta-baryon layer uses the 'lame' package, which has a license that
> +must be whitelisted by adding the string "commercial" to the
> +LICENSE_FLAGS_WHITELIST variable in your local.conf. For example:
> +
> +  LICENSE_FLAGS_WHITELIST = "commercial"
> +
> +Optionally, you can set the DISTRO flag to both identify the image as Baryon
> +and cut down DISTRO_FEATURES to something more appropriate for a headless NAS
> +type device. For example:
> +
> +  DISTRO = "baryon"
> +
> +You should then be able to build the image as such:
> +
> +  $ source oe-init-build-env
> +  $ bitbake baryon-image
> +

This should be '. ./oe-init-build-env' as source is a bash extension
and this would break dash compatibility.

-b

> +
> +
>  License
>  -------
>
> --
> 1.7.9.5
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

