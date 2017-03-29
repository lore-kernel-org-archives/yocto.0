Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29633E00887; Wed, 29 Mar 2017 00:04:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BC20E00839
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 00:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490771084; x=1522307084;
	h=subject:references:to:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=W4kAkzfAVOF8kA3ChNN8snDJQwxgRYZpXRnIPieAYvU=;
	b=sjSZZ7VApVOwf3DTn4FBsDABzZGpnd0ugJ7u5PLMDGup9kTxaGzMS9fB
	0VBefbDNVgNCGwt+hYfX1XB1Fqxcn+z8yM0nXCxwZBHowaLwqyXNdUEB8
	wc4RIDZYGt3f71LqNxzT/IX3u2Mh6SfQG7Kc07K7WKMY9bYQYOMeeVVYg U=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 29 Mar 2017 09:03:42 +0200
References: <1490732744-25547-6-git-send-email-jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
From: Jaap de Jong <jaap.dejong@nedap.com>
X-Forwarded-Message-Id: <1490732744-25547-6-git-send-email-jaap.dejong@nedap.com>
Message-ID: <6ded1927-2ac5-0849-2c29-9fc4c347d9d6@nedap.com>
Date: Wed, 29 Mar 2017 09:03:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490732744-25547-6-git-send-email-jaap.dejong@nedap.com>
Subject: [meta-oracle-java][PATCH 6/6] oracle-jse: Add sources package
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
X-List-Received-Date: Wed, 29 Mar 2017 07:04:47 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

---

  recipes-devtools/oracle-java/oracle-jse.inc | 5 ++++-
  1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index 37685cd..18ef411 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -31,7 +31,10 @@ INSANE_SKIP_${PN} = "${ERROR_QA} ${WARN_QA}"
  # Inhibit warnings about files being stripped, we can't do anything about it.
  INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
  
-FILES_${PN} = "/usr/"
+PACKAGES = "${PN}-sources ${PN}"
+FILES_${PN}-sources = "${JDK_HOME}/src.zip"
+FILES_${PN} = "${JDK_HOME}"
+
  RPROVIDES_${PN} = "java2-runtime java2-vm"
  PROVIDES += "virtual/java"
  
-- 
2.7.4


