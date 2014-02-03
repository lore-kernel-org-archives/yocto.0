Return-Path: <otavio.salvador@gmail.com>
Received: from mail-yk0-f177.google.com (mail-yk0-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA3F0E00710
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 07:51:38 -0800 (PST)
Received: by mail-yk0-f177.google.com with SMTP id 19so40022676ykq.8
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 07:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=7+YEzrZv4qbydhNEyrr7MrsedZVSRwabPaZ4i8IAIV0=;
	b=bAW5bbvoeOUzfzFAzsixEcdXD7Ogme7M3ooIS/pTKmscDALTg5ksz4b0WWZysq608/
	cEcMHPwOUHJAnjkgrXbjm+FUWi8IQGvAq5UgJJdOaqoBWXkkAR13B2gkv1IAV0lSrJ+e
	RoAsixB/vIfTBX9Qj6X9nG8d8/1Q5G5IH9ledLXWYpInxs5VmvM2pAeR2SGN+uzSQbJX
	ji9TtffKboVcYXSfdlu1XYD9wiDDg8ORd5cSZrCCtVD043MqmiDZ8YC24LNSps/gqM6P
	NoHqy1Xp0jF8ooZWcZUcoJkthgr1m422aeQ5QTBupxup+005whnkETcx8rL6LuvVnRq3
	t+vA==
MIME-Version: 1.0
X-Received: by 10.236.126.81 with SMTP id a57mr1764803yhi.95.1391442697273;
	Mon, 03 Feb 2014 07:51:37 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.170.62.84 with HTTP; Mon, 3 Feb 2014 07:51:37 -0800 (PST)
Date: Mon, 3 Feb 2014 13:51:37 -0200
X-Google-Sender-Auth: uu19Nq-fQSAWfEnPjjtEyEli2J0
Message-ID: <CAP9ODKoYRMKW70m6CBryNm3EoGdEMrOSn1hduAA0ROrQg8Cr4g@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	yocto <yocto@yoctoproject.org>, Robert Yang <liezhi.yang@windriver.com>,
	"Eggleton, Paul" <paul.eggleton@linux.intel.com>
Subject: [for-dora] Dora backports
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
X-List-Received-Date: Mon, 03 Feb 2014 15:51:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I am adding OE-Core and Yocto mailing list as destination as this has
fixes for both.

While setting a build system, in a very clean host installation I
found some issues which were fixed in master and ought to be
backported to Dora:

meta-yocto:
 - 1893d1576c1e7acc9881b3392a838c575019f18d (poky.conf: add Debian 7.2
to SANITY_TESTED_DISTROS)
 - a452c02c880d1840f1150e59eede3f173f067c5f (poky.conf: add Debian 7.3
to SANITY_TESTED_DISTROS)

OE-Core:
 - 97e1d84e2d1a74791ce6af88ddc27963bc0e1bec (base.bbclass: pull in
file-native for src.rpm)

Specially the missing 'file' took me some time to figure so it is
horrible to have this error for new users. This could be fixed for
older releases as well (dylan at least).

Regards,

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

