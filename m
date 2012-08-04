Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FA38E01454
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 12:19:27 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3856341pbb.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 12:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:cc:to:mime-version:x-mailer;
	bh=6jOgPIjoy6FXVcqq8luoEbnFrR3qX5ZzzqtbvJ3UhSw=;
	b=NYvqD6qaxeoi/4G4Qlkoh3HXIZpQ7enALh+sWg9h6ddlbsF9vBUAQiiuTPvCpWZ6G3
	zrjgHtyP/yt6ebEwGXwA+wstGzzBiqJ+glKGi/s9C8kI88zzOjUS4xCqDJA31SdqMAI1
	IFVUZtnTodgC3e4Tcx3nAKDSUeIQbxcGunijolJcdArg6C5Xo3iYdwu0+tYmbezbE+XJ
	L13IdhXwzlQhTVT/EkMtB3Tsjo+bA9NbFDw5+jnvDDRq4AyRYpkWqMlrfUPbdaxMyr2m
	ozadfp8z7jPZY+lAujid8UJCnAdGbibWSSFzhjYAvBV+DhxPN6aOkAtU5qgLpesROCwq
	KCCg==
Received: by 10.66.84.6 with SMTP id u6mr7235576pay.75.1344107967098;
	Sat, 04 Aug 2012 12:19:27 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id nu5sm5451435pbb.53.2012.08.04.12.19.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 04 Aug 2012 12:19:26 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 4 Aug 2012 23:19:21 +0400
Message-Id: <EFFDC90A-1BC0-4513-ADC8-A39F03309AD5@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Adding gcc-4.5.4 release back into oe-core
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
X-List-Received-Date: Sat, 04 Aug 2012 19:19:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,
                  Do you think it makes sense to add gcc-4.5.4 back into =
oe-core, if it turns out that gcc-4.7.2 is causing a lot of issues for =
some targets?

Elvis Dowson=

