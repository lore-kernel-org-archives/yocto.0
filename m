Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.16253.1585431747600622985
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 14:42:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dR1Zqj4U;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: dresser.net@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCE7AE01902; Sat, 28 Mar 2020 14:42:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (dresser.net[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 124E2E01900
	for <yocto@yoctoproject.org>; Sat, 28 Mar 2020 14:42:25 -0700 (PDT)
Received: by mail-qv1-f46.google.com with SMTP id bp12so2902664qvb.7
        for <yocto@yoctoproject.org>; Sat, 28 Mar 2020 14:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=aVYJwGsqAIop9845v872bIqXHrJ8uCCFl8AHjU1FG/4=;
        b=dR1Zqj4US52zG3cq16XHiNt3nm9wxk151dQdCJlWGVd60hweg+X21dWJmLrVQvGsce
         Det887UFSdx3L/yM6U3TFkMIAVga8Ql8EU8uvfil0WT0k0RmS92YpqtdTHjmyyewvJQv
         EBkSeHqj6mDnSDAP20DovpnfyL20WAcFV/JJfOqi8I876Dv134zDnpQUupj50nPjGpYW
         k0tOcYraJCMW+2fjS2pmqK4g/+XafQH2gX1CAzdav2++JBsGSi9+OwVuCO8w7v7Ptj/w
         cPDcXLq+aSEw4xcHSHi6MU0oJSrAGVSCFPRS+6AV2F8KOvdbScqh13GnFPH6KjRy+Rd5
         iQiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=aVYJwGsqAIop9845v872bIqXHrJ8uCCFl8AHjU1FG/4=;
        b=QLlnnqbygUvG6W0ZFhV3Y6v2GTxsJ/+VBZPfaqlZIuYErPpy6yzuUm/KngIHkiXeqI
         1mNSUdepCULs3uIWbe7PjEeYMtcnVnzUfSMjzWNeEDDbt7cL2RuxpqTUmATcQVgKr0In
         Dsnp3S16X1AKwk199/i8VEjLScHZ5awpy2fKJ4SdkkMkRZerY1lq3aSDknioNKGUTOW0
         KwzK3C5iz0AIUZQOs6+GImPD1Oov4lYYPIl59p8ZjgYyCWNHBij6f0y8WFdfbNrZfOJK
         Y6XoSHGsk+4qN/5N9wVlvCXv3Zr4IMt7BN8/VZ5vz93219glDu5zBITuEVD1t3VHarrh
         MB2Q==
X-Gm-Message-State: ANhLgQ2NhCmE+l+bLc1F8mJAOF/VQAYQHINXWFSf17apWjigVYRprO9T
	rV2UM/MAv/svnvxuABXdhwmNwOWCuFi4iHW3uwfs2kFK
X-Google-Smtp-Source: ADFU+vv6s8P8rSmIIe7gm5H4Ag0zDeHOI+tz/0gO/SBDOWsUO+AY4D0jQsVYkmFHoBMfKefttacfSwJ0RRHmpAyXyuQ=
X-Received: by 2002:a05:6214:301:: with SMTP id i1mr5366435qvu.93.1585431744870;
 Sat, 28 Mar 2020 14:42:24 -0700 (PDT)
MIME-Version: 1.0
From: "Derek Dresser" <dresser.net@gmail.com>
Date: Sat, 28 Mar 2020 17:42:14 -0400
Message-ID: <CADmsHKcYEineQpg5w7k=p8-ygVZji-RrOdWviMc8WP54p9RPVA@mail.gmail.com>
Subject: patching an .inc file?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f7fe2f05a1f117b0"

--000000000000f7fe2f05a1f117b0
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to update a build for a custom board based on the Xilinx
zcu102-zynqmp (using meta-xilinx)  to 'zeus' and am getting the following
error message:

Toolchain tunings invalid:
Tuning 'microblaze' has the following errors:
Feature 'v11.0' is not defined.


I have tracked this down to the following file:

poky/meta/conf/machine/include/microblaze/feature-microblaze-versions.inc

Editing this file allows me to build without errors.  I'd like to apply a
patch to this file (or override the file with an edited version.)

diff --git
meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
index 955674fff9..3221e2aab7 100644
--- meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
+++ meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
@@ -44,6 +44,7 @@ TUNEVALID[v9.4]  = "MicroBlaze version 9.4"
 TUNEVALID[v9.5]  = "MicroBlaze version 9.5"
 TUNEVALID[v9.6]  = "MicroBlaze version 9.6"
 TUNEVALID[v10.0] = "MicroBlaze version 10.0"
+TUNEVALID[v11.0] = "MicroBlaze version 11.0"

 # Version conflict matrix
 TUNECONFLICTS[v8.00] = ""
@@ -60,6 +61,7 @@ TUNECONFLICTS[v9.4]  = "v8.00 v8.10 v8.20 v8.30 v8.40
v8.50 v9.0 v9.1 v9.2 v9.3"
 TUNECONFLICTS[v9.5]  = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2
v9.3 v9.4"
 TUNECONFLICTS[v9.6]  = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2
v9.3 v9.4 v9.5"
 TUNECONFLICTS[v10.0] = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2
v9.3 v9.4 v9.5 v9.6"
+TUNECONFLICTS[v11.0] = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2
v9.3 v9.4 v9.5 v9.6 v10.0"

 # Version flags
 TUNE_CCARGS += "-mcpu=${@microblaze_current_version(d, True)}"

I know how to apply a patch against a recipe source file, but not this
toolchain tuning include file.   How can I accomplish this without editing
the files in openembedded-core?   I'd like to override or patch this in my
own layer.

Thanks,
Derek

--000000000000f7fe2f05a1f117b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am trying to update a build fo=
r a custom board based on the Xilinx zcu102-zynqmp (using meta-xilinx)=C2=
=A0 to &#39;zeus&#39; and am getting the following error message:</div><div=
><br></div><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px">=
<div>Toolchain tunings invalid:</div><div>Tuning &#39;microblaze&#39; has t=
he following errors:</div><div>Feature &#39;v11.0&#39; is not defined.</div=
></blockquote><br><div>I have tracked this down to the following file:</div=
><div><br></div><div><blockquote style=3D"margin:0 0 0 40px;border:none;pad=
ding:0px"><div>poky/meta/conf/machine/include/microblaze/feature-microblaze=
-versions.inc</div><div><br></div></blockquote>Editing this file allows me =
to build without errors.=C2=A0 I&#39;d like to apply a patch to this file (=
or override the file with an edited version.)</div><div><br></div><blockquo=
te style=3D"margin:0 0 0 40px;border:none;padding:0px"><div>diff --git meta=
/conf/machine/include/microblaze/feature-microblaze-versions.inc meta/conf/=
machine/include/microblaze/feature-microblaze-versions.inc</div><div>index =
955674fff9..3221e2aab7 100644</div><div>--- meta/conf/machine/include/micro=
blaze/feature-microblaze-versions.inc</div><div>+++ meta/conf/machine/inclu=
de/microblaze/feature-microblaze-versions.inc</div><div>@@ -44,6 +44,7 @@ T=
UNEVALID[v9.4] =C2=A0=3D &quot;MicroBlaze version 9.4&quot;</div><div>=C2=
=A0TUNEVALID[v9.5] =C2=A0=3D &quot;MicroBlaze version 9.5&quot;</div><div>=
=C2=A0TUNEVALID[v9.6] =C2=A0=3D &quot;MicroBlaze version 9.6&quot;</div><di=
v>=C2=A0TUNEVALID[v10.0] =3D &quot;MicroBlaze version 10.0&quot;</div><div>=
+TUNEVALID[v11.0] =3D &quot;MicroBlaze version 11.0&quot;</div><div><br></d=
iv><div>=C2=A0# Version conflict matrix</div><div>=C2=A0TUNECONFLICTS[v8.00=
] =3D &quot;&quot;</div><div>@@ -60,6 +61,7 @@ TUNECONFLICTS[v9.4] =C2=A0=
=3D &quot;v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2 v9.3&quot;</di=
v><div>=C2=A0TUNECONFLICTS[v9.5] =C2=A0=3D &quot;v8.00 v8.10 v8.20 v8.30 v8=
.40 v8.50 v9.0 v9.1 v9.2 v9.3 v9.4&quot;</div><div>=C2=A0TUNECONFLICTS[v9.6=
] =C2=A0=3D &quot;v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2 v9.3 v=
9.4 v9.5&quot;</div><div>=C2=A0TUNECONFLICTS[v10.0] =3D &quot;v8.00 v8.10 v=
8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2 v9.3 v9.4 v9.5 v9.6&quot;</div><div>+=
TUNECONFLICTS[v11.0] =3D &quot;v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.=
1 v9.2 v9.3 v9.4 v9.5 v9.6 v10.0&quot;</div><div><br></div><div>=C2=A0# Ver=
sion flags</div><div>=C2=A0TUNE_CCARGS +=3D &quot;-mcpu=3D${@microblaze_cur=
rent_version(d, True)}&quot;</div><div><br></div></blockquote>I know how to=
 apply a patch against a recipe source file, but not this toolchain tuning =
include file.=C2=A0 =C2=A0How can I accomplish this without editing the fil=
es in openembedded-core?=C2=A0 =C2=A0I&#39;d like to override or patch this=
 in my own layer.<div><br></div><div>Thanks,</div><div>Derek</div></div>

--000000000000f7fe2f05a1f117b0--
