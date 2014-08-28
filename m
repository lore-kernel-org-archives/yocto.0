Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5356E00796; Thu, 28 Aug 2014 16:33:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (californialsullivan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.181 listed in list.dnswl.org]
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 741D3E004F5
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 16:33:15 -0700 (PDT)
Received: by mail-ob0-f181.google.com with SMTP id vb8so1197741obc.26
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 16:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uKCMrLbHxR08I1c7lOM9t/njWc2kwRNXRwMQnxWDGOo=;
	b=GDlqyZ8oT+by3d/NSMytR0OOPtETSjlE14w/5GVqPVQNkWje9jrWtfsZiZNUcPOBu0
	UqDoIG+9YUuSXJhH40/9oXMcETopRZWqdnlDM6x7jMntKxFKsn9cYqTnUB/YDO88+982
	ZiORjWyrz0j6VbVp+yP0K4HyHjeqoMutD4nq5WIHTHa1w3Q96grMmG4YNMqTQACSA4XV
	MKC48UnfHn77nHtCDfKS81I7pjK/QAhH/jpTXIS+nsyVSKIunblGHV0i5LoI7J8oe4np
	JbuJ9HBi+gxYr9ZNikhMLSi+SEJPloVfGa72BikGVlnjaWLywezI/Ae4RWHgymbxls5d
	u0Bg==
MIME-Version: 1.0
X-Received: by 10.60.37.165 with SMTP id z5mr7169029oej.16.1409268794476; Thu,
	28 Aug 2014 16:33:14 -0700 (PDT)
Received: by 10.76.157.229 with HTTP; Thu, 28 Aug 2014 16:33:14 -0700 (PDT)
Date: Thu, 28 Aug 2014 16:33:14 -0700
Message-ID: <CAMP9K89HYuQyK65kPGyBWtm-3DNZMTONhMYVvz6sxtRGnmpSWA@mail.gmail.com>
From: California Sullivan <californialsullivan@gmail.com>
To: yocto@yoctoproject.org
Subject: [PATCH] Autobuilder.py: Fix triggered build bug
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
X-List-Received-Date: Thu, 28 Aug 2014 23:33:22 -0000
Content-Type: multipart/alternative; boundary=089e013c6576e372b10501b8f540

--089e013c6576e372b10501b8f540
Content-Type: text/plain; charset=UTF-8

When a build was configured to use the TriggerBuilds build step, it would
take on the buildslave of the last triggered build rather than its own.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/Autobuilder.py | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index a582a03..2e2e899 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -58,7 +58,7 @@ class Autobuilder:
             self.set_props = {}
             self.repos = []
             self.properties = []
-            self.builders = None
+            self.builders = self.parseBuilders(buildset)
             self.schedprops.append(NestedParameter(name='ss_' + buildset,
label="<h3><div class='trigger_heading' id='"+buildset+"'>" + buildset + "
defaults:</div></h3>", fields=[FixedParameter(name="dummy",
default="dummy")]))
             self.parseBuildSet(buildset)
             locals()['buildset_%s' %
buildset]=BuildSet.BuildSet(name=buildset,
@@ -86,7 +86,6 @@ class Autobuilder:

     def parseBuildSet(self, buildset):
         if buildset is not "BuildSets":
-            self.builders=self.parseBuilders(buildset)
             self.parseProps(buildset)
             self.parseRepos(buildset)
             self.parseSteps(buildset)
-- 
1.9.1

--089e013c6576e372b10501b8f540
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When a build was configured to use the TriggerBuilds build=
 step, it would<br>take on the buildslave of the last triggered build rathe=
r than its own.<br><br>Signed-off-by: California Sullivan &lt;<a href=3D"ma=
ilto:california.l.sullivan@intel.com">california.l.sullivan@intel.com</a>&g=
t;<br>
---<br>=C2=A0lib/python2.7/site-packages/autobuilder/Autobuilder.py | 3 +--=
<br>=C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br><br>diff --git =
a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/si=
te-packages/autobuilder/Autobuilder.py<br>
index a582a03..2e2e899 100644<br>--- a/lib/python2.7/site-packages/autobuil=
der/Autobuilder.py<br>+++ b/lib/python2.7/site-packages/autobuilder/Autobui=
lder.py<br>@@ -58,7 +58,7 @@ class Autobuilder:<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.set_props =3D {}<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 se=
lf.repos =3D []<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 self.properties =3D []<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.builders =3D None<br>+=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.builders =
=3D self.parseBuilders(buildset)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.schedprops.append(NestedParameter(na=
me=3D&#39;ss_&#39; + buildset, label=3D&quot;&lt;h3&gt;&lt;div class=3D&#39=
;trigger_heading&#39; id=3D&#39;&quot;+buildset+&quot;&#39;&gt;&quot; + bui=
ldset + &quot; defaults:&lt;/div&gt;&lt;/h3&gt;&quot;, fields=3D[FixedParam=
eter(name=3D&quot;dummy&quot;, default=3D&quot;dummy&quot;)]))<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 se=
lf.parseBuildSet(buildset)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 locals()[&#39;buildset_%s&#39; % buildset]=3DBu=
ildSet.BuildSet(name=3Dbuildset,<br>@@ -86,7 +86,6 @@ class Autobuilder:<br=
>=C2=A0<br>=C2=A0=C2=A0=C2=A0=C2=A0 def parseBuildSet(self, buildset):<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if buildset is not &quot;B=
uildSets&quot;:<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 self.builders=3Dself.parseBuilders(buildset)<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.parseProp=
s(buildset)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 self.parseRepos(buildset)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.parseSteps(buildset)<br>
-- <br>1.9.1<br><br></div>

--089e013c6576e372b10501b8f540--
