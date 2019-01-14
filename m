Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 622CAE00CFB; Mon, 14 Jan 2019 06:42:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.42 listed in list.dnswl.org]
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D85CE00CD6
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:19 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id r24so7537162wmh.0
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=tt4mZ4J46nIwAWYu1b8ViQSY3ZHRFmOQMcz9/VPJpbQ=;
	b=xx5jzoQAka3wR8Bl1pcZqjlwLWJMNfXn4C/5M4W3LKViG6wSJcUrPHJS58gc8UYJI4
	VkXC45VLZbeyyRlkg9ujRpIVZ9tCoOBP+W31E19K2rwuE7l3RDhzgpGY7tgUQsOaO6wB
	qO3bhljzrHjq+u5Hjw7R4vRhqKdvbci/qCA9CpdTXBVsIcxabZAMPYITrzHkdR/e7Da2
	Lprzx48JJsYpPkISmsAZleFcvH3i6i0QT4hmlW8CetEkYnCvd4491Ry/Fl/uaJ58qflQ
	0maiNq1CCuIZ2wGkWAn1rYokkUE174e3WLPZ2jZ8YKc7aM4XSmmacLDgeLWs9185CXOe
	A2pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=tt4mZ4J46nIwAWYu1b8ViQSY3ZHRFmOQMcz9/VPJpbQ=;
	b=Qy19Ri27w9yjplD7RjlbJ4yPBd+OSciX+fkllS3q2NAr+jTXzycFRoCBqlG2K/fTP9
	/Z527o3ugmwurzpKas8q4nSkprmsc44JfCE77WYcnx4ZgfkmjRtwsixBg/W4P3tFR8ba
	wSli40oyqKB10AZ+iR/V+p5GSul9SnS/4PyPyhHqppZqBtOR1peDpHdL3ckETE0qNu3x
	vjdU/Gla6nB6jwytmHdycofvEkvrfqKlLPTbRbTi8OOmHMQoUEpykGSqfWqh05D9Ugxw
	E3SXo/p4TTdSNkryCYfeag7pe5IM8UKJkmEd2A9iSk0tcyM+oRoGKplbLZ/As7awrLYL
	jdQQ==
X-Gm-Message-State: AJcUukeHsgzfgWLTGADEaKlqDOA9dLTTtF4vZEh905YEcVktHyVJ6mkc
	Emf1SQUycBkrIBvCIJBBa9iitA29ZVA=
X-Google-Smtp-Source: ALg8bN5pBiG2mFK0VbP220LqBfLVQTmh3nqo/Jd4MCe3uMw8qQvqr2YnRKVK5RCZ7h7tEcolypqLnw==
X-Received: by 2002:a1c:f916:: with SMTP id x22mr12614937wmh.87.1547476938460; 
	Mon, 14 Jan 2019 06:42:18 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.17 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:17 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:42:00 +0000
Message-Id: <20190114144208.14353-3-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 03/11] apparmor: add missing bash dependency
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:20 -0000

testsuite/parser/tst/minimize.sh is a bash script, so until it is reviewed add a
bash dependency to apparmor-ptest.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index e3f8dc9..2cf5b7d 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -156,4 +156,4 @@ ALLOW_EMPTY_${PN} = "1"
 RDEPENDS_${PN} += "bash lsb"
 RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3 python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
-RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib"
+RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
-- 
2.11.0


