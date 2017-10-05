Return-Path: <jeffrey.pautler@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B313EE00D85; Thu,  5 Oct 2017 10:03:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 345F3E00C77
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 10:03:09 -0700 (PDT)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v95H1URM001999; Thu, 5 Oct 2017 12:03:07 -0500
Received: from nam03-co1-obe.outbound.protection.outlook.com
	(mail-co1nam03lp0020.outbound.protection.outlook.com [216.32.181.20])
	by mx0a-00010702.pphosted.com with ESMTP id 2ddhfp2fgk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 05 Oct 2017 12:03:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=HT/QJUdRiVQ/4WOJcpZ5H9H3sIDANvhP3qA9I5qCFZo=;
	b=J+aCE+EIuOR4T1q7AOYvJkjhy9asbmoNDJl1rm/Pdo6tX7cBAd/quor3qp6JG7lR7DkkLoOqKRJ6e+A0h58w/UJMvaDRB3d9yCnABY5NpcNKXzlYrwtKUxZy5Ilko9Nyn/lv67AcTtgK4ECNS3ss+pivGXOQNhxB/N1jE4UTN80=
Received: from DM2PR0401MB1295.namprd04.prod.outlook.com (10.160.218.17) by
	DM2PR0401MB1296.namprd04.prod.outlook.com (10.160.218.18) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Thu, 5 Oct 2017 17:03:05 +0000
Received: from DM2PR0401MB1295.namprd04.prod.outlook.com
	([fe80::5040:2c84:f7e3:d856]) by
	DM2PR0401MB1295.namprd04.prod.outlook.com
	([fe80::5040:2c84:f7e3:d856%16]) with mapi id 15.20.0077.018;
	Thu, 5 Oct 2017 17:03:05 +0000
From: Jeffrey Pautler <jeffrey.pautler@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [opkg-utils PATCH] opkg.py/opkg-make-index: Add option to
	include all fields
