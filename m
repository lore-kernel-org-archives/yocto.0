Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A19BE00D5F; Fri,  5 Jan 2018 11:43:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74A32E008FB
	for <yocto@yoctoproject.org>; Fri,  5 Jan 2018 11:43:47 -0800 (PST)
Received: by mail-it0-f41.google.com with SMTP id p139so2762571itb.1
	for <yocto@yoctoproject.org>; Fri, 05 Jan 2018 11:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hz0tgIgfK26wBn9Em1POfLLOWSa9AkzNJJ9VtGYsfHo=;
	b=j6ErvRutIKC7oC9NbX+R3a4rHQv7l4322it36C/I3KrlKOf+cp8zFhSsJp66slLEh+
	SdzghFwWSGQg+XBzBfcs49TZJuzKdx3f6wajWoj5J8kslmAu1uCL3ifShL4yRLUtISnk
	3VOtUJohuAo3GknifgPD0dVhMNbIM734EdQzETOxnhCESUI3Y76m1ovHrIvBb1E7WTVY
	dxKL/ezcBtQURJbyvyaF7Ag5VH4TDPuGE+N16f9ssuZC6cvyhCfO7ylpdRY8PuMpgoYv
	wXnLsW+v9juB//Ag/EnRwmJH+WzTrD04Fxd2YOoCGgyK8oPYFftpM84CsRy6nyI2Srd7
	7PhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hz0tgIgfK26wBn9Em1POfLLOWSa9AkzNJJ9VtGYsfHo=;
	b=C4rneY4qndh7U0fnJ6IkbJOX0pJlPvGotyUsZJSxFdZ63cFVLmMkXs2xk1xV8DI1bI
	Z0hu8mawTWuUD57g7vgaFTV7csiatuk3gcIUZVA+1Uhg7aln6lP1GCt+tAZRKsSbJfN0
	P9khKNQhb3yAyEk/CsptImU9Ghupq3/qw7CmPYkGh6C+MtsQvZleG5bDzQ6fOa3w7ooh
	xLLayzLTeYlszVWIaR2p2SLRzhAgJp29iASI2o1Lf9Sen2yLeE4O5vuMSeahYet/vZub
	u/Os/1RqbsDViHabquiIBFw13rQR3rsxAPaBT9eKZTuOTpruQoMJebp5mNJT86CklT7Q
	FIoA==
X-Gm-Message-State: AKGB3mIFXvZFVMHlLTDNCbar35fERadTLlhOrvS7BAIKiNj/p2s81dzq
	I6qVbth7wNv8+KwclbZHCnYQNzdbZtLiLz6SSXiKUg==
X-Google-Smtp-Source: ACJfBotPUp+OyUqJN7pfw/DZShAsdhO3J2yZSzfFmEKn2lrbQXwqy28D0X5vwwI32J9tmHeZ6ZIgH+HeD+8MtH5xOhU=
X-Received: by 10.36.179.77 with SMTP id z13mr4107117iti.145.1515181426586;
	Fri, 05 Jan 2018 11:43:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.166.23 with HTTP; Fri, 5 Jan 2018 11:43:46 -0800 (PST)
From: Edward Wingate <edwingate8@gmail.com>
Date: Fri, 5 Jan 2018 11:43:46 -0800
Message-ID: <CAGMdoFkPU8cyvNftjRXtmc0GyYXi0LNMh9TJ=A8cgrSjKRecBA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: fstab entry not mounting at boot-up
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
X-List-Received-Date: Fri, 05 Jan 2018 19:43:48 -0000
Content-Type: text/plain; charset="UTF-8"

My system has a USB-SSD drive and I added this to my fstab:
/dev/sda1  /mnt/drive    auto   defaults,nonempty  0 0

But it doesn't get mounted on start-up.  I can use "mount -a" after
start-up and it mounts successfully.

Everything else in fstab gets mounted on boot.  Does anyone know why
my new entry doesn't?

Thanks for any help.

Ed

