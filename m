Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAA82E00503; Mon,  3 Oct 2016 11:48:31 -0700 (PDT)
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
	*      [209.85.223.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 421F2E00444
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 11:48:29 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id z135so7391659ioe.3
	for <yocto@yoctoproject.org>; Mon, 03 Oct 2016 11:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=fBWkPcYj7iQ29KBhdpuyOm5SQdigmh0xhw/PQ7DVEcw=;
	b=ZIK6oF2vGUfkqkXgzZru5KGvoQVZVVBGxrYllook01UDg0C/a+LyLTxrE6yxbh8kdg
	IUvaSnyv7J6SS2ANlXBdd3OQNopP+oKpXXG5dUUJuluGvSUoX4oZIqn3jkeZ3VDSvvJI
	beaa3K4PZAtqgdotGXvGuNKA2hXsa3NPGOB/hy9oFa6urT/RYB4haMiQt0Vo8I3v4WWm
	JVeWwVDwTOhvK8sboMT0J3+cXBFtkhcevsCcF0NgnSlHpMauxYlzXvXBzMlOLT+bQcrq
	R2MLhFP0tUeRWu+YTsSWPBiH1giaeBen5gwHjHT8SefcY9+/usOhdPRskTKBEXFOQcUZ
	tG7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fBWkPcYj7iQ29KBhdpuyOm5SQdigmh0xhw/PQ7DVEcw=;
	b=d7xUoLxo3U/gOI2sBragkMvtj0Q72HnaOaA8rZjtFGTVg+JAQIrZQ/Bw6VwqfN9Dsb
	0Qiivo8+aceG+caQBOIF+PmJdDmmQqrN0aemkPvbHwgE2kGHP7PTyq4IowisKD7a0eg4
	SSgG/Gk2SPfOCn93Z0lQzryUcAC2eZm/Ei0qm1dTfBlMUjD6B8KI49C+3gpZbATGHSnD
	u9fwEIpkSaMlLybUFpsDai7ReSWVk6Re66JJRIcsm+g6dzrWUdc04WHB+deVSOWcbQsK
	fNTjhGbVdzz6Mbkg0nGqR4EUz+vBP3xKtUItjt4vudvrrOfRPIyKr9uufcv9weqXE2bQ
	LfWQ==
X-Gm-Message-State: AA6/9Rmo2DiDjUffcFxLq73mox1KW6FaSNe7dAFxGf1l/DP6L5S2P95OUFHzxktgQiey8g==
X-Received: by 10.107.199.195 with SMTP id x186mr160758iof.88.1475520508845;
	Mon, 03 Oct 2016 11:48:28 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	z42sm7402516ita.11.2016.10.03.11.48.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Oct 2016 11:48:28 -0700 (PDT)
Date: Mon, 3 Oct 2016 14:48:26 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Message-ID: <20161003184826.GA30939@openSUSE-i7.site>
References: <20161002143422.GA24664@openSUSE-i7.site>
	<DC4D7174-E554-4A40-A0BC-B20623C83300@gmail.com>
	<HE1PR01MB18837565069037BC361486E792C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB188308CD0299E2BC792EF3C692C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
MIME-Version: 1.0
In-Reply-To: <HE1PR01MB188308CD0299E2BC792EF3C692C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Mon, 03 Oct 2016 18:48:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2016-10-03 @ 06:45:55 PM, Karim ATIKI wrote:
> Note: I just launched the build again with bitbake -k core-image-x11....and
> 
>  the error did not occur again.
> Well, a bit weird. Don't really know why does this error raised though.

It looks like the patch to which Khem refers was just added and pushed within
the last couple hours :-)

> is it due to use of DATE and TIME issue ? I think there was such a patch proposed to meta-rpi see
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=4c02c7ce07121c2f5367204445f93199d828bb10

