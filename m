Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f51.google.com (mail-bk0-f51.google.com
	[209.85.214.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 75C6BE0152B
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 06:09:28 -0800 (PST)
Received: by mail-bk0-f51.google.com with SMTP id ik5so234197bkc.24
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 06:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=5TfDx9iF4erL9ffK8RpW5QNDYOQoy9C71scdl0QSAM0=;
	b=XofiB/xLb/rkG9prF4YCKHRlQjDhdYpvTsqjjGdPPa8RrM9JjeXLosFPvPE8W6plcR
	JpfcQbTJpbtyGebxoNLaVrbjJtrukzhdZL7R+EWwxfetSGjL0+ghHzIP3NPDhMYGHXvI
	wp2A/cupL31zQBzh65qocQUKmOYEf35a5xi5DS8fSw07DNWfLq49FGbbiryVB6Et6vq9
	5ZoyF/TUoUoBK/M1W1FrO9+Zt/KDmGDz/Vj+pFyBHtIez2eC72gkDceUREunFrsOq5QT
	FC09Za6Z53bQGgCOnkpsq30NgYlhHjXVF+5d8PqEGDhKCfIIOs/eslpBmdKUVc6MMmju
	OFOg==
X-Received: by 10.204.147.136 with SMTP id l8mr13097982bkv.138.1362665366863; 
	Thu, 07 Mar 2013 06:09:26 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm742337bkw.5.2013.03.07.06.09.26
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 06:09:26 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Mar 2013 15:09:11 +0100
Message-Id: <1362665352-8259-6-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1362665352-8259-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1362665352-8259-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 5/6] Export the new subpackages of org.yocto.sdk.ide
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
X-List-Received-Date: Thu, 07 Mar 2013 14:09:28 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

---
 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
index b09abb3..0bdaa85 100644
--- a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
@@ -29,6 +29,8 @@ Require-Bundle: org.eclipse.ui,
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Bundle-ActivationPolicy: lazy
 Export-Package: org.yocto.sdk.ide,
+ org.yocto.sdk.ide.natures,
+ org.yocto.sdk.ide.utils,
  org.yocto.sdk.ide.actions,
  org.yocto.sdk.ide.preferences,
  org.yocto.sdk.ide.wizard
-- 
1.7.9.5


