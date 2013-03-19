Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f41.google.com (mail-bk0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DC7BE00741
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:16 -0700 (PDT)
Received: by mail-bk0-f41.google.com with SMTP id q16so311599bkw.28
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=FXgG24T6NPKkx5VZEjyXp/vz7UiSKwil5iQiBCRukxA=;
	b=Ln+Jfee9V4mOA/ScgJW+NamgpDZXr9hOLBzbtpbXE0M7woEMjuibgBGvsjBOG/leJB
	ggo/CEX3BbBhmyi9fd6jDKjKNx2xGt4DLtZVC0XPfDcgOyduqmPW0sAJz/YATO4neU7+
	bYM/pcZMRu/TaJybSgNZIGh6Tfz8NVZFJzDEgoD3I6MhRxAPGa3/3pb6c8rz+nDrYesM
	l2L0OV1/NcclPT0xZrBnqzKR2Bk9m6jtMoQB5tjJPt1EM7jK7Mxyv/WS6CLWYKwQ0m4S
	svHWQ6vdXNI37Lp5oSLrNb5RlDMsN4ox0ENAmbuCKCximS6k2qyPFnS3v9z97cm9yl/q
	AnMA==
X-Received: by 10.205.96.197 with SMTP id ch5mr9106064bkc.52.1363708935752;
	Tue, 19 Mar 2013 09:02:15 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm6616816bkw.5.2013.03.19.09.02.14
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 09:02:15 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 17:01:51 +0100
Message-Id: <1363708911-13002-8-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 7/7] plugins/sdk.ide: Extracted error message to YoctoSDKMessages
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
X-List-Received-Date: Tue, 19 Mar 2013 16:02:17 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Improved the i18n ability.
---
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |    1 +
 .../NewYoctoAutotoolsProjectPostProcess.java       |    8 ++++----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index dbd00ae..f2cf76b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -99,4 +99,5 @@ LaunchConfig.Location.Attr = org.eclipse.ui.externaltools.ATTR_LOCATION
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


