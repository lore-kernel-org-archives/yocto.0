Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C81D2E0027B
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 15:00:14 -0700 (PDT)
Received: from mail-gh0-f180.google.com ([209.85.160.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 31 Jul 2012 15:00:14 -0700
Received: by ghbz12 with SMTP id z12so5822606ghb.25
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 15:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=A1R2swzoSrppSpaMunpv4KFrA4+rqfR7VHv+rF9Wtio=;
	b=NTjMe0bD1CNze5Kf059ic+XwfQspCM4h3x8ck5C6z3rzWmzc50l7Dpo1MlOmW1tA9T
	qhL3epMl9r6t/yqGDxaCfpRwEnF4NfkNhmuUhtvCC+baxny2AunIPXlWVmhoQmnOozM4
	dAcZNTVs446W8+773s52C/DAacMMlHJlCRD9f1ryHKIQ7CE+ETaT3cHwS7X4nlMUAdul
	GMYTNL8Li8YFZBmtoE8ozhaf9ojsKDOyKwQ/sMy52WZ8UnpIQ+Ca5V1yUp3t8wZL4aAQ
	HRvq4Er5e3uhRpMsOAmJ4WyMl5luw2i7tw19VbVED/raFWTsfNDvHj/Lyvpw34n1UTx0
	oynA==
Received: by 10.66.84.202 with SMTP id b10mr34838407paz.72.1343772013136;
	Tue, 31 Jul 2012 15:00:13 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id gh9sm1109623pbc.20.2012.07.31.15.00.11
	(version=SSLv3 cipher=OTHER); Tue, 31 Jul 2012 15:00:12 -0700 (PDT)
Message-ID: <5018556C.9070404@intel.com>
Date: Tue, 31 Jul 2012 15:00:12 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1343766958-5092-1-git-send-email-sidebranch.openembedded@gmail.com>
In-Reply-To: <1343766958-5092-1-git-send-email-sidebranch.openembedded@gmail.com>
X-Gm-Message-State: ALoCoQmVRJ8IbxHCgB/QRwyQVYfZR4nuR0ylv569CszDE6Iq2qhOKNUKpP0MHjqlcxmj7S2Eizbp
Subject: Re: [for denzil] kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.
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
X-List-Received-Date: Tue, 31 Jul 2012 22:00:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/31/2012 01:35 PM, sidebranch.openembedded@gmail.com wrote:
> From: Leon Woestenberg <leon@sidebranch.com>
>
> Linux 2.6.x kernels did not (all) have the bounds.h file, so copy
> only iff exists.
>
> (See OE-Core 02ac0d1b65389e1779d5f95047f761d7a82ef7a4)
>
> Signed-off-by: Leon Woestenberg <leon@sidebranch.com>
> ---
>   meta/classes/kernel.bbclass |    5 +++++
>   1 files changed, 5 insertions(+), 0 deletions(-)
>
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index c21ab96..5f6ff66 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -183,6 +183,11 @@ kernel_do_install() {
>   		cp arch/powerpc/lib/crtsavres.o $kerneldir/arch/powerpc/lib/crtsavres.o
>   	fi
>
> +	# Necessary for building modules like compat-wireless.
> +	if [ -f include/generated/bounds.h ]; then
> +		cp include/generated/bounds.h $kerneldir/include/generated/bounds.h
> +	fi
> +
>   	# Remove the following binaries which cause strip errors
>   	# during do_package for cross-compiled platforms
>   	bin_files="arch/powerpc/boot/addnote arch/powerpc/boot/hack-coff \
>

Merged into my sgarman/denzil-next branches:

http://git.openembedded.org/openembedded-core-contrib/log/?h=sgarman/denzil-next

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

If this passes a round of autobuilder tests, I'll be submitting a pull 
request to the official denzil branch shortly thereafter.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

