Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31645E00A1E; Mon, 30 Jan 2017 00:45:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F463E003D7
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:10 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 204so31001719pge.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=KHaZIyHXOwFNPvYzvXye5Rskdhw9KRKheJT/PJMaxI4=;
	b=RgZQ9e7usXoVbl43dt0N97q7J+8BS4F0I3HEUsrj9uRsdcOqR0RBJJWJ9uCAV5UuQ2
	pMfqS/uuz9jU4OfZb2OaRsFT9ekgOjEsjO455Nx2Md3c4d64Z4HjzHO/GJYsIHi531Td
	NH2WblH7y8CVlOnc0q1VmGNTttqQwkHhTZST8ivxHgFwRSuNSITH/h4BvzUA/woxXQzm
	XzLO4JHMJu2TIrpSMcU41pdnhuibJsmJPQ6yGmxAOO3sdSDRRmv+EEk8YPtzrVOECLYa
	Hz6WHKg7xTBk3PRIqNrxDEvx5zaYaG7js/NVmjxSPtJLd0MAk1r9Bt2ipNzm5Dq5ADs8
	tnQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=KHaZIyHXOwFNPvYzvXye5Rskdhw9KRKheJT/PJMaxI4=;
	b=cSD84qeVO55nJyVWIoSwY45Hy5bbWrToTnIZroOy1NomFHDBkkbfAI16MqG3WMSM8m
	Go0FjM3u4UjSkafUIyYDUwbdeKcaQ3yuW1d33A/IDfEUjo07kSOP7ddPvCeEhptTN4Lz
	j+BtI4cDc8tMDwW8HaYVx+4k1nA3DxbWihk04co9bTg3/3fvJC4UmdZV0Grn0eSfFxOj
	skYNJTau5ZO6R9KyDp67Xwbib3WJUx12XkxBzZWUHvI3jqsW7Gm9kjQ6WEQ+xEcRP9nT
	6OgKxrDnxurkc/F/hC6xHZ+IMBsTKdfHgA/pyk4YdtuA1Ot3U9x2H+0qyDEXO2rO51QI
	fLtw==
X-Gm-Message-State: AIkVDXJ0BcCnz4gXoNVXQcJXfHOo6tG45y4iONTGJd8pW8Xiv5stUx6ZxUqBeF2pFj7omg==
X-Received: by 10.99.102.70 with SMTP id a67mr23006373pgc.222.1485765910260;
	Mon, 30 Jan 2017 00:45:10 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	82sm30306863pge.42.2017.01.30.00.45.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:09 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-11-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 11/19] glib-2.0: Clean up unnecessary appends that are resolved in oe-core
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:20 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

The changes that are appended for '--enable-include=printf=yes' and
removal of charset.alias are handled in oe-core.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/glib-2.0/glib-2.0_%.bbappend | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index 2accd7aa83..08f726192f 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -1,5 +1,3 @@
-EXTRA_OECONF_mingw32 = "--enable-included-printf=yes ${CORECONF}"
-FILES_${PN}_append_mingw32 = " ${libdir}/charset.alias"
 
 # glib always provides bash-completion output, package the output but prevent
 # the dependency chain on bash (via bash-completion) for mingw32 targets only.
-- 
2.11.0