Thread-Index: AdM9+7UhPccH65PfTXWk5bHtcjDryQ==
Date: Thu, 5 Oct 2017 17:03:04 +0000
Message-ID: <DM2PR0401MB129591A05F292795981061D596700@DM2PR0401MB1295.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [130.164.62.168]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM2PR0401MB1296;
	6:AdkN3OEg5wl9lYCUbmYMsca0M+DnKPn/UnHz+aCzX1QgdzfQaMZ54yu9V0mR2ZnX32CwWDinobWsWvZRnH0MUnzHw42ttHwQPr4u9B65r5EpxWeHtQOTyfFg11jOp1aZG4xTK+7Fdc5HumX88+ZZDBZXR2DUIDOgdy+qcKVpZ0SVq3z4GhR7k5GI5jy/sHxJgpg0mdGB+Sy64Bbu4B2cTw553/xKDf6OixP/I5XLhtbE2zzA305DmgPljSnRiWkSeYAOb7aP4NeH98D5iBHr3tC2n0AUoipZmE4GxohaU6aFy8zLn4IRcbXQzJhJj+Dj43IWFtiRurPfGf5wfZuMXQ==;
	5:xtDH3ueoKlP+x0p6FYD+29kI6i9Lys3Bt4Lyam9PUtvOWMl8g0N03/n+c1vepaPt8RELZjdR8LxUv4rucu675JPK5VGjPt+gjCpHILTZbkgIVBFptdxSmf594prwN8BYHCrA7xHwUi/8cJ9b7sOHAw==;
	24:FPS/tSQ1Duz+5L58O1v+ZKu2hjPEhwXJVd/KjuqeTU04OzmTcT8V7COZOIHEp9dJUxefdPYw7aEiFgZ6I7ynqP8NUzlkQ97QwTl8J4iVKLU=;
	7:RvcP/B9JnRiPZSETtSsNYTXREoip+bEIswIKxXfFZtgSTvol1U97+GRhx4KhJw0HUGTdYY06bNMzfyd2LFmcSEHG2lxZCin0oL96ZCQ0zS0hO8IBcpUGhyiiVC8ffhW7rscgfODjczr0mPO1d4bgLfkU5RGbeIwHfpRm5KQMKS79bSyWy+EpSJgV3oFJUTO25QwqgQ7Q3V6vsneo1tv4wyse4Bbz4Ny2mES6nQui40o=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 650ac49f-1ba1-4815-a35d-08d50c12f1f8
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DM2PR0401MB1296; 
x-ms-traffictypediagnostic: DM2PR0401MB1296:
x-exchange-antispam-report-test: UriScan:(21748063052155)(145744241990776);
x-microsoft-antispam-prvs: <DM2PR0401MB12967913535FDBFA2A9948D396700@DM2PR0401MB1296.namprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(3002001)(100000703101)(100105400095)(93006095)(93001095)(10201501046)(6041248)(20161123560025)(20161123555025)(20161123558100)(20161123564025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM2PR0401MB1296; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM2PR0401MB1296; 
x-forefront-prvs: 04519BA941
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(376002)(346002)(189002)(199003)(3660700001)(7736002)(81166006)(3846002)(25786009)(97736004)(8936002)(478600001)(8676002)(81156014)(74316002)(5250100002)(68736007)(790700001)(6506006)(66066001)(2501003)(6116002)(3280700002)(102836003)(2906002)(53946003)(6436002)(316002)(54356999)(86362001)(55016002)(189998001)(54896002)(14454004)(53936002)(106356001)(99286003)(110136005)(105586002)(2900100001)(5660300001)(6306002)(7696004)(101416001)(33656002)(230783001)(50986999)(9686003)(115813001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0401MB1296;
	H:DM2PR0401MB1295.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2017 17:03:04.9466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0401MB1296
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-10-05_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1710050236
Subject: [opkg-utils PATCH] opkg.py/opkg-make-index: Add option to include all fields
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
X-List-Received-Date: Thu, 05 Oct 2017 17:03:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM2PR0401MB129591A05F292795981061D596700DM2PR0401MB1295_"

--_000_DM2PR0401MB129591A05F292795981061D596700DM2PR0401MB1295_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

If the -f option is enabled, opkg-make-index will include user-defined
fields in the package index rather than discarding them. This change is
motivated by the fact that opkg now has support for user-defined fields
in the package index.

Signed-off-by: Jeffrey Pautler <jeffrey.pautler@ni.com>
---
opkg-make-index | 11 +++++++----
opkg.py         | 28 ++++++++++++++++++----------
2 files changed, 25 insertions(+), 14 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index 3f757f6..3227fc0 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -11,7 +11,7 @@ import re
verbose =3D 0
 def usage():
-     sys.stderr.write("%s [-h] [-s] [-m] [-a] [-l Packages.filelist] [-p P=
ackages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" % (sys.argv[=
0],))
+     sys.stderr.write("%s [-h] [-s] [-m] [-a] [-f] [-l Packages.filelist] =
[-p Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" % (sys.=
argv[0],))
      sys.exit(-1)
 def to_morgue(filename):
@@ -43,7 +43,8 @@ stamplist_filename =3D "Packages.stamps"
opt_s =3D 0
opt_m =3D 0
opt_a =3D 0
-(opts, remaining_args) =3D getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:a")
+opt_f =3D 0
+(opts, remaining_args) =3D getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:af")
for (optkey, optval) in opts:
      if optkey =3D=3D '-h':
           usage()
@@ -64,6 +65,8 @@ for (optkey, optval) in opts:
           locales_dir =3D optval
      if optkey =3D=3D '-a':
           opt_a =3D 1
+     if optkey =3D=3D '-f':
+          opt_f =3D 1
 if ( not remaining_args ):
      usage()
