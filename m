Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B819E013B7
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 07:46:29 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so4124944wib.11
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 07:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=YhZ58fgoAykYx5MSR8mKSBATVmqPjZNYhECwCxOOFm8=;
	b=OWdiX0GF/H1SOicfm7sBZGYFa96g/RqIP1Tgr9OdnG8QVzTPfpR/Ts3GVCOHMIR2Mr
	70KZf2jK2Gbdfioraz/CLjql2UWmYlbvipgkzq1xXo5i19OSZNk8oThDa9tT/HoUNySU
	tj5rd7896qgBYBBV0aDNO923Z3wBYC14I4OKJQG/VudWFO8olKfNvSEVKKe2/gn4ztFR
	5R0WGrex105wps7SZBsA88EZ8BhdvOQZi9CwZPgQEQxBRGbEfyMhy0/LhVlAYTRv0cL/
	JFhNOju649eZGsjFqy73d/i/WAvq4lpZj49K7we644gl/YnsW7DU4fBlTCiCeaCaH3zi
	M+zg==
Received: by 10.180.101.8 with SMTP id fc8mr14961057wib.12.1335969988374;
	Wed, 02 May 2012 07:46:28 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id ff2sm7278682wib.9.2012.05.02.07.46.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 May 2012 07:46:27 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 2 May 2012 16:46:24 +0200
Message-Id: <2DD299EF-A5EA-4972-8C5F-15393E7AE0C8@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: Using meta repositories from OpenEmbedded and Yocto projects
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
X-List-Received-Date: Wed, 02 May 2012 14:46:29 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_166118FB-5017-4477-B7EB-86E3ABF284BF"

--Apple-Mail=_166118FB-5017-4477-B7EB-86E3ABF284BF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       Can I re-use the meta-openembedded git repositories from =
openembedded.org and steve sakoman's meta-sakoman repositories (contains =
support for the Gumstix Overo board), and check it out inside a checkout =
of the yocto poky git repository, to take advantage of the latest yocto =
and openembedded recipes and build it for the Gumstix Overo board?

for example:

poky
	meta-openembedded  (from =
git://git.openembedded.org/meta-openembedded)
	meta-openembedded-contrib (from =
git://git.openembedded.org/meta-openembedded-contrib)
	meta-sakoman.git (from git://www.sakoman.com/git/meta-sakoman)

I've used OpenEmbedded before, and this is my first time with Yocto, and =
I see a bunch of meta-* repositories, and was wondering if including =
them inside the main poky folder was the way to go, to add additional =
support from various sources.

Best regards,

Elvis Dowson=

--Apple-Mail=_166118FB-5017-4477-B7EB-86E3ABF284BF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;Can I re-use the meta-openembedded =
git repositories from <a =
href=3D"http://openembedded.org">openembedded.org</a> and steve =
sakoman's meta-sakoman repositories (contains support for the Gumstix =
Overo board), and check it out inside a checkout of the yocto poky git =
repository, to take advantage of the latest yocto and openembedded =
recipes and build it for the Gumstix Overo =
board?</div><div><br></div><div>for =
example:</div><div><br></div><div>poky</div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-style-span" style=3D"border-collapse: collapse; color: =
rgb(51, 51, 51); -webkit-border-horizontal-spacing: 2px; =
-webkit-border-vertical-spacing: 2px; "><a title=3D"meta-openembedded" =
href=3D"http://cgit.openembedded.org/meta-openembedded/" style=3D"color: =
black; text-decoration: none; ">meta-openembedded</a>&nbsp; =
(from&nbsp;</span><span class=3D"Apple-style-span" =
style=3D"border-collapse: collapse; color: rgb(51, 51, 51); =
-webkit-border-horizontal-spacing: 2px; -webkit-border-vertical-spacing: =
2px; "><a href=3D"git://git.openembedded.org/meta-openembedded" =
style=3D"color: black; text-decoration: none; =
">git://git.openembedded.org/meta-openembedded</a>)</span></div><div><span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-style-span" style=3D"border-collapse: collapse; color: =
rgb(51, 51, 51); -webkit-border-horizontal-spacing: 2px; =
-webkit-border-vertical-spacing: 2px; "><a =
title=3D"meta-openembedded-contrib" =
href=3D"http://cgit.openembedded.org/meta-openembedded-contrib/" =
style=3D"color: black; text-decoration: none; =
">meta-openembedded-contrib</a>&nbsp;(from&nbsp;</span><span =
class=3D"Apple-style-span" style=3D"border-collapse: collapse; color: =
rgb(51, 51, 51); -webkit-border-horizontal-spacing: 2px; =
-webkit-border-vertical-spacing: 2px; "><a =
href=3D"git://git.openembedded.org/meta-openembedded" style=3D"color: =
black; text-decoration: none; =
">git://git.openembedded.org/meta-openembedded</a>-contrib)</span></div><d=
iv><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span><a class=3D"list" =
href=3D"http://www.sakoman.com/cgi-bin/gitweb.cgi?p=3Dmeta-sakoman.git;a=3D=
summary" style=3D"color: rgb(0, 0, 0); text-decoration: none; =
">meta-sakoman.git</a>&nbsp;(from&nbsp;<a =
href=3D"git://www.sakoman.com/git/meta-sakoman">git://www.sakoman.com/git/=
meta-sakoman</a>)</div><div><br></div><div>I've used OpenEmbedded =
before, and this is my first time with Yocto, and I see a bunch of =
meta-* repositories, and was wondering if including them inside the main =
poky folder was the way to go, to add additional support from various =
sources.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_166118FB-5017-4477-B7EB-86E3ABF284BF--
