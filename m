Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D129E00DA3; Fri, 11 Oct 2019 02:19:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 756BEE00D6A
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 02:19:08 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id 3so9468831wmi.3
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 02:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=AcQFkEwiw8dev9ARwI/V2VHVRWVMtco9qQ61hJE7O74=;
	b=mymwSF/cwg1ff6Y2Wa7G3Rjd2VqDQad3xS4J8t8HRY3d61Q2NLG3FKc8ogJW6QK9Rh
	nmC+66yROMqUWxDiwbem0f+DL+yXFSUFe/AOvNb+iBnSoxNFyJy/Ht0X9OhN+F8NPvGX
	zVyRk5UsOhF7xgrnzzkl0ywGZXEfbg+zbFDWIOVmR78GTOdVV9e2SL6Pb7n8be64qU0V
	WBoaAJMhSn/AgBXdCA/w8LfvRsFkOB6bkvpeaDrEl+iPvMqaCAKHccx7eq7Av7Uu41o5
	Pi6gX+p1gJu1rusdTZ1zzmdNLKBc8felU+4RvIDMJtLm4LIatlSs8rP0+1YSd9bsjaql
	7y9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=AcQFkEwiw8dev9ARwI/V2VHVRWVMtco9qQ61hJE7O74=;
	b=E/ERDLf/1n1FsJhr/7LWokx1ly4JCk7G6w61Y6Zz+LlZjCfA/CX+VtuYENB6bCXurQ
	Dr24H2wOSsdh9bV88u0NDJolLni2Iz+w71hsUIUv2E8OHfjuZFVyDSH7ioI7/wDc7CK9
	TrdRlxGNFS8lN1JoRwr7T/VSohw5iSVlWmX4BuyctHaEJpheGSxQbvztejv5o8TXe8Mx
	W8MlS2tSUO0fG7xapo8BtqMMCqL01Eba2Xag1kzQGQd6+b3UAoF1F0qFUjwMbaBNpU4V
	cYehITM2rV4/fdJBi9MREp9+TAY8uKHsepuCY5yJLzZkhkzYW9ZiNoU+rqj0GOzUse/F
	1iLQ==
X-Gm-Message-State: APjAAAXSkhvmGR72GqPQpPuTLKTTzMm+3hwE2MNJJP3NlaXTw3glTC0/
	borLSsw78hWE8GtF4dVuJ/chOStmq70=
X-Google-Smtp-Source: APXvYqxZwYEklJ3joltQuv4BmZlnkl3KorZIjXnRNVNrl5Ywu4I7QZxT4zO/lxaXhSFZTapvfq4l9g==
X-Received: by 2002:a7b:cd83:: with SMTP id y3mr2624801wmj.150.1570785547093; 
	Fri, 11 Oct 2019 02:19:07 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	r18sm12354378wme.48.2019.10.11.02.19.04
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 11 Oct 2019 02:19:05 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Oct 2019 10:19:03 +0100
Message-Id: <20191011091903.2787-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH release-tools] README: add section on contributing patches
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
X-List-Received-Date: Fri, 11 Oct 2019 09:19:11 -0000
Content-Transfer-Encoding: 8bit

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 README | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/README b/README
index ae92709..5a545ce 100644
--- a/README
+++ b/README
@@ -59,7 +59,7 @@ them, and the meta-intel release process, are not covered here.
 
 
 Yocto Release Process
-=======================
+=====================
 
 This section deals with the Yocto release process as it pertains to the tools in
 this repo. There are other release activities that happen which outside the
@@ -110,3 +110,22 @@ repackage the :wq
         logging.info('Generating the master md5sum table.')
         gen_rel_md5(RELEASE_DIR, REL_MD5_FILE)
         logging.info('Successful.')
+
+
+Contributing
+============
+
+This module is owned by Vineela Tummalapalli <vineela.tummalapalli@intel.com>.
+
+Patches should be sent via git-send-email to the yocto@yoctoproject.org mailing list with
+[release-tools] in the subject, CC'd to Vineela.
+
+The following commands will configure this if ran inside a clone of release-tools:
+
+$ git config  --local --add format.subjectprefix 'PATCH release-tools'
+$ git config  --local --add sendemail.to yocto@yoctoproject.org
+$ git config  --local --add sendemail.cc vineela.tummalapalli@intel.com
+
+Then sending a patch is as simple as:
+
+$ git send-email origin/master
-- 
2.20.1