@@ -81,7 +84,7 @@ if old_filename:
      if (verbose):
           sys.stderr.write("Reading package list from " + old_filename + "=
\n")
      old_packages =3D opkg.Packages()
-     old_packages.read_packages_file(old_filename)
+     old_packages.read_packages_file(old_filename, opt_f)
      for k in list(old_packages.packages.keys()):
           p =3D old_packages.packages[k]
           old_pkg_hash[p.filename] =3D p
@@ -122,7 +125,7 @@ for abspath in files:
      if not pkg:
           if (verbose):
                sys.stderr.write("Reading info for package %s\n" % (filenam=
e,))
-          pkg =3D opkg.Package(abspath, relpath=3Dpkg_dir)
+          pkg =3D opkg.Package(abspath, relpath=3Dpkg_dir, all_fields=3Dop=
t_f)
      if opt_a:
           pkg_key =3D ("%s:%s:%s" % (pkg.package, pkg.architecture, pkg.ve=
rsion))
diff --git a/opkg.py b/opkg.py
index 9131755..cdadcab 100644
--- a/opkg.py
+++ b/opkg.py
@@ -45,6 +45,7 @@ from stat import ST_SIZE
import arfile
import tarfile
import textwrap
+import collections
 class Version(object):
     """A class for holding parsed package version information."""
@@ -123,7 +124,7 @@ class Package(object):
     # relpath: If this argument is set, the file path is given relative to=
 this
     #   path when a string representation of the Package object is created=
. If
     #   this argument is not set, the basename of the file path is given.
-    def __init__(self, fn=3DNone, relpath=3DNone):
+    def __init__(self, fn=3DNone, relpath=3DNone, all_fields=3DNone):
         self.package =3D None
         self.version =3D 'none'
         self.parsed_version =3D None
@@ -153,6 +154,7 @@ class Package(object):
         self.fn =3D fn
         self.license =3D None
+        self.user_defined_fields =3D collections.OrderedDict()
         if fn:
             # see if it is deb format
             f =3D open(fn, "rb")
@@ -176,7 +178,7 @@ class Package(object):
             except KeyError:
                 control =3D tarf.extractfile("./control")
             try:
-                self.read_control(control)
+                self.read_control(control, all_fields)
             except TypeError as e:
                 sys.stderr.write("Cannot read control file '%s' - %s\n" % =
(fn, e))
             control.close()
@@ -215,7 +217,7 @@ class Package(object):
             self.size =3D stat[ST_SIZE]
         return int(self.size)
-    def read_control(self, control):
+    def read_control(self, control, all_fields=3DNone):
         import os
         line =3D control.readline()
@@ -227,19 +229,22 @@ class Package(object):
             line =3D line.rstrip()
             lineparts =3D re.match(r'([\w-]*?):\s*(.*)', line)
             if lineparts:
-                name =3D lineparts.group(1).lower()
+                name =3D lineparts.group(1)
+                name_lowercase =3D name.lower()
                 value =3D lineparts.group(2)
                 while 1:
                     line =3D control.readline()
                     if not line: break
                     if line[0] !=3D ' ': break
                     value =3D value + '\n' + line
-                if name =3D=3D 'size':
+                if name_lowercase =3D=3D 'size':
                     self.size =3D int(value)
-                elif name =3D=3D 'md5sum':
+                elif name_lowercase =3D=3D 'md5sum':
                     self.md5 =3D value
-                elif name in self.__dict__:
-                    self.__dict__[name] =3D value
+                elif name_lowercase in self.__dict__:
+                    self.__dict__[name_lowercase] =3D value
+                elif all_fields:
+                    self.user_defined_fields[name] =3D value
                 else:
                     print("Lost field %s, %s" % (name,value))
                     pass
@@ -490,6 +495,9 @@ class Package(object):
         if self.license: out =3D out + "License: %s\n" % (self.license)
         if self.priority: out =3D out + "Priority: %s\n" % (self.priority)
         if self.tags: out =3D out + "Tags: %s\n" % (self.tags)
+        if self.user_defined_fields:
+            for k, v in self.user_defined_fields.items():
+                out =3D out + "%s: %s\n" % (k, v)
         out =3D out + "\n"
         return out
@@ -523,12 +531,12 @@ class Packages(object):
         else:
             return 1
-    def read_packages_file(self, fn):
+    def read_packages_file(self, fn, all_fields=3DNone):
         f =3D open(fn, "r")
         while True:
             pkg =3D Package()
             try:
-                pkg.read_control(f)
+                pkg.read_control(f, all_fields)
             except TypeError as e:
                 sys.stderr.write("Cannot read control file '%s' - %s\n" % =
(fn, e))
                 continue
--
2.7.4

--_000_DM2PR0401MB129591A05F292795981061D596700DM2PR0401MB1295_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">If the -f option is enabled, opkg-make-index will include us=
er-defined<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">fields in the package index rather than discarding them. Thi=
s change is<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">motivated by the fact that opkg now has support for user-def=
ined fields<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">in the package index.<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">Signed-off-by: Jeffrey Pautler &lt;jeffrey.pautler@ni.com&gt=
;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">---<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">opkg-make-index | 11 &#43;&#43;&#43;&#43;&#43;&#43;&#43;----=
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">opkg.py&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 28=
 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;----------<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">2 files changed, 25 insertions(&#43;), 14 deletions(-)<o:p><=
/o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p>&nbsp;</o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">diff --git a/opkg-make-index b/opkg-make-index<o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">index 3f757f6..3227fc0 100755<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">--- a/opkg-make-index<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&#43;&#43; b/opkg-make-index<o:p></o:p></span></font></=
p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -11,7 &#43;11,7 @@ import re<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">verbose =3D 0<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;def usage():<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp; sys.stderr.write(&quot;%s [-h] [-s=
] [-m] [-a] [-l Packages.filelist] [-p Packages] [-r Packages.old] [-L loca=
lesdir] [-v] packagesdir\n&quot; % (sys.argv[0],))<o:p></o:p></span></font>=
</p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp; sys.stderr.write(&quot;%s [-h]=
 [-s] [-m] [-a] [-f] [-l Packages.filelist] [-p Packages] [-r Packages.old]=
 [-L localesdir] [-v] packagesdir\n&quot; % (sys.argv[0],))<o:p></o:p></spa=
