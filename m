Return-Path: <Bjorn.Arnelid@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id DC7A4E0052C
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 07:32:20 -0800 (PST)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%21]) with mapi id
	14.02.0318.001; Mon, 5 Nov 2012 16:32:17 +0100
From: =?iso-8859-1?Q?Bj=F6rn_Arnelid?= <Bjorn.Arnelid@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] [POKY-ECLIPSE] Update plugin version in installation
	details
Thread-Index: Ac27aosrpJRaVrjiR4W+b5LnQQCSxg==
Date: Mon, 5 Nov 2012 15:32:17 +0000
Message-ID: <3978FA4917A02149AA33ECE70914C5151D642417@sestoex09.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.25]
MIME-Version: 1.0
Subject: [PATCH] [POKY-ECLIPSE] Update plugin version in installation details
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
X-List-Received-Date: Mon, 05 Nov 2012 15:32:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3978FA4917A02149AA33ECE70914C5151D642417sestoex09enease_"

--_000_3978FA4917A02149AA33ECE70914C5151D642417sestoex09enease_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From: Bj=F6rn Arnelid <bjorn.arnelid@enea.com>
Date: Mon, 5 Nov 2012 15:47:14 +0100
Subject: [PATCH] [SIGNED-OFF] Update plugin version in installation details
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit


When using version 1.3 Danny and looking in Help -> About Eclipse SDK -> In=
stallation Details -> Plugins.
Yocto eclipse plugin version is described as 1.2.0.qualifier.
Version number should be matching actual version (1.3)

Changed Bundle-Version in projects MANIFEST.MF to 1.3

Signed-off-by: Bj=F6rn Arnelid <bjorn.arnelid@enea.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    2 +-
 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF     |    2 +-
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yoc=
to.bc.ui/META-INF/MANIFEST.MF
index dccabda..85dddf5 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -2,7 +2,7 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.bc.ui;singleton:=3Dtrue
-Bundle-Version: 1.2.0.qualifier
+Bundle-Version: 1.3
 Bundle-Activator: org.yocto.bc.ui.Activator
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.ui,
diff --git a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF b/plugins/org.y=
octo.sdk.ide/META-INF/MANIFEST.MF
index c3d8cc9..dd1b9ec 100644
--- a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
@@ -2,7 +2,7 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.sdk.ide;singleton:=3Dtrue
-Bundle-Version: 1.2.0.qualifier
+Bundle-Version: 1.3
 Bundle-Activator: org.yocto.sdk.ide.YoctoSDKPlugin
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.ui,
diff --git a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF b/plugi=
ns/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
index 6be7da1..df4fbb0 100644
--- a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
@@ -2,7 +2,7 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.sdk.remotetools; singleton:=3Dtrue
-Bundle-Version: 1.2.0.qualifier
+Bundle-Version: 1.3
 Bundle-Activator: org.yocto.sdk.remotetools.Activator
 Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime,
--
1.7.9.5


--_000_3978FA4917A02149AA33ECE70914C5151D642417sestoex09enease_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">From: Bj=F6rn Arnelid &lt;bjorn.arnelid@enea.com&gt;<br>
Date: Mon, 5 Nov 2012 15:47:14 &#43;0100<br>
Subject: [PATCH] [SIGNED-OFF] Update plugin version in installation details=
<br>
MIME-Version: 1.0<br>
Content-Type: text/plain; charset=3DUTF-8<br>
Content-Transfer-Encoding: 8bit<br>
<br>
<br>
When using version 1.3 Danny and looking in Help -&gt; About Eclipse SDK -&=
gt; Installation Details -&gt; Plugins.<br>
Yocto eclipse plugin version is described as 1.2.0.qualifier.<br>
Version number should be matching actual version (1.3)<br>
<br>
Changed Bundle-Version in projects MANIFEST.MF to 1.3<br>
<br>
Signed-off-by: Bj=F6rn Arnelid &lt;bjorn.arnelid@enea.com&gt;<br>
---<br>
&nbsp;plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; 2 &#43;-<br>
&nbsp;plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF&nbsp;&nbsp;&nbsp;&nbsp=
; |&nbsp;&nbsp;&nbsp; 2 &#43;-<br>
&nbsp;.../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |&nbsp;&nbsp;&nbsp=
; 2 &#43;-<br>
&nbsp;3 files changed, 3 insertions(&#43;), 3 deletions(-)<br>
<br>
diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yoc=
to.bc.ui/META-INF/MANIFEST.MF<br>
index dccabda..85dddf5 100644<br>
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF<br>
&#43;&#43;&#43; b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF<br>
@@ -2,7 &#43;2,7 @@ Manifest-Version: 1.0<br>
&nbsp;Bundle-ManifestVersion: 2<br>
&nbsp;Bundle-Name: %Bundle-Name<br>
&nbsp;Bundle-SymbolicName: org.yocto.bc.ui;singleton:=3Dtrue<br>
-Bundle-Version: 1.2.0.qualifier<br>
&#43;Bundle-Version: 1.3<br>
&nbsp;Bundle-Activator: org.yocto.bc.ui.Activator<br>
&nbsp;Bundle-Vendor: %Bundle-Vendor<br>
&nbsp;Require-Bundle: org.eclipse.ui,<br>
diff --git a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF b/plugins/org.y=
octo.sdk.ide/META-INF/MANIFEST.MF<br>
index c3d8cc9..dd1b9ec 100644<br>
--- a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF<br>
&#43;&#43;&#43; b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF<br>
@@ -2,7 &#43;2,7 @@ Manifest-Version: 1.0<br>
&nbsp;Bundle-ManifestVersion: 2<br>
&nbsp;Bundle-Name: %Bundle-Name<br>
&nbsp;Bundle-SymbolicName: org.yocto.sdk.ide;singleton:=3Dtrue<br>
-Bundle-Version: 1.2.0.qualifier<br>
&#43;Bundle-Version: 1.3<br>
&nbsp;Bundle-Activator: org.yocto.sdk.ide.YoctoSDKPlugin<br>
&nbsp;Bundle-Vendor: %Bundle-Vendor<br>
&nbsp;Require-Bundle: org.eclipse.ui,<br>
diff --git a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF b/plugi=
ns/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF<br>
index 6be7da1..df4fbb0 100644<br>
--- a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF<br>
&#43;&#43;&#43; b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF<br=
>
@@ -2,7 &#43;2,7 @@ Manifest-Version: 1.0<br>
&nbsp;Bundle-ManifestVersion: 2<br>
&nbsp;Bundle-Name: %Bundle-Name<br>
&nbsp;Bundle-SymbolicName: org.yocto.sdk.remotetools; singleton:=3Dtrue<br>
-Bundle-Version: 1.2.0.qualifier<br>
&#43;Bundle-Version: 1.3<br>
&nbsp;Bundle-Activator: org.yocto.sdk.remotetools.Activator<br>
&nbsp;Require-Bundle: org.eclipse.ui,<br>
&nbsp; org.eclipse.core.runtime,<br>
-- <br>
1.7.9.5<br>
<br>
</div>
</body>
</html>

--_000_3978FA4917A02149AA33ECE70914C5151D642417sestoex09enease_--
