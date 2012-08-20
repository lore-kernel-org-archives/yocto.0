Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7437E0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 15:57:28 -0700 (PDT)
Received: from mail-qa0-f52.google.com ([209.85.216.52])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 20 Aug 2012 15:57:28 -0700
Received: by qabg14 with SMTP id g14so2984701qab.4
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 15:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=zeVr3c2UtfdNPstlgc46F2M8Rt7ybz43pt3qtkWJ9qc=;
	b=i4fVoZEbrDLbGH8arTVZMkk6RMPCr4sO7246JD/dQ9KPC9uNRkzeF59Y8APA1ywLl3
	rb1xhAoRLHTMsnqDoPRXZocjDo9EsSodxiOYkSi2UKEmXSdYptnIA0wrh/LADXY6VF0X
	5PCr4VKg5NhrisYHzP132GEIhWNxorukDmZ9Tn+uUwpF1hcbvFj6K14G+2TJIjT+a/DZ
	uRrLSMAkGvK8Jiu9zE3sQVjA2ONTW1nHzatdX4+VOt6+pbnDatNDbk8XZpVODPB0MeVr
	+9f89mzBQy1n3ATVjaF2rO3LiqlLp+oFexmUGNB+Q2b5EqzhWiCS8SMPJRr1N9Y3C8nw
	/wnA==
MIME-Version: 1.0
Received: by 10.229.135.75 with SMTP id m11mr13840536qct.66.1345503447465;
	Mon, 20 Aug 2012 15:57:27 -0700 (PDT)
Received: by 10.229.103.143 with HTTP; Mon, 20 Aug 2012 15:57:27 -0700 (PDT)
Date: Mon, 20 Aug 2012 15:57:27 -0700
Message-ID: <CAPhnLPDV_HrO8f0Lr2Si+gPwv96ubX3bm6t+g5-_V+dNoDF7_A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkjl25nPn8TnjGgex54hPwoyzqR0HcL1LjN4Fl/eH2uEzfIEIhY0F84ZQuN8pnan802ep2X
Cc: IoanaX Grigoropol <ioanax.grigoropol@intel.com>
Subject: [eclipse-poky][PATCH] setup.py: Change main eclipse SDK repo to point to yocto
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
X-List-Received-Date: Mon, 20 Aug 2012 22:57:28 -0000
Content-Type: multipart/alternative; boundary=00248c6a66c207bf0904c7ba6fc4

--00248c6a66c207bf0904c7ba6fc4
Content-Type: text/plain; charset=ISO-8859-1

The main eclipse download site has been hard to connect to
for many users. This sets up the main setup script to use a
mirror of the eclipse tarballs.

One note of importance here, is that we will have to maintain
a mirror of all SDK releases we wish to utilize.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 scripts/setup.sh |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 5a928f4..b7e2a54 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -66,7 +66,7 @@ if [ ! -f
eclipse/plugins/org.eclipse.swt_3.100.0.v4233d.jar ]; then
   fi
   # Eclipse SDK: Need the SDK so we can link into docs
   echo "Getting Eclipse SDK..."
-  wget "
http://download.eclipse.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz
"
+  wget "
http://downloads.yoctoproject.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz
"
   tar xfz eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz || err_exit $?
"extracting Eclipse SDK failed"
   rm eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz
   cd "${curdir2}"
-- 
1.7.5.4

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--00248c6a66c207bf0904c7ba6fc4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

The main eclipse download site has been hard to connect to<br>for many user=
s. This sets up the main setup script to use a<br>mirror of the eclipse tar=
balls.<br><br>One note of importance here, is that we will have to maintain=
<br>
a mirror of all SDK releases we wish to utilize.<br><br>Signed-off-by: Eliz=
abeth Flanagan &lt;<a href=3D"mailto:elizabeth.flanagan@intel.com">elizabet=
h.flanagan@intel.com</a>&gt;<br>---<br>=A0scripts/setup.sh |=A0=A0=A0 2 +-<=
br>=A01 files changed, 1 insertions(+), 1 deletions(-)<br>
<br>diff --git a/scripts/setup.sh b/scripts/setup.sh<br>index 5a928f4..b7e2=
a54 100755<br>--- a/scripts/setup.sh<br>+++ b/scripts/setup.sh<br>@@ -66,7 =
+66,7 @@ if [ ! -f eclipse/plugins/org.eclipse.swt_3.100.0.v4233d.jar ]; th=
en<br>
=A0=A0 fi<br>=A0=A0 # Eclipse SDK: Need the SDK so we can link into docs<br=
>=A0=A0 echo &quot;Getting Eclipse SDK...&quot;<br>-=A0 wget &quot;<a href=
=3D"http://download.eclipse.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}=
${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz">http://download.eclipse=
.org/eclipse/downloads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep=
_ver}-${ep_arch}.tar.gz</a>&quot;<br>
+=A0 wget &quot;<a href=3D"http://downloads.yoctoproject.org/eclipse/downlo=
ads/drops4/${ep_rel}${ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.ta=
r.gz">http://downloads.yoctoproject.org/eclipse/downloads/drops4/${ep_rel}$=
{ep_ver}${ep_date}/eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz</a>&quot;<br>
=A0=A0 tar xfz eclipse-SDK-${ep_ver}-${ep_arch}.tar.gz || err_exit $? &quot=
;extracting Eclipse SDK failed&quot;<br>=A0=A0 rm eclipse-SDK-${ep_ver}-${e=
p_arch}.tar.gz<br>=A0=A0 cd &quot;${curdir2}&quot;<br>-- <br>1.7.5.4<br><br=
 clear=3D"all">
-- <br>Elizabeth Flanagan<br>Yocto Project<br>Build and Release<br>

--00248c6a66c207bf0904c7ba6fc4--
