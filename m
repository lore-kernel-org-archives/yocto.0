Return-Path: <maniacbug@ymail.com>
Received: from nm5-vm1.bullet.mail.ne1.yahoo.com
	(nm5-vm1.bullet.mail.ne1.yahoo.com [98.138.91.32])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 09426E01443
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 20:17:46 -0700 (PDT)
Received: from [98.138.90.54] by nm5.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Aug 2012 03:17:46 -0000
Received: from [98.138.89.160] by tm7.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Aug 2012 03:17:46 -0000
Received: from [127.0.0.1] by omp1016.mail.ne1.yahoo.com with NNFMP;
	03 Aug 2012 03:17:46 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 255145.26480.bm@omp1016.mail.ne1.yahoo.com
Received: (qmail 25765 invoked by uid 60001); 3 Aug 2012 03:17:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024;
	t=1343963866; bh=2ORc5fablmFFfUyMi+SJd34XQZmn6CPuMZxGAJ4F8+4=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=H5mOW2vCHcNcXKXmbm50zm/ssYA59x8iRj1PQmb9aZpgVQX6t6SDx7Pc37iRuHmGHW1DckG9qvJ78L/qxvO8z2PWLo5SoRrEawPKO4/cyvr4O+jBiYSFi8JRozKAGMLWx4ZMvidONbLpc9+/qD/d/xZRZSIy1rfsXQWRe74LK7s=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=ymail.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=SB/2kW16fy4fl09n8j+mxcBj0Q5xRlgs1UW4Aav/czmvATBfht5dCWy2YTv/mI/xH3p6nYq8C/48jDJ9CE4HSLFhr8xXQ5qC7p2mhtXe4MVw/SuiLtu7YC9NEc34Rl59yvMtnKZvY0TnQyFUoGi1YgRfiJFnLHYD2tvDl7aJp+o=;
X-YMail-OSG: IIYI3bAVM1n9Nr3DXDKWy23amO8OT..pbDXYINWOuSf3MiB
	nTjq3UZ7ChYEkqduljOZZsYjM5UFYFeHuuVddfIc9e2dBiY8LeX2FiRZfvPF
	gs6OJgcZaxnIrGmf9PW_Y6tDRmmoflGaVlxbkwwjCLEmUvHvNnn6Lh1jX._u
	y3Gyg6_VPFv7HqSelj22V23owZ.NWNdpqHrIKXp_6_dyDW6y5JO0Mf47AxJK
	pYGYcty4gSpNKI9SoL922It_.yR2sIeYUpFunYDOB1PMOiKVrVo_B2FanFJl
	NS2s.RNk1VSK6lR1JaBbzB1KetbvMdnvEEUHbagfWNavIEdRwAoKKZ3coj9B
	ajeimVCu2PseAf_veS.uP.bzR9CEp.nzkxlKwtbdPXV6mbhdY72G6sT1Bk5h
	_vTR9dIea2i684w2EIK2KNBOmGDg5gKJXO2TvBQ_1HIbuYMCeC5Je5aRKj.4
	oP093bm9dBtDctHvUzNvCf9S2wzfFP3TdozUwQh9iiETPmV3QjsiBT9SCsaZ
	yV2BAxdoKUJBC85.mJxEoOQLYu8fAL_jf
Received: from [50.135.220.100] by web121605.mail.ne1.yahoo.com via HTTP;
	Thu, 02 Aug 2012 20:17:46 PDT
X-Mailer: YahooMailWebService/0.8.120.356233
Message-ID: <1343963866.24115.YahooMailNeo@web121605.mail.ne1.yahoo.com>
Date: Thu, 2 Aug 2012 20:17:46 -0700 (PDT)
From: maniacbug <maniacbug@ymail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Pandaboard indeed does not boot on master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maniacbug <maniacbug@ymail.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 Aug 2012 03:17:47 -0000
Content-Type: text/plain; charset=us-ascii

As discussed in a previous thread (https://lists.yoctoproject.org/pipermail/yocto/2012-July/010540.html), pandaboard images fail to 
boot now.  I also verified this.  Releases after denzil will drop support for pandaboard in the current state.

I filed a bug, 2884 (https://bugzilla.yoctoproject.org/show_bug.cgi?id=2884) against this issue.  It would be great to see 
a fix.  Looks like the suggestion is to use an earlier GCC version for this hardware.

m.b


