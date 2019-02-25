Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA855E00D07; Mon, 25 Feb 2019 07:26:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56882E0095C
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 07:26:22 -0800 (PST)
Received: from trochilidae.toradex.int (unknown [46.140.72.82])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 85A215C1F0E;
	Mon, 25 Feb 2019 16:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1551107782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:
	content-transfer-encoding:content-transfer-encoding:in-reply-to:
	references; bh=KECyGuokAzCNLnN3AW37kX9bCeSNDdTRIncLtAI0i78=;
	b=qG4XrK1Qtf47tVTU18IKlaA+kiwLoLCkH7K7fea+b3Y3AELXRXfFJUXpoXEtLANTCMyVI9
	WvO0xFuPRRF5+9sIFbEj94KKuPKcIYRbvZv9g5pIMOfiCKU4zx4XTp9FozOfPCnXoqzReo
	T8fIQNykTnsZXXZ98XGWzo6VqyAnWwA=
From: Stefan Agner <stefan@agner.ch>
To: yocto@yoctoproject.org
Date: Mon, 25 Feb 2019 16:16:17 +0100
Message-Id: <20190225151619.2754-1-stefan@agner.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: Stefan Agner <stefan.agner@toradex.com>, stefan@agner.ch
Subject: [psplash][PATCH 1/3] add recovered bar.png
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
X-List-Received-Date: Mon, 25 Feb 2019 15:26:24 -0000
Content-Transfer-Encoding: 8bit

From: Stefan Agner <stefan.agner@toradex.com>

While the source files for the main splash image is present in
the source folder base-image, the progress bar isn't. This
patch adds the bar.png recovered from the RLE data in the bar
header file. The tool make-image-header.sh allows to translate
this png back the the header exactly.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 base-images/bar.png | Bin 0 -> 1849 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 base-images/bar.png

diff --git a/base-images/bar.png b/base-images/bar.png
new file mode 100644
index 0000000000000000000000000000000000000000..e2c1f1781cdcfa68c8a664a8b3072344d3aeaf1b
GIT binary patch
literal 1849
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

literal 0
HcmV?d00001

-- 
2.20.1


