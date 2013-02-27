Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 986FCE00498
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 13:19:31 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Feb 2013 13:19:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,750,1355126400"; d="scan'208";a="292720129"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 27 Feb 2013 13:19:30 -0800
Received: from orsmsx155.amr.corp.intel.com (10.22.226.54) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 27 Feb 2013 13:19:30 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.110]) by
	ORSMSX155.amr.corp.intel.com ([10.22.226.54]) with mapi id
	14.01.0355.002; Wed, 27 Feb 2013 13:19:30 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] plugins/sdk.ide: Remove profile edit buttons
	from	property page
Thread-Index: AQHOFPduyIvP1ciGtE2NvcpcQSu5X5iONj4A
Date: Wed, 27 Feb 2013 21:19:29 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6F3FB1D2@ORSMSX101.amr.corp.intel.com>
References: <bd12930c8d4da461d37e52a33e5ec9f041e76bc9.1361954040.git.timo.mueller@bmw-carit.de>
In-Reply-To: <bd12930c8d4da461d37e52a33e5ec9f041e76bc9.1361954040.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH] plugins/sdk.ide: Remove profile edit buttons from	property page
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
X-List-Received-Date: Wed, 27 Feb 2013 21:19:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Wednesday, February 27, 2013 6:33 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCH] plugins/sdk.ide: Remove profile edit buttons from =
property page

From: Timo Mueller <timo.mueller@bmw-carit.de>

The project property page for yocto project settings contains the same edit=
 buttons as the preference page. As editing profiles is not allowed in the =
property page these buttons have been permanently disabled.

This removes them completely from the property page. The remaining profile =
drop-down box allows the user to select a cross development profile for the=
 project.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 30 ++++++++++++++++--=
----
 .../ide/preferences/YoctoSDKPreferencePage.java    |  2 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |  3 +--
 3 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSe=
tting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSe=
tting.java
index cc3e167..0f36e99 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.j=
ava
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSettin
+++ g.java
@@ -49,10 +49,12 @@ public class YoctoProfileSetting {

        private YoctoProfileElement profileElement;
        private PreferencePage preferencePage;
+       private final boolean editable;

-       public YoctoProfileSetting(YoctoProfileElement profileElement, Pref=
erencePage preferencePage) {
+       public YoctoProfileSetting(YoctoProfileElement profileElement,
+PreferencePage preferencePage, final boolean editable) {
                this.profileElement =3D profileElement;
                this.preferencePage =3D preferencePage;
+               this.editable =3D editable;
        }

        public void createComposite(Composite composite) { @@ -61,7 +63,11 =
@@ public class YoctoProfileSetting {
                composite.setLayout(layout);

                Group storeYoctoConfigurationsGroup =3D new Group (composit=
e, SWT.NONE);
-               layout =3D new GridLayout(3, false);
+               layout =3D new GridLayout(1, false);
+               if (isEditable()) {
+                       layout.numColumns =3D 3;
+               }
+
                storeYoctoConfigurationsGroup.setLayout(layout);
                gd =3D new GridData(SWT.FILL, SWT.CENTER, true, false);
                gd.horizontalSpan =3D 2;
@@ -101,9 +107,11 @@ public class YoctoProfileSetting {
                sdkConfigsCombo.addListener(SWT.Selection, selectionListene=
r);
                sdkConfigsCombo.addListener(SWT.Modify, selectionListener);

-               createSaveAsProfileButton(storeYoctoConfigurationsGroup);
-               createRenameButton(storeYoctoConfigurationsGroup);
-               createRemoveButton(storeYoctoConfigurationsGroup);
+               if (isEditable()) {
+                       createSaveAsProfileButton(storeYoctoConfigurationsG=
roup);
+                       createRenameButton(storeYoctoConfigurationsGroup);
+                       createRemoveButton(storeYoctoConfigurationsGroup);
+               }
        }

        private void createSaveAsProfileButton(Group storeYoctoConfiguratio=
nsGroup) { @@ -225,8 +233,14 @@ public class YoctoProfileSetting {
        }

        public void setButtonsEnabledState(boolean isEnabled) {
-               btnConfigRename.setEnabled(isEnabled);
-               btnConfigRemove.setEnabled(isEnabled);
-               btnConfigSaveAs.setEnabled(isEnabled);
+               if (isEditable()) {
+                       btnConfigRename.setEnabled(isEnabled);
+                       btnConfigRemove.setEnabled(isEnabled);
+                       btnConfigSaveAs.setEnabled(isEnabled);
+               }
+       }
+
+       private boolean isEditable() {
+               return editable;
        }
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/Yo=
ctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide=
/preferences/YoctoSDKPreferencePage.java
index 4d57b45..3e0fa54 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKP=
referencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoS
+++ DKPreferencePage.java
@@ -64,7 +64,7 @@ public class YoctoSDKPreferencePage extends PreferencePag=
e implements IWorkbench
                this.yoctoUISetting =3D new YoctoUISetting(elem);

                YoctoProfileElement profileElement =3D new YoctoProfileElem=
ent(profiles, selectedProfile);
-               this.yoctoProfileSetting =3D new YoctoProfileSetting(profil=
eElement, this);
+               this.yoctoProfileSetting =3D new YoctoProfileSetting(profil=
eElement,
+this, true);
        }

        /*
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/Yo=
ctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sd=
k/ide/preferences/YoctoSDKProjectPropertyPage.java
index eef56c1..7f0d25e 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKP=
rojectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoS
+++ DKProjectPropertyPage.java
@@ -51,7 +51,7 @@ public class YoctoSDKProjectPropertyPage extends Property=
Page implements
                }

                yoctoProfileSetting =3D new YoctoProfileSetting(
-                               new YoctoProfileElement(globalProfileElemen=
t.getProfilesAsString(), selectedProfile), this);
+                               new YoctoProfileElement(globalProfileElemen=
t.getProfilesAsString(),
+selectedProfile), this, false);
                boolean useProjectSpecificSetting =3D YoctoSDKUtils.getUseP=
rojectSpecificOptionFromProjectPreferences(project);

                if (useProjectSpecificSetting) {
@@ -78,7 +78,6 @@ public class YoctoSDKProjectPropertyPage extends Property=
Page implements
                                yoctoUISetting.validateInput(SDKCheckReques=
tFrom.Preferences, false);
                        } else {
                                yoctoProfileSetting.setUIFormEnabledState(t=
rue);
-                               yoctoProfileSetting.setButtonsEnabledState(=
false);
                                yoctoProjectSpecificSetting.setUseProjectSp=
ecificSettings(false);
                                yoctoUISetting.setUIFormEnabledState(false)=
;
                        }
--
1.7.11.7

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

