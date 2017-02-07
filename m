Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BAE7E009A7; Tue,  7 Feb 2017 11:20:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marc.ferland[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 003A9E00924
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 11:20:10 -0800 (PST)
Received: by mail-ua0-f169.google.com with SMTP id i68so92285908uad.0
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2017 11:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=G6eatGBu1OzXwDcni6T8GKm2Qxx/c5HKsBhwk/1A31E=;
	b=u4mrAnDPLJ6P1mlSZMbMPV22t+MuDU0sgpxeq60bld2luDxvws1DJlfDee9JFj6OR5
	kXobS0aEYqr39l3+rH7SPMRCGwHvkm9eafTGCupKoXXfjXhdmA0SAdJ9x3c+c7E3NcT9
	9EMZMbM2MMF7QXnjL44IkZwfKbvnZ5k9WRNdKLxGECfOix0LlgOkbScUR9Sk58FGHSCn
	beyBh1hGkgmhYh9hT0ScZLblpxkUxpCzfKqbQSYRsUNwn2xxJQI59HzqWmpwRbVQK1AO
	PJU+Vm4Bjy8gABbNtAcObcJM1fmIYwDs6nM/lJwiabgvYp4Gc6XevRN807WdAEZZ36LP
	QaDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=G6eatGBu1OzXwDcni6T8GKm2Qxx/c5HKsBhwk/1A31E=;
	b=UJtyalt3g78bpcxOg3chopIQOw7tL3/qiE3hwH3hm0GyepVeIg9ByM4aJWEDijSCi8
	8sMcMdQZpDiNRNLc0IQGaCRxt3vFkkyL7vH78vA45PObb69DnPgriKRy4BL9dFavk9DU
	ePPhLtoYVXRyEywvyuCsEZm1WJZHCjS6Gd0ridPgqHXdzGZbEC7sOyxMpB2fnLpWH5gR
	s47P/jK1vdQDXCbnHvKDP7g40v8TGUnMxpYyzs98uFenOc/ynt5o1X32VLaMQUtdU3gn
	zGlcp//7Hveggtpn+Zgk+P93QVstrFBdTusmxSRqLDZJAsMYxLrJWwgCKvjXp38UK25w
	c+ig==
X-Gm-Message-State: AMke39lJqtezO5Ue7+ebOKDKR+3JctA5pmZYAldxF8d3yan25Oj9/9GQkF+faLGY/bAvsaowft3Izeil65jMxw==
X-Received: by 10.159.34.105 with SMTP id 96mr8636898uad.84.1486495209909;
	Tue, 07 Feb 2017 11:20:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.17.131 with HTTP; Tue, 7 Feb 2017 11:20:09 -0800 (PST)
From: Marc Ferland <marc.ferland@gmail.com>
Date: Tue, 7 Feb 2017 14:20:09 -0500
Message-ID: <CAMRMzCDUQnK3f+xe0sGrYZPrf7LuWXf8EnGUWYoD1q2e7UTQxg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Removing/Disabling /etc/version
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
X-List-Received-Date: Tue, 07 Feb 2017 19:20:11 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Easy question!

I would like to disable the /etc/version file from being installed to
the rootfs. How do I proceed? It looks hard-coded at first glance...?

Regards,

Marc

