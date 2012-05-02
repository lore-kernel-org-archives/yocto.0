Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C3B8E0044D
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 11:54:29 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so796378wgb.11
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 11:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=ASjlaqzW6ef/lMLCNCIC0kmWPKulT8MguNDeVHtyf7U=;
	b=LUvY4MhZwzp8oosuWbnojZT1LhdjQO3AD+YSjFWyv2g8LvP2/q/qVHfDW3Y2G/rPpb
	6KaTrw3/iSGaHK+M8ryrEGaJjb+8ICeusKhp1cvWLqqZf3vYEsyFkXLV5O4Xs9nG8PIN
	5lL48Vy/3BaWxb4KAaui8bv/6CgVBJx/wWs6YGk40JANdmC2sTGdHnuT29N8RzD1vCID
	WeaD53vGK1MuskigfDE4WEe/FtIgs1PZcj4GBjrBd0r+8jKdD2rP+Ht2Bois64yb4cwP
	apjPgIJVJ5I5BUDjwLwByTkKfMI0HyAIVNYwEQPeVDTwfsi+rXFR1Ycab9jglP6QZwci
	qQNg==
Received: by 10.180.97.228 with SMTP id ed4mr5656167wib.0.1335984868559;
	Wed, 02 May 2012 11:54:28 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id fn2sm9365830wib.0.2012.05.02.11.54.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 May 2012 11:54:27 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 2 May 2012 20:54:25 +0200
Message-Id: <F4C0A6A6-CDA5-484C-91A1-D9E179AF2A26@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: How does the Yocto gitweb interface group the git repositories
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
X-List-Received-Date: Wed, 02 May 2012 18:54:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       I'm trying to mirror the yocto repositories on my development =
machine. I was wondering how the yocto web interface groups the various =
repositories like IDE Plugins, Matchbox, Misc, Poky, Poky Support, etc.

http://git.yoctoproject.org/

For example, the URI for the Anjuta Poky git repo is =
git://git.yoctoproject.org/anjuta-poky, but when rendered using the =
Yocto web interface, it is displayed under IDE Plugins > anjuta-poxy

I'd like to have a similar grouping for my local repository, so that I =
can classify stuff from Yocto, OpenEmbedded, Android, etc.

Best regards,

Elvis Dowson



