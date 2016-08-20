Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C222E00DEA; Sat, 20 Aug 2016 10:19:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 401BAE00DDF
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 10:19:43 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id g202so3325258pfb.1
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 10:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=kzAYhclu2+eMtVI9SCv3HavuAedLo7hS0/n3GYJzyCc=;
	b=YTTVltGRajmJakt9J7b5/iBbcQr4ncN1So5kaEYRylPpuQre/Cdytgd/Wu6jJJYUyr
	smGDM8xrOEyRpXU39cMYrEQgmUJiC4bI/9FaKckCya9BKzLaK38DQB32miTgf0UmIQT5
	GIHkdtVQBygVIk6+Fmy5Poj/J9vwhVmB/eUA1CHfkUwMH6DXtN+0bEkkgYyb9sz0ekV6
	hKsIsPH2l/AyP65dN1eQdE9pxe6WSAPvzuM8I/hhZMo+POvF/m4gR7ipxshr41ld5pBL
	irtm8mUjxy5mYs1fwA6m5Ek/ncBkvvTMmZ1SKIjqwU/IFRXaCs9xOZAHLSSP/qfR9elM
	uDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=kzAYhclu2+eMtVI9SCv3HavuAedLo7hS0/n3GYJzyCc=;
	b=XWEYdXkWm75n4fr+s3zMsATySQyK+/qIRxrkXxF2MbpAcgsDLdyU/mVOdPM0AoUoxM
	rnKTk7KXaNs3FzzDBxiBKVYJoGd617jZmjqtW8vHeiZTS46HuS8cBYNeCbwejoGwi5y+
	K3KEdUXqU8Q6/FUHfMXu1qAaWZr9UFRg5HcsSkHWx5Wit0dVj7o3IXwA6dttLEyE0EmY
	/lUgcP6m8VUDzcJJunXTreiELuej5i8bDcvqI2iCWj84zq0jf5X8tRv6meaUlmQChNRp
	k5H5ybZYVUhT4wGAUFAGpqKHK0sZtHIAjJ4s8+3bJzwR7e05lrgODvzwgqNxOTaKZ4Fn
	QJ8g==
X-Gm-Message-State: AEkoouuwvK4FFhaUOvey6HREbXZhTFqynRH3Fp2X6HKOvNeS2NEAHJn2FlNImWSJSI6VDg==
X-Received: by 10.98.30.133 with SMTP id e127mr26101125pfe.104.1471713582967; 
	Sat, 20 Aug 2016 10:19:42 -0700 (PDT)
Received: from localhost.localdomain
	([2600:100f:b006:11d8:c88c:14a3:603f:3b7d])
	by smtp.gmail.com with ESMTPSA id
	f12sm15365466pfj.31.2016.08.20.10.19.39 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 20 Aug 2016 10:19:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Aug 2016 10:19:35 -0700
Message-Id: <1471713575-19243-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] clamav: fix gcc 6.x build failure.
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
X-List-Received-Date: Sat, 20 Aug 2016 17:19:45 -0000

./llvm/include/llvm/Support/AlignOf.h:57:24: error: expected unqualified-id before 'alignof'
 static inline unsigned alignof() { return AlignOf<T>::Alignment; }
                        ^~~~~~~

compile with -std=gnu++98

alt in future is to us llvm3X and configure --with-system-llvm --with-llvm-linking=dynamic.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.2.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
index 184d605..73905a7 100644
--- a/recipes-security/clamav/clamav_0.99.2.bb
+++ b/recipes-security/clamav/clamav_0.99.2.bb
@@ -50,6 +50,8 @@ EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
             --disable-rpath \
             "
 
+CXXFLAGS += "--std=gnu++98"
+
 do_configure () {
     cd ${S}
     ./configure ${CONFIGUREOPTS} ${EXTRA_OECONF} 
-- 
2.7.4


