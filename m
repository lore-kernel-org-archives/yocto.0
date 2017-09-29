Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F1C1E00D91; Thu, 28 Sep 2017 21:26:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA75AE00D8C
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:52 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id i23so263626pfi.2
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=S1AyRQYZq8e1qTn4l/qM9+JgTs6IeWDdr6ZuoXMeK3Y=;
	b=ZiJer2VF0YppSM1m2LYu02b9NDKqmnkP1v6x+eNYql8lciXmzANh5qoHZCCGz7ffUy
	RrTGt3HUbOPHCS+yfXlqLFkpZh1O+F98s4cqDX1FixtE9ml0RbQUXhG6sbaDJ/Y0AzQp
	K/1aEprEr16AoXBKot0qpEIQOg9aA0kTsRXOudaCjLbVCl+6Nkhwsranc1vmkRitd27i
	Et/fHGXBBQAGgKZYX795fZMmgENCBc0LzV07auErXsmcxtkvdnm6Nw7tex7wEhxTtm+w
	v/2GTl1d0EchX6NkbXgHqhbBsPzxjAJ2wCIkbKdudYojRE8sTCVb5GXgjUgeDacDht2w
	LitQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=S1AyRQYZq8e1qTn4l/qM9+JgTs6IeWDdr6ZuoXMeK3Y=;
	b=gleZaPxKgaN2ItL65slBNuytVqS85AdTc3gf528DtRDnm2gbPh/z+d4lSAwQlDhMge
	lhCUkMZVhmkbILMnsiRlcJ0B0NKYrOWOaeQEimNUuchYGoOBy1BspDpL2NHKAWXY1y91
	i+BuempG7m8GbsUK6hxcakBqVI5bMeFYxhAWvLqMqZw107oTxrMz5rhFs5N/RaO28RsB
	MmfqYorE2l6SCyUkxnkupmfjYegL8aSi2AnSpSj+P/p02Podtdz073tz7+urAXIFF5S3
	6LGnLCO3Y1vLPzsN5qrGXjXqypx33yEp9Erl/lEn80a5MEDwimQHs6oxJPjJGN0mwiM/
	MH6w==
X-Gm-Message-State: AHPjjUh5Bycc/n4Ml98aNsgGOt2IFRsE7CjCI9J/8UCM1Qy60wY1ynq3
	dbvaLhS9by6SR46An385r2xXPQ==
X-Google-Smtp-Source: AOwi7QAgtcLD8CHEzk2t8UvL1hhgO6G8f9m0hjEvEs7Kh1WVIEWxMV9THN10VRNkkS84hYD4BDyq4w==
X-Received: by 10.101.91.202 with SMTP id o10mr5998853pgr.373.1506659212692;
	Thu, 28 Sep 2017 21:26:52 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r66sm5060330pfl.15.2017.09.28.21.26.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 21:26:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 21:26:40 -0700
Message-Id: <1506659201-21501-8-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
References: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 7/8] os-release: needed by openscap
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
X-List-Received-Date: Fri, 29 Sep 2017 04:26:53 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/recipes-core/os-release/os-release.bbappend | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 meta-security-compliance/recipes-core/os-release/os-release.bbappend

diff --git a/meta-security-compliance/recipes-core/os-release/os-release.bbappend b/meta-security-compliance/recipes-core/os-release/os-release.bbappend
new file mode 100644
index 0000000..e9fd44a
--- /dev/null
+++ b/meta-security-compliance/recipes-core/os-release/os-release.bbappend
@@ -0,0 +1,4 @@
+OS_RELEASE_FIELDS += "CPE_NAME"
+
+CPE_NAME="cpe:/o:openembedded:nodistro:0"
+
-- 
2.7.4


