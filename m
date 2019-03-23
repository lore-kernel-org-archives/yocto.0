Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3B0AE00D30; Sat, 23 Mar 2019 08:19:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73FE8E00CE4
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2019 08:19:13 -0700 (PDT)
Received: by mail-pg1-f178.google.com with SMTP id r124so3500037pgr.3
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2019 08:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=G+lsfJ9I2bfWTcGXFK8QkqGqb52jAPkLaPlvPuyM9ic=;
	b=JVeWE5BJ2VERajF7ZjkWanLnfk0RXCuM26g6Io6sua6rigLPjNoak1l59BGhQcVx9E
	cjV9iOWg2b8wZfc2m0O6ZVUSXDt2n8kGceEEYLR7mnfgdhlubrJ9RBArFJdAAh6/iKpK
	XuLb9KwRCqvctH41NsXfrxpFnaWda1amDOdi+3grVW8d74LOUDUl/voD4nuhz33WUX+x
	wX/nIuBuAj+QRYtTypm9jy4Q+iVJGwrtfplKoaqERRAAcNdIp0YILM+nfGPreTZNCg+p
	XrEJdeUf1mbEciGWm0BAS/nS0g5tXuV1LpvGZvhJo76W7v9aLYv/nja+GjEh5OXjeON5
	WQGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=G+lsfJ9I2bfWTcGXFK8QkqGqb52jAPkLaPlvPuyM9ic=;
	b=mTFicBh85NFgqhwYh2po/D7eL+yNguLlQCUM2LyaeLBvk59ugfYSLuW6xnFM1iLWvl
	PZl+vuCaPkF0iDjwuDlakXpf8xtcLp7wMKZbo7j5aCEODvShqS9uo+iCdlcMS4Mxj2qT
	SaJhzbr6ycmy79fK7PJHVEOSmwSDKq+fs22cZiM2duh290A4P43gP/z0Mzsc7myCKtAQ
	svSxJufsU8LlMd8eG5bv4S8kvYR45xefnrGzxDyPxj+oUra+hNmKpMIrkBcuiFkhuymw
	VFSWSP0ksR1X4xPPhAa7+7J0xEKDkqIOWyEMJayeP3xs1TwsuxN51byRJOXxmDNg4rmj
	72CA==
X-Gm-Message-State: APjAAAUPMfMnWKd9NTkAivUYnxGFx8Bgsh1xEPot3gkR1D3s8clngQKi
	NBzmaIRJDH8VG5alGeeOrKfzvtBd
X-Google-Smtp-Source: APXvYqwUqmEHhawGK+11xhgaVxaJReWeMWWFbgBtjgJAo+wBHCXKG/GrBldYUo4GegPhzQ7H1JD6Sg==
X-Received: by 2002:a63:4144:: with SMTP id o65mr14484285pga.241.1553354352776;
	Sat, 23 Mar 2019 08:19:12 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	v19sm10699215pfa.138.2019.03.23.08.19.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 23 Mar 2019 08:19:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 23 Mar 2019 08:19:09 -0700
Message-Id: <20190323151910.14912-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] tpm2.0 prefix: rename to tpm2
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
X-List-Received-Date: Sat, 23 Mar 2019 15:19:14 -0000

this aligns with the rest of the tpm2 recipes

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2.0-tools_3.1.3.bb => tpm2-tools/tpm2-tools_3.1.3.bb}      | 0
 .../{tpm2.0-tss/tpm2.0-tss => tpm2-tss/tpm2-tss}/ax_pthread.m4    | 0
 .../tpm2-tss}/fix_musl_select_include.patch                       | 0
 .../tpm2.0-tss_2.2.1.bb => tpm2-tss/tpm2-tss_2.2.1.bb}            | 0
 4 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-tpm/recipes-tpm2/{tpm2.0-tools/tpm2.0-tools_3.1.3.bb => tpm2-tools/tpm2-tools_3.1.3.bb} (100%)
 rename meta-tpm/recipes-tpm2/{tpm2.0-tss/tpm2.0-tss => tpm2-tss/tpm2-tss}/ax_pthread.m4 (100%)
 rename meta-tpm/recipes-tpm2/{tpm2.0-tss/tpm2.0-tss => tpm2-tss/tpm2-tss}/fix_musl_select_include.patch (100%)
 rename meta-tpm/recipes-tpm2/{tpm2.0-tss/tpm2.0-tss_2.2.1.bb => tpm2-tss/tpm2-tss_2.2.1.bb} (100%)

diff --git a/meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
similarity index 100%
rename from meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.1.3.bb
diff --git a/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/ax_pthread.m4
similarity index 100%
rename from meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/ax_pthread.m4
diff --git a/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fix_musl_select_include.patch
similarity index 100%
rename from meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fix_musl_select_include.patch
diff --git a/meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss_2.2.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
similarity index 100%
rename from meta-tpm/recipes-tpm2/tpm2.0-tss/tpm2.0-tss_2.2.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.1.bb
-- 
2.17.1


