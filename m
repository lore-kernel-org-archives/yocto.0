Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id AEE7CE0154D
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 08:12:17 -0800 (PST)
Received: by mail-we0-f176.google.com with SMTP id s43so8447079wey.35
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 08:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=5TfDx9iF4erL9ffK8RpW5QNDYOQoy9C71scdl0QSAM0=;
	b=P9Xsw3pgPT1YlLq486lg1SkYQEGUqkCzP53+83cP3o9xRBjdCh5cJHCYamdgUHnzEy
	xcRjf15QEKu53xjG2b9GZ2sm5HcvDNrlfcKvwvwezJY0ETGx7BYjnBZtlVv2VsaElz+P
	uFVC+hm2IItkasnz0ZB7RxJ/9oXhYLXRB0olvT7jFqTumqtso+yuBsj/E3KRu6wrugXy
	86fESMPC01kZcFTdDLOxDLfq8KTU+t6K+eeDAUzc2foxqNBL/D6PVhOriWsGjaPDNC8z
	MPnvRYWdKgVFEppDP4Uf5TnFVnOlqdtPC88Brwcx48l9vZlu04qIjA3e3t+AprsE17Ra
	uZ2g==
X-Received: by 10.204.136.197 with SMTP id s5mr11565531bkt.125.1362586336176; 
	Wed, 06 Mar 2013 08:12:16 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id n1sm8513456bkv.14.2013.03.06.08.12.15
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Mar 2013 08:12:15 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Mar 2013 17:11:56 +0100
Message-Id: <1362586316-9655-6-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1362586316-9655-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1362586316-9655-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv2 5/5] Export the new subpackages of org.yocto.sdk.ide
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Mar 2013 16:12:18 -0000

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


