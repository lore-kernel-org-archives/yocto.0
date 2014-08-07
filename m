Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3671EE0080A; Thu,  7 Aug 2014 03:13:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA5A8E00800
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 03:13:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 4168127E05B;
	Thu,  7 Aug 2014 10:13:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id uSDL0Xj7qgnE; Thu,  7 Aug 2014 10:13:09 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 490A927E05A;
	Thu,  7 Aug 2014 10:13:09 +0000 (UTC)
Message-ID: <53E3512E.5090008@dynamicdevices.co.uk>
Date: Thu, 07 Aug 2014 11:13:02 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1571948.CrPtZqAbFm@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1571948.CrPtZqAbFm@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: RFC: Improving the developer workflow
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
X-List-Received-Date: Thu, 07 Aug 2014 10:13:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 07/08/2014 10:10, Paul Eggleton wrote:
> Hi folks,
>
> As most of you know within the Yocto Project and OpenEmbedded we've been 
> trying to figure out how to improve the OE developer workflow. This potentially 
> covers a lot of different areas, but one in particular I where think we can 
> have some impact is helping application developers - people who are working on 
> some application or component of the system, rather than the OS as a whole.
>
> Currently, what we provide is an installable SDK containing the toolchain, 
> libraries and headers; we also have the ADT which additionally provides some 
> Eclipse integration (which I'll leave aside for the moment) and has some 
> ability to be extended / updated using opkg only.
>
> The pros:
>
> * Self contained, no extra dependencies
> * Relocatable, can be installed anywhere
> * Runs on lots of different systems
> * Mostly pre-configured for the desired target machine
>
> The cons:
>
> * No ability to migrate into the build environment
> * No helper scripts/tools beyond the basic environment setup
> * No real upgrade workflow (package feed upgrade possible in theory, but no 
> tools to help manage the feeds and difficult to scale with multiple releases and 
> targets)
>

Very interesting Paul.

fwiw Upgrade solutions are something that is still a read need imho,  as
I think we discussed at one of the FOSDEMs.

(The other real need being an on-board test framework, again imho, and
which I believe is ongoing)

Historically I, and I suspect others, have done full image updates of
the storage medium,  onboard flash or whatever but these images are
getting so big now that I am trying to  move away from that and into
using package feeds for updates to embedded targets.

My initial experience has been that

- as you mention it would be really helpful to have something "more"
around management  of package feed releases / targets.

- some automation around deployment of package feeds to production
servers would help,   or at least some documentation on best practice.
 
The other big issue I am seeing, which is mostly my own fault thus far,
is that I have sometimes  taken  the easy option of modifying the root
filesystem image in various ways within the image recipe (for example
changing  a Webmin configuration perhaps)

However when I then come to upgrade a package in-situ, such as Webmin,
the changes  are  then overwritten.

I think this is probably also an issue when upgrading packages that have
had local modifications made, and I wonder whether there's a solution to
this that I'm not aware of?

I am aware of course that mainstream package management tools allow
diffing, upgrading,  ignoring and such but I am unsure as to how that is
supported under Yocto at present?

As a minimum I will have to make sure my OEM recipe changes are all in
the correct .bbappends I believe think (more best practice notes there)
and I definitely need to understand better how configuration file
changes are handled when upgrading packages.

Cheers,

Alex




