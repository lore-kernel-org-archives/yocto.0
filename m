Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52D97E00CD5; Fri, 11 Oct 2019 01:10:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A77CE009E7
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 01:10:24 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id v8so10798564wrt.2
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 01:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=GKNV9N9TO2V5r4j8eHS1dV9Q7fFK9uweVCpRtnfH4fM=;
	b=RjbVyQVTMSxVqk4YaCZmaZFnUyOh9BzA66w1VDcwIVti/Huwf4zT5kqeN7RZf72T2D
	Q40gAuvFE21EchKdoXPZazJu4T7UW5tSUl+llT3pXv65kOLpoDTVnHxvhH/rxAQTLVh+
	vpxv8nxi8EkebfqdG8+lnm3eQy6Y3CzDFOroxWfscv9+UE9X6vet1B4nTEacBLUestZC
	9djo3yvcKrTP4TUO9RWFhfnJ16qilJkFDtgQS2UbQEm/s9YU8+4ifM/hZqs25y8yhwnE
	4DhciTi0jRl+veKYe51+DGZMI5jCHAxvLi79emYmQBIAbvkMb3nW+NEnXNX/B21zJjE6
	ifPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=GKNV9N9TO2V5r4j8eHS1dV9Q7fFK9uweVCpRtnfH4fM=;
	b=DKXWDobKzlsGP3qqbEmq8NGAcoqI/YqBp1lI3TCccZvSPONSZEOmk23Q4UdOH6dZPM
	0pYItuA8GppBjybThQvHtoc+HBGtRmvd7Uui6PCBUMKs1fZj6PvjYmT7ZYP2VFsa5D/r
	pZSrHQZ1zFtFvvNzWtXqS973C4J8KTjePAXgsbN1kLEgEnNVd+S3wBcoodrHgHejhb78
	hd0mV9UQFl7UGQw6dqkE0VRw0VM4cLzgas3CuCN3ON6+e6AGBc/EeikH+Jpl6jMg2Ocm
	N6MDbqvKaHddnpb0akirjB+eBOnuTTHfPcfj7Yd9a2/ws69FJcfqMI1zbVl1I7Z0lKNj
	5Zew==
X-Gm-Message-State: APjAAAWjO2wv0HnjTN1lyTBNTMV5ClqPflkQWaLo+d0QLXpMNkUKz5OA
	X7dThDFtvJE4ylfAso7TrRsvQdZ7QWc=
X-Google-Smtp-Source: APXvYqyqyfTVIOqVe+lx/Kjk0M5ANZaKMI+NAXyZtjYTIQ3QXWM8sZvQvK4Rgc0t2I+0Ly8jAV7s4w==
X-Received: by 2002:adf:e98d:: with SMTP id h13mr11517319wrm.70.1570781423783; 
	Fri, 11 Oct 2019 01:10:23 -0700 (PDT)
Received: from localhost.localdomain (static.8.26.4.46.clients.your-server.de.
	[46.4.26.8]) by smtp.gmail.com with ESMTPSA id
	t123sm13449276wma.40.2019.10.11.01.10.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Oct 2019 01:10:22 -0700 (PDT)
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com
Date: Fri, 11 Oct 2019 10:10:02 +0200
Message-Id: <20191011081002.1645-1-nicolas.dechesne@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] layer.conf: add zeus compatibility
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
X-List-Received-Date: Fri, 11 Oct 2019 08:10:27 -0000
Content-Transfer-Encoding: 8bit

From: Joe MacDonald <joe_macdonald@mentor.com>

Also remove thud and warrior, based on:
f5170305dcff (compat: remove thud from warrior layer compatibility
list)

Since thud or warrior users are expected to use the 'thud' or
'warrior' branch.

Signed-off-by: Nicolas Dechesne <nicolas.dechesne@linaro.org>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 89b9468..226a75a 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -21,7 +21,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "thud warrior"
+LAYERSERIES_COMPAT_selinux = "zeus"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.20.1


