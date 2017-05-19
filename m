Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE18CE0094C; Fri, 19 May 2017 07:45:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25443E00812
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 07:45:50 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id q125so39219987pgq.2
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 07:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=VSM1La0kkJVVS6MZnZIE55MrW86zfuHQkB5x7ctqNpY=;
	b=YAvSAeLRYTIrd1MrNbw7FhBElJ04CrOLCGJ/zSXNU3RpS7LxhrLDgLUgKBwTfVRWk3
	9Aa8MxpRfLqwLzXhaMKEHwd/rJq/U8kt+vKI684DsxcbyJ/3y9kg1rFcqTvD2uEzCU+P
	kfikgu556AfDaKDadTB8a7nhMHOc/4rmgQpZxTq8zng+FRQeOS/WIEN8druSTbHhLzP4
	gLSiYOG7WmfILbaRkowi0hBpO+iKzMDCa0/PQk9lkZuQ7ZEZmow0ypOWnfurWOaHtpJb
	4BXTRaKp5moHU2+g4v7VwsN6aZV1XuKzc5Ee3PJ4nHjI3piaHZznri1DCetdUQJj7IWA
	AQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=VSM1La0kkJVVS6MZnZIE55MrW86zfuHQkB5x7ctqNpY=;
	b=JhrVzvuURdC+hKUmS+o8XfkLQEaoKnfA9T/efNUs5d2mS8q+HFKToubAV61vjFGd0t
	w5E9wd+fimW8udlMHYF2IuH1nXe5yvOF5p0OMmdh7BV2OaO+ZmBt2v+LXU7OQNQ6KwmE
	lDAiDmP9zvhxVNII8b7M8x7qTQKGjef9qcAWcMvA/KuJ/UrrZQOuzTCTZnFcUhIFXhAC
	xL1zMFTGa8cnq44ls2CWaACvMssenSXtkydS5/XacIA9+XORbkGhB4sV2izAmCzek7bU
	hyuUb1g6s9JYftTmmoenJr8hnVPPK4ptKhYykH0aaE7fqzdX75piLvD8VWsx2dv79pnf
	6JhQ==
X-Gm-Message-State: AODbwcCJPMOTXC+hrHsDPhmsMX7wR3SPt55E4fMrgHiB3pXYiHZL+4er
	xxcWY5wYcAlOEhZK
X-Received: by 10.98.49.198 with SMTP id x189mr10600111pfx.65.1495205150067;
	Fri, 19 May 2017 07:45:50 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:556f:b9ba:b26e:7f00?
	([2601:202:4001:9ea0:556f:b9ba:b26e:7f00])
	by smtp.gmail.com with ESMTPSA id
	z68sm15640496pgz.14.2017.05.19.07.45.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 19 May 2017 07:45:47 -0700 (PDT)
To: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>,
	yocto@yoctoproject.org
References: <1494593691-14182-1-git-send-email-jkrishnanjanappa@mvista.com>
From: akuster <akuster@mvista.com>
Message-ID: <e219871e-c9e1-9b16-1245-dd532618efef@mvista.com>
Date: Fri, 19 May 2017 07:45:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1494593691-14182-1-git-send-email-jkrishnanjanappa@mvista.com>
Subject: Re: [meta-security][morty][PATCH] tpm2.0-tss: Fix build issue with tpm2-abrmd recipe
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
X-List-Received-Date: Fri, 19 May 2017 14:45:52 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 05/12/2017 05:54 AM, Jagadeesh Krishnanjanappa wrote:
> It solves tpm2-abrmd recipe build failure (as mentioned below) as
> none of the tpm2.0-tss header files define MAX_LOADED_OBJECTS1 macro.
> The macro name should be MAX_LOADED_OBJECTS.
> -- snip --
> |                  from ../tpm2-abrmd/src/include/tabrmd.h:31,
> |                  from ../tpm2-abrmd/src/access-broker.c:31:
> | ../tpm2-abrmd/src/access-broker.c: In function 'access_broker_get_trans_object_count':
> | ../tpm2-abrmd/src/access-broker.c:549:34: error: 'MAX_LOADED_OBJECTS1' undeclared (first use in this function)
> -- snip --

merged.
Armin
>
> Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
> ---
>   ...2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch | 29 ++++++++++++++++++++++
>   recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb           |  3 ++-
>   2 files changed, 31 insertions(+), 1 deletion(-)
>   create mode 100644 recipes-tpm/tpm2.0-tss/tpm2.0-tss/0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch
>
> diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss/0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch b/recipes-tpm/tpm2.0-tss/tpm2.0-tss/0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch
> new file mode 100644
> index 0000000..74f82be
> --- /dev/null
> +++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss/0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch
> @@ -0,0 +1,29 @@
> +From 92a0830306c2eb3081b5ac3329f7504cd58d670b Mon Sep 17 00:00:00 2001
> +From: Philip Tricca <philip.b.tricca@intel.com>
> +Date: Thu, 12 Jan 2017 11:55:52 -0800
> +Subject: [PATCH] tss2_tpm2_types.h: Fix broken TRANSIENT_LAST macro.
> +
> +Upstream-Status: Backport
> +
> +Signed-off-by: Philip Tricca <philip.b.tricca@intel.com>
> +Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
> +---
> + include/sapi/tss2_tpm2_types.h | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/include/sapi/tss2_tpm2_types.h b/include/sapi/tss2_tpm2_types.h
> +index 48cc1dc..aa41c06 100644
> +--- a/include/sapi/tss2_tpm2_types.h
> ++++ b/include/sapi/tss2_tpm2_types.h
> +@@ -452,7 +452,7 @@ typedef	TPM_HANDLE TPM_HC;
> + #define	TRANSIENT_FIRST	(HR_TRANSIENT + 0 )	 /* first transient object  */
> + #define	ACTIVE_SESSION_FIRST	(POLICY_SESSION_FIRST )	 /* used in GetCapability  */
> + #define	ACTIVE_SESSION_LAST	(POLICY_SESSION_LAST )	 /* used in GetCapability  */
> +-#define	TRANSIENT_LAST	(TRANSIENT_FIRST+MAX_LOADED_OBJECTS1 )	 /* last transient object  */
> ++#define	TRANSIENT_LAST	(TRANSIENT_FIRST + MAX_LOADED_OBJECTS - 1 )	 /* last transient object  */
> + #define	PERSISTENT_FIRST	(HR_PERSISTENT + 0 )	 /* first persistent object  */
> + #define	PERSISTENT_LAST	(PERSISTENT_FIRST + 0x00FFFFFF )	 /* last persistent object  */
> + #define	PLATFORM_PERSISTENT	(PERSISTENT_FIRST + 0x00800000 )	 /* first platform persistent object  */
> +--
> +2.6.4
> +
> diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
> index c4b5c8c..2910741 100644
> --- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
> +++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
> @@ -7,7 +7,8 @@ SECTION = "tpm"
>   SRCREV = "8e25d0cbb287d30c93b2b77e99bc761dc67e31a9"
>   SRC_URI = " \
>       git://github.com/01org/TPM2.0-TSS.git;protocol=git;branch=master;name=TPM2.0-TSS;destsuffix=TPM2.0-TSS \
> -    file://ax_pthread.m4"
> +    file://ax_pthread.m4 \
> +    file://0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch"
>   
>   inherit autotools pkgconfig
>   


