Return-Path: <brett.grandbois@opengear.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03156E00C8F; Thu,  7 Feb 2019 19:59:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.68.77 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 19740 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Feb 2019 19:59:27 PST
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-eopbgr680077.outbound.protection.outlook.com [40.107.68.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD62CE00C8A
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2019 19:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=opengear.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=acnKRLjKtRyojha1MsRS62TGKdPUjKSbwL0P9lLy2bA=;
	b=XR1XyYyWPmlJcafsTtqZnEAumgqwmmifDQPquJiMalSG1KcowpGFs2XfR1Wwd1kL0RTd1qkSvB8NIjvB9+30nVlJwEc7gMQilR1h9OXTppEVuTCj93pbPxLrDPElXSQK+ztQ7uxqyMY4N39ViD+lIMWccT0ThAsgoMzZOckKzX0=
Received: from DM5PR1501MB2056.namprd15.prod.outlook.com (52.132.130.30) by
	DM5PR1501MB2165.namprd15.prod.outlook.com (52.132.131.27) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1580.22; Thu, 7 Feb 2019 00:17:14 +0000
Received: from DM5PR1501MB2056.namprd15.prod.outlook.com
	([fe80::f0e9:8134:895f:9135]) by
	DM5PR1501MB2056.namprd15.prod.outlook.com
	([fe80::f0e9:8134:895f:9135%7]) with mapi id 15.20.1580.019;
	Thu, 7 Feb 2019 00:17:14 +0000
From: "Grandbois, Brett" <brett.grandbois@opengear.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] ruby: remove CVE-2018-1000073.patch as already fixed
Thread-Index: AQHUvnp6d5a8ScUTaUWua/fjqKGCGQ==
Date: Thu, 7 Feb 2019 00:17:14 +0000
Message-ID: <20190207001640.24978-1-brett.grandbois@opengear.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SYCPR01CA0023.ausprd01.prod.outlook.com
	(2603:10c6:10:31::35) To DM5PR1501MB2056.namprd15.prod.outlook.com
	(2603:10b6:4:a2::30)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=brett.grandbois@opengear.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [60.241.24.90]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR1501MB2165;
	6:8e4c35z22DBIA9SYBWx29NIP6i+GDHlm0aQjsyB/jq9oWF6TVIfNeR7z+9JsCUTmpsbFKZQ2c2GhiPU1J/7hlGsp9434k1v0g/Me1L6ToznqskZ2MzXBLg+b8KARygKFcdAVhhMJZ8dl0vJV1eQLLlz4suEcF4ml11d43NCIDr70SlgymqWVktnY9g8eh9JkZWmchh1sOKFNQtx1KL/sSCiygPW5X//43OmLFlUHFcwDIBrXsB9haDz29+Y9bU5IgBTL+MN/z9Q2EYNZGSZlwYCP8hjWm0t/gkRJ0yUjsVOb6K4eGGU2uBoP25/SIzrcIsmav1GZWe8/f1WN4XMMpruM/CxqHkCp8mDiVzkOWOlrmuIMbAP9Vd3c5uQoZoIjWrT4vkSGRau1OH9FcTD24LYsqOTc1n77KjXeAoTGRtAnGWZruYkRDFZbEQG4go1AOKfMRIL6Tne1KRaxweKiHg==;
	5:1hua70v0edxL6L3EjTdtFfyzIl7KwRnaviq7Lp30A5h0CPAT7B3tdxpnxxFqYK92BajnvOW3okGDSrWoM9q28+aeKZ4crtkbkYiWT1uZZN+CkuDeLJtPHTUDNXplzFEUJP0BFOJfVtRoVsDRI1b5jM7eJDcaw4OLgfROzoab1UIRTMRygecm0kkkiSDoOqG0AR9rdtn8Q3tr1jHmEP3Gxw==;
	7:hVy55ilITv3ZHcItmcs6kV5bIFASN8Xc7iCQeNTJIPfe538Bz7p5K/6zJf+oWmb3my4jGC7Wp+snjpNafnuVKWCSDM7vXDP3Eof3BHfwzSRZlov6iuxq3QXR6Wk2vWqvcx2Xbov/m39AZgskDjCLLg==
