Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBBCEE00C6E; Thu,  7 Jun 2018 07:16:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f51.google.com (mail-pl0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 291A8E00BAA
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 07:16:26 -0700 (PDT)
Received: by mail-pl0-f51.google.com with SMTP id 31-v6so6234858plc.4
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2018 07:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=vnUdrZUd71Vvx6axBObOc3QMXvRTxTdaSe2txTEkYO0=;
	b=Kbb/LhiQsL/5Hdsi43Sj8ArDbnYxkaX8J7L4tSaZ1S5K7s0+kapX7uIo1AHwPTUInY
	DC5APva8fCm57P3qD/UHIBrOzR5tV9p3O2SnAI5ylIcheldLipmFqaCS5I16kYciTDqJ
	iFuihXUSEM+DKyU9LNFeqrJKwwQ46Eq5AhkbHSImw9jan+/wjQAusn438Ym17E6Eifjl
	ujoDmorVDtXwvqjemm7/Y9p/QrRqlpJu2YfPN4OPV/emECaPr81u18Yh7ADl95lTp41A
	tV18lpd4OGV9pqJCjpoWDpnr2FRx+0y+p4bRs0aSe8efOLNuIybBBgjKtZkdV5xiRlya
	GICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=vnUdrZUd71Vvx6axBObOc3QMXvRTxTdaSe2txTEkYO0=;
	b=N3rZW/qUa6P0ivtJrASI40Ly1Gx504jbfF/H6KRNsyG9tSmE8nppPN7wCJHfoRp7q/
	Y3u/hScNlRYruVJy/gH2qVxCGnuTiAPTE1XYe4DRLkJRunZdo6I9ZlZ4APkqU63vNjnS
	Yhwj+fPf1AS2G5Qoxcl0kAlOOEP16RRUr6UfFUm/J3OA88bDChg69zrFCbQ9iZS3u86/
	Rh1KF9WPZInZR68afrWu+trFuuHdMsdSaR5IH0LCKzKUieKu1BIorZnj3mz439rbqBXn
	ul5OxJ9+UWhFTzhegJD/HozzFr/Mi6+pJ9ay8fS+CJ2frPEBjGpLyfb5rPyni15sdLco
	L24w==
X-Gm-Message-State: APt69E01Hq+rECY1UyfdzX3upf6mOn+fUR/4xP2KCn8owLK4Hp0A8mhR
	7SbaOEz42rJWkcsE9L7PnQnOgg==
X-Google-Smtp-Source: ADUXVKKiLLtVlyRvM5eMD5DFRi4rOA0gurEUQQT0HZZjeOG++GrI3r7QCkA9+UNgiX4bxQfrjag02Q==
X-Received: by 2002:a17:902:9344:: with SMTP id
	g4-v6mr2304833plp.10.1528380986425; 
	Thu, 07 Jun 2018 07:16:26 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:877f:9499::c68])
	by smtp.gmail.com with ESMTPSA id
	a11-v6sm89001514pgn.64.2018.06.07.07.16.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Jun 2018 07:16:25 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: juro.bystricky@intel.com,
	yocto@yoctoproject.org
Date: Thu,  7 Jun 2018 07:16:27 -0700
Message-Id: <20180607141627.30959-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180607141627.30959-1-raj.khem@gmail.com>
References: <20180607141627.30959-1-raj.khem@gmail.com>
Subject: [meta-mingw][PATCH 2/2] pthreads-win32: Disable ssp for pthreads-win32
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
X-List-Received-Date: Thu, 07 Jun 2018 14:16:27 -0000

It compiles before gcc-runtime so ssp is not
yet available

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb b/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
index b462431..d9cd94e 100644
--- a/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
+++ b/recipes-devtools/pthreads-win32/pthreads-win32_2.9.1.bb
@@ -49,3 +49,5 @@ do_install() {
     install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/libpthread-2.dll
     install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/pthreadGC2.dll
 }
+
+SECURITY_CFLAGS_remove_mingw32 = "-fstack-protector-strong"
-- 
2.17.1


