Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E361E014FC
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:51 -0700 (PDT)
Received: by mail-bk0-f48.google.com with SMTP id jf3so772302bkc.35
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 06:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=bKKLAmhH05Ql9oUT0z2QzgTfcuPK+kZpmBvUNjKB0UI=;
	b=q/Mt8Qf4wkIPdko84vQa1FLMb+Io11Jzj/6JRBkYvez4nyS+uvTzQ9EJ5pdSGNMOvG
	XHSKnMR2JHchlttiWPjj7bowKP8zQDRogwR0sfOaLLNowoSeBx8iAIbMj6puAsFAMSlt
	3R+Z8ggOdwUSSW0kNSYGFMSwC8+gr6rrRrlx5N/R2y/KTODZekhckP987pM4IKlMJIHY
	EQBg/m0rc0B4jagBHSxsE/Dgzq/bOLL8ArhyvSWzE0An78EdHCHTTQ+z1+TJCNDTsP4K
	vCYmo097E1Ym1yj7A5235F/yImIRUehbcpSVJQsrvEjqOZ+BYHqGnADPslx0YtCSrVgN
	L1pQ==
X-Received: by 10.204.190.81 with SMTP id dh17mr2298511bkb.15.1366205390362;
	Wed, 17 Apr 2013 06:29:50 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id gy3sm2111386bkc.16.2013.04.17.06.29.49
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 17 Apr 2013 06:29:49 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 15:29:25 +0200
Message-Id: <1366205365-8843-11-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366205365-8843-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv3 10/10] plugins/sdk.ide: Extracted error message to YoctoSDKMessages
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
X-List-Received-Date: Wed, 17 Apr 2013 13:29:51 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Improved the i18n ability.
---
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |    1 +
 .../NewYoctoAutotoolsProjectPostProcess.java       |    8 ++++----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 67087f0..4ff1574 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -100,3 +100,4 @@ LaunchConfig.Location.Attr = org.eclipse.ui.externaltools.ATTR_LOCATION
 LaunchConfig.Arguments.Attr = org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS;
 
 AutotoolsProjectPostProcess.WrongProjectNature = {0} is not an Autotools project
+AutotoolsProjectPostProcess.ChmodFailure = Failed to make autogen.sh executable for project: {0}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
index cb187e9..f467dac 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
@@ -65,16 +65,16 @@ public class NewYoctoAutotoolsProjectPostProcess extends ProcessRunner {
 
 					int exitVal = proc.waitFor();
 					if (exitVal != 0) {
-						throw new ProcessFailureException("Failed to make autogen.sh executable for project: " + projectName); //$NON-NLS-1$
+						throw new ProcessFailureException(
+								YoctoSDKMessages.getFormattedString("AutotoolsProjectPostProcess.ChmodFailure", //$NON-NLS-1$
+										projectName));
 					}
 				} catch (Throwable t) {
 					t.printStackTrace();
 
 				}
 			}
-		}
-		catch (Exception e)
-		{
+		} catch (Exception e) {
 			throw new ProcessFailureException(Messages.getString("NewManagedProject.3") + e.getMessage(), e); //$NON-NLS-1$
 		}
 	}
-- 
1.7.9.5


