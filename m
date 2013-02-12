Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5F36E00312
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 09:36:10 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id A794DB6A016;
	Tue, 12 Feb 2013 18:36:07 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.0 required=5.0 tests=ALL_TRUSTED, LOCAL_USER_RULE
	autolearn=unavailable version=3.3.2
Received: from [192.168.178.21] (ppp-188-174-163-122.dynamic.mnet-online.de
	[188.174.163.122])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 61F32B6A020; 
	Tue, 12 Feb 2013 18:36:07 +0100 (CET)
Message-ID: <511A7D86.1040703@philipp-wagner.com>
Date: Tue, 12 Feb 2013 18:36:06 +0100
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130105 Thunderbird/17.0.2
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
	<1359582698-24226-2-git-send-email-lists@philipp-wagner.com>
	<CAK18fxFWNxYDkoJi1jzkeMsmNpN+3QDvWcxfVJqqPb=HKumChA@mail.gmail.com>
In-Reply-To: <CAK18fxFWNxYDkoJi1jzkeMsmNpN+3QDvWcxfVJqqPb=HKumChA@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] Choose correct ABI version of graphics binaries
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Feb 2013 17:36:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 09.02.2013 23:59, Andrei Gherzan wrote:
> I like this change but I think the best way would be to switch to
> userland. So we can compile our own libraries. I sent some patches so
> please give them a try. 

I agree that switching to userland is the best solution. I'll give it a
try in the next couple days and report back.

Philipp

