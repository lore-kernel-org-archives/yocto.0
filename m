Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CF08E00C1E; Tue,  9 Apr 2019 08:22:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D44CCE00A54
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 08:22:55 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id y13so21457688wrd.3
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 08:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=AcFMop2cY0/XK6HKZGoQ9L7+G7wvxvo2PGU4aqKXUTc=;
	b=YOzN6vX44b1Mc7ZT3hSsAwYxvyZGlbXMeHhvM18EksUkyekpP5L3eSxvGoHPY3r9c9
	R/oavjdwGmgvRKGmtPiDR91sOoKJGnSQvAz9kZ5u7aQEVgkZhyfosrZKIqVxQqD+E5uF
	sD1oh+NUaUKwVgr2sRzGocSRCmBgulFVbe47k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=AcFMop2cY0/XK6HKZGoQ9L7+G7wvxvo2PGU4aqKXUTc=;
	b=TpV6qtBjH34PJFeMLozu2KO1Pl9h0HNuJFmdEZRmlKO6DVcfBc+a8TDo8WRA5FItME
	oSRsbfEEbi75kttL/BrRZy7o0zMO8osIIn9J5IBI8FRSP2p5XKpdnuHAWjoJRkeg/RDv
	+8f5AfOcjYFtkQTDWYwRemQ5UoaKJ/X5K0Rrz+CHHrlDody3xw6V5CBRFozq+JOnStoJ
	XfYJuaGjocDAEmAA/b/knD6P/2FFdMIO8GrM9UMxlwQcPaYUeBSzwyY0wy4iE6UwHMHN
	/7Psx64S6d4hNn+3ynR1+N0O6XW3Dg0s7QdkTu1MZi537v7UezrsWkyWsdacLgBCTyLN
	SPhg==
X-Gm-Message-State: APjAAAXZ5e+u2PmYucJg3MP8ejqpjN0g+gY1Lv4WHH/w27tDKhgxJ0j7
	9bptnKz+afYQh9YYBgVv1962RKnj5pU=
X-Google-Smtp-Source: APXvYqxgd+8kelJSrpZ4oUSqXm/md0TeTpftB9c3B0iv27rfRUU/zOt2ug5q8zqvTH7jHKSuaAeMAw==
X-Received: by 2002:adf:d84d:: with SMTP id k13mr23495390wrl.154.1554823374706;
	Tue, 09 Apr 2019 08:22:54 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	x5sm31797502wrt.72.2019.04.09.08.22.53
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 09 Apr 2019 08:22:54 -0700 (PDT)
Message-ID: <90d55754e9381759c8b70ebca0b880e6013f17f0.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yocto discussion list <yocto@yoctoproject.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Date: Tue, 09 Apr 2019 16:22:50 +0100
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Subject: Eclipse support dropped with immediate effect
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
X-List-Received-Date: Tue, 09 Apr 2019 15:22:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I'm sorry to have to say this but the project is terminating its
official eclipse plugin support with immediate effect.

There is nobody willing to keep the builds going, fix bugs, port to new
eclipse releases or release the current plugin. This has been raised in
many forums, multiple times and nobody stepped up to help. With nobody
to do the work, we can't keep it going, it is that simple.

We'll be removing the automated testing of the eclipse plugin from the
autobuilder with immediate effect for all project releases.

Richard




