Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22F95E0070C
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 11:27:17 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so1651898wgb.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 11:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=34u9+wqRo0qKIu4Sk1FM/K2FbSWTk4lOPKKMLlXGFhI=;
	b=Uy2z0X0Eiy+goP/sm8YMsGOJ9zJNtNqF5QSXbYsmKOulm6XCTG7i7GdF67FLTNQfpo
	kE64gEGBVbSPdTAGIe29obCZCqhfqSOclWjEq4F7HJVqf3qZQQXVEe7ojunxDnmGGmrI
	y+mzeqqqDLHFgTapbfyX3Vp8+t9acluKQ+pX952n90R256U8iWKexFutIDu1yjFl3MeE
	Wz9SfbV706yztV2X9rgTkRJHGNrD7MwWqr/8W+CruqAL1ZuDO3u5QczOH12w5+zMAQu8
	K0AWgPRs1ayS+V+ZvNQyrMH2LjdFAxQNWghSAhqSOzJ6DrPHWh+RwjNyykSX52xzja05
	4xbA==
Received: by 10.180.77.233 with SMTP id v9mr5638954wiw.22.1336069637100;
	Thu, 03 May 2012 11:27:17 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id 6sm1390002wiz.1.2012.05.03.11.27.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 11:27:16 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1257)
Date: Thu, 3 May 2012 20:27:13 +0200
In-Reply-To: <1658FA66-CEFA-4D13-8410-F3E63449D44F@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <1658FA66-CEFA-4D13-8410-F3E63449D44F@gmail.com>
Message-Id: <52424B5A-DBAD-4A38-ACDE-A61E4E1C4ED3@gmail.com>
X-Mailer: Apple Mail (2.1257)
Subject: Re: Failed to fetch URL http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2
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
X-List-Received-Date: Thu, 03 May 2012 18:27:18 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_163BAB95-BD12-4DEF-8B8F-A032B8D4A16C"

--Apple-Mail=_163BAB95-BD12-4DEF-8B8F-A032B8D4A16C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On May 3, 2012, at 6:52 PM, Elvis Dowson wrote:

> When I try to run bitbake -c fetchall core-image-minimal, it fails to =
fetch libcgroup-0.37.1
>=20
> NOTE: Running task 139 of 305 (ID: 264, =
/tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.3=
7.1.bb, do_fetch)
> NOTE: package libcgroup-0.37.1-r1: task do_fetch: Started
> WARNING: Failed to fetch URL =
http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/libcgroup=
-0.37.1.tar.bz2

This was a transient failure because the SourceForge mirrors were down =
for about 4 hours. Its up now, and all the packages are downloading =
fine.

I'm starting to like yocto, its definitely got a more deterministic feel =
to it, and things seem to be logically laid out and easy to configure.

Best regards,

Elvis Dowson=

--Apple-Mail=_163BAB95-BD12-4DEF-8B8F-A032B8D4A16C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On May 3, 2012, at 6:52 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>When I try to =
run&nbsp;bitbake -c fetchall core-image-minimal, it fails to fetch =
libcgroup-0.37.1</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Running task =
139 of 305 (ID: 264, =
/tool/yocto/meta-openembedded/meta-oe/recipes-core/libcgroup/libcgroup_0.3=
7.1.bb, do_fetch)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package libcgroup-0.37.1-r1: task =
do_fetch: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">WARNING: Failed to fetch URL <a =
href=3D"http://downloads.sourceforge.net/project/libcg/libcgroup/v0.37.1/l=
ibcgroup-0.37.1.tar.bz2">http://downloads.sourceforge.net/project/libcg/li=
bcgroup/v0.37.1/libcgroup-0.37.1.tar.bz2</a></font></div></div></div></blo=
ckquote><br></div><div>This was a transient failure because the =
SourceForge mirrors were down for about 4 hours. Its up now, and all the =
packages are downloading fine.</div></div><div><br></div><div>I'm =
starting to like yocto, its definitely got a more deterministic feel to =
it, and things seem to be logically laid out and easy to =
configure.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_163BAB95-BD12-4DEF-8B8F-A032B8D4A16C--
