Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F9ECE00BD5; Tue, 23 Jul 2019 04:47:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D375E00A49
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 04:47:20 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id i10so81042657iol.13
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 04:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=S6gp51plx259cdGs9i4Ve4/t4M5pMcgFbP3QCrZXyG4=;
	b=MW7KYQhmWS9l4X72LUWzv/60n2tR3UVmiIc/9urzMjpHa2yeHTyZFiP3Btz71NRTav
	wsIcYngCmAJnSBmFd+g7m9WPkMVjXWaJGK6W9aAAbLZiP7Jst782I6X9X/VkwWWBEgSS
	8cOD53vf8ngpNjxTdBZ1FekGNJgvb9xk/7dnhhxxC5n6Rxfr/eLrozP05DHEpXS5QNnZ
	/SWtR4i7Md99HwI35vvZ3vr2qfBWW50rFLxMx3957e6n7UuFaFi+pp2bPvm1y9i92sYn
	ooyJJhhFTkO3LMbJplgP1FI3IaOT+/+F1RklNt4EVAuMKpfGLrGDPPcEK6PUz4inZWq4
	B73g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=S6gp51plx259cdGs9i4Ve4/t4M5pMcgFbP3QCrZXyG4=;
	b=E2K8dHjHzVDKblxp2I+jC+mmaEGWM5WRjvMz/7+iauxefMMQ4L8bkGamWZ1WgweQOy
	7SkgPZvNJNVxpfjTD6NhXmaM78vVFvCVhaQuG8HbdWG9n4HuWgYBuUyI2+fbGL4pYyR6
	z1W+jMudDpCycg22WYVWE+yqq2iQmLnr/TfdFPXoSXUhlvueEFl1AHR/7l0cgB8YEVtx
	sEd2jQDIIpRPQx4cYmazDy7X1akMBcwsYytGxGkfWwgKyEqOt0FZbGNVvcT1N4OxLN4u
	27dkuFMxMjxhmAy4qtl3quhVmdRVW0jIQ579f+vUNSt0/FII9/WIe+mgJjBeYtsOXcEa
	tl7w==
X-Gm-Message-State: APjAAAXnrxzxB0ctiz65i5+r8iqPmbATq0hD/LoTcFkW/tkMklISnGmy
	bsRilJ84VKDW02T1WC+O6EMptclIZFuhQscRIyffQy8a
X-Google-Smtp-Source: APXvYqwP/F0I/WIQvzTtmEWQe304g3npkhl6gb8lo2Ga3TJaiytJM7lAcgjJLjHkcIWVlGq+kKfHkfrjh3M/JsCiHxI=
X-Received: by 2002:a6b:d809:: with SMTP id y9mr72773662iob.301.1563882439487; 
	Tue, 23 Jul 2019 04:47:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Tue, 23 Jul 2019 04:47:18
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 23 Jul 2019 21:47:18 +1000
Message-ID: <CAA=hcWRAA9pGSy2DK1T1h7cH=n1yCN_vwwdChivaBcbH=nm+rA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: install -m 0644 ${S}/lib/systemd/system/${PN}.service ${D}/${systemd_system_unitdir} failed to add service file to ${systemd_system_unitdir}
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
X-List-Received-Date: Tue, 23 Jul 2019 11:47:20 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I set up the configuration for service files at following:

SYSTEMD_SERVICE_${PN} = "${PN}.service bootstrap.service"

do_install() {
    ..............
    install -d ${D}/${systemd_system_unitdir}
    install -m 0644 ${S}/lib/systemd/system/*.service
${D}/${systemd_system_unitdir}
}

Despite both service files are in build directory, the final image
installation does not include those service files, appreciate anyone
help.

Thank you.

Kind regards,

- jh

