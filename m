Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A150E00E67; Thu,  1 Oct 2015 11:25:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F769E00BE9
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:24:56 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so1575676wic.0
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=c46iS+EyJc12jQcZbM7jd/4+gVjwD4aEGScvXFBMMq4=;
	b=iKPKK5vMDuypUi1kEcIhvX63Ol99m4ZGdknVduwmefCajLVQqt+5GGIM8rJ3vK3FjG
	Y+A7AXF5mdLTmHdvMXUnF187Pocqls/sSOmkgeaGPRsEpKWtjfmgNAfTzTSSs+FACw26
	eu7e3iXRhpCVztHHmn7pOHfyNegaQ1/hkOD3FUFiaSPKRN7zIKazXJOgFFhaDR7h5j+N
	n07j/x9niub8/T7t4FV1xlm1obXcypOE9EoWm6Q67ToCWqtb9r6aMG2NOs0uCyH4R1uN
	i5CN8MjjHUstYT9wGr7UGsOlg7cQuQaEhaArB83Dte0QdUEsYyOZB+ViN3b4rTHAUa25
	vMyg==
X-Received: by 10.194.222.227 with SMTP id qp3mr14247324wjc.36.1443723896005; 
	Thu, 01 Oct 2015 11:24:56 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	ht5sm4449049wib.10.2015.10.01.11.24.55 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:24:55 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <03910C1F-B9BB-4913-B31F-ECE232B01747@gmail.com>
Date: Thu, 1 Oct 2015 20:24:55 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 5/7][meta-java] avoid garbadge files making noise when gitting around :)
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
X-List-Received-Date: Thu, 01 Oct 2015 18:25:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 .gitignore | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..51a512c
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,4 @@
+*.bak
+*.orig
+*.rej
+*.swp
-- 
1.9.1

-- 
Jens Rehsack - rehsack@gmail.com


