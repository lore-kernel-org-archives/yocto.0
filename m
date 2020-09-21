Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.109])
 by mx.groups.io with SMTP id smtpd.web12.36932.1600674491588973605
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 00:48:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@qt.io header.s=selector2 header.b=v6cLjWy6;
 spf=pass (domain: qt.io, ip: 40.107.21.109, mailfrom: samuli.piippo@qt.io)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=edjesDGeuWmKgJJaizIEYV6K8fN5pD8H0zNEey3pCLuKoXq56wVqZ59NN6e0seWzCwkvu2eJGYTD2Yenz1NH35ZZLcv/DQ1XNvne0oc/kv2EI8yPf9xbwDrJsMEIBmiLA9XwHlqkUktcz2KoL34b0uN3LPzTtjXBps3sj4Vnp47Vrw5SfLyQpCFDbz+2T7lr45IOWs1RsFNiIRTSHq+b4m1kpid8P9Z/PdDEq5jEYIzbOJItHO2p7z5lQp6cBYk8o67AMdbengSt2UzxnBF3IAG8ar8GmIxt2j257gk4GVKuamg3qjjoFDBJz4e9IxAuzKecf93XhSpUmhps7HyXqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GVvDFsjdNv99ohKO2XliP0AEL4hH8SY4pUFall42Zyg=;
 b=iILFUS9jxWOSibxdYj+QIYVm1MGVpNIiwDyh9AlJO+SedUrdCG7BB9EhFLV2B3vbsnX34SdOjSHo2v26R/wudZ3D8Ufv7WYlCU2f/FTGoNRCH+koDAThTw/dUsM6UsnJsn8YSTNWstA/SOi1M89pDrp3QSW9jxxJNdKIyM7iPU/mPb3Quuqo56ilDDGfmesB+4QJGOZnutKfzfuP6BRitFGbXEolGqGmw4ITAoDrNVlDR6sWhFD3hYCILRZ1zw0djbSy3Ykjnn+i6BciKsoRPu+Ki28GZLeKwM4vOHnfsUQRp5YLynsFTi8bwTu9ztyO9uMwNxl189Q9IcJHk7ymDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qt.io; dmarc=pass action=none header.from=qt.io; dkim=pass
 header.d=qt.io; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qt.io; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GVvDFsjdNv99ohKO2XliP0AEL4hH8SY4pUFall42Zyg=;
 b=v6cLjWy6TM8+ULqmWJMbiL2KcRavvWqlvr5OpFhwQDAb8bDtCdQ2OQW8R3+mFD/jbhE84j7DjiRmKDB+uxsnHt8yjoYCIqevRr0Cb+420lIw7EokBnTOdrWwtHRmXI8t+mv2qR6eTAKBuBKNU4LW015T3+Z8UBSiMHdouNxTcPI=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=qt.io;
Received: from HE1PR0202MB2841.eurprd02.prod.outlook.com (2603:10a6:3:ef::18)
 by HE1PR0201MB2460.eurprd02.prod.outlook.com (2603:10a6:3:82::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.17; Mon, 21 Sep
 2020 07:48:08 +0000
Received: from HE1PR0202MB2841.eurprd02.prod.outlook.com
 ([fe80::4817:13c2:2b92:647c]) by HE1PR0202MB2841.eurprd02.prod.outlook.com
 ([fe80::4817:13c2:2b92:647c%8]) with mapi id 15.20.3391.024; Mon, 21 Sep 2020
 07:48:08 +0000
From: "Samuli Piippo" <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw][PATCHv2] ninja: configure for mingw platform
Date: Mon, 21 Sep 2020 10:47:55 +0300
Message-Id: <20200921074755.9385-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: HE1PR02CA0108.eurprd02.prod.outlook.com
 (2603:10a6:7:29::37) To HE1PR0202MB2841.eurprd02.prod.outlook.com
 (2603:10a6:3:ef::18)
