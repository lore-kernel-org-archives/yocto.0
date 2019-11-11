Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C36C8E00D72; Mon, 11 Nov 2019 07:45:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE0B8E007AA
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2019 07:45:05 -0800 (PST)
Received: by mail-pf1-f195.google.com with SMTP id v19so10959991pfm.3
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2019 07:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:user-agent:mime-version:content-transfer-encoding;
	bh=0P/2P+/HWNh/Hwv8EyrbmrSyyhprFCsML97xJyk/kc8=;
	b=uMREo+Mm+8JuigduPML6fp3MO7DsMEjqEfbUQ47JY+v1I7wgERd1zfayWScNou7d3i
	3ZwfgJhdicHmbZPKj7mHyZeLBWOyXKKirOoYWvmJXkoRHN4N2rOUFX39EZR2oskfYv0J
	gKbUpjcmH8vOeMEwRAKtm1q3GN9LP4R4rQvPy8JOnDMerrmHRRk33b78WOV4kbuUVEiO
	q7L15NH24JVTCmCfdZJtrolkfWaECDuPMkk4zDP4Bng3ULL7b4cgoZoJo0bUY4ou6Qq0
	H6dy0cn5foTYwZtC4+vfgLo+fNuVXoJCUdhgAaglMQZR3Eg+Y3C4zC4SpXCQC0qF3v1N
	n1bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:user-agent:mime-version
	:content-transfer-encoding;
	bh=0P/2P+/HWNh/Hwv8EyrbmrSyyhprFCsML97xJyk/kc8=;
	b=FKZFXH1AWYWeU8EXleJG57/g+Zwds3f5EJg4Kc5EmSrROtLENBE3AOSaEcUUKVW3XY
	7a1JnoMj1M9z23q/jXxlPk6tPFNIKZ4gS3etkR8OP11wViFg88fBn5cWv96D+M9R744p
	CsRMuVM02i7X/lHbGdN9J0J1/FX2F9mRjlwpHUuoDSdr1mTp4K6m2C71L/vzB++JmYcG
	niUmH1DGDgAH7oK2V9u5aEitJdAa1eTjzobKrs5QMy4f7rNZ7z7QfSFMl6cBeKiQ/vqu
	8yBN6oR8ZKoHWUuGPpkbqWxdCZs+jLPXl1t5KFkPHCZeTZ2ix3wyAbwuHSqCCnwg57/m
	0zig==
X-Gm-Message-State: APjAAAWsFH+/AxPCUkFy9Ry5Dzjc0lHdF1Yj8ZPdDXRregmWlfPe9mqy
	Z7TvKJARRIhAk3uRTlp0enk=
X-Google-Smtp-Source: APXvYqy7SnbSXnDcByyh7uPNEfZbBce5PXKxhk/WW78cOyHY7rhhwiWDwmCiKQZo39o7pvi7ZLff/g==
X-Received: by 2002:aa7:8610:: with SMTP id p16mr30634724pfn.185.1573487104843;
	Mon, 11 Nov 2019 07:45:04 -0800 (PST)
Received: from apollo ([2601:646:8500:1c20::a99e])
	by smtp.gmail.com with ESMTPSA id
	71sm18298156pfx.107.2019.11.11.07.45.03
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 11 Nov 2019 07:45:04 -0800 (PST)
Message-ID: <8c1ee3c40843f5a09ac13b086bb52ad752c16ac9.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: aj.bagwell@gmail.com, yocto@yoctoproject.org
Date: Mon, 11 Nov 2019 07:44:58 -0800
In-Reply-To: <20191111103222.86510-1-aj.bagwell@gmail.com>
References: <20191111103222.86510-1-aj.bagwell@gmail.com>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
Subject: Re: [meta-gplv2][PATCH v2] dosfstools: fix out of bound writes
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
X-List-Received-Date: Mon, 11 Nov 2019 15:45:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-11-11 at 10:32 +0000, aj.bagwell@gmail.com wrote:
> From: AJ Bagwell <anthony.bagwell@hivehome.com>
> 
> Fix write issues where sprintf writes across both name and ext fields
> and drops the final null ternimator outside the struct
> 
> Signed-off-by: AJ Bagwell <anthony.bagwell@hivehome.com>
> ---
>  .../fixing-out-of-bound-writes.patch          | 54
> +++++++++++++++++++
>  .../dosfstools/dosfstools_2.11.bb             |  1 +
>  2 files changed, 55 insertions(+)
>  create mode 100644 recipes-devtools/dosfstools/dosfstools/fixing-
> out-of-bound-writes.patch
> 
> diff --git a/recipes-devtools/dosfstools/dosfstools/fixing-out-of-
> bound-writes.patch b/recipes-devtools/dosfstools/dosfstools/fixing-
> out-of-bound-writes.patch
> new file mode 100644
> index 0000000..f80f5ab
> --- /dev/null
> +++ b/recipes-devtools/dosfstools/dosfstools/fixing-out-of-bound-
> writes.patch
> @@ -0,0 +1,54 @@
> +Fix out of bound write issues where sprintf writes across both
> +name and ext fields and drops the final null ternimator outside the
> struct
> +
> +Upstream-Status: Inappropriate [licensing]
> +We're tracking an old release of dosfstools due to licensing issues.
> +

