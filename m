Return-Path: <prvs=1243fae5ef=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF2FAE00A0C; Sat, 11 Mar 2017 05:07:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6922AE009B9
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 05:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1489237661;
	l=4823; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:Cc:References:To:Subject;
	bh=mi7Fpmgjf7f2CQCXCh8+PfFe52BXY6NgjMMkDYCgvUg=;
	b=OPkMbjeUlAR06bjHN1J4sIgssbPRwwfbU+WzpTwGUIOzapGVOKmJvEybgVqLWN+Ro8
	D1Dhk/cIFj0G6Ng8IOSzeT1ESykKIhGatcR846vfBpqcGJfOYVJxWTA5BpaEKaiCoXO2
	4B33OcURHfg8oswY/ZI7mGqsnT0eamONBuhBA=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvFFN0+xNtPaAoGLw2S47Aw5p3DMOqepD6BZ9BTbdag==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:5ef5:79fb:18fe:329c:af6c:cbea])
	by smtp.strato.de (RZmta 40.1 AUTH) with ESMTPSA id z05adbt2BD7dEaz
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Sat, 11 Mar 2017 14:07:39 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000508921.msg; Sat, 11 Mar 2017 14:07:27 +0100
X-MDRemoteIP: 178.26.151.155
X-MDArrival-Date: Sat, 11 Mar 2017 14:07:27 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1243fae5ef=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Trevor Woerner <twoerner@gmail.com>,
	Alexander Kanavin <alexander.kanavin@linux.intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<20170310204943.GA32004@linux-uys3>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <090ef726-a08d-aa2c-a6b3-55172244c8c9@rsi-elektrotechnik.de>
Date: Sat, 11 Mar 2017 14:07:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170310204943.GA32004@linux-uys3>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-architecture@lists.openembedded.org
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
X-List-Received-Date: Sat, 11 Mar 2017 13:07:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Trevor,

On 10.03.2017 21:49, Trevor Woerner wrote:
> Although the trend is to not care about licensing, I believe it is vitally
> important that we do our best to keep track of all the licensing from every
> package that is pulled into an image. If we're pulling in >1000 npm packages
> just for one node app, then that means we should have >1000 item list of each
> dependency and their respective licenses. Although it makes a recipe look
> ugly, I wouldn't want to drop this functionality due to aesthetic concerns.
> Maybe the license list could be moved to another file that is required by the
> "main" recipe file? Maybe the list could be moved to the bottom of the file?

Boiling that down, it sounds to me like the approach is the following:
1) Let the sub-package manager do its work as its meant to be.
2) If the sub-package manager supports version lockdown/shrinkwrapping. 
it shall be used.
3) The OE build process is only meant to take care of licensing.

(This could basically be seen as an additional Option 0 to the mail from 
yesterday: License-only recipes. [1])

Sounds like an interesting option indeed. Keeping it in the recipe 
means, in an abstract manner, that we need support for sub-licensing. 
Might be a viable route to go .

> In the case of node specifically, I don't think trying to create and maintain
> separate recipes for each and every dependency one might find in the npm
> registry would be a sane approach. Currently we embed the version info into
> the recipe filename. This will simply not scale to millions of npm packages,
> each with numerous versions.

It will not scale for human inspection. For metadata that is 
algorithmically generated and used, I personally don't think the sheer 
number is a killer argument.

> I've been playing with node a fair amount lately as it relates to OE and I
> have to say I've been quite impressed! These aren't easy things and I think
> there's a lot of good work happening.

Totally agreed. But implicitly, we tend to see npm as the reference for 
such sub-package managers. Is this a good way? Alexanders approach was 
to find a concept that fits all such constructions. Maybe its also 
worthwhile to think along the opposite lines: Treat each and every of 
those sub-package managers completely on its own, with all its 
specialities? (And hope that their number stays low....)

> Other than these (short-term?) issues devtool seems to be on the right
> track (?) It does, for example, generate a lockdown.json file and an
> npm-shrinkwrap.json file automatically. All we need is the package.json from
> the app developer, and that can be auto-generated via npm. I think we have to
> accept that node developers are going to want to develop on the target device
> itself, and when they're done they can hand us the package.json file which we
> can run devtool on which will generate the recipe for us.

I'm not too convinced that this is a good way. Especially when it comes 
to node modules that contain some native code, this becomes very ugly. 
My experience is that auto-processing that stuff adds megabytes of 
clutter, while all that matters in the end is a binary that is a couple 
if kilobytes. So how would one tackle that? Carve that out as a separate 
recipe again?

> As a short-term work-around, I've simply been creating an image with node+npm,
> running it on the device, copying over the package.json file, running npm
> install against it, then collecting up all the extra stuff that gets added
> to my image (as a result), and bundling all that into a platform-specific
> "bin_package" (bbclass). It works, but it's a multi-step process. If I could
> cut out some of those steps (once things from [1] are fixed), it would be an
> improvement.

Yeah, thats an option. I am rather providing custom compile and install 
stages, as the applications I'm working on have similar requisites, but 
I didn't want to go multi-step/binary.

Greetz

PS: being tired of typing sub-package manager again and again, how shall 
we call this? SPM? Application Package Managers (APM)?

[1] 
http://lists.openembedded.org/pipermail/openembedded-architecture/2017-March/000489.html

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


