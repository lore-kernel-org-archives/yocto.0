Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF26BE00D90; Thu, 18 Jul 2019 03:01:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0302E00B8F
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 03:01:52 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id z3so50562643iog.0
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 03:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mmiQXTt/S5Uifa3Kl9wc7ef/5XH8iBrCP1dpoOnDkS4=;
	b=MI6PpH/2mhElEjSrHrSvLaSrVjSAbPTBHtK3h8/faOWuBA2VVu5LehRuhGgaTStC1s
	9Q3jhKvKOo3Y+3gMLEpPMScu+EHCoqky156yWDeLu0oUJlPcaLz/3Lhl0674SLzzWxlC
	kDP7jWg87obedxpETsizAAxndv/B/otPf6xz2dhqxtXsogE8Gyx8K31qB22zuM4dgKw7
	Qo0wJeltKrRp2K55wAKoBxpK7NiGFf9wcGn5ubYujyZ/va7855is5fjZjRBaw6YAIxD4
	QBCJtyZbv5xpZ7smpXMt9aqRPPZXtnf8i1sMCdlq9uA1PVDmUk44N/PnO0M6VC3e9oSf
	R1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mmiQXTt/S5Uifa3Kl9wc7ef/5XH8iBrCP1dpoOnDkS4=;
	b=MSono+POc/uYqTvvuKSaCCGXPW32G7dPtM49KQ4/BfqA1OSKP78T6C2ho2SH1JEhh3
	NJ1r08wnM0yDvImoLasWqCN7bDmAI+S8Ihhpl1aOIvA5WPZwL9sDhd5cK0irc9NyiO0M
	cY9d/uh9f0Y+Fk2y82AN8H8CmM4H6+/A3Zw+Da6p1gak1sW2u3IkoRPwhjAZK9SbIyrE
	rEZes33VBeyy9OzsXkJxWFBDsU2nu0eLVjN7vqVto9yr9SA/9vR8wZA1is91yjw27CMZ
	viql8cAz0SntCGVZVg30zC2CR6ciO38TFpKE20QZTtQ6Qqjg4OA/jsPz7NnA8z+fPMJh
	0tyw==
X-Gm-Message-State: APjAAAW+e4a1RQYFBtoh9qaPZpO0SZDS/NIMrwlIyB9I6xYDei/wwKSN
	DKRf3moz7mSOpM/kAW/ZDby8k7Nd8mAFsw61LnZGCiWZ
X-Google-Smtp-Source: APXvYqxiufmR+moIWN1NT2CO/yB3dwLmd353RgtHPFyqWXaYELWmpDb6qm44Oz8maBjY/O1vugAdQwQHqb6WGHIfKbE=
X-Received: by 2002:a02:1441:: with SMTP id 62mr49862545jag.21.1563444111893; 
	Thu, 18 Jul 2019 03:01:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Thu, 18 Jul 2019 03:01:51
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 18 Jul 2019 20:01:51 +1000
Message-ID: <CAA=hcWTbyJUmn458++uuMzWCki2R+s0aRd4u6_eQ76oSFgAFwg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Missing service file
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
X-List-Received-Date: Thu, 18 Jul 2019 10:01:53 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I set up a service file at following myapp.bb file, but that service
file was not installed to /lib/systemd/system. What could I be wrong
here?


SYSTEMD_SERVICE_${PN} = "${PN}.service"
SYSTEMD_AUTO_ENABLE_${PN} = "enable"

do_install() {
......
install -m 0644 ${S}/lib/systemd/system/${PN}.service
${D}/${systemd_system_unitdir}
}

Thank you.

Kind regards,

- jh

