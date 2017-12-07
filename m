Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 587A4E00D84; Thu,  7 Dec 2017 15:42:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (limon.anibal[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9693E00D7B
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 15:42:55 -0800 (PST)
Received: by mail-oi0-f66.google.com with SMTP id f69so6123821oig.10
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 15:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=GZswMkVN31oq+HfjP/5a3sw127/Zzr/HeKSftTMbRuM=;
	b=dUzgKPEsZEGVGR0gYjOWXnFWJr/BiDiydaSK4zW2tUjcoWsTSICzdShoI/GwfFvxmN
	yF1vCjeSk+tKXKAnjanxabg6u3IfotG7qEBV/tkbY6tl3covNB3HA0WzsoNnxXZ/Rhgo
	slI1jjK4OVZXFOblJ7SITLrK7t9liNfZI+ioKIhB0pMgZULw3NXQoIrs60lszh/h0W2a
	XXWbqJvOFUA+i49xsT82P95eHea0E20goGcWm6eR9UkroTJzoM5AWGc+g8TNNyDCtzq0
	wdxcFD202HpDrTFbMI5k1ficuU+dmaCfE1mNFLO3gcZDQLS/wA9OFCyDHAx3NQVQ5G/B
	fVlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=GZswMkVN31oq+HfjP/5a3sw127/Zzr/HeKSftTMbRuM=;
	b=I+cfV6cYge3cXwSyP/Aem8m2dyzfLDrL/3AHBpO8AFw8so3bFmVQnJduIOAarT11pK
	Y2M3vXxGcvN5sTEJxB4A2uG2j2J3rTcGAN2pJFpuZgcSAZj4sdpqTrgiKZD75w0ex5up
	DH63H6V8zZjUNbEo7HMBt+f3u0hX3NmrYVsFGURYBCCAVkyiaYmPf2RK7zMAzzsTZ44o
	C6XxSALj5s23MDPWNudS5RNFdp1w8N2J9Ad7eYBisQXbzz1pOIBJ1OcqNLR+8Z3olUJo
	o2FCFUaKckaW//a0BWHfUQjis/KUmRrKrjvQzRD7HTM0l2rmg4bfzSKg9gITYY7prLMM
	rrQQ==
X-Gm-Message-State: AJaThX4rq1AtaMvy4NevuI+J504BwdZkd5WzXuxsBOBUNPZqxPQxIuC+
	YjTql3hJ26OI1lNW4LrLClZXenDY
X-Google-Smtp-Source: AGs4zMZS0u5yp0lTaw7yvysH0wl1oxxNkbbr3xIRmHks0Cr7MsNBEQCfbAY1OJcvl9yIRNyHIT7cYw==
X-Received: by 10.202.197.133 with SMTP id v127mr23573522oif.224.1512690174829;
	Thu, 07 Dec 2017 15:42:54 -0800 (PST)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id 68sm2780011oik.1.2017.12.07.15.42.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Dec 2017 15:42:54 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <limon.anibal@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Dec 2017 17:42:46 -0600
Message-Id: <20171207234246.6364-3-limon.anibal@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20171207234246.6364-1-limon.anibal@gmail.com>
References: <20171207234246.6364-1-limon.anibal@gmail.com>
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com,
	=?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
Subject: [ptest-runner][PATCHv2 3/3] README.md: Update to my current email
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
X-List-Received-Date: Thu, 07 Dec 2017 23:42:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <anibal.limon@linaro.org>

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README.md b/README.md
index fedab04..22b36a4 100644
--- a/README.md
+++ b/README.md
@@ -50,7 +50,7 @@ $ mtrace ./ptest-runner $(MALLOC_TRACE)
 
 For contribute please send a patch with subject prefix "[ptest-runner]" to 
 yocto@yoctoproject.org and cc the current maintainer that is Aníbal Limón 
-<anibal.limon@linux.intel.com>.
+<anibal.limon@linaro.org>.
 
 ## Links
 
-- 
2.11.0


