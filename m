Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 538A9E00B21; Thu, 18 May 2017 11:16:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.16.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 311 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 May 2017 11:16:55 PDT
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11FAEE00961
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 11:16:55 -0700 (PDT)
Received: from g9t5008.houston.hpe.com (g9t5008.houston.hpe.com [15.241.48.72])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id A9D671A10
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 18:11:43 +0000 (UTC)
Received: from G4W9120.americas.hpqcorp.net (exchangepmrr1.us.hpecorp.net
	[16.210.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5008.houston.hpe.com (Postfix) with ESMTPS id 10E3743
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 18:11:42 +0000 (UTC)
Received: from G9W8456.americas.hpqcorp.net (2002:10d8:a15f::10d8:a15f) by
	G4W9120.americas.hpqcorp.net (2002:10d2:150f::10d2:150f) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Thu, 18 May 2017 18:11:41 +0000
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (15.241.52.13) by
	G9W8456.americas.hpqcorp.net (16.216.161.95) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Thu, 18 May 2017 18:11:41 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0174.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.155) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1084.16; Thu, 18 May 2017 18:11:40 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.01.1084.030; Thu, 18 May 2017 18:11:40 +0000
From: "Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [poky/classes] [PATCH] new alternatesrc.bbclass 
Thread-Index: AdLQAXImgNcpOqd0S3m7Clz1zUvLkA==
Date: Thu, 18 May 2017 18:11:40 +0000
Message-ID: <TU4PR84MB01765722C800C08E3BCD3286EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0174;
	7:xrZaOI2BKGNJhjZXMEKkq/ZJFae9YV815o9Rt11f43zQIsGNolqE7Qou0BZGF9KSP0HXIzqsRC+o+CeeYNrDfCV8Q8+IIROxELy5XZcIcQX7cwRRgRDjVF6lKSKMqVTg2NlXaf2iEqOGnTHhjaBJbJqtV6yRW+8oHSuE9KgEqaG3E7KEFNuR3OUCwH7vhTiHQVI90ByG2GSYU8tlTReBiMyaGnV2nAZrm+kSvgH8FL+woJIAVZrW0+nVt4URr7Y3vaGeEktbygZ6DcUN+ODL884IXTIfdiT/5/RxTtfethl92MXmjf3+b9mfaHgQ9wmCC2eS3sEeIQ5lXARodib0xw==
x-ms-office365-filtering-correlation-id: 8b8f7ef0-da7a-4f42-563d-08d49e1954f0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081);
	SRVR:TU4PR84MB0174; 
