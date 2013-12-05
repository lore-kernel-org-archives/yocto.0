Return-Path: <david.c.nystrom@gmail.com>
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05824E007AE
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 06:45:01 -0800 (PST)
Received: by mail-la0-f53.google.com with SMTP id ea20so10552297lab.12
	for <yocto@yoctoproject.org>; Thu, 05 Dec 2013 06:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=NLU8sboKCSJZPtPYj/td3rHbMQ9nck25E/l1IjkJWeM=;
	b=nOCmxO8SESElL1SQrbvNgSiU+M9x2b4Wln/frB55V5M3uV6B58RYj0VjiVc0owih2j
	XUA91S3a60NsZgN2iWPNgtqkUxEzTqjZAYf01YcBmNbSMiiDZYFmKzoW/laSdA1FgP7W
	2tanCgOKlCbNN6xDw7tw2aqOtIXtCON4XhgVJQEIuPXMUmesqA5ygW7IlBD/y4gfSNn+
	0hv0e8SjEjjtQz4gnUICYBtGDAsc48pshCSAFuonihQxbjrWV2YJSDRX0eqoSZ7X7XOT
	hJl8AZcvvAY6dJiPoBucKYmmkYNYROdeUw1N3dP5HmX89RmEHotGF1H0mG3UTP82K3sX
	YG3g==
X-Received: by 10.152.184.35 with SMTP id er3mr7456883lac.23.1386254700222;
	Thu, 05 Dec 2013 06:45:00 -0800 (PST)
Received: from nysan (sestofw01.enea.se. [192.36.1.252])
	by mx.google.com with ESMTPSA id
	np10sm50580641lbb.7.2013.12.05.06.44.58 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 05 Dec 2013 06:44:59 -0800 (PST)
Received: by nysan (Postfix, from userid 1000)
	id 242381C5E70; Thu,  5 Dec 2013 15:44:57 +0100 (CET)
From: "=?UTF-8?q?David=20Nystr=C3=B6m?=" <david.c.nystrom@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Dec 2013 15:44:44 +0100
Message-Id: <1386254684-26972-1-git-send-email-david.nystrom@enea.com>
X-Mailer: git-send-email 1.8.3.2
MIME-Version: 1.0
Subject: [yocto-docs][PATCH] Revert "ref-manual: Added sdk-pms to Distro Feature list."
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
X-List-Received-Date: Thu, 05 Dec 2013 14:45:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This reverts commit f8076f1916cc52647b129922c1b1646ad6df8ff9.

sdk-pms is always included, with commit:
Module: openembedded-core.git
Branch: master-next
Commit: 80a8ecf91181f2fbec1a45231615b12949327970
URL:    http://git.openembedded.org/?p=openembedded-core.git&a=commit;h=80a8ecf91181f2fbec1a45231615b12949327970


Signed-off-by: David Nyström <david.nystrom@enea.com>
---
 documentation/ref-manual/ref-features.xml | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-manual/ref-features.xml
index 11e3731..f5641c6 100644
--- a/documentation/ref-manual/ref-features.xml
+++ b/documentation/ref-manual/ref-features.xml
@@ -177,12 +177,6 @@
                     supports it.</para></listitem>
                 <listitem><para><emphasis>wifi:</emphasis> Include WiFi support
                     (integrated only).</para></listitem>
-                <listitem><para><emphasis>sdk-pms:</emphasis> Include Package
-                    Management Tools in the
-                    <filename>nativesdk</filename> toolchain tarball.
-                    Including these tools allows for easy sandbox use when
-                    creating the root filesystem while using the SDK tarball.
-                    </para></listitem>
             </itemizedlist>
         </para>
     </section>
-- 
1.8.3.2


