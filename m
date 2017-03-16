Return-Path: <prvs=124832981c=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F120E00953; Thu, 16 Mar 2017 01:18:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.219 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06228E00839
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 01:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1489652306;
	l=2058; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject;
	bh=e4BWRDaLrZqkpAhs1R2n0bHOuI7182s4jBJFIzrzsOw=;
	b=QpBdLmJof5aaXjMESUbExxypMnouTxbNqi5IkR6I/R9oE5aOYA4kYtFkt3YYZvV5/v
	cyPx5GOprVP/BDVBAuQ8rueI0inc5j6Q+It3hWAchQtrUj8pISVM1qJs/TlRgGsyHoWA
	PEXe+vmNXyZrC7Rpd/Bo7csBzJh2uUxvTUQIs=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq1PsMOrsgJUXn/sWrYFv/BbNIsEQ==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:185a:368e:af6c:cbea])
	by smtp.strato.de (RZmta 40.1 AUTH) with ESMTPSA id Z09424t2G8IOHZ8
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 16 Mar 2017 09:18:24 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000510185.msg; Thu, 16 Mar 2017 09:18:11 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Thu, 16 Mar 2017 09:18:11 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=124832981c=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	openembedded-architecture@lists.openembedded.org,
	Yocto Project <yocto@yoctoproject.org>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
Date: Thu, 16 Mar 2017 09:17:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
Subject: Re: [Openembedded-architecture] Sum up - Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Thu, 16 Mar 2017 08:18:32 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

I'll give it a shot and try to sum up the current state of affairs in 
this discussion. In accordance to the "Package managers all the way 
down"-presentation, I'm gonna use the term LPM (for language package 
manager) for now on.

*Requirements*
- repeatable and verifyable licensing of all dependencies that a LPM 
pulls in.
- locking down specific versions of packages and their dependencies for 
reproductible builds.

*Optionals*
- strict separation of fetch, compile, install stages. If a specifc LPM 
requires it, those might be intermingled or left out [Mark]
- opaque packaging: similar to static linking, we should at least have a 
way to bundle up a complete application into a single package. Maybe it 
might even be the default (like rust does it at the moment).
- leverage as much as possible of the functionality the LPMs provide 
instead of reimplementing it.

*Wish List*
- separating out the LPM infrastructure into one or more distinct 
layers, not treating it as OE/bitbake core functionality. [Paul]
- support for the use of multiple languages/LPMs inside a single recipe, 
hopefully even package. [myself]

*Proposed Solutions*
- having lockdown files shipped with the recipes (in whatever form to be 
defined)
- leveraging the recipe system to resolve licensing.

If we can boil things down to the common set that we all expect, it will 
in my opnion serve as a blueprint for the actual implementation to follow.

Greetz,
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


