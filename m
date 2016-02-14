Return-Path: <daltonfury42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3170E00C67; Sat, 13 Feb 2016 23:06:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daltonfury42[at]gmail.com)
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
	*      [209.85.213.50 listed in list.dnswl.org]
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 891EFE00C5C
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 23:06:38 -0800 (PST)
Received: by mail-vk0-f50.google.com with SMTP id e185so87428950vkb.1
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 23:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=JfKUvCKB88gMcDnd6/hvenHoNmcLQX6s/IJT6XcZaMA=;
	b=wbG3OWI/7DEHLr7x9a+nhoQX5BSSQSMb+rO/olSLi5PAmFpdPxXA+BuSFL0P99qhn1
	qHAp/eJvJPrfK0rlxHIev2cqKyInCDIucoZ3v7h3/BeonzYIijWGpxdbKg52bMzcyIWH
	UaD7yf4ovcomtki/spSwsVbKGFTmWOGZrH3RhaSPzUG1IwsjGdNCJQvt8MeIJ1VInbqB
	hcdrggHK6K2iVTbnqpGWrmxCaXHjatLz+iUVIWMNcecGXq9nrg9gzaPf6AAYF1NM7kc0
	VeTbWiZ1e84vLjHJUBCFpeknLcF3ZkhcQqEVikeECYVgDIYfFJ4sy7xu3dWC+wpejscL
	YApw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=JfKUvCKB88gMcDnd6/hvenHoNmcLQX6s/IJT6XcZaMA=;
	b=kfoqESGJGjWEVfJ5UOLoz4OsyNKITjOplnEhfFr+eYiSV8me+f8rPN/15IQfOfcP7o
	96BcrH8VeidJjm6HJEptWT/bnfFACDCVE9czhDpjnjlK12WXBNYdfH6UFSuzg7ODJWJB
	eTvUeYRzu4FamQpZL11AnoPQyNTCFqU8VuE9GMWk2nVw2jjsHtvo30ab+8O4A0qFWs/3
	ECkYeVuIQzZXg9Lgf31k+iheBZDbcJUsEsEWtC46ufRQD8N2bzHPdayDLDjHIt9VEOmI
	WrGwzZwjtdG24eG1dnLYp7PdVLza02Rmylxu2tQGXYWghd6Ou+rWUakAl9HguXqZ0wnf
	B97Q==
X-Gm-Message-State: AG10YOSpp2oTSCV430p42BAlmFDTXbklvwxtPFwOR+dfRoRPO14TnUaRRGw2wnYkLHWeCT630H3jymp/3cZCfQ==
X-Received: by 10.31.10.199 with SMTP id 190mr8478694vkk.51.1455433597647;
	Sat, 13 Feb 2016 23:06:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.167.9 with HTTP; Sat, 13 Feb 2016 23:05:58 -0800 (PST)
From: Dalton Fury <daltonfury42@gmail.com>
Date: Sun, 14 Feb 2016 12:35:58 +0530
Message-ID: <CALH0Xhk0x5y=MLAB0iPY2Nv62q6=AZQ46B710JnSzFRCOYqKYQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_populate_staging does not copy everything.
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
X-List-Received-Date: Sun, 14 Feb 2016 07:06:41 -0000
Content-Type: multipart/alternative; boundary=001a1144017695023f052bb58ab3

--001a1144017695023f052bb58ab3
Content-Type: text/plain; charset=UTF-8

I have written a recipe for a package A which is a build dependency for
another package B. But the package B (which uses cmake) does not find A.
According to the docs,

"do_configure task for recipe "a" depends on the do_populate_sysroot task
of recipe "b". This means anything that recipe "b" puts into sysroot is
available when recipe "a" is configuring itself."

I checked the log.do_populate_sysroot() and it is not copying every file
that is needed. But everything installed by package B is present in the
final image in the right locations. Since everything is not copied to the
sysroot, the do_configure of package B fails to find the build deps.

For every file that has not been copied by do_populate_rootfs, I get a
warning when I bitbake:

WARNING: QA Issue: cuda-cudart-6-5: found library in wrong location:
/usr/local/cuda-6.5/targets/armv7-linux-gnueabihf/lib/libcudart.so

There are several other QA errors too. I can't do anything about them
because they are prebuild binaries and I do not have the sources.

But the package is in the right location. What could be causing this?

--001a1144017695023f052bb58ab3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have written a recipe for a package A which is a build d=
ependency for another package B. But the package B (which uses cmake) does =
not find A. According to the docs,<div><br></div><div>&quot;<code class=3D"=
" style=3D"font-size:medium;font-family:Courier,monospace;color:rgb(51,51,5=
1);line-height:24px">do_configure</code><span style=3D"color:rgb(51,51,51);=
font-family:Verdana,Sans,sans-serif;font-size:medium;line-height:24px">=C2=
=A0task for recipe &quot;a&quot; depends on the=C2=A0</span><code class=3D"=
" style=3D"font-size:medium;font-family:Courier,monospace;color:rgb(51,51,5=
1);line-height:24px">do_populate_sysroot</code><span style=3D"color:rgb(51,=
51,51);font-family:Verdana,Sans,sans-serif;font-size:medium;line-height:24p=
x">=C2=A0task of recipe &quot;b&quot;. This means anything that recipe &quo=
t;b&quot; puts into sysroot is available when recipe &quot;a&quot; is confi=
guring itself.</span>&quot;</div><div><br></div><div>I checked the log.do_p=
opulate_sysroot() and it is not copying every file that is needed. But ever=
ything installed by package B is present in the final image in the right lo=
cations. Since everything is not copied to the sysroot, the do_configure of=
 package B fails to find the build deps.</div><div><br></div><div>For every=
 file that has not been copied by do_populate_rootfs, I get a warning when =
I bitbake:</div><div><br></div><div><div>WARNING: QA Issue: cuda-cudart-6-5=
: found library in wrong location: /usr/local/cuda-6.5/targets/armv7-linux-=
gnueabihf/lib/libcudart.so</div></div><div><br></div><div>There are several=
 other QA errors too. I can&#39;t do anything about them because they are p=
rebuild binaries and I do not have the sources.</div><div><br></div><div>Bu=
t the package is in the right location. What could be causing this?</div></=
div>

--001a1144017695023f052bb58ab3--
