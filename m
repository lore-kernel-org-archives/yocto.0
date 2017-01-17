Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5AD6E00938; Tue, 17 Jan 2017 08:43:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D068E00546
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 08:43:00 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id j18so118945302ioe.2
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 08:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=yK4Nr/9D3nGSZD8iFuaoqGa0XysRVemUBA/QOfuMsNc=;
	b=OYg6/PbS5UHKx5yKwvkQP9ycLaCH4wABBOuW40X6ktMM4tpB88NgyG2uSw6YYApHKt
	G5IhGrIfJ9uiZb+2keffkpt6Th4I3DuJc6HPZaUXzwace1tZT0EXsTj85khZe9lMyaO1
	ClcXzpJOCBnAnBEaU0Rq8/MEJz60vXpKJzomOWmbvE+NzKV31LVbuPsXYzNBj7C77hxz
	PTns3LY6V2qXBrG0KQtasVLc//tJsnD4H8cTA6LCZ29z+rKH0IYdi/d7c1JMRuECuy52
	92EzaUR38T9O/69oxKqnchfLDq6VUSURIXPvKLutCX1fUdPqV8Uhq2Xy0ZV9IP09XDVc
	xSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=yK4Nr/9D3nGSZD8iFuaoqGa0XysRVemUBA/QOfuMsNc=;
	b=rL7+mmU/rz7F29eUHsyft/6EJtPTSSoAq+NgQJGsUCPszXQKH9sTd/eF9IHgf9Kchp
	ruxK5V9xSQiWozdZV+gsdLtcP1MTQBMaxot/y0IOiZLAt1JAiacomAMIcjRlubptc0L0
	jLFVqNGQ4TnD+kRmAgGD72YnbzdNWebKl2DBfqBGHgRBTooe1/NJXtzvSHyplUa4K/dI
	p9gDKmbwjXZ9EpBf5MZV2UQxvUb40zyUNahZUPP9o04XocodSBjL94eB6YLCz+c36GQq
	eyjUxuSCQ3HDozdCesxPrQWFRgyPyvOUbHFAu5zh2nOX0xc0U2iVtd5mrbjkc3NEMhNU
	nwgw==
X-Gm-Message-State: AIkVDXLY+IGfeJliuEjZ7X/bKjK8qddcyJs3B6ASB4km7CgCDRCanBRdJ6QXcQY0hrQkBalY
X-Received: by 10.107.6.199 with SMTP id f68mr7343678ioi.211.1484671380076;
	Tue, 17 Jan 2017 08:43:00 -0800 (PST)
Received: from pohly-mobl1 (p57A56390.dip0.t-ipconnect.de. [87.165.99.144])
	by smtp.gmail.com with ESMTPSA id
	o138sm7531930itc.18.2017.01.17.08.42.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Jan 2017 08:42:58 -0800 (PST)
Message-ID: <1484671376.19478.75.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Tue, 17 Jan 2017 17:42:56 +0100
In-Reply-To: <20170117155910.23792-1-git@andred.net>
References: <20170117155910.23792-1-git@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH] swupd-image.bbclass: do_swupd_update() depends on time-native
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
X-List-Received-Date: Tue, 17 Jan 2017 16:43:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-01-17 at 15:59 +0000, André Draszik wrote:
> The shell script uses time, which is either a bash built-in, or
> a GNU utility. Not all build machines will have either bash or
> GNU time available out of the box. Make sure it is available.

Good catch. I'm just wondering whether it wouldn't be simpler to remove
the usage of "time" instead, or make it optional?

The "time" utility was useful while working on performance of the code,
but now that this is done, it's merely nice to have when one can get it
for free, which isn't the case when time-native has to be compiled
first.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




