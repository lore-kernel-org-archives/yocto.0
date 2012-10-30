Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83385E00498
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 11:19:49 -0700 (PDT)
Received: from mail-gg0-f200.google.com ([209.85.161.200])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 30 Oct 2012 11:19:48 -0700
Received: by mail-gg0-f200.google.com with SMTP id q1so911835ggn.11
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 11:19:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=iWRU7soHyr2/ltUmAPDSq0glIhkkcn3kaLTRj3S0jjA=;
	b=Ait2sI1kz/p+6PcSetIkRSl6SufM2wf9h325OmZZ8SPqSpp9Tb6+e+7L+kT1YrC55V
	U++uyoyzxQ5e3FItl4Ehu8qIHtFm5w33oYAIRbQ8OENBPWDFBvmXQ0bpOhKaTj1UFms5
	dMmbaVfSfxPB4CbUlh2sNw+baw58zj17VBlme7LGbsUm7HgQn+bY39GNh7pAkJYDX8x0
	6gUv6htYiCVLTZb0ffrbozJHPA98zGKpIiyxOxYfA5HwQ7IapjXDb07pQaN//yXwBhTF
	uU8SZ+1+UvIhqdYE1zFSRzNfFMICMHbLSQYF+u9i+ydzYUfpyf5vgkihi926MaEdjXvU
	eP5Q==
Received: by 10.224.78.148 with SMTP id l20mr7933716qak.27.1351621183976;
	Tue, 30 Oct 2012 11:19:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.78.148 with SMTP id l20mr7933709qak.27.1351621183897; Tue,
	30 Oct 2012 11:19:43 -0700 (PDT)
Received: by 10.229.94.206 with HTTP; Tue, 30 Oct 2012 11:19:43 -0700 (PDT)
In-Reply-To: <b3c825a8aa5a4e1d8fd7a861ce48b1de69fbd381.1351616833.git.kishore.k.bodke@intel.com>
References: <cover.1351616833.git.kishore.k.bodke@intel.com>
	<b3c825a8aa5a4e1d8fd7a861ce48b1de69fbd381.1351616833.git.kishore.k.bodke@intel.com>
Date: Tue, 30 Oct 2012 11:19:43 -0700
Message-ID: <CAPhnLPAGipumnCbemDobzwEACD=QUwXdF8YrABa=tvKzjvHNJQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: kishore.k.bodke@intel.com
X-Gm-Message-State: ALoCoQlH7faluEfMjU2S8K4hN5SgzEpIPLb1q6q4BdtKakWUK0gGl+3lnK1U48iaXCcA1xK+Ysa9Pic0cA/sXwKlhicup7r7yL435kzJh2MwGE933gYY+Zt915kCdmdGh9YqX8PLFaJHQXQX6VDY2YEuycarlFoWOA==
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] [meta-intel] meta-intel/common: Add License info for openssl-qat-module
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
X-List-Received-Date: Tue, 30 Oct 2012 18:19:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Oct 30, 2012 at 10:11 AM,  <kishore.k.bodke@intel.com> wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
>
> openssl-qat-module has the dual license. So add GPLv2 and BSD
> License to openssl qat Module.
>
> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  .../openssl-qat-module/openssl-qat-module.bb       |    6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb b/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb
> index a4fe3c5..fdeebbb 100644
> --- a/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb
> +++ b/common/recipes-connectivity/openssl-qat-module/openssl-qat-module.bb
> @@ -7,8 +7,10 @@ implemented on Intel Communications Chipset 89xx Series based platforms."
>  HOMEPAGE = "http://www.openssl.org/"
>  SECTION = "libs/network"
>
> -LICENSE = "openssl"
> -LIC_FILES_CHKSUM = "file://${WORKDIR}/openssl-${PV}/LICENSE;md5=f9a8f968107345e0b75aa8c2ecaa7ec8"
> +LICENSE = "openssl & GPLv2 & BSD"

I'd actually make this:

LICENSE = "OpenSSL & GPLv2 & BSD"

as there is no SPDXLICENSEMAP to map openssl to OpenSSL, so this
should be throwing warnings.

> +LIC_FILES_CHKSUM = "file://${WORKDIR}/openssl-${PV}/LICENSE;md5=f9a8f968107345e0b75aa8c2ecaa7ec8 \
> +                       file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6 \
> +                       file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234cb"
>
>  PV = "1.0.1"
>  PR = "r0"
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

