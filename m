Return-Path: <yann.dirson@blade-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD170E00D89; Fri, 30 Aug 2019 04:10:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9988E00B7A
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 04:10:24 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id 10so6859403wmp.3
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 04:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=blade-group.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=SDHovO41mcMqHcohz7uRuLJtuV14nKQ8yp3VMujhOU4=;
	b=MM7FEsQr08znwLV+XLzO8HTFLL252Yw+Q4h0zTqleYZgjZe9CUVL5t/7qNJEI8cjDO
	WWDDBFvgUAKwoFXxCbX7m/UnhSJCIB6vDieXKyLqTFRSoz7YoydYIwHR7TMuWBZhxuD1
	PWOb3qoMIVY+BV0XxFfqejvIMfQhQASt1l+zYIS2UWBzfjcAmLcqrO3eDZKrVqIfapug
	e8Iv95UClQAaQ7qbkYAnw0f+bChgdtuOgQg9f7JOaiENia9PebDM9Q1IsdzngVmHEERA
	YHE15PiUaYDcm92Bw43Wj6HA5/VB4jQ////J4tiJxGYsiuPzNlGeZVschM6OYx+ZdbFJ
	1/BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=SDHovO41mcMqHcohz7uRuLJtuV14nKQ8yp3VMujhOU4=;
	b=sQzJQs1SDzIXnAdMIYwzLOoqLbO92QsDUosC3fsAk6aMtC137Y8DF7pLgcxAWhWCtE
	ug0NsrctQA2vH/dsMxfRLmzTpPaz7iioLENnZGm51r21iT5bRMva44QoYWZqU4dGNf38
	jws7fs5TXM6DSB+RdpCXsIARs8UmFaA+u7k0BOq+q6wjcuAb9zhqzQ3OnZ2vBGwQ+I2n
	/CR4wZ7PuSP1Bg6srIzNX0uBaW7PJONcq6MtGJ1uPK1/rB0+RR8L41jdvZ3SvqUONgkT
	uwv2lT5iskXMvU4YcaebSM2PkxzsAUFil4SOZUj+zaMr+gtqIb+oeIDSdMsOBDUhp6b+
	hypQ==
X-Gm-Message-State: APjAAAVUK6nQSUEcsClTp9e+tpAozWOGeJgcbMFbGr9hGjilz3gp9teK
	yKWcNLRFB637csdfbue0A2zjzNakplvCKQ==
X-Google-Smtp-Source: APXvYqyv6yEd4NnlJ5cWietiV9jnPz0TDnhYlJstj2I9CfZwRMFdrH781pbC/iK/ba6j5gFI0Yt8pQ==
X-Received: by 2002:a05:600c:24cb:: with SMTP id
	11mr17394447wmu.94.1567163423097; 
	Fri, 30 Aug 2019 04:10:23 -0700 (PDT)
Received: from yantop.local ([85.118.38.73]) by smtp.gmail.com with ESMTPSA id
	b26sm6217059wmj.14.2019.08.30.04.10.22
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 30 Aug 2019 04:10:22 -0700 (PDT)
From: yann.dirson@blade-group.com
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Date: Fri, 30 Aug 2019 13:07:27 +0200
Message-Id: <20190830110729.11398-1-yann@blade-group.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 02 Sep 2019 05:42:13 -0700
Subject: [psplash][PATCH 1/3] Cleanup poky logo
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
X-List-Received-Date: Fri, 30 Aug 2019 11:10:25 -0000
Content-Transfer-Encoding: 8bit

From: Yann Dirson <yann@blade-group.com>

Make the shipped logo used as source for psplash-poky-img.h to have
the name expected by make-image-header.sh, and remove unused logo.

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 base-images/poky-logo.png                        | Bin 7006 -> 0 bytes
 base-images/{poky-logo2.png => psplash-poky.png} | Bin
 psplash-poky-img.h                               |   1 +
 3 files changed, 1 insertion(+)
 delete mode 100644 base-images/poky-logo.png
 rename base-images/{poky-logo2.png => psplash-poky.png} (100%)

diff --git a/base-images/poky-logo.png b/base-images/poky-logo.png
deleted file mode 100644
index 64520782bb301feb340924c2e911b570b824a89e..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 7006
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

diff --git a/base-images/poky-logo2.png b/base-images/psplash-poky.png
similarity index 100%
rename from base-images/poky-logo2.png
rename to base-images/psplash-poky.png
diff --git a/psplash-poky-img.h b/psplash-poky-img.h
index 76267e6..fff960e 100644
--- a/psplash-poky-img.h
+++ b/psplash-poky-img.h
@@ -1019,3 +1019,4 @@
   "\337\243\377\371\346\264\377\377\363ZE\0\377\363ZE\0\377\363ZE\0\377" \
   "\363ZE\0\377\363ZE\0\377\363ZE\0\377\363ZE\0\217\363ZE\0")
 
+
-- 
2.23.0.rc1


