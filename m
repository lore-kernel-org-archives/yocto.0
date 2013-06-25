Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4221E01560
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 14:55:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Jun 2013 14:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,939,1363158000"; d="scan'208";a="355704577"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jun 2013 14:56:29 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 25 Jun 2013 14:55:43 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.117]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.24]) with mapi id
	14.03.0123.003; Tue, 25 Jun 2013 14:52:57 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH][eclipse-poky] plugin/sdk.ide: Pre-populate
	project	specific profile form
Thread-Index: AQHOcblUA3P/SSY4aUqohlEXjfxgeZlG9fxA
Date: Tue, 25 Jun 2013 21:52:57 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C4F55E@ORSMSX103.amr.corp.intel.com>
References: <cover.1372173542.git.timo.mueller@bmw-carit.de>
	<4cc66f41f5df55001702d867e511ab5d83d58b2c.1372173542.git.timo.mueller@bmw-carit.de>
In-Reply-To: <4cc66f41f5df55001702d867e511ab5d83d58b2c.1372173542.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH][eclipse-poky] plugin/sdk.ide: Pre-populate project	specific profile form
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
X-List-Received-Date: Tue, 25 Jun 2013 21:55:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

How am I supposed to apply this patch?  I tried to apply it against master =
first, then the patch2 of your v3 patch series won't apply.  If I apply you=
r v3 patch series first, then this patch won't apply after that...

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Tuesday, June 25, 2013 8:33 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCH][eclipse-poky] plugin/sdk.ide: Pre-populate project=
 specific profile form

From: Timo Mueller <timo.mueller@bmw-carit.de>

On initial setup the profile form is populated with the values from the pre=
viously selected target profile. This allows the user to quickly make proje=
ct specific adaptions of an existing profile.

If a project specific profile is already defined the form will show the val=
ues from this configuration.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../sdk/ide/preferences/YoctoSDKProjectPropertyPage.java   | 14 ++++++++++=
++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/Yo=
ctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sd=
k/ide/preferences/YoctoSDKProjectPropertyPage.java
index 9f99caf..408ce76 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKP=
rojectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoS
+++ DKProjectPropertyPage.java
@@ -31,14 +31,15 @@ import org.osgi.service.prefs.BackingStoreException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
+import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
-import org.yocto.sdk.ide.utils.YoctoSDKUtils;
-import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
 import org.yocto.sdk.ide.YoctoSDKPlugin;  import org.yocto.sdk.ide.YoctoUI=
Element;  import org.yocto.sdk.ide.YoctoUISetting;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
+import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;

 public class YoctoSDKProjectPropertyPage extends PropertyPage implements
                IWorkbenchPropertyPage {
@@ -288,6 +289,15 @@ public class YoctoSDKProjectPropertyPage extends Prope=
rtyPage implements
        public void switchToProjectSpecificProfile()
        {
                YoctoUIElement profileElement =3D getElemFromProjectPrefere=
nces(getProject());
+               SDKCheckResults result =3D
+YoctoSDKChecker.checkYoctoSDK(profileElement);
+
+               if ((result !=3D SDKCheckResults.SDK_PASS)) {
+                       /* Project specific profile has not yet been define=
d,
+                        * leave settings from previously selected profile
+                        */
+                       return;
+               }
+
                yoctoUISetting.setCurrentInput(profileElement);
        }

--
1.8.1.4

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