patch is fine, I wonder if the latest version in OE-Core is also
affected by this issue ?


> +diff --git a/dosfsck/check.c b/dosfsck/check.c
> +index e8c13bb..91177d3 100644
> +--- a/dosfsck/check.c
> ++++ b/dosfsck/check.c
> +@@ -58,6 +58,13 @@ static DOS_FILE *root;
> +     }								
> 	\
> +   } while(0)
> + 
> ++static void de_printf(DIR_ENT *de, const char *pattern, int
> curr_num)
> ++{
> ++    char buffer[12];
> ++    sprintf(buffer, pattern, curr_num);
> ++    memcpy(de->name, buffer, 8);
> ++    memcpy(de->ext, buffer + 8, 3);
> ++}
> + 
> + loff_t alloc_rootdir_entry(DOS_FS *fs, DIR_ENT *de, const char
> *pattern)
> + {
> +@@ -110,7 +117,8 @@ loff_t alloc_rootdir_entry(DOS_FS *fs, DIR_ENT
> *de, const char *pattern)
> + 	}
> + 	memset(de,0,sizeof(DIR_ENT));
> + 	while (1) {
> +-	    sprintf(de->name,pattern,curr_num);
> ++	    de_printf(de, pattern, curr_num);
> ++
> + 	    clu_num = fs->root_cluster;
> + 	    i = 0;
> + 	    offset2 = cluster_start(fs,clu_num);
> +@@ -150,7 +158,7 @@ loff_t alloc_rootdir_entry(DOS_FS *fs, DIR_ENT
> *de, const char *pattern)
> + 	offset = fs->root_start+next_free*sizeof(DIR_ENT);
> + 	memset(de,0,sizeof(DIR_ENT));
> + 	while (1) {
> +-	    sprintf(de->name,pattern,curr_num);
> ++	    de_printf(de, pattern, curr_num);
> + 	    for (scan = 0; scan < fs->root_entries; scan++)
> + 		if (scan != next_free &&
> + 		    !strncmp(root[scan].name,de->name,MSDOS_NAME))
> +@@ -311,8 +319,8 @@ static void auto_rename(DOS_FILE *file)
> +     first = file->parent ? file->parent->first : root;
> +     number = 0;
> +     while (1) {
> +-	sprintf(file->dir_ent.name,"FSCK%04d",number);
> +-	strncpy(file->dir_ent.ext,"REN",3);
> ++	de_printf(&file->dir_ent, "FSCK%04dREN", number);
> ++
> + 	for (walk = first; walk; walk = walk->next)
> + 	    if (walk != file && !strncmp(walk->dir_ent.name,file-
> >dir_ent.
> + 	      name,MSDOS_NAME)) break;
> diff --git a/recipes-devtools/dosfstools/dosfstools_2.11.bb
> b/recipes-devtools/dosfstools/dosfstools_2.11.bb
> index dd543b1..37c2181 100644
> --- a/recipes-devtools/dosfstools/dosfstools_2.11.bb
> +++ b/recipes-devtools/dosfstools/dosfstools_2.11.bb
> @@ -19,6 +19,7 @@ SRC_URI = "
> http://pkgs.fedoraproject.org/repo/pkgs/${BPN}/${BP}.src.tar.gz/407d4
>             file://nofat32_autoselect.patch \
>             file://fix_populated_dosfs_creation.patch \
>             file://0001-Include-fcntl.h-for-getting-loff_t-
> definition.patch \
> +	   file://fixing-out-of-bound-writes.patch \
>  "
>  
>  SRC_URI[md5sum] = "407d405ade410f7597d364ab5dc8c9f6"
> -- 
> 2.17.1
> 


