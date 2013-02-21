Return-Path: <davide.soldan@kynetics.it>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id EF8FAE006DE
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 06:52:38 -0800 (PST)
Received: by mail-we0-f175.google.com with SMTP id x8so7688525wey.6
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 06:52:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:user-agent:mime-version
	:content-transfer-encoding:content-type:x-gm-message-state;
	bh=7Y9tk0c2gj9u0+zl9usuy52t58s9sPeL+Ag7+8ksX8A=;
	b=cq5U5P/kdqwsZ2CpwvTmoL9g0Sp6YEe/mQwOkvWh+bCDAoF8bmEOwvCAfFf/6IBlM4
	kRrOs82WJFbSJ6JON6yXYdaTOUWiMDa0Brjs5SDh35cJY1CDnt7XzdM9h1Y9v7ylP1vh
	itMHmCXEG12kbSonkdZs/HeCSm9VMhUJ5JRDvDanmWjaEIPTUYfA9lOHVHWyPTTEpRpq
	uwMFs4r/n4SQlfPgBWXv4zLK2hY1pZLpfATpTPVVMxpTrUupATnWjEa+tW2o/i9tkWsm
	QqteiklVae7rICG0Evy66aFl1V5ejD4JTVobrJKgpWzJj7y9y/CvnxCHhJq8wL0yvBRk
	lVLA==
X-Received: by 10.181.11.198 with SMTP id ek6mr4344829wid.1.1361458356244;
	Thu, 21 Feb 2013 06:52:36 -0800 (PST)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPS id ex1sm40618838wib.7.2013.02.21.06.52.35
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 21 Feb 2013 06:52:35 -0800 (PST)
From: Davide Soldan <davide.soldan@kynetics.it>
To: yocto@yoctoproject.org
Date: Thu, 21 Feb 2013 15:52:31 +0100
Message-ID: <1711946.6ebLgJzAjK@fedora-fisso>
User-Agent: KMail/4.9.5 (Linux/3.7.6-102.fc17.x86_64; KDE/4.9.5; x86_64; ; )
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQkEQ8JZezVoRWvQpH9rVw+IBlKfHk2fQ7PZ8GqTbfgcYiZqcA66d+JlPhA7vzNFqARsCIcQ
Subject: core-image-sato + firefox for pandaboard
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
X-List-Received-Date: Thu, 21 Feb 2013 14:52:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi to all!
I'm new in building images with yocto for my pandaboard. Trying to build core-image-sato (http://maniacbug.wordpress.com/2012/08/03/pandayocto/) all works fine, but now I want to add some packages to this image.
So proceeding like mentioned here https://lists.yoctoproject.org/pipermail/yocto/2012-May/009175.html, downloading meta-browser layer and adding this layer to build/conf/bblayers.conf and adding the package firefox to conf/build/local.conf I've got this error:

ERROR: No recipes available for:
  /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend
  /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-graphics/libxi/libxi_1.6.1.bbappend
  /home/davide/yocto/poky-denzil-7.0/meta-browser/recipes-support/nspr/nspr_4.9.4.bbappend

So I found, for example, gnome-settings-daemon under meta-openebedded (dependency declared in the README file of meta-browser). Adding the layer "meta-openembedded/meta-gnome" to build/conf/bblayers.conf to satisfy the gnome-settings-daemon dependency I've got the following different error:

NOTE: Error expanding variable populate_packages
NOTE: Error during finalise of /home/davide/yocto/poky-denzil-7.0/meta-openembedded/meta-gnome/recipes-support/goffice/goffice_0.8.17.bb
ERROR: Unable to parse /home/davide/yocto/poky-denzil-7.0/meta-openembedded/meta-gnome/recipes-support/goffice/goffice_0.8.17.bb

someone knows how to help me?
Thanks

