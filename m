Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E1E0E01101; Thu, 28 Jun 2018 14:19:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3D50E00AE4
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 14:19:22 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id l25-v6so6561996ioh.12
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 14:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bPmXS3FLr4DzfKBoD75Za+mq4z0IaKw6isJDL16RtpA=;
	b=FtelAOt3qhMXrme37jd4m4oE75scO9+zz4tswd8Wdi+ZKgWHD6PfJKSlX9rhQzhdUY
	LOuvh2rwDJ5rH4cuaB/7/IamKdldzyfvDXjvAGtwJbBjvbyU0HkKqgx0VWa4+EuK6ou6
	Sz9S2EOE2ujeRGvyONvs5LPdMSZ5KdZrlsB4aOQhIbeBifzxJl7SGfPxszrk6PLWCTrw
	TDVW0BJKb0gJUlSyYf8wJqxwRkpQz4KA+nkrV9nb9NPLfoHLqQJrD0wvGIFF1fPrQm90
	UAs0uje9LT+7UnlbTa4keaR2x459UeF2mIXAgYKsf+HCmMDcc0XVmlk8NvpXGgLYTe9W
	UO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bPmXS3FLr4DzfKBoD75Za+mq4z0IaKw6isJDL16RtpA=;
	b=hxt6BAv0h+NVjTDUOgTZBoCuQMDhnpkyVbtOTBxXSyNJDMXRWMC+oPQQFHaRdn8hX4
	Ty+UndVzgRR4UZQeV3pM2tlXSBZLZ6hdNwY73Uk4wU5UMGBhDI7BW9n//9Na4zbyHAVr
	cHl9Ng4tz8/lI3+Gbf5eenHLVve3a8GSoRAVYZ3S89y5/evqEQFy+tLHuGXYvQM5ysXW
	UciBZGgSQAgvGWBoRG5OtBiRIt4zOtyR9Z2qxwoCYfLvhM0eXaD+MRRldKYH1v8VBNLm
	YfmqBLc543aavRbiq3iAz2vtmj3IEr7HGVJpbD5AuBkBMcwldr8XKiHU22+g7Td9IV0K
	xdYQ==
X-Gm-Message-State: APt69E1IojKmRC9IS/k3Q2njo22pZ7CdW9jLEu30C+6YzKdnxsXV4OIb
	daZUNeqYM+ygalA03f//jLWg35MjvJjSChXKUbmpNg==
X-Google-Smtp-Source: AAOMgpeicvP36KOc+CUer6DD7ShbjkQEUV9g6JxPE/53hZ1lRUBjIq9hz/DbKqMzDLbJZgQtz8TugR6hcnCxwV/fNzg=
X-Received: by 2002:a6b:6f0b:: with SMTP id
	k11-v6mr10450541ioc.62.1530220762046; 
	Thu, 28 Jun 2018 14:19:22 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Thu, 28 Jun 2018 16:19:10 -0500
Message-ID: <CAFzUWGm+ji+pGQJAxz-bFMUok4eLSkMgMNyUtYw_OWDyUdHz6g@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Understanding "dev package contains non-symlink"
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
X-List-Received-Date: Thu, 28 Jun 2018 21:19:24 -0000
Content-Type: multipart/alternative; boundary="000000000000f32924056fba4872"

--000000000000f32924056fba4872
Content-Type: text/plain; charset="UTF-8"

Hi,

I've read the emails in this mailing list. I'm mostly struggling to
understand the situation for which "-dev package contains non-symlink .so"
occurs. I understand that normally, one expects "*.so" files installed as
part of the package, with symlinks to these versions in the "-dev" package.
What I don't understand is the fix, and why this problem occurs in the
first place.

The recipe I'm working on in question is here: xrootd_4.8.3.bb
<https://github.com/kratsg/meta-l1calo/blob/add/xrootd/recipes-core/root/xrootd_4.8.3.bb>
(if
this link doesn't work in the future, it's probably because I've merged
this to master). This recipe is to install this piece of code:
https://github.com/xrootd/xrootd.

Here's an example of the errors:

ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: -dev package contains
non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdThrottle-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecsss-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecunix-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecpwd-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdN2No2p-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSec-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdFileCache-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSsiLog-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdCksCalczcrc32-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdBwm-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdBlacklistDecision-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdClProxyPlugin-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecProt-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdOssSIgpfsT-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSsi-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdPss-4.so'
-dev package contains non-symlink .so: xrootd-dev path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdXrootd-4.so'
[dev-elf]
ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. Please
consider fixing them.
ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/temp/log.do_package_qa.28174
ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:do_package_qa)
failed with exit code '1'

Then, when I add these lines to the recipe:

  FILES_SOLIBSDEV = ""
  FILES_${PN} += "${libdir}/*.so"

