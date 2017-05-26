Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C87DE00C1E; Fri, 26 May 2017 06:34:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71586E00AE4
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 06:34:43 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id f102so9416644ioi.2
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 06:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=nfxf833G94vJqL8kI8AykUOe/1zbk4cFZ3xeB/lQ5EM=;
	b=UGcpR3o+zysNi2QQcxUUeWxOXH0hvoZrfJ6bBb77Ta4QjHhPQ/YCLRd8yNN74wJjZs
	AGheeAPs1iCC6mCSPRcwycEHAe0DqSLAlETXt3eZj5KPmYQbC8oBo7Cf4uugwqJzYsZ1
	QISEHk4z74EPbSYvhSU0Ws4r6ZYK0zdGWhRQMFm16yoaKmwzCbYMwQXVamw59nhpJ0gN
	f1EP8JZ+oNzFEJugKJXifi0d3Mow8y+5yeq7msa/Wwil9CpbU5QOwayBniyHE14JcNsH
	1Tjg5AiAO5HtGgM/JL6zhZtLWGyfipcaIqFhvb+R7JFntK/O5pK4th+82V2CEf26SMJG
	Fu5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=nfxf833G94vJqL8kI8AykUOe/1zbk4cFZ3xeB/lQ5EM=;
	b=BxH7+A66rqtFYQyFHhVgT8nsoazPNTP6GQkco0HuxhRir1WK/bgwxlRd/jWBw0bMuW
	otTm2gafC9Mdiz7jFo93DhhZhOAN61C5CLnPiFDldp9wYkLIuFpcS2qcxXCsB2/Hz4d/
	Q+Xs7UHWNEcwG1tNcRlHkdWgIX6jye0o0vx0lEezXilx7ZYpGMP5QiUlC5v5kiXcPCGq
	Bjzpb2bxGjcf/L3bJt4NygzDZzcJRab3RMXiTCYqzD1cBuONNGoYJYJZUXR25jpamr48
	Wy5pIILQmwK38Pii4bvRUPvZb7pJNCg4X8HGlUECLuN99zPY214PtUIf1vjAQ0wtQt10
	8xaw==
X-Gm-Message-State: AODbwcDYMbj7BM9W7iTlWmHcSZPc78wzZd5Epypsexp6UyYYT/tuDCEy
	adAiVZeqdPj+CZefaqY=
X-Received: by 10.107.164.227 with SMTP id d96mr1992361ioj.157.1495805683021; 
	Fri, 26 May 2017 06:34:43 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8F704.dip0.t-ipconnect.de. [93.232.247.4])
	by smtp.gmail.com with ESMTPSA id 6sm293914ioj.0.2017.05.26.06.34.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 May 2017 06:34:41 -0700 (PDT)
Message-ID: <1495805679.16923.117.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
Date: Fri, 26 May 2017 15:34:39 +0200
In-Reply-To: <TU4PR84MB0176FDFE3EF004412A28517BEDFF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB01764490D3BCFABC79D8BAC8EDFE0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
	<277e529e-2b7f-2aa7-0784-4689ea84c690@mlbassoc.com>
	<CAHUNapQ=Axu8GV4XDBBhOc94u4D+kcw4tZH_gPGrC1Wm=X0nVA@mail.gmail.com>
	<CAC+thW3Wo2zBbEB-nwU8QmYz8Fvw1twkoMSC3hm_dyJnavu=Ug@mail.gmail.com>
	<TU4PR84MB0176C9C56A48F5689036F976EDFF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
	<20170525143941.7vhq3tr5snnvdhky@nyx.americas.hpqcorp.net>
	<TU4PR84MB0176FDFE3EF004412A28517BEDFF0@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can Yocto treat layers like an external package?
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
X-List-Received-Date: Fri, 26 May 2017 13:34:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-05-25 at 16:04 +0000, Koehler, Yannick (HPN Aruba) wrote:
> This is my opinion, I think we could alter bitbake to retrieve the SRC_URI and S information from the bblayers.conf (instead of having recipes like for package).
> 
>     sample 
>     # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>     # changes incompatibly
>     LCONF_VERSION = "6"
> 
>     BBPATH = "${TOPDIR}"
>     BBFILES ?= ""
> 
>     BBLAYERS ?= " \
>       ##OEROOT##/meta \
>       ##OEROOT##/meta-yocto \
>       ##OEROOT##/meta-yocto-bsp \
>       ##OEROOT##/meta-openembedded;SRC_URI="git://git@github.com/openembedded/meta-openembedded;protocol=ssh;branch=master";SRCREV="${AUTOREV}" \
>       "
>     BBLAYERS_NON_REMOVABLE ?= " \
>       ##OEROOT##/meta \
>       ##OEROOT##/meta-yocto \
>       "
> 
> Bitbake could then fetch/update the layer from the SRC_URI into the location given "##OEROOT##/meta-openembedded" prior to parsing.

Richard has indeed been thinking about a solution like that for 2.4.

I agree that it looks attractive at first glance. However, I see a
chicken-and-egg problem with no (easy?) solution: a developer who wants
to get started with a distro "foo" first needs to check out the repo
containing that distro's definition and local.conf.sample, then somehow
also check out a version of bitbake that works with that distro
revision, and only then can bitbake download the additional layers.

Perhaps we can make it so that bitbake has a separate tool that works
outside of a build environment and then sets up that environment.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




