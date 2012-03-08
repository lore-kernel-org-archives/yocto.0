Return-Path: <kergoth@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C662AE0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 13:21:18 -0800 (PST)
Received: by iagw33 with SMTP id w33so1589572iag.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 13:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:message-id:subject:x-mailer:mime-version
	:content-type; bh=ginmqVB1z8yBgEzChG5g9D0tv0KKyoMSeaO4zFP2ocM=;
	b=p0xuoYm1e0fCEH9TRjo4of3sHvYYbJs3uwDIpNtiNmi90/Lw74w7NuhbKCGXr89X9m
	8oCIjOeiyENIKynyzoyBFv3TuJlIkx6HYNa0Kpdw4IXXIiuzF7GSNJvZJ4KZ6+JCog3p
	kf8NRVTSnppwzh8S+pKcWYR8es7beE0r+gSYI0Be/cFoyfZvZAusRworLUJmLfsG+8al
	OJGBSR3sY1XTWlm5V2sdxy1OEU37laAhd8Yme0zRLEPhCmAETHMbh+g65EtCcrW0+pvQ
	AWljL8gkX+AMEV8owMeeNo1/h0sCX5Hgxa6uP7nll6yMtjUn3VSsbkYUVg8cI+89PYe8
	2b1A==
Received: by 10.42.152.134 with SMTP id i6mr7111637icw.27.1331241678334;
	Thu, 08 Mar 2012 13:21:18 -0800 (PST)
Received: from frey.local (ip68-110-79-242.ph.ph.cox.net. [68.110.79.242])
	by mx.google.com with ESMTPS id k3sm15322138igq.1.2012.03.08.13.21.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 08 Mar 2012 13:21:17 -0800 (PST)
Date: Thu, 8 Mar 2012 14:21:13 -0700
From: Christopher Larson <kergoth@gmail.com>
To: yocto <yocto@yoctoproject.org>
Message-ID: <675553289D4E4CA0AD44CCED1455F0C4@gmail.com>
X-Mailer: sparrow 1.5 (build 1043.1)
MIME-Version: 1.0
Subject: Mentor's Application Development Environment (ADE)
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
X-List-Received-Date: Thu, 08 Mar 2012 21:21:18 -0000
Content-Type: multipart/alternative; boundary="4f5922c9_579478fe_626"

--4f5922c9_579478fe_626
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Greetings folks,

I'm emailing to ascertain the potential interest in a piece of functionality Mentor has been including in our MEL product, and see if it'd be something either we could push up under the Yocto umbrella, or potentially reimplemented in concert with upstream folk to better meet folks needs.

This feature is a means of distribution of sysroot content (libraries, headers, potentially host scripts and binaries) from the person doing the bitbake builds to a potential application developer using eclipse. This is a different approach than that taken by the ADT, as this doesn't require a poky development environment, so is potentially more useful for application developers.

In concept it's quite simple. We construct an eclipse P2 IU (installable unit) and binary artifact for every binary package we emit, and build a P2 repository with those. This repository can be added to eclipse, and you can pick and choose any of the packages we emitted, including -dev, -dbg content and it installs it into a sysroot relative to the eclipse install directory, where you could then point your application project. It's really not unlike adding a new package management format, as that's what P2 really is, a package management / content distribution system. I think it provides a fair bit of value, but I'd like to get the opinions of others on this.

The current implementation has a python script which converts an ipk package repository into a p2 repository. I intend to move toward a package_p2.bbclass type approach, emitting xml snippets for each along with the artifact as we go, and then have the feed construction reassemble the component metadata into the appropriate artifact and IU xml files, which would more closely mirror the way our other package management formats behave.

Thoughts?
-- 
Christopher Larson


--4f5922c9_579478fe_626
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div>Greetings folks,</div><div><br></div><div>I'm emaili=
ng to ascertain the potential interest in a piece of functionality Mentor=
 has been including in our MEL product, and see if it'd be something eith=
er we could push up under the Yocto umbrella, or potentially reimplemente=
d in concert with upstream folk to better meet folks needs.</div><div><br=
></div><div>This feature is a means of distribution of sysroot content (l=
ibraries, headers, potentially host scripts and binaries) from the person=
 doing the bitbake builds to a potential application developer using ecli=
pse. This is a different approach than that taken by the ADT, as this doe=
sn't require a poky development environment, so is potentially more usefu=
l for application developers.</div><div><br></div><div>In concept it's qu=
ite simple. We construct an eclipse P2 IU (installable unit) and binary a=
rtifact for every binary package we emit, and build a P2 repository with =
those. This repository can be added to eclipse, and you can pick and choo=
se any of the packages we emitted, including -dev, -dbg content and it in=
stalls it into a sysroot relative to the eclipse install directory, where=
 you could then point your application project. It's really not unlike ad=
ding a new package management format, as that's what P2 really is, a pack=
age management / content distribution system. I think it provides a fair =
bit of value, but I'd like to get the opinions of others on this.</div><d=
iv><br></div><div>The current implementation has a python script which co=
nverts an ipk package repository into a p2 repository. I intend to move t=
oward a package=5Fp2.bbclass type approach, emitting xml snippets for eac=
h along with the artifact as we go, and then have the feed construction r=
eassemble the component metadata into the appropriate artifact and IU xml=
 files, which would more closely mirror the way our other package managem=
ent formats behave.</div><div><br></div><div>Thoughts=3F</div><div><div>-=
-&nbsp;</div><div>Christopher Larson</div></div>
            

--4f5922c9_579478fe_626--