I find that nothing is really fixed. It seems to be a similar error, but
with different files now:

ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk-
package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdXml.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdSsiLib.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCryptoLite.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdAppUtils.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCrypto.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdPosix.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdUtils.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdSsiShMap.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCl.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdClient.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdServer.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdPosixPreload.so'
non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
'/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdFfs.so'
[dev-so]
ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. Please
consider fixing them.
ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/temp/log.do_package_qa.30048
ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:do_package_qa)
failed with exit code '1'

I'm getting a bit confused as these errors didn't show up the first time.
And I suppose part of the confusing is about packaging vs installation.

Thanks,

Giordon
-- 
Giordon Stark

--000000000000f32924056fba4872
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve read the emails in this ma=
iling list. I&#39;m mostly struggling to understand the situation for which=
 &quot;<font face=3D"monospace">-dev package contains non-symlink .so</font=
>&quot; occurs. I understand that normally, one expects &quot;*.so&quot; fi=
les installed as part of the package, with symlinks to these versions in th=
e &quot;-dev&quot; package. What I don&#39;t understand is the fix, and why=
 this problem occurs in the first place.</div><div><br></div><div>The recip=
e I&#39;m working on in question is here:=C2=A0<a href=3D"https://github.co=
m/kratsg/meta-l1calo/blob/add/xrootd/recipes-core/root/xrootd_4.8.3.bb">xro=
otd_4.8.3.bb</a>=C2=A0(if this link doesn&#39;t work in the future, it&#39;=
s probably because I&#39;ve merged this to master). This recipe is to insta=
ll this piece of code:=C2=A0<a href=3D"https://github.com/xrootd/xrootd">ht=
tps://github.com/xrootd/xrootd</a>.</div><div><br></div><div>Here&#39;s an =
example of the errors:</div><div><br></div><div><div><font face=3D"monospac=
e">ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: -dev package contains no=
n-symlink .so: xrootd-dev path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r=
0/packages-split/xrootd-dev/usr/lib/libXrdThrottle-4.so&#39;</font></div><d=
iv><font face=3D"monospace">-dev package contains non-symlink .so: xrootd-d=
ev path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd=
-dev/usr/lib/libXrdSecsss-4.so&#39;</font></div><div><font face=3D"monospac=
e">-dev package contains non-symlink .so: xrootd-dev path &#39;/work/aarch6=
4-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecuni=
x-4.so&#39;</font></div><div><font face=3D"monospace">-dev package contains=
 non-symlink .so: xrootd-dev path &#39;/work/aarch64-poky-linux/xrootd/4.8.=
3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecpwd-4.so&#39;</font></div><=
div><font face=3D"monospace">-dev package contains non-symlink .so: xrootd-=
dev path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdN2No2p-4.so&#39;</font></div><div><font face=3D"monospa=
ce">-dev package contains non-symlink .so: xrootd-dev path &#39;/work/aarch=
64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSec-4=
.so&#39;</font></div><div><font face=3D"monospace">-dev package contains no=
n-symlink .so: xrootd-dev path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r=
0/packages-split/xrootd-dev/usr/lib/libXrdFileCache-4.so&#39;</font></div><=
div><font face=3D"monospace">-dev package contains non-symlink .so: xrootd-=
dev path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdSsiLog-4.so&#39;</font></div><div><font face=3D"monospa=
ce">-dev package contains non-symlink .so: xrootd-dev path &#39;/work/aarch=
64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdCksCa=
lczcrc32-4.so&#39;</font></div><div><font face=3D"monospace">-dev package c=
ontains non-symlink .so: xrootd-dev path &#39;/work/aarch64-poky-linux/xroo=
td/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdBwm-4.so&#39;</font></d=
iv><div><font face=3D"monospace">-dev package contains non-symlink .so: xro=
otd-dev path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/x=
rootd-dev/usr/lib/libXrdBlacklistDecision-4.so&#39;</font></div><div><font =
face=3D"monospace">-dev package contains non-symlink .so: xrootd-dev path &=
#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/=
lib/libXrdClProxyPlugin-4.so&#39;</font></div><div><font face=3D"monospace"=
>-dev package contains non-symlink .so: xrootd-dev path &#39;/work/aarch64-=
poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecProt-=
4.so&#39;</font></div><div><font face=3D"monospace">-dev package contains n=
on-symlink .so: xrootd-dev path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-=
r0/packages-split/xrootd-dev/usr/lib/libXrdOssSIgpfsT-4.so&#39;</font></div=
><div><font face=3D"monospace">-dev package contains non-symlink .so: xroot=
d-dev path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xro=
otd-dev/usr/lib/libXrdSsi-4.so&#39;</font></div><div><font face=3D"monospac=
e">-dev package contains non-symlink .so: xrootd-dev path &#39;/work/aarch6=
4-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdPss-4.=
so&#39;</font></div><div><font face=3D"monospace">-dev package contains non=
-symlink .so: xrootd-dev path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0=
/packages-split/xrootd-dev/usr/lib/libXrdXrootd-4.so&#39; [dev-elf]</font><=
/div><div><font face=3D"monospace">ERROR: xrootd-4.8.3-r0 do_package_qa: QA=
 run found fatal errors. Please consider fixing them.</font></div><div><fon=
t face=3D"monospace">ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed:=
 do_package_qa</font></div><div><font face=3D"monospace">ERROR: Logfile of =
failure stored in: /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/=
xrootd/4.8.3-r0/temp/log.do_package_qa.28174</font></div><div><font face=3D=
"monospace">ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/root/xro=
otd_4.8.3.bb:do_package_qa) failed with exit code &#39;1&#39;</font></div><=
/div><div><br></div><div>Then, when I add these lines to the recipe:</div><=
div><br></div><div><div><font face=3D"monospace">=C2=A0 FILES_SOLIBSDEV =3D=
 &quot;&quot;</font></div><div><font face=3D"monospace">=C2=A0 FILES_${PN} =
