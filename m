Return-Path: <matthew_stanger@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D752E00B67; Mon,  3 Apr 2017 12:16:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8088CE00B62
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 12:16:39 -0700 (PDT)
Received: by mail-qk0-f169.google.com with SMTP id g195so51387594qke.2
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 12:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=8HXonvRSTRzqELkNzLUDf5VaBw+WP7IJRooWx4wjNcY=;
	b=MLzpdQSW/eBbqSTlgYJQ7QLs6xU69RVo/mW8x+X1P2MsyBlrQCjX0sA8nPLP8HE9Zq
	NwJbU2RZiNl94GC/G04310pLeNI4mSAz2Le+pObo9N45AaCcAH2ZCd8ZQIIf3PetkPjS
	OXCahwfZ8378fBpLufui13tbZP1WIDu90Z8wMIsV0cSgZq34y50O5UKrYTgIOoKWhmWB
	rjBGIOC3JEQtPzEirxxdY5ErC/6J6Bqa4cEkF8abCNew6DXZbG662BCduDj9fkVQvdTC
	TxckKjUdiVEZTy/Js1fpJwVlepYSHK1NiVXarr9Sy2fOqP6TrHhTm/kugjXiEdRQOW17
	Yttg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8HXonvRSTRzqELkNzLUDf5VaBw+WP7IJRooWx4wjNcY=;
	b=G0GKOMF1llnAlQXXw1IZLdZVEVrET2yeaE2fFSXZeh/J3lLQvNlkf0oCD8GiPR7PnP
	CRf6TDAL8PbpmmEkaHbYz9hhgAzQNNinV641R+vohryYbbEIwaLIdhrHm+k7maryjrDw
	jC506FeDg0SSRHUpm63ZTs97Wj0NM71ecmL+7uO8ZV/108J3dYP93JkLyb569BA10tJI
	oo5ODjNunwieH2VUsNRyudurBR4gEpSARuXPdNjkqhLghctfijVGokSKH2IP0zjI5bni
	UAxXeuOJnP+Mqf6iNtXs9EHLx851DzZgRKrlUG7N7dO190zULC1teIhdoulr8/tO7uSw
	wJJg==
X-Gm-Message-State: AFeK/H2Vkk+5ETjrUMtCrCZ7SWErOeHGFBbjROW+fIXUxG5o0qCa9AXnvAfG/6vRTkoT3hl/dox7s4nr5h2qVReN
X-Received: by 10.55.167.72 with SMTP id q69mr19011569qke.320.1491246998377;
	Mon, 03 Apr 2017 12:16:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.44.196 with HTTP; Mon, 3 Apr 2017 12:16:38 -0700 (PDT)
From: Matthew Stanger <matthew_stanger@trimble.com>
Date: Mon, 3 Apr 2017 13:16:38 -0600
Message-ID: <CANr77M2QfB-3CtwnscF+epvmyhS74D6dje2gnDG_wy+3SpOD9Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Still? Bug in cooker - networked PR_SERV
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
X-List-Received-Date: Mon, 03 Apr 2017 19:16:42 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm seeing the exact same bug as outlined here. It only happens when
the build server is unreachable:
http://lists.openembedded.org/pipermail/bitbake-devel/2015-April/005696.html

It crashes with the exact same error (self.state = 6) and bitbake
continues running in the background at 100% until you kill -9 it. Not
sure if this is still a bug but it's quite inconvenient to our CI
build system as if by chance the build server is unreachable it
requires the builder to have to be manually cleaned up. If it's not
being tracked currently & is still an issue I'd be glad to attempt a
patch if someone can point me in the correct direction getting
started. My setup info:

Build Configuration:
BB_VERSION        = "1.24.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "LinuxMint-17.3"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "renew"
DISTRO            = "poky"
DISTRO_VERSION    = "1.7.1"
TUNE_FEATURES     = "arm armv5 thumb dsp arm926ejs"
TARGET_FPU        = "soft"

Cheers,
Matt

