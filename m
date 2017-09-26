Return-Path: <prvs=144228dd97=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFC73E00D2A; Tue, 26 Sep 2017 13:35:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.161 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 179 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Sep 2017 13:35:15 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02B57E00C62
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 13:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1506458114;
	s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=K0B7b5ZHGGS1hogkHc/eLvLHL4h5xF0BiXPj6MRJ4hc=;
	b=QIatm+DRZUi4iUpbspYEfE5iFjqlxc4+hPDNsZW7npZvyysHYDGijJt+Q5+jbf4/s/
	vwLsoDMwW3uILE4Pi9Nwc0eleWVDQE1Kh8f58ElSKtFjGF8kmp1ui0ZygPcaIgdgGw08
	d8+FYq05ztBeUqwHhc90LkLtlaltwZqCBYamU=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9mHNc01sePA6ZpTLlbQjW24Op+tVk4KRcAnsvYqj8BnsImkjBk
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:246b:26e9:af6c:cbea])
	by smtp.strato.de (RZmta 42.1 AUTH) with ESMTPSA id j0707et8QKWEHM4
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Tue, 26 Sep 2017 22:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1506457925; x=1507062725;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=K0B7b5ZHGGS1hogkHc/eLvLHL4h5xF0BiX
	Pj6MRJ4hc=; b=PTevmbHSsG8/jIwjGflONalh8jbcV01XDXarjqzvbkvoSIEpmb
	r1GRkhSLLFlN71J/coi8cvhqDXTc937cqTJvZW5ppmAMZc/3/2/u3iaY0HhHztbf
	hDzaW9BRbBOyGeZHM2GWmU19ihw1vDE4iFbcfsZqL/w7e6HGMsxfGTQj8=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.3) with ESMTPSA id
	md50000006725.msg; Tue, 26 Sep 2017 22:32:04 +0200
X-MDRemoteIP: 178.26.238.27
X-MDArrival-Date: Tue, 26 Sep 2017 22:32:04 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=144228dd97=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Bryan Evenson <bevenson@melinkcorp.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <06d955af-4522-212a-71f7-94429f388e89@rsi-elektrotechnik.de>
Date: Tue, 26 Sep 2017 22:31:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Tue, 26 Sep 2017 20:35:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

Hi Bryan,

On 26.09.2017 19:16, Bryan Evenson wrote:
> Due to what our IT department can support, I am issued a Windows laptop for development.  In the past I have used VMWare to make a Linux virtual machine for my Yocto Project based image builds and application development.  We are starting to get Windows 10 laptops so I am evaluating doing my builds using the Windows Subsystem for Linux (WSL) by building a poky/morty image.  Overall it seems to be working.  I've had an issue that I've worked through and other issues that I'm not quite sure what is going on.

There's obviously a lot of stuff that the WSL does not support (yet) 
which is often filesystems or API limitations. I ran into a list of 
things that they officially marked as known good/bad, but I can't find 
it right now. If it shows up again, I'll forward it. For the time being, 
I think you might be better off looking at CROPS [1] which is the 
"offical" recommendation to buld on Windows/OSX, as far as I can see.

Greetz

[1] https://wiki.yoctoproject.org/wiki/TipsAndTricks/CropsCLIContainers

-- 
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