+=3D &quot;${libdir}/*.so&quot;</font></div></div><div><br></div><div>I fin=
d that nothing is really fixed. It seems to be a similar error, but with di=
fferent files now:</div><div><br></div><div><div><font face=3D"monospace">E=
RROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk- pac=
kage contains symlink .so: xrootd path &#39;/work/aarch64-poky-linux/xrootd=
/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdXml.so&#39;</font></div><div>=
<font face=3D"monospace">non -dev/-dbg/nativesdk- package contains symlink =
.so: xrootd path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-spl=
it/xrootd/usr/lib/libXrdSsiLib.so&#39;</font></div><div><font face=3D"monos=
pace">non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path &#=
39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/l=
ibXrdCryptoLite.so&#39;</font></div><div><font face=3D"monospace">non -dev/=
-dbg/nativesdk- package contains symlink .so: xrootd path &#39;/work/aarch6=
4-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdAppUtils.s=
o&#39;</font></div><div><font face=3D"monospace">non -dev/-dbg/nativesdk- p=
ackage contains symlink .so: xrootd path &#39;/work/aarch64-poky-linux/xroo=
td/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCrypto.so&#39;</font></div>=
<div><font face=3D"monospace">non -dev/-dbg/nativesdk- package contains sym=
link .so: xrootd path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/package=
s-split/xrootd/usr/lib/libXrdPosix.so&#39;</font></div><div><font face=3D"m=
onospace">non -dev/-dbg/nativesdk- package contains symlink .so: xrootd pat=
h &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/l=
ib/libXrdUtils.so&#39;</font></div><div><font face=3D"monospace">non -dev/-=
dbg/nativesdk- package contains symlink .so: xrootd path &#39;/work/aarch64=
-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdSsiShMap.so=
&#39;</font></div><div><font face=3D"monospace">non -dev/-dbg/nativesdk- pa=
ckage contains symlink .so: xrootd path &#39;/work/aarch64-poky-linux/xroot=
d/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCl.so&#39;</font></div><div>=
<font face=3D"monospace">non -dev/-dbg/nativesdk- package contains symlink =
.so: xrootd path &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-spl=
it/xrootd/usr/lib/libXrdClient.so&#39;</font></div><div><font face=3D"monos=
pace">non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path &#=
39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/l=
ibXrdServer.so&#39;</font></div><div><font face=3D"monospace">non -dev/-dbg=
/nativesdk- package contains symlink .so: xrootd path &#39;/work/aarch64-po=
ky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdPosixPreload.s=
o&#39;</font></div><div><font face=3D"monospace">non -dev/-dbg/nativesdk- p=
ackage contains symlink .so: xrootd path &#39;/work/aarch64-poky-linux/xroo=
td/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdFfs.so&#39; [dev-so]</font>=
</div><div><font face=3D"monospace">ERROR: xrootd-4.8.3-r0 do_package_qa: Q=
A run found fatal errors. Please consider fixing them.</font></div><div><fo=
nt face=3D"monospace">ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed=
: do_package_qa</font></div><div><font face=3D"monospace">ERROR: Logfile of=
 failure stored in: /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux=
/xrootd/4.8.3-r0/temp/log.do_package_qa.30048</font></div><div><font face=
=3D"monospace">ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/root/=
xrootd_4.8.3.bb:do_package_qa) failed with exit code &#39;1&#39;</font></di=
v></div><div><br></div><div>I&#39;m getting a bit confused as these errors =
didn&#39;t show up the first time. And I suppose part of the confusing is a=
bout packaging vs installation.</div><div><br></div><div>Thanks,</div><div>=
<br></div><div>Giordon</div></div>-- <br><div dir=3D"ltr" class=3D"gmail_si=
gnature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark<=
/div></div>

--000000000000f32924056fba4872--
