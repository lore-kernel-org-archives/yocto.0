Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23C27E014D8
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:50 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id b12so1466920wgh.6
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=bKKLAmhH05Ql9oUT0z2QzgTfcuPK+kZpmBvUNjKB0UI=;
	b=RUX1fj4YdSN82rka5+LtF0CN4gmuLoJXitGUw09qsBtJ0QlzW0pMbYPZ/ClMIpHmJl
	2cf+o3++Ov7SGsVRZYk0Hb3JGAOLl67QQ0aJVNA4H9/nawfJoD49msk3lUzu/sdKmtB9
	A37fedRnDMnFwNofXQ/eTgg5XmuDUrDCzRlCJe2lA7I9g+blMd5FMUCrvI7L91FFHDAG
	RCOY3OPc65Y1CMilyxwJ6r2Of0hHo5dJNxEEekNWIoYF8kbHb50g8LSKVDbZ1Mmm9pd2
	230wzqreAldrzaXozaWR6AKqG8DUYOuzKfDm5CSVdGU7IdsZ/6zCAKpIplppNK7fOrzi
	lXQQ==
X-Received: by 10.180.72.228 with SMTP id g4mr33061634wiv.22.1365679550338;
	Thu, 11 Apr 2013 04:25:50 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g4sm2785162wib.11.2013.04.11.04.25.49
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Apr 2013 04:25:49 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Apr 2013 13:25:31 +0200
Message-Id: <1365679531-4518-10-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv2 9/9] plugins/sdk.ide: Extracted error message to YoctoSDKMessages
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
X-List-Received-Date: Thu, 11 Apr 2013 11:25:51 -0000

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


