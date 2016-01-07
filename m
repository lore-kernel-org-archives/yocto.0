Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 259DAE00948; Thu,  7 Jan 2016 07:57:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
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
	*      [209.85.217.179 listed in list.dnswl.org]
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3E92E0082E
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2016 07:57:30 -0800 (PST)
Received: by mail-lb0-f179.google.com with SMTP id bc4so209413959lbc.2
	for <yocto@yoctoproject.org>; Thu, 07 Jan 2016 07:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4blDW96EEkLC/gBvHV2QELYYtzguX1e1j9clcxnHhKU=;
	b=r/2cT7YE7bKGU2ptfkFF6OG7ed4lmCVF2NBYWv4zmBIF9+qn9I9NOwtTnw5R2OGbDO
	sYtyBoa7iisDrDavrEzwdp5t+ju+kD5Nx8a+3w9y00x0odpiA0FbSGUPMJK/P5cMab7J
	uD8Y0pwKQ5tZqGolJdyv0e2wvP3srs4I/QBdsnLyWVbiaGxgrK6LPRfv0qXrxHqBUtRq
	alT3/pZhz/6GdVW8DHMA6jw/Gw+4lcy9ed3fdVv1lLQdLSRtY0EFVUBatxQhvWSLoitZ
	7/8zcGJuBHsiWZ4zWvvBR3tiKaQIuqahqztCy533+aQ7xsxuCv3fx4JBQxATMWeAYF+F
	oLJw==
MIME-Version: 1.0
X-Received: by 10.112.181.196 with SMTP id dy4mr21628827lbc.42.1452182248148; 
	Thu, 07 Jan 2016 07:57:28 -0800 (PST)
Received: by 10.25.216.228 with HTTP; Thu, 7 Jan 2016 07:57:28 -0800 (PST)
Date: Thu, 7 Jan 2016 15:57:28 +0000
Message-ID: <CABatt_yF4MQ80o3huh83nmWKSmNujC9516MPtVD5a9g12LTxrw@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: Eclipse Plugin doesn't install in a fresh install of Mars
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
X-List-Received-Date: Thu, 07 Jan 2016 15:57:33 -0000
Content-Type: multipart/alternative; boundary=001a11c36f5c0cd8430528c087ce

--001a11c36f5c0cd8430528c087ce
Content-Type: text/plain; charset=UTF-8

Hi,

I've been trying to install the Yocto plugin for mars from
http://downloads.yoctoproject.org/releases/eclipse-plugin/2.0/mars/
but if fails with an unmet dependency to tm.terminal 3.0.1

I downloaded the source code and grepped for 3.0.1, checked out mars-master
and found the offending line and removed it, I couldn't find any reference
to tm.terminal in the code so it looks safe to do so.  Rebuilt and the
plugin and it now installs.

Here's a patch if this is correct.

Best Regards,
Martin.

From 48f048210e77d377d2cbed37ce68346b1074e694 Mon Sep 17 00:00:00 2001
From: Martin Townsend <martin@rufilla.com>
Date: Thu, 7 Jan 2016 15:25:32 +0000
Subject: [PATCH] Removed 3.0.1 tm.terminal dependency

---
 features/org.yocto.sdk/feature.xml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/features/org.yocto.sdk/feature.xml
b/features/org.yocto.sdk/feature.xml
index 5d8c51b..7eb2956 100644
--- a/features/org.yocto.sdk/feature.xml
+++ b/features/org.yocto.sdk/feature.xml
@@ -60,7 +60,6 @@
       <import plugin="org.eclipse.rse.files.ui" version="3.1.1"
match="greaterOrEqual"/>
       <import plugin="org.eclipse.rse.subsystems.shells.core"
version="3.1.0" match="greaterOrEqual"/>
       <import plugin="org.eclipse.cdt.launch.remote" version="2.2.0"
match="greaterOrEqual"/>
-      <import plugin="org.eclipse.tm.terminal" version="3.0.1"
match="greaterOrEqual"/>
       <import plugin="org.eclipse.rse.terminals.ui" version="1.0.100"
match="greaterOrEqual"/>
       <import plugin="org.eclipse.debug.ui"/>
       <import plugin="org.eclipse.ui.forms"/>
-- 
1.9.1

--001a11c36f5c0cd8430528c087ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve been trying to install the=
 Yocto plugin for mars from=C2=A0</div><div><a href=3D"http://downloads.yoc=
toproject.org/releases/eclipse-plugin/2.0/mars/">http://downloads.yoctoproj=
ect.org/releases/eclipse-plugin/2.0/mars/</a><br></div><div>but if fails wi=
th an unmet dependency to tm.terminal 3.0.1</div><div><br></div><div>I down=
loaded the source code and grepped for 3.0.1, checked out mars-master and f=
ound the offending line and removed it, I couldn&#39;t find any reference t=
o tm.terminal in the code so it looks safe to do so.=C2=A0 Rebuilt and the =
plugin and it now installs.</div><div><br></div><div>Here&#39;s a patch if =
this is correct.</div><div><br></div><div>Best Regards,</div><div>Martin.</=
div><div><br></div><div><div>From 48f048210e77d377d2cbed37ce68346b1074e694 =
Mon Sep 17 00:00:00 2001</div><div>From: Martin Townsend &lt;<a href=3D"mai=
lto:martin@rufilla.com">martin@rufilla.com</a>&gt;</div><div>Date: Thu, 7 J=
an 2016 15:25:32 +0000</div><div>Subject: [PATCH] Removed 3.0.1 tm.terminal=
 dependency</div><div><br></div><div>---</div><div>=C2=A0features/org.yocto=
.sdk/feature.xml | 1 -</div><div>=C2=A01 file changed, 1 deletion(-)</div><=
div><br></div><div>diff --git a/features/org.yocto.sdk/feature.xml b/featur=
es/org.yocto.sdk/feature.xml</div><div>index 5d8c51b..7eb2956 100644</div><=
div>--- a/features/org.yocto.sdk/feature.xml</div><div>+++ b/features/org.y=
octo.sdk/feature.xml</div><div>@@ -60,7 +60,6 @@</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0&lt;import plugin=3D&quot;org.eclipse.rse.files.ui&quot; versi=
on=3D&quot;3.1.1&quot; match=3D&quot;greaterOrEqual&quot;/&gt;</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;import plugin=3D&quot;org.eclipse.rse.subsys=
tems.shells.core&quot; version=3D&quot;3.1.0&quot; match=3D&quot;greaterOrE=
qual&quot;/&gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;import plugin=3D&q=
uot;org.eclipse.cdt.launch.remote&quot; version=3D&quot;2.2.0&quot; match=
=3D&quot;greaterOrEqual&quot;/&gt;</div><div>- =C2=A0 =C2=A0 =C2=A0&lt;impo=
rt plugin=3D&quot;org.eclipse.tm.terminal&quot; version=3D&quot;3.0.1&quot;=
 match=3D&quot;greaterOrEqual&quot;/&gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;import plugin=3D&quot;org.eclipse.rse.terminals.ui&quot; version=3D&=
quot;1.0.100&quot; match=3D&quot;greaterOrEqual&quot;/&gt;</div><div>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0&lt;import plugin=3D&quot;org.eclipse.debug.ui&quot;/&=
gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;import plugin=3D&quot;org.ecli=
pse.ui.forms&quot;/&gt;</div><div>--=C2=A0</div><div>1.9.1</div><div><br></=
div></div></div>

--001a11c36f5c0cd8430528c087ce--