Return-Path: samuli.piippo@qt.io
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from munkone.intra.qt.io (62.183.187.94) by HE1PR02CA0108.eurprd02.prod.outlook.com (2603:10a6:7:29::37) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.13 via Frontend Transport; Mon, 21 Sep 2020 07:48:07 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [62.183.187.94]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c7c1238a-2556-43e4-1910-08d85e02ae50
X-MS-TrafficTypeDiagnostic: HE1PR0201MB2460:
X-Microsoft-Antispam-PRVS: 
	<HE1PR0201MB2460185A89FB8CFE3EDBBF65E93A0@HE1PR0201MB2460.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UFzRKRxmivTcdD2RTQ78N9AGzuCBYpC5mqFserbyeDRl2HnKn7kw/gkWVXqmmFyjFM2/HdHdagj15M7ev6DRRfnmukafhcI16U9NmI66+f6VQM/HUlg7F74hIr/dXw8sHJxD1jn+iVg8fDFDTw4fTgVyfAd+Axku9BqZ68phS+06Z70HUlsx6J+k5crgKqYu0Ct711PQKxn4WwUVCz9rEZfodSjIoniMbR7nyddv1iS12/RxvyIT8kKIIWztxQJUvx/lKLWiUrElMduBnz8l7wNlKlgDcOQYAH46u80vqjvvnu9tTTwfmwLwGUCjQTXJA30Gef89ZsXjevfTEKFrV91V9z+ouhq7YjF2gC8+4lVbvrm/1t5160E1lzRdNr9K5APFQDb/P870aJTf4vvqytDj2ElKgUXqHypvJQIYwws=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR0202MB2841.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(376002)(346002)(39840400004)(396003)(44832011)(66946007)(66476007)(66556008)(16526019)(186003)(8936002)(1076003)(8676002)(5660300002)(6486002)(316002)(26005)(7696005)(52116002)(2906002)(4326008)(86362001)(6666004)(478600001)(956004)(2616005)(36756003)(6916009)(460985005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	XPDbLCRt9ELtu/rMKA2fd9KJ5xlkLk2J3zrKD9BDzd/bffFXQnLnOMczLG1TWq9npxHqoJwx+3ozOtS7xHZmk65DSHQ0jRUz7swc0wCzrGrtw+m1rhK45sZXrbTP6U6PqFpwRuuOt2s+ZUzBOYOky0mDn2VGoBKqbkxFsx1EMyQhkvH3lM1b92yrq6bykOA8jCGsOcoEgHJlHliOdtmVK676YlPeYq+7lLG7cNj77Tq28JLXXkoTEAM4c/RQ546N7GCgZxpOA6ENMVMHsG1yRIKoJTor5RVRA8GNhgXKqSgeXzvRZVJsp/UTS1kxD48018mspLt+KhGfNH5+KzPd/Hrr9yhtVygwfwaL6knD/JzWO6LaWgWFOLj5wd8wA8cuiubsjvLikde4mj02fJFXWN5MdWeZjmcxUSHb9sjopCu6j+gjNHoOvGi1ro6W3N+wvZbMMKvPFzldEvj2ybtxYLcPgnPHBLDdvtg8/n/l8/yf0/Kuy1ktN4RrKCw1Yn7n4JErtknZxoTvaaBzXoXu9v0YL2tieQBStSmXZfmA9FmAzRZ/1Ti09wvDJlPStX3dgHQ+0/9Er2ye6M0+obyUHlwrZPCdAbwwyyRioS1wmxsRyP5NL/ORAJ8eBnN5QV6OybgAxfgMg4BmEppof0447w==
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-Network-Message-Id: c7c1238a-2556-43e4-1910-08d85e02ae50
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0202MB2841.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2020 07:48:08.3743
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZrnL4i3G4pgRLKVGjZ+JyXwSNZIxVHSdT458Lh6SSq78qAw2bfIVMPRhOwiJtVThRcGPGunj2IG92IdYxhTHoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2460
Content-Type: text/plain

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-core/images/core-image-mingw-sdktest.bb | 1 +
 recipes-devtools/ninja/ninja_%.bbappend         | 8 ++++++++
 2 files changed, 9 insertions(+)
 create mode 100644 recipes-devtools/ninja/ninja_%.bbappend

diff --git a/recipes-core/images/core-image-mingw-sdktest.bb b/recipes-core/images/core-image-mingw-sdktest.bb
index 6215aef..9060c3d 100644
--- a/recipes-core/images/core-image-mingw-sdktest.bb
+++ b/recipes-core/images/core-image-mingw-sdktest.bb
@@ -10,6 +10,7 @@ TOOLCHAIN_HOST_TASK += "\
     nativesdk-dbus \
     nativesdk-dtc \
     nativesdk-libarchive \
+    nativesdk-ninja \
     nativesdk-swig \
     nativesdk-wayland \
     "
diff --git a/recipes-devtools/ninja/ninja_%.bbappend b/recipes-devtools/ninja/ninja_%.bbappend
new file mode 100644
index 0000000..e7ddb4d
--- /dev/null
+++ b/recipes-devtools/ninja/ninja_%.bbappend
@@ -0,0 +1,8 @@
+do_compile_mingw32() {
+        python3 ./configure.py --platform mingw
+        ninja
+}
+
+do_install_mingw32() {
+        install -D -m 0755  ${S}/ninja.exe ${D}${bindir}/ninja.exe
+}
-- 
2.17.1

