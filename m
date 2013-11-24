Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BFDCE0050E
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 14:19:57 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id e14so5661359iej.14
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 14:19:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=UDVsXFnscw97PbH46I+9m/UiawfLSdGUFisZMwCY8KM=;
	b=L4mw22Y/daINsD6Hhi0WDK1lJRrMGggn0Snlu4ToetyGssw3qKNFGFiCJpLOdGw/vr
	TdmNDjJIsvmUBP2ONJYHiIxlGnYtakbPCeb3VyBKgCqkmPnC0dLrYRFlBpaSqXqb/PHC
	UaJONcdLi1z9hsQsxP6wRjnEUTM43R0onl8nJqvEsAuimDJ9dAVuCggFpNNx86JdFHnh
	oV/F6M4N3dZu64Loql4sbzi4uFx6lNvI8XeMGK43K8xGiMbV806mZcnNAlV++eybZB1o
	08h95gUXMi7/JdYcFKPMqXd1OfuLTPOU3XM+x+7vaioXm/2E715R04w0bRbGMpNvwjyo
	VW5g==
X-Gm-Message-State: ALoCoQmqm7oKHFX39UTqn81QJP1PN3PtAibHhLWfkqVNy1+hdyUuc9u2Mv4hVbi3c0HohobNyqbu
X-Received: by 10.42.204.4 with SMTP id fk4mr14966534icb.31.1385331596733;
	Sun, 24 Nov 2013 14:19:56 -0800 (PST)
Received: from suse64-i7.site (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPSA id x5sm22831918iga.6.2013.11.24.14.19.54
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 24 Nov 2013 14:19:55 -0800 (PST)
From: Trevor Woerner <trevor.woerner@linaro.org>
To: yocto@yoctoproject.org
Date: Sun, 24 Nov 2013 17:19:30 -0500
Message-Id: <1385331570-22164-1-git-send-email-trevor.woerner@linaro.org>
X-Mailer: git-send-email 1.8.4.474.g128a96c
Cc: patches@linaro.org
Subject: [yocto-docs][PATCH] ref-manual: add usage NOTE to IMAGE_FSTYPES
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
X-List-Received-Date: Sun, 24 Nov 2013 22:20:00 -0000

Due to the way in which IMAGE_FSTYPES is processed, it is not possible to
modify it using _append or _prepend. Therefore add a note to the manual to
warn users in case they stumble on this issue.

Signed-off-by: Trevor Woerner <trevor.woerner@linaro.org>
---
 documentation/ref-manual/ref-variables.xml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index fb33791..67ea422 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -2199,6 +2199,15 @@
                     you can choose, see
                     <link linkend='var-IMAGE_TYPES'><filename>IMAGE_TYPES</filename></link>.
                 </para>
+
+                <note>
+                    Due to the way this variable is processed, it is not
+                    possible to update its contents using
+                    <filename>_append</filename> or
+                    <filename>_prepend</filename>. To add one or more
+                    additional options to this variable the
+                    <filename>+=</filename> operator must be used.
+                </note>
             </glossdef>
         </glossentry>
 
-- 
1.8.4.474.g128a96c