x-microsoft-antispam-prvs: <TU4PR84MB0174099E21B79116D9554E7AEDE40@TU4PR84MB0174.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(158342451672863)(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(6055026)(6041248)(20161123558100)(20161123564025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123555025)(6072148);
	SRVR:TU4PR84MB0174; BCL:0; PCL:0; RULEID:; SRVR:TU4PR84MB0174; 
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39400400002)(39450400003)(39840400002)(39860400002)(39850400002)(478600001)(6916009)(53936002)(122556002)(2501003)(5640700003)(25786009)(33656002)(6436002)(9686003)(38730400002)(110136004)(3846002)(6116002)(5660300001)(55016002)(102836003)(66066001)(2351001)(1730700003)(189998001)(8936002)(77096006)(74316002)(7696004)(50986999)(54356999)(81166006)(86362001)(3660700001)(3280700002)(2906002)(7736002)(6506006)(305945005)(8676002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0174;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2017 18:11:40.0728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0174
X-OriginatorOrg: hpe.com
Subject: [poky/classes] [PATCH] new alternatesrc.bbclass
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
X-List-Received-Date: Thu, 18 May 2017 18:16:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In our environment, we have package that are store inside git in their own =
repo.  Using SRC_URI we fetch the code and build it from the git repo itsel=
f and all is fine.  When developer wants to change the content of the packa=
ge, they had to clone, change, commit, push and only then they were able to=
 test because yocto recipe clone/fetch from the git server only.

We investigated externalsrc to use it so to build from a local folder, but =
then this required that all our packages be located locally on disk.  In tu=
rn, that cause other kind of headaches. =20

I came up with the following solution "alternatesrc.bbclass" which is based=
 on "externalsrc.bbclass" and do nothing unless a folder exists at the "ALT=
ERNATESRC" location.  If a folder exists there, then the git SRC_URI is ign=
ored and the do_fetch, do_unpack & do_patch are disabled.  The code located=
 at the folder is used as is (no specific branch are checked out so to allo=
w testing local change that have not been committed).

I am hoping to get feedback and comments, and maybe help someone else by sh=
aring this.

Since this is my first contribution, I apologize if I didn't do it properly=
.

---
 meta/classes/alternatesrc.bbclass | 70 +++++++++++++++++++++++++++++++++++=
++++
 1 file changed, 70 insertions(+)
 create mode 100644 meta/classes/alternatesrc.bbclass

diff --git a/meta/classes/alternatesrc.bbclass b/meta/classes/alternatesrc.=
bbclass
new file mode 100644
index 0000000000..13f85df851
--- /dev/null
+++ b/meta/classes/alternatesrc.bbclass
@@ -0,0 +1,72 @@
+# Copyright (C) 2017 Hewlett Packard Enterprise
+# Author: Yannick Koehler
+# Released under the MIT license (see COPYING.MIT for the terms)
+# Some code and influence taken from externalsrc.bbclass
+#
+# alternatesrc.bbclass enables use of an optionally existing source tree, =
usually external =20
+# to the build system to build a piece of software rather than the usual f=
etch/unpack
+# process.
+#
+# To use, add alternatesrc to the global inherit and set ALTERNATESRC to p=
oint at the
+# directory you want to use containing the sources e.g. from local.conf fo=
r a recipe
+# called "myrecipe" you would do:
+#
+# INHERIT +=3D "alternatesrc"
+# ALTERNATESRC_pn-myrecipe =3D "/path/to/my/source/tree"
+#
+
+ALTERNATESRC_COVEREDTASKS ?=3D "do_unpack do_fetch"
+
+python () {
+    alternatesrc =3D d.getVar('ALTERNATESRC', True)
+
+    if alternatesrc and os.path.isdir(alternatesrc):
+        # Make it obvious that this is happening, since forgetting about i=
t could lead to much confusion
+        bb.note('NOTE: using alternate source tree %s' % (d.getVar('ALTERN=
ATESRC', True)))
+
+        d.setVar('S', alternatesrc)
+
+        local_srcuri =3D []
+        fetch =3D bb.fetch2.Fetch((d.getVar('SRC_URI', True) or '').split(=
), d)
+        for url in fetch.urls:
+            url_data =3D fetch.ud[url]
+            parm =3D url_data.parm
+            if (url_data.type =3D=3D 'file' or
+                    'type' in parm and parm['type'] =3D=3D 'kmeta'):
+                local_srcuri.append(url)
+
+        d.setVar('SRC_URI', ' '.join(local_srcuri))
+
+        if '{SRCPV}' in d.getVar('PV', False):
+            # Dummy value because the default function can't be called wit=
h blank SRC_URI
+            d.setVar('SRCPV', '999')
+
+        tasks =3D filter(lambda k: d.getVarFlag(k, "task", True), d.keys()=
)
+
+        for task in tasks:
+            #if task.endswith("_setscene"):
+            #    # sstate is never going to work for external source trees=
, disable it
+            #    bb.build.deltask(task, d)
+            #else:
+            # Since configure will likely touch ${S}, ensure only we lock =
so one task has access at a time
+            d.appendVarFlag(task, "lockfiles", " ${S}/singletask.lock")
+
+            # We do not want our source to be wiped out, ever (kernel.bbcl=
ass does this for do_clean)
+            cleandirs =3D (d.getVarFlag(task, 'cleandirs', False) or '').s=
plit()
+            setvalue =3D False
+            for cleandir in cleandirs[:]:
+                if d.expand(cleandir) =3D=3D alternatesrc:
+                    cleandirs.remove(cleandir)
+                    setvalue =3D True
+            if setvalue:
+                d.setVarFlag(task, 'cleandirs', ' '.join(cleandirs))
+
+        fetch_tasks =3D ['do_fetch', 'do_unpack']
+
+        for task in d.getVar("ALTERNATESRC_COVEREDTASKS", True).split():
+            if local_srcuri and task in fetch_tasks:
+                continue
+            bb.build.deltask(task, d)
+    else:
+            bb.note('NOTE: using git source tree, since local folder %s is=
 inexistent' % (d.getVar('ALTERNATESRC', True)))
+}
--=20
2.12.0


