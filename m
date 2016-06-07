Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07410E00C51; Tue,  7 Jun 2016 11:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.145 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3648 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Jun 2016 11:51:50 PDT
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0145.outbound.protection.outlook.com [157.55.234.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33CB7E00C41
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 11:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=YNoPzGJoVXD44fzjqUbgSNIkKQHUQC9YF9fJEp1O2yU=;
	b=BHaMc9HqSWJB29kOslNpI/P/H/i+M0f2XFpm4oRZBoXSde/sdXIuISnw0a2ULmgXSTmNET3lrdtcuxHpxvG07NeTDOsSO+j3pdA2CerJpG2TirL8lNHtdptK8C/G6R+j2TDSHBNB6w81O7eAwdP5odqxS0nkin9SEQduUOcvINE=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=bartosz.woronicz@nokia.com; 
Received: from [10.154.187.104] (131.228.32.168) by
	DB5PR07MB1047.eurprd07.prod.outlook.com (10.161.197.141) with Microsoft
	SMTP Server (TLS) id 15.1.501.7; Tue, 7 Jun 2016 15:16:13 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <5756E529.3000500@nokia.com>
Date: Tue, 7 Jun 2016 17:15:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
X-Originating-IP: [131.228.32.168]
X-ClientProxiedBy: SN2PR10CA0009.namprd10.prod.outlook.com (10.160.12.147) To
	DB5PR07MB1047.eurprd07.prod.outlook.com (10.161.197.141)
X-MS-Office365-Filtering-Correlation-Id: d8aad56a-a912-41eb-3f2f-08d38ee6aa7d
X-Microsoft-Exchange-Diagnostics: 1; DB5PR07MB1047;
	2:ZtWVi2LflIqW9AH1TZczog/N/zzooT2C7m8S9fujSdhN+b5MrYIZI4nJ1ScPQ90v3hLfE7hjM4n5ePZXdym95JsahVVU/rSxoRzzOaPokDaMcTGVuosqNzPFLP3LXtaz/9SIJV5Gb4qaejnXah40sS1Td3WZoUvSiAeOE/NEKJWF4N5S52U/pN04h83tsfvo;
	3:e4VcnW1ptjJVfMBXjm/4b9LR4UdbHjRCbNlj8QD4J/tSF0kepeo4ucE7RV/BpUKzKL3XrotvlKqhrjTX2k1DhT2jynr24L9tTxpR4lXHLsHhUIbot+swa++QKl/yTEtY
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR07MB1047;
X-Microsoft-Exchange-Diagnostics: 1; DB5PR07MB1047;
	25:HrCk7DqFaXNI4gmZEsdMudULoG3rukw7pP823CV918o2ibUKDxo1E0I+KTsepZ++net59Kmo7xr2Oj5rsmEan/YbrrFSGSJgUg5yAHB45iP3f5Ctr+heUdkjcLrQa6OZDplwD3gGfs1NSqzGWwbiuDyCNo8d4uhqOdh4+vaB+RiPrsdwvnRi1NoOvFdoO6IeQHlDJI6LgUcgc8btvjFqd0jlQ6edGdaBjYjattSdwfGT6OqtewuNOcMiWHhoZEN7zBBHmR/zjX/73IfQWG1bEOOXu+HRs5hMo4VqOBbNNlNuQht07cDvpx6XYHVBMWwj2N96OYdfxdBvIfNSXp4WdV8QRO8tY+4vgljn1pj9eACYwqM8AUB7QfDZtFQHRgKo0do1TpZYGFrZp7mtl8B5il3xI0ePp6AwdYCyl1Xutk/2AwNmPbO2jUsIiZMqEpELQ8xBKkRJpeDJ7J3/EizcdnONxk/DTnc2wB1UoZ06E+fm2sH4w+3hg6Ctf6iond1whrieg84sJ7f/cMC2iQLyKcrMKANgRY5gvjl+kAg6pVwQ3/Ukg2s07NCpaLyNTkcemPusE4hGugikUfnIyJvJfqEIU84WFIT7pzROEHdNURUtMagj8Gi3kDeEMMsDnVPcDUdKpKDPQ5zAnvjoP/VAVvFn7m92lQjbvG/LHS9vQyAOUFvPGjzlt/JtvXMKoBDKWpvusVqbRjuv8Yr/1QmzQMnbnG9jJv6UD0UT5RR/B5dy2oS1GyMrHS3CbCXY4EqkZnEzLSVRTJ2tYwmZvcuoFtPLk+XOwOjIfornFW0NvvSI+L2RgapEtvNaQwGUfrNZqgRS/BA0KQUByr1FX/ZbAQ==
X-Microsoft-Exchange-Diagnostics: 1; DB5PR07MB1047;
	20:Na8ylLF11ZGTfDFjTA2Yk4GgWxW+fhh1o8w5tdApTqtyBpAl5FB4CNjCBh828Rzxo+UvpMTOiYNp4nOk+wTxXmBlDQEoVtjaz0iv+4rQ+IGb/c0EwiWPA/PzTiSXgI31gWhRhR6fKWo4p4qdKkFRevIlN0VUtcRqa6Bqb03P2Gic8cC/cx8Dn6f/RRpSX1TqucWs5i2wLB42+4N8cKBLH59fQG92oJQ/mwzK0UsCda+tWIYT0EtfR1WN4vL1q65fZCf3xK3q3OwFgiOqemCmcHdgI6GJplmBjrr/JKVXBi1fHLNAdRaZy7ienr23EafsbYCQOacfstJtD+dSUWMbMwZwTiq5Khlshza1KRbUCljchQwO3U+n2s2/RRCh1qZ8Tr9yEg/LAU02jQ8ElwFi+CivlzsM9pDaviSCrA58NFBu6joHrsc+s0JT+aUZZI0NDi4vRRp69YXnR1/zmiv/FPww0AncisPs/7SCfIjjew322dg6e6MfSf/lzejY7H4f;
	4:srTTeRurCjh0sFMEQ4mqV+9HyjsqlMONIumfUnlyYlAQXcqu9v9EEBauRCK26vljr8OvsuXcuMLp2/ul9B500Enl0EPh+aIer8hVOtP9ccZ4EwOkl9DT800VmfbzoiBPzs8X77npLQ3uSNUg5U2jwcBsGRcQyhCXaV1+UVpvrHFc+DMZclve/261WseZTDQkJpHiJhhFve+sNkmAmSwqyGwsn/Deuk75ogO/RV4sCsZ0gzF9X1IZ7E/1wNqVsZBAezwGMaFnt5GmOcVKuqBO6E9SdHoM92wl8IzIS0mE7nmZmdkW/lhgNo1vOeLWKiD2NXPHGVX7LkJFykbf66PwDGYBp9+/h5ndqEA+LRtyUpDnZwpQIHbwAzKH3a6iZWqnZrDLbgugPGNFxOd3rqjjZw==
X-Microsoft-Antispam-PRVS: <DB5PR07MB104753FCACE7860760A65B91815D0@DB5PR07MB1047.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(102415321)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:DB5PR07MB1047; BCL:0; PCL:0; RULEID:; SRVR:DB5PR07MB1047; 
X-Forefront-PRVS: 09669DB681
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(6049001)(71364002)(189002)(199003)(87266999)(65806001)(564344004)(229853001)(84326002)(106356001)(65956001)(68736007)(66066001)(54356999)(2351001)(107886002)(50986999)(6116002)(105586002)(64126003)(5000100001)(36756003)(42186005)(2476003)(83506001)(77096005)(97736004)(4001350100001)(5640700001)(59896002)(101416001)(4810100001)(512874002)(65816999)(5004730100002)(5008740100001)(86362001)(80316001)(270700001)(1730700003)(568964002)(5890100001)(189998001)(81156014)(2501003)(81166006)(8676002)(586003)(2906002)(33656002)(92566002)(3846002)(110136002)(450100001)(4610100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5PR07MB1047; H:[10.154.187.104];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB5PR07MB1047;
	23:BHZ1lRs7SVEIFaBLat7DoulA921z4ZKOlWw69Z3YK?=
	=?us-ascii?Q?nGnRZRSQPopmJV2O3rrMqNiNqKlhYcaLu1uu+f7D7Sgdn7SYx5C+GVmmhayT?=
	=?us-ascii?Q?yRDe7Qbz12aK3gCTXieqYqPw1ELdhocw3Am/fZE2epBc1w2k9C6ZdQvAX9Tt?=
	=?us-ascii?Q?bkgB35Wbvpk98K+Q39xPBhZUS7jVNhV11FjWYh2FxJv/DrYq/HaLuBuXwnqR?=
	=?us-ascii?Q?AFSjyfMn2a4/os+3swp8aZXXen2flN5xTG/JtDZZMhtThYUeBdaSCFeko2Ix?=
	=?us-ascii?Q?pgkgAiUvkW8QKuK7uadFdUtjkAB/klYD2EO3h0wkPi7ksQQvE7mCaufkz37b?=
	=?us-ascii?Q?v0U5tf0ScgkJqMQA/M3nVcdHGKGAppyoHw/0h/2VE+RuHwE+4KuU9SilBvoF?=
	=?us-ascii?Q?39C3E4SaG+9tJHU1k9A1tWW6C0GWMVz+yDnVmdG4RMKrdFkIssjv80YLyO0G?=
	=?us-ascii?Q?lG4DMxOC9NkxmI1duHBlNWe0fIy/NmRFZ2+aEGjKW26h+x+nwJ55N55a/22C?=
	=?us-ascii?Q?CP/da1yi51iWw3CSKm+I8F/TFWaoAyqoMvEOAOdAVGm0z/t+0OAFSrpD7o2h?=
	=?us-ascii?Q?YGB/lz8Dah2L7TuXcQwgmUeBgb+QGF5kJyM6/TRFSkhlgDEU4PBCdGijFR4L?=
	=?us-ascii?Q?jAb9zgkTX32peFMi8Tz/yF/CS66cB3Mir+hSikOf5jW5weDRhg+zSZ8Sb9Mq?=
	=?us-ascii?Q?c3hQqP3WU4VxN09MVzg+xvJUP38XKEtIKCIPj6q1Gv26eokrPAZW59c3qjrO?=
	=?us-ascii?Q?67cJ5ljU++g9Yy/4ai0WuNx2vJfKSSBsp1icPykIQTtobe6fMrr7H6cqLfBL?=
	=?us-ascii?Q?0THF4yikfXVLNvMKhEbtDI7TlqXhlBxYp04KN/oqkiG/MFNQzSrSxBHQPfs7?=
	=?us-ascii?Q?nCjZoh9NK+L6S2I8As6hx6UozvifL1QYKN2Jrf9t6dfFX2Wz0mWBA3BrUQuI?=
	=?us-ascii?Q?Xo0B6msUCkIh6RZ03yZ2y50QYGncffJDWoDtMKfb/J1vkYTtQpKnGxtEw6SZ?=
	=?us-ascii?Q?kdpPpYKGhgCUvAC+UoUtTh9YV9ZyWX7kFvfRVtz4/Z3jYcs3qhLrjZBFoOYf?=
	=?us-ascii?Q?29hzykUeei+Hi/0gxFMDI4RpwWKRTn5iBzLljUapkB97V10GQIKJ9620Q4iy?=
	=?us-ascii?Q?OOb5CBrDXBxJdgONoG/4G73SZtfnOtFrCl93Fr07YeW+65AQmicAASI5V6Of?=
	=?us-ascii?Q?ABvAyEzU5hPTS3G6Py5a/Yy9XMA7GNvD9NINpA+/XfHpyN5hFEd8t6IoSNnp?=
	=?us-ascii?Q?DxcjVmyi+LSvT1UescaqpLJZ1ZZdr4ypJLtkSvFbHMKBJIe2Q0ZGiU41QX/7?=
	=?us-ascii?Q?swnwc6sknOwQmIvMkur8/SkNLPLRvSxlM3mONwfRKAy0yQ9QiURWAcW6TUEB?=
	=?us-ascii?Q?3rb39sVUtNow53S4iG1RZuse4VzhvFNZhIfYVEcy4eNZsjpVrB65qqIFO3Rq?=
	=?us-ascii?Q?CppIvmU+NhblZy+fwm+nqMtd9e4Aa0=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DB5PR07MB1047;
	5:pl0TrQWvsMSUitZiMvZuJV4pDfyeeD6UYX9PBJrCrvsamgyVQsf7KeEByKkcCoCd1f1j+/r5F2zBM1789whviG9dyvRgZC0R6GC1agWCJ/sfBq0XBw5hds2/95V9j5b0S5x8c9yoAsdDTzgszb5pcg==;
	24:8nCrCYxQ8ws6FDM5NyDQotPNtWDzeC7QByjShSYy0zcfLijPYr5wdsQd7C+1jxQ0uhjOstIODPjsFsYnIxPH1tQcRy4rg10U63IymqrhVCg=;
	7:K6yKAnrzF3h7bsS3q5QPbKmfusIM2LyD3judGi+6Cn6B+dobYle3PTnKJpcq0iBiyvXn4bZpfWEmg5bDaxzvYhKfU/Vh4b5qMDOP3OOz7sz5UrrVKmSHuSAMeF0wziHIbensPZrbbgWfddfGimjRq2ZK9N2TqAhU3JqQyncqPPFvcEI8Y13ssMbRTg1af+0umfR36/ZAmkiIILahyZVnEZYz3O5H8kyX0e42uzVwy5Q=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2016 15:16:13.4579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR07MB1047
Subject: [PULL] fixes in Dependency Explorer
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
X-List-Received-Date: Tue, 07 Jun 2016 18:51:54 -0000
X-Groupsio-MsgNum: 30384
Content-Type: multipart/mixed; boundary="------------000409090103040002060703"

--------------000409090103040002060703
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit


-- 
Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw


--------------000409090103040002060703
Content-Type: text/x-patch;
	name="0001-depexp-remove-the-requirement-for-g-flag.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0001-depexp-remove-the-requirement-for-g-flag.patch"

From 11f4a3e137e2eda76c8dce44c053d0db68d6b208 Mon Sep 17 00:00:00 2001
From: Bartosz Wieslaw Woronicz <bartosz.woronicz@nokia.com>
Date: Tue, 7 Jun 2016 17:08:16 +0200
Subject: [PATCH 1/2] depexp: remove the requirement for -g flag

---
 bitbake/lib/bb/ui/depexp.py | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/bitbake/lib/bb/ui/depexp.py b/bitbake/lib/bb/ui/depexp.py
index 240aafc..6a6bfd5 100644
--- a/bitbake/lib/bb/ui/depexp.py
+++ b/bitbake/lib/bb/ui/depexp.py
@@ -202,9 +202,6 @@ def main(server, eventHandler, params):
             print(cmdline['msg'])
             return 1
         cmdline = cmdline['action']
-        if not cmdline or cmdline[0] != "generateDotGraph":
-            print("This UI requires the -g option")
-            return 1
         ret, error = server.runCommand(["generateDepTreeEvent", cmdline[1], cmdline[2]])
         if error:
             print("Error running command '%s': %s" % (cmdline, error))
-- 
2.5.0


--------------000409090103040002060703
Content-Type: text/x-patch; name="0002-depexp-fix-progress-bar.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0002-depexp-fix-progress-bar.patch"

From 12215390bb16980c6aae5039c7cc6f6eceb1fa4e Mon Sep 17 00:00:00 2001
From: Bartosz Wieslaw Woronicz <bartosz.woronicz@nokia.com>
Date: Tue, 7 Jun 2016 17:09:16 +0200
Subject: [PATCH 2/2] depexp: fix progress bar

---
 bitbake/lib/bb/ui/depexp.py | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/ui/depexp.py b/bitbake/lib/bb/ui/depexp.py
index 6a6bfd5..0778f9d 100644
--- a/bitbake/lib/bb/ui/depexp.py
+++ b/bitbake/lib/bb/ui/depexp.py
@@ -264,7 +264,6 @@ def main(server, eventHandler, params):
                 continue
 
             if isinstance(event, bb.event.CacheLoadCompleted):
-                bardialog.hide()
                 continue
 
             if isinstance(event, bb.event.ParseStarted):
@@ -277,6 +276,17 @@ def main(server, eventHandler, params):
 
                 gtk.gdk.threads_leave()
 
+            if isinstance(event, bb.event.TreeDataPreparationStarted):
+                bardialog.set_title("Processing tree data")
+                bardialog.vbox.remove(pbar)
+                bardialog.vbox.pack_start(
+                    gtk.Label(str="Generating dependency graph data... please wait..."))
+                bardialog.show_all()
+                continue
+
+            if isinstance(event, bb.event.TreeDataPreparationProgress):
+                continue
+
             if isinstance(event, bb.event.ParseProgress):
                 x = event.current
                 gtk.gdk.threads_enter()
@@ -286,13 +296,13 @@ def main(server, eventHandler, params):
                 continue
 
             if isinstance(event, bb.event.ParseCompleted):
-                bardialog.hide()
                 continue
 
             if isinstance(event, bb.event.DepTreeGenerated):
                 gtk.gdk.threads_enter()
                 dep.parse(event._depgraph)
                 gtk.gdk.threads_leave()
+                bardialog.hide()
 
             if isinstance(event, bb.command.CommandCompleted):
                 continue
-- 
2.5.0


--------------000409090103040002060703--
