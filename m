Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24AA7E00E41; Thu, 19 May 2016 05:15:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D69C5E00D69
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 05:15:25 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id r12so77425215wme.0
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 05:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=gu2ZZpsU6FbGp1k5w1SYVYzp7rKdUT3/ReZaU803yDo=;
	b=XOEQ5oNyT2VMK6i0P/Adna+y2A8bIzMX0LXb81W4Ickfi801OnGo4VejssfKTTP4Hy
	oOxvZTn1dOMr+9PttP/PV+hQW8iPI70yH9YJFqbBNmUmcBMY588UQNeCPfAZqw4pVJA1
	q/b64pXnGJgEIA3+ForjHqv8b0liucCwePTJefFM4gC1ctC9DXW5QeHhRB7zte5HSQTd
	VVqziIwwR37ALZOiP+NMy0Sx4IpXpBFS5dYg4uqo1C34/49wktPGHorYzEWiexhOrnxn
	w/PiLeZRoaSC+/jgDzNPfxzqDNEe23QMHzg1L3OFsL0oCws0jqNZ5b1KJTUJx+QFR6UB
	n3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=gu2ZZpsU6FbGp1k5w1SYVYzp7rKdUT3/ReZaU803yDo=;
	b=eTav601QG1FN5s8ux9LJ3aANKQIqmzj8TVYgJ2rTwz2AyhMH2MZuRJSBH8Y2KH3OV8
	gjKz/W+ojwAJ5Gn+i1d2vDdn6mZZz0ZkPeHc3kKGnnjre7zvalaKG+3MrVO5RkYgt/m/
	KpoAeTTtjFAA4vVFARx7XAwdiyQa/A0sjSFEnL4mtfvmbGEVcQoEn31GaWlZshljQEXZ
	xRg6EQQYt29S1iSN25mlXuSRTUKSc47muJgbwNzs9A1oAwlY9+rrO0x8kfd68NT3E6t8
	tDijWaG2hdWA41Jdn9hY7e863teUml2brh6E39cMy3Voa/Oe+Iw/c+TEDq2KlmxvO/41
	8uNg==
X-Gm-Message-State: AOPr4FXxewaTWB2Bdencm94lhuHrT4dv2rx0gBH9cTStPo93uSc0qw4gbLas83Nx88zTOw==
X-Received: by 10.194.241.227 with SMTP id wl3mr13353688wjc.168.1463660123752; 
	Thu, 19 May 2016 05:15:23 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	g197sm35075672wme.15.2016.05.19.05.15.23 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 19 May 2016 05:15:23 -0700 (PDT)
To: yocto@yoctoproject.org
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <573DAE5A.6000707@elfin.de>
Date: Thu, 19 May 2016 14:15:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
Subject: [meta-raspberrypi][Question] How to build an hwup image for raspberrypi3
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
X-List-Received-Date: Thu, 19 May 2016 12:15:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
I'm trying to build a Yocto image for raspberrypi3.
I'm using only two layers:
- poky (krogoth: rev eff84a76acea1a0842194106a66684511f409842)
- meta-raspberrypi (master: rev 9912d38e97671704822d1aa05312a0439cb650d3)

I have built it by cloning both layers from git (and changing poky 
branch), then I sourced poky (source poky/oe-init-build-env), added 
meta-raspberrypi layer in conf/bblayers.conf and in conf/local.conf 
changed MACHINE to raspberrypi3.

Then I have built "rpi-hwup-image" using bitbake and dd'd it to an SD card.

Unfortunately rpi-hwup-image does not work on raspberry pi 3.
Boot screen halts when 4 raspberry logos show up and that's it.

On the other hand I have tried the same SD card with raspberry pi 2 and 
it booted up (!?).

Can you tell me if there is still support for meta-raspberrypi layer?
I found that this layer does not follow Yocto project naming convention 
for branches (I think that the latest is "jethro", but nothing newer 
besides "master").
Does this mean that there is no stable and up-to-date branch apart from 
master?

Has anybody built a raspberrypi3 image?
Could you tell me which layers and which branches should I use?


Thanks,
Piotr Lewicki

