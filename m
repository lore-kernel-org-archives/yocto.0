Return-Path: <prvs=12423f3dd4=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58813E00A16; Fri, 10 Mar 2017 12:41:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.216 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 184 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Mar 2017 12:40:59 PST
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD4E9E009B9
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 12:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1489178458;
	l=3997; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:Cc:References:To:Subject;
	bh=zlsQB3NWbFPA2lbs3jPhpfmnrVvVU4oif5LYzAhVT5k=;
	b=oKaj7qSuolbqM4AsSz/bIvoyEl+TDk6SLDU3co2gSEAlmUwugk+wpWsrR5MhnmWuKO
	lN+ngP1/9jAO3jS3OpG7WQL7EFpKINIlp5r2+oV9tSkZPjB1YitD1YuHacNSrEnXM0YH
	mFpbMCkkmA8ibdnhOuaYlAuuKwhDcLlqWeyeE=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvFFN0+xNtPaAoGLw2S47Aw5p3DMOqepD6BZ9BTbdag==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:5ef5:79fb:18fe:329c:af6c:cbea])
	by smtp.strato.de (RZmta 40.1 AUTH) with ESMTPSA id c00a84t2AKbpAod
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 10 Mar 2017 21:37:51 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000508867.msg; Fri, 10 Mar 2017 21:37:37 +0100
X-MDRemoteIP: 178.26.151.155
X-MDArrival-Date: Fri, 10 Mar 2017 21:37:37 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12423f3dd4=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Otavio Salvador <otavio.salvador@ossystems.com.br>,
	Alexander Kanavin <alexander.kanavin@linux.intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
	<b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
	<CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <3ea6e62f-ae4a-d7d3-5978-cd5edf2e783f@rsi-elektrotechnik.de>
Date: Fri, 10 Mar 2017 21:37:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Fri, 10 Mar 2017 20:41:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Alexander,

thanks for kicking off the topic, sounds like its kinda overdue. While I 
have no really good solution (d'oh!), please find below thoughts and 
bits and pieces about some of the points.

*Recipes*

My gut feeling say auto-generation of the recipes is a good way to go. 
Yet I am uncertain which set of functionality such an auto-generated 
recipe would provide. The obvious possibilities:

Option 1: Only dependency/license tracking.
   Pro: provides exactly what it says - known and proven means to keep 
track of the dependencies and licenses.
   Contra: this would mean that we have a recipes that only do 
housekeeping, while the actual workload is taken care of in the main 
recipe. This seperation sounds like a massive headache

Option 2: Full recipes
   Pro: would fit into the OE workflow.
   Contra: requires the sub-package managers to at least "play along". 
Think two applications having the same dependency. It would get 
installed once (globally/system-wide), and both applications have to use 
it. My interpretation is that this just is not how it works (looking at npm)

Coming from there, one can go further, resulting in
Option 1.5: Provide recipes for common base functionality. Those would 
have the all-in-one-locked-down approach, but are meant to be used as 
global dependencies. Example: the MEAN stack. Like its name says, it 
consist of 4 main pieces (-> possible recipes) which are needed by the 
application.
   Pro: reduces recipe number/bloat and makes dependencies readable. The 
mindset fits the classis 'library' thinking.
   Contra: the depending application would have to be packaged with the 
infrastructure in mind. So while the library recipes could rely on the 
locked down sub-package manager, the application would have to intently 
skip it and provide a custom installation. Which is an annyonce if you 
are application dev and packager in union - and a major pain point if 
you want to package some upstream application.

*Lockdown*

To me the approach sounds interesting, yet it comes with a couple of 
points to think about.
- Feature set: having such a lockdown system implies/requires all 
sub-package managers to provide (at least) the functionality to fullfill 
the needs of the lockdown process/recreation. Is that something we can 
take for granted?
- Multilanguage: imagine a package for example having some native go 
code, then nodejs bindings and then a npdejs application on top. How 
would that look like? Multiple lockdown files? What are the implications?

*Sub-Package managers in general*

We've seen the first (perl, php, python...) and second (npm, go, 
rust...) wave of those by now. A third one certainly will come one day. 
Taking a step back for a larger perspective, it sounds like what we 
actually need is some form of nested dependencies. Or scoped 
dependencies. Whatever we want to call it, because to me thats what it 
actually is. The dependencies we have now are always global. But 
especially the second wave things think different. Those sub-package 
managers do not care about the whole system. They care about their small 
part of it. So my interpretation is that we need to take that paradigm 
shift, and decide upon the actual implementation details afterwards.

*Conclusion*

Guess I raised more questions than I offered answers for. Sorry :-(

Greetz (and try to enjoy the weekend)
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