x-ms-office365-filtering-correlation-id: b8de34f8-5fb8-4068-7767-08d68c919ca4
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR1501MB2165; 
X-MS-TrafficTypeDiagnostic: DM5PR1501MB2165:|DM5PR1501MB2165:|DM5PR1501MB2165:
x-microsoft-antispam-prvs: <DM5PR1501MB21652D86C59EB34FC8AE7B1A82680@DM5PR1501MB2165.namprd15.prod.outlook.com>
x-forefront-prvs: 0941B96580
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(366004)(136003)(346002)(376002)(39840400004)(199004)(189003)(52116002)(106356001)(3846002)(2501003)(316002)(478600001)(2351001)(81156014)(105586002)(7736002)(6916009)(6436002)(14444005)(1730700003)(8676002)(81166006)(256004)(14454004)(5640700003)(6486002)(97736004)(25786009)(2906002)(6512007)(68736007)(6116002)(53936002)(99286004)(36756003)(66066001)(305945005)(86362001)(26005)(2616005)(186003)(486006)(50226002)(386003)(6506007)(71190400001)(8936002)(71200400001)(476003)(102836004)(1076003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR1501MB2165;
	H:DM5PR1501MB2056.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: opengear.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: l7JEVR0JQvyLcX1vd4xQmlGMSHou0OjIZ4puR7TbdqEDY72xLhT/ZuSUA6Nidmdxf0Coeg2YdZuPJf/AP/EJoBnXZkXsqh4pja/aNtgemIdRczjJRPd3b972ra1yTeYkDna9d7wVfn47kwOl5IrbvX23OJEtg/shxZH3qRcRD8mddd84kB+Gn0q7n/rEYQlkH8QGns5bDiD3iqjSiNw4SHyQ36oodUzENtTUOZwgYHUbuMD9uPhR4fgwQCytRI2RMGoV273M2Z6eo6MneyEqxr0Ieh6BSk3gRnrHKNiOidy0M8jOxEemYaSxeZP37oSrf7+6A2DE2Y4HAfc5YGur3e3UNzpHI0sth4SdwJwCAwmB+cgeeHngCb3if3vXmLXtQsl2/wSmnFXW0LFYpQwBMwknGEjBf9oqb5tGYbDoWAA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b8de34f8-5fb8-4068-7767-08d68c919ca4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2019 00:17:13.9540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-id: a6251c26-d21f-4164-a225-1f4eaebf5f9a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1501MB2165
X-Microsoft-Exchange-Diagnostics: 1; DM5PR1501MB2165;
	23:EXfEl5LYqTIggYAnVdf+ymVU/cGaaKa5uyZexepO+vQSk2C8uCTtOJoZHwJcm6kqIUq67uNGTqLMhIyK5Q51s4V+OAsAjOAhPmte9UdC8Ym3LAL+sD75flwQu3DymB7QR1B6hTqlu0ci/ZQV74ZSIQ==;
	23:Kxq26U+ubH87DY5A/CgUYql4dpRn6HPw9Pe3Q6nGiNSH6eZw6gcIiCcJe4g7UiWq+eXvykNYExMSlBGhG5ODBxuc2SvkG88jUISTnSvFpp/TKz6WA/vW+7nZnlogNkeEqDNMFnLqyi9MGpZ9hZ3kxQ==
X-OriginatorOrg: opengear.com
Subject: [PATCH] ruby: remove CVE-2018-1000073.patch as already fixed
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
X-List-Received-Date: Fri, 08 Feb 2019 03:59:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

rubygems 2.7.6 which is in ruby 2.5.3 has this fix and as currently
applied all gem extraction fails as the realpath check is done against
the full path including the file to be extracted which will always fail
as the file hasnt been extracted yet

Signed-off-by: Brett Grandbois <brett.grandbois@opengear.com>
---
 .../ruby/ruby/CVE-2018-1000073.patch          | 34 -------------------
 meta/recipes-devtools/ruby/ruby_2.5.3.bb      |  1 -
 2 files changed, 35 deletions(-)
 delete mode 100644 meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch

diff --git a/meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch b/meta/=
recipes-devtools/ruby/ruby/CVE-2018-1000073.patch
deleted file mode 100644
index 22fa1b5f4d..0000000000
--- a/meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 1b931fc03b819b9a0214be3eaca844ef534175e2 Mon Sep 17 00:00:00 2001
-From: Jonathan Claudius <jclaudius@mozilla.com>
-Date: Wed, 7 Feb 2018 23:54:52 -0500
-Subject: [PATCH] Non-working patch for deducing symlinked base-dirs
-
----
-CVE: CVE-2018-1000073
-
-Fixed in ruby 2.7.6.
-
-Upstream-Status: Backport [github.com/rubygems/rubygems/commit/1b931fc...]
-
-Signed-off-by: Joe Slater <joe.slater@windriver.com>
-
----
- lib/rubygems/package.rb |    2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/lib/rubygems/package.rb b/lib/rubygems/package.rb
-index dede959..cb9c74a 100644
---- a/lib/rubygems/package.rb
-+++ b/lib/rubygems/package.rb
-@@ -421,6 +421,8 @@ EOM
-     destination_dir =3D File.expand_path destination_dir
-=20
-     destination =3D File.join destination_dir, filename
-+    destination =3D File.realpath destination if
-+      File.respond_to? :realpath
-     destination =3D File.expand_path destination
-=20
-     raise Gem::Package::PathError.new(destination, destination_dir) unles=
s
---=20
-1.7.9.5
-
diff --git a/meta/recipes-devtools/ruby/ruby_2.5.3.bb b/meta/recipes-devtoo=
ls/ruby/ruby_2.5.3.bb
index e9f0453788..3fb427e90e 100644
--- a/meta/recipes-devtools/ruby/ruby_2.5.3.bb
+++ b/meta/recipes-devtools/ruby/ruby_2.5.3.bb
@@ -3,7 +3,6 @@ require ruby.inc
 SRC_URI +=3D " \
            file://ruby-CVE-2017-9226.patch \
            file://ruby-CVE-2017-9228.patch \
-           file://CVE-2018-1000073.patch \
            "
=20
 SRC_URI[md5sum] =3D "20c85b67846d49622ef3b24230803fef"
--=20
2.17.1


