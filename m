Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF80CE00B6F; Fri,  8 Jan 2016 03:48:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 419 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Jan 2016 03:48:16 PST
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 549E0E0086B
	for <yocto@yoctoproject.org>; Fri,  8 Jan 2016 03:48:16 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3pcMvc0PW9z3hjYR;
	Fri,  8 Jan 2016 12:41:16 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3pcMvb6TrGzvh2H;
	Fri,  8 Jan 2016 12:41:15 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id FXyNJsdivQoy; Fri,  8 Jan 2016 12:41:14 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Fri,  8 Jan 2016 12:41:14 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 59A44454055A;
	Fri,  8 Jan 2016 12:41:14 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id VsRKLKx0BWJ4; Fri,  8 Jan 2016 12:41:11 +0100 (CET)
Received: from [192.168.178.20] (papero.fritz.box [192.168.178.20])
	by babic.homelinux.org (Postfix) with ESMTP id B1C9C4540559;
	Fri,  8 Jan 2016 12:41:11 +0100 (CET)
To: Andrea Galbusera <gizero@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAC+thW0JVs2_G3VugV6Z-a-YwBf1cxscGNzeXORDknWp-nk7yw@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <568FA057.3090708@denx.de>
Date: Fri, 8 Jan 2016 12:41:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CAC+thW0JVs2_G3VugV6Z-a-YwBf1cxscGNzeXORDknWp-nk7yw@mail.gmail.com>
Subject: Re: images installing other images and artifacts
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
X-List-Received-Date: Fri, 08 Jan 2016 11:48:19 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Andrea,

On 07/01/2016 16:30, Andrea Galbusera wrote:
> Hi!
> I'm building an image for a production system, let's call it
> 'production-image'. All required artifacts (kernel, dtbs, bootloader
> and the image itself) are built by the process as expected and
> available in tmp/deploy/images. The production machine is configured
> to boot from flash.
> 
> As a production tool, I use a variation of the final target, the main
> difference being it boots from SD card. The image it boots (i.e.
> 'flasher-image'), runs a tool for flashing SOMs (the hardware is
> modular) with the production artifacts.
> 
> It would be nice to have a package installed in flasher-image that
> provides all the artifacts required by the flasher tool in order to
> flash production-image together with other binaries it needs. Having
> such a package available through a package feed would simplify future
> upgrades of artifacts on potentially many (and distributed) such
> flashing stations. Being that package, say
> 'production-image-mymachine-artifacts' the same or not as the one
> providing the flashing tool should not be the real issue here.
> 
> I've being reasoning and doing some trial mostly following a couple
> approaches. At first I've considered building the package as a sort of
> 'side-effect' of building production-image itself but it seems like an
> awkward idea since image recipes are not designed to build packages. I
> then crafted a separate recipe, which depends on 'production-image'
> and that I can use to package artifacts. Before trying to refine this
> last approach, currently very rough (it uses hardcoded names for all
> the artifacts) but somewhat promising, I stopped by to ask for some
> community wisdom.
> 
> Does anyone know of any custom layer doing something similar to what
> I'm looking for? Do you even think this is something
> reasonable/feasible with the current tooling? I don't know of any
> other part of the build system, other than the wic utility, that's
> designed to use artifacts as inputs for further processing.
> 
> In the hope I've been clear enough in explaining my needs. TIA for any
> clue or suggestions.

I am not sure I have really understood what you are planning to do.
Anyway, I had a similar issue becuase I need to build a compound image
(not as package) for the target that contains all components to be
installed on the target (kernel, dtb, rootfs, ..). You can take a look
at meta-swupdate and at the swupdate.bbclass. It could be a starting
point for you.

I hope this helps,
Stefano Babic


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

