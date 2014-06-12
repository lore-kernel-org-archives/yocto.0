Return-Path: <jonatan.magnusson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28EFDE00B74; Wed, 11 Jun 2014 23:49:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD9DBE0070F
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 23:49:19 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id hz20so434998lab.14
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 23:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:mime-version:subject:resent-from:date
	:content-transfer-encoding:resent-date:resent-to:message-id:to;
	bh=+4n+CXZKuwFgOmBwcFdbc556gQv2fTsbBrH3kYNGHJA=;
	b=aSrCF7ZEvpyfJu9dycBuCmbvJ1RAsh+zJaSjphzUo5QjjGfpbdzTnNQ6D+PWrIY93v
	OF1fEbKp8HKmhrBj1ZaDyTkp+qsGt71Bn1GKSTEGEAoQ93JU2JQ0bUbxmrasiDEn+PX9
	g7/D2NHdOii5He7TpWjKWfYKuvK3uaTZGvAWtRT44cIPTxUJzt5z1YqBhgPFeXUpuQpI
	WunLRQiSeFBtmz+Vf9v5TH7LpqSw5SHv/w4mNnr5fgHJDr60UxG50UuvuvNAl8aFUpGv
	3gYxCwFMax2QryXB7ftv6qaWlqUO8f25v0rpU6hkxC06oak2qBITCiMox0NJk+UTy+XJ
	2KRg==
X-Received: by 10.152.23.233 with SMTP id p9mr31398924laf.31.1402555758346;
	Wed, 11 Jun 2014 23:49:18 -0700 (PDT)
Received: from [10.11.100.103] ([83.233.227.60])
	by mx.google.com with ESMTPSA id
	vq4sm27191050lbb.14.2014.06.11.23.49.16 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 11 Jun 2014 23:49:17 -0700 (PDT)
From: Jonatan Magnusson <jonatan.magnusson@gmail.com>
X-Google-Original-From: Jonatan Magnusson <jonatan@cmteknik.se>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
Resent-From: Jonatan Magnusson <jonatan@cmteknik.se>
Date: Thu, 12 Jun 2014 08:48:08 +0200
Resent-Date: Thu, 12 Jun 2014 08:49:15 +0200
Resent-To: yocto@yoctoproject.org
Message-Id: <17C5D232-0433-4ADB-AA99-40D08E56A436@cmteknik.se>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.1878.2)
Resent-Message-Id: <20140612064930.28EFDE00B74@yocto-www.yoctoproject.org>
Subject: [meta-raspberrypi] how to customize kernel config?
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
X-List-Received-Date: Thu, 12 Jun 2014 06:49:30 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


Hi

I=92m trying to use the meta-raspberrypi BSP with Yocto (1.6, Daisy).

It works great, except I have no idea how to use a custom kernel config!

I have a custom kernel recipe that bbappends to the meta-raspberrypi =
kernel recipe.

I=92ve tried using defconfig as well as configuration fragments, but =
neither work.

I=92ve also tried using the kernel_configure_variable function, and that =
almost works, except if I try to disable an option that is enabled =
earlier in the the config file, the option is still enabled since =
kernel_configure_variable only appends to the config file.

Example:

do_configure_append() {
  kernel_configure_variable SPI_SPIDEV n
}

So I wonder: how is this supposed to work?

In my case I need to enable CONFIG_IEEE802154_MRF24J40 and it=92s =
dependencies and disable CONFIG_SPI_SPIDEV and a few more.

I=92ve found no help on IRC and all Google comes up with is this old =
discussion, which does not lead to a solution:

https://lists.yoctoproject.org/pipermail/yocto/2013-November/017113.html

I would be very happy to get any hints on how this is supposed to work!

Regards,
Jonatan Magnusson=