n></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sys.exit(-1)<o:p></o:p></span=
></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;def to_morgue(filename):<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -43,7 &#43;43,8 @@ stamplist_filename =3D &quot;Packages.=
stamps&quot;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">opt_s =3D 0<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">opt_m =3D 0<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">opt_a =3D 0<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-(opts, remaining_args) =3D getopt.getopt(sys.argv[1:], &quo=
t;hl:p:vsmr:L:a&quot;)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;opt_f =3D 0<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;(opts, remaining_args) =3D getopt.getopt(sys.argv[1:], =
&quot;hl:p:vsmr:L:af&quot;)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">for (optkey, optval) in opts:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if optkey =3D=3D '-h':
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;usage()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -64,6 &#43;65,8 @@ for (optkey, optval) in opts:<o:p></o:=
p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 locales_dir =3D optval<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if optkey =3D=3D '-a':<o:p></=
o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 opt_a =3D 1<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp; if optkey =3D=3D '-f':<o:p></o=
:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
opt_f =3D 1<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;if ( not remaining_args ):<o:p></o:p></span></font></p=
>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usage()<o:p></o:p></span></fo=
nt></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -81,7 &#43;84,7 @@ if old_filename:<o:p></o:p></span></fo=
nt></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (verbose):<o:p></o:p></spa=
n></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 sys.stderr.write(&quot;Reading package list from &quot; &#43; old_filename=
 &#43; &quot;\n&quot;)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_packages =3D opkg.Package=
s()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp; old_packages.read_packages_file(ol=
d_filename)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp; old_packages.read_packages_fil=
e(old_filename, opt_f)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for k in list(old_packages.pa=
ckages.keys()):<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 p =3D old_packages.packages[k]<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 old_pkg_hash[p.filename] =3D p<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -122,7 &#43;125,7 @@ for abspath in files:<o:p></o:p></sp=
an></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not pkg:<o:p></o:p></span>=
</font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 if (verbose):<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sys.stderr.write(&quot;Reading info for pack=
age %s\n&quot; % (filename,))<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pkg =
=3D opkg.Package(abspath, relpath=3Dpkg_dir)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
pkg =3D opkg.Package(abspath, relpath=3Dpkg_dir, all_fields=3Dopt_f)<o:p></=
o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if opt_a:<o:p></o:p></sp=
an></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 pkg_key =3D (&quot;%s:%s:%s&quot; % (pkg.package, pkg.architecture, pkg.ve=
rsion))<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">diff --git a/opkg.py b/opkg.py<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">index 9131755..cdadcab 100644<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">--- a/opkg.py<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&#43;&#43; b/opkg.py<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -45,6 &#43;45,7 @@ from stat import ST_SIZE<o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">import arfile<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">import tarfile<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">import textwrap<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;import collections<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;class Version(object):<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp; &quot;&quot;&quot;A class for holdi=
ng parsed package version information.&quot;&quot;&quot;<o:p></o:p></span><=
/font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -123,7 &#43;124,7 @@ class Package(object):<o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp; # relpath: If this argument is set,=
 the file path is given relative to this<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp; #&nbsp;&nbsp; path when a string re=
presentation of the Package object is created. If<o:p></o:p></span></font><=
/p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp; #&nbsp;&nbsp; this argument is not =
set, the basename of the file path is given.<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp; def __init__(self, fn=3DNone, relpath=3D=
None):<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp; def __init__(self, fn=3DNone, relpat=
h=3DNone, all_fields=3DNone):<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.packag=
e =3D None<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.versio=
n =3D 'none'<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.parsed=
_version =3D None<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -153,6 &#43;154,7 @@ class Package(object):<o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.fn =3D=
 fn<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.licens=
e =3D None<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.user_de=
fined_fields =3D collections.OrderedDict()
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if fn:=
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; # see if it is deb format<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; f =3D open(fn, &quot;rb&quot;)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -176,7 &#43;178,7 @@ class Package(object):<o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; except KeyError:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; control =3D tarf.extractfile(&quot;./c=
ontrol&quot;)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; try:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.read_control(control)<o:p></o:p></span=
></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.read_control(control, all_fields)<=
o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; except TypeError as e:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sys.stderr.write(&quot;Cannot read con=
trol file '%s' - %s\n&quot; % (fn, e))<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; control.close()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -215,7 &#43;217,7 @@ class Package(object):<o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; self.size =3D stat[ST_SIZE]<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return int(=
self.size)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp; def read_control(self, control):<o:p></o=
:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp; def read_control(self, control, all_=
fields=3DNone):<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; import os<o=
:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;line =
=3D control.readline()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -227,19 &#43;229,22 @@ class Package(object):<o:p></o:p><=
/span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; line =3D line.rstrip()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; lineparts =3D re.match(r'([\w-]*?):\s*(.*)', line)<o:p></o:p><=
/span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; if lineparts:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; name =3D lineparts.group(1).lower()<o:p></o=
:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; name =3D lineparts.group(1)<o:p></o:p><=
/span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; name_lowercase =3D name.lower()<o:p></o=
:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; value =3D lineparts.group(2)<o:p></o:p=
></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while 1:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; line =3D contr=
ol.readline()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not line: b=
reak<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if line[0] !=
=3D ' ': break<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; value =3D valu=
e &#43; '\n' &#43; line<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if name =3D=3D 'size':<o:p></o:p></span></f=
ont></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if name_lowercase =3D=3D 'size':<o:p></=
o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.size =3D =
int(value)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; elif name =3D=3D 'md5sum':<o:p></o:p></span=
></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; elif name_lowercase =3D=3D 'md5sum':<o:=
p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.md5 =3D v=
alue<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; elif name in self.__dict__:<o:p></o:p></spa=
n></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.__dict__[name]=
 =3D value<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; elif name_lowercase in self.__dict__:<o=
:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.__dict__[n=
ame_lowercase] =3D value<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; elif all_fields:<o:p></o:p></span></fon=
t></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.user_defin=
ed_fields[name] =3D value<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;Lo=
st field %s, %s&quot; % (name,value))<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pass<o:p></o:p=
></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -490,6 &#43;495,9 @@ class Package(object):<o:p></o:p></s=
pan></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.lic=
ense: out =3D out &#43; &quot;License: %s\n&quot; % (self.license)<o:p></o:=
p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.pri=
ority: out =3D out &#43; &quot;Priority: %s\n&quot; % (self.priority)<o:p><=
/o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.tag=
s: out =3D out &#43; &quot;Tags: %s\n&quot; % (self.tags)<o:p></o:p></span>=
</font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if self.user=
_defined_fields:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; for k, v in self.user_defined_fields.items():<o:p></o:p></span>=
</font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; out =3D out &#43; &quot;%s: %s\n&quot; =
% (k, v)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; out =3D out=
 &#43; &quot;\n&quot;<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return=
 out<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">@@ -523,12 &#43;531,12 @@ class Packages(object):<o:p></o:p>=
</span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<o:p><=
/o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; return 1<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt"><o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp; def read_packages_file(self, fn):<o:p></=
o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp; def read_packages_file(self, fn, all=
_fields=3DNone):<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f =3D open(=
fn, &quot;r&quot;)<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while True:=
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; pkg =3D Package()<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; try:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pkg.read_control(f)<o:p></o:p></span></font=
></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&#43;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pkg.read_control(f, all_fields)<o:p></o=
:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; except TypeError as e:<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sys.stderr.write(&quot;Cannot read con=
trol file '%s' - %s\n&quot; % (fn, e))<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">--
<o:p></o:p></span></font></p>
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">2.7.4<o:p></o:p></span></font></p>
</div>
</body>
</html>

--_000_DM2PR0401MB129591A05F292795981061D596700DM2PR0401MB1295_--
