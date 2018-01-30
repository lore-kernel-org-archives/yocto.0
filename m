Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CDAEE00DCE; Tue, 30 Jan 2018 03:25:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A65FE00D5F
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 03:25:34 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id y3so893528wrh.3
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 03:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=Ip4+fMYw70fegmBEP+Q9YtJ/QXnaSYGDDdWL7z4zcuY=;
	b=D0S57l5+0Gq4ig9q4zV97jYWV6AOlA7myreNB7TkkCPG9IBBi3KzxFV6XOL0p4hooM
	Oxgj1Pjkv/oJ6NZx9uWw7s6Ym0/1CX3r0TzZ2KKz7x02wY1I7L/Pojj8aSyU1NS5XSHS
	IbI1qS1wuU736H7Vm0rphPVP+pnblfW0WcZIMhZbU7CUn2u8zBdi2zDU0eiGxHE5hTZc
	eHCphflPI+NLMImJtUgQuh3kDhQCKo1nI/LUtGZfL90i95JyFu7pAsiAKVQyQAAACYVp
	NYC8YVTm33w9Pev6vO/WK7sLmfNKCy0SqozuCzg8GuoWbbUHhD3qHYjnHI5AfomGGcRA
	8xVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Ip4+fMYw70fegmBEP+Q9YtJ/QXnaSYGDDdWL7z4zcuY=;
	b=dVdbFIhJ00bHFiFQP8cgDIrXwHpmHbZ9xnklAHIDGeBX6r1F/DR0neuUZgbN+ljBBW
	nbtEIKgk4JgS4BD2gAd4e5b7TbW41tXAR3W0qYPNnebD9F46Ywbgebz3/1jJS0pKJo4D
	AAsS9t1NkeV+vDGqNu64kvEte+MBmQUk39N8v5sMihANc7IF6DjV4qmMJ78/+p1Zgsvw
	AtRztQgt3VwIJzyTlbJasYXb5ezgjL81N1PWXF2XWv/WaqwEq9YfDUqh5E/wiK50tue0
	H92HJCCm6xCN03A2l2h1A7n0glR8xMRmAO+kPc5RnaPhHExcqUxzqOxwuYOlfU38EH9v
	r8Dg==
X-Gm-Message-State: AKwxyteKT9tLDdsJy263f5adj2r6rQryw043/pBW2HHwtiiNzVBxbIBN
	sK1YYFj/ne2h98NcrQfPLn9TB8Te
X-Google-Smtp-Source: AH8x226g/HXuPdV7ziyVR/c/KyQwsQhRDO56diUHeAM5eviQuc56oGS1nteUVfsjBfKHMlwy/AHPqw==
X-Received: by 10.223.182.153 with SMTP id j25mr23671935wre.43.1517311533881; 
	Tue, 30 Jan 2018 03:25:33 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	b65sm1527473wrd.26.2018.01.30.03.25.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jan 2018 03:25:33 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Jan 2018 11:25:31 +0000
Message-Id: <20180130112531.11781-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH][meta-mingw] gcc-crosssdk: use oe.utils.str_filter_out
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
X-List-Received-Date: Tue, 30 Jan 2018 11:25:36 -0000

oe_filter_out has been removed from oe-core so use the replacement function.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-devtools/gcc/gcc-crosssdk_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
index b3b843a..d52a16b 100644
--- a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
+++ b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
@@ -1,4 +1,4 @@
-EXTRA_OECONF_mingw32 := "${@oe_filter_out('--with-linker-hash-style=${LINKER_HASH_STYLE}', '${EXTRA_OECONF}', d)}"
+EXTRA_OECONF_mingw32 := "${@oe.utils.str_filter_out('--with-linker-hash-style=${LINKER_HASH_STYLE}', '${EXTRA_OECONF}', d)}"
 PACKAGECONFIG_CONFARGS ?= ""
 EXTRA_OECONF_remove_mingw32 = "--enable-initfini-array"
 EXTRA_OECONF_append_mingw32 = " --disable-initfini-array"
-- 
2.11.0


