Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 855B8E008D7; Mon, 16 Jan 2017 16:12:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37302E00839
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 16:12:28 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id j18so103257370ioe.2
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 16:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ip0XF+o+6UtXyCdh6N9a8vX+0IS2Ia8Yvj1OxILb+yA=;
	b=TCvKnNF/UOm67tkpPjbuvlMFKDsPEp3Whq6QwYnp+d5tRG/zqq6OazhTDPTOc7HkTd
	A5jkU4PN5DqSGLM9th9ueiED94WWbMnnQBruq4RfbhLJqyMPBU99ShMhyGrPa9MrkZ5S
	F1jrOU6r6c6brrgnScr6amhwUGxmDotx4JSVDeI3m6w1mUjNLVrfzSgfwCPzQ8GeuI2x
	27cgXfo7faSXOHgSy/cKppMaCzp/+ke8/a6+pINV6W8UcWM2Q5bXslOBAWcjyst+lvk+
	M0DxzKAejxjzkAH2HG3KFlIWExOuQbMuLJRckaHF6tm1VobCTA6C0QBpjeBz1XHAYfm8
	anjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ip0XF+o+6UtXyCdh6N9a8vX+0IS2Ia8Yvj1OxILb+yA=;
	b=HDzNzmhbZzeJ6ICvOdYSwVIaukTsZf258wOOm74jLYNyUXyRP1dwng9fvgEXXBf6wh
	dqdeQI3nijeu4nGXuVtbXfXZODo2FyFf7mprurlFocvhcNkcucKf9jQKWo/dTiqamgZ4
	/q6ZeQIg/wiskWAoZbwQWnzGjLqJkP7e8X+nf1VnlOKxLVimKqWbqPLTgcKLCpnb8+sx
	5fBsXjwJBnXLzy2lQTsmrHCJq9PIDTppCsJ84yXSiCAyNVC9N26372F4jP8dB+QQU90a
	UbGL4Oy0t6ruYoZbgNmm46gnYMQsf4UHMSa17lxkOb2QxqVS491fKtH1u3eh5lYObCl8
	QF0g==
X-Gm-Message-State: AIkVDXL71iS5apmYiqax49adueWDLh+2+pg6R+L9regteNPoWSMxZ0GB1X5Urael5YRL3A==
X-Received: by 10.107.17.101 with SMTP id z98mr41123524ioi.226.1484611948209; 
	Mon, 16 Jan 2017 16:12:28 -0800 (PST)
Received: from linux-uys3 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	u203sm1539867itb.10.2017.01.16.16.12.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jan 2017 16:12:26 -0800 (PST)
Date: Mon, 16 Jan 2017 19:12:15 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20170117001215.GA12017@linux-uys3>
References: <20170105174229.1648-1-twoerner@gmail.com>
	<20170105193338.5b1360ec@nuc.betafive.co.uk>
	<20170105201619.GA7568@openSUSE-i7.site>
	<20170105215916.072b9215@nuc.betafive.co.uk>
MIME-Version: 1.0
In-Reply-To: <20170105215916.072b9215@nuc.betafive.co.uk>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi-rt: add
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
X-List-Received-Date: Tue, 17 Jan 2017 00:12:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Paul,

On Thu 2017-01-05 @ 09:59:16 PM, Paul Barker wrote:
> Also, are you thinking of moving the -rt recipe to the 4.9 series when
> upstream linux-raspberrypi declares that stable?

I just want to confirm that 4.9 is going to be the next stable series? How do
we know 4.8 isn't going to be the next stable after 4.4?

