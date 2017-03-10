Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85A81E00A1E; Fri, 10 Mar 2017 08:23:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4084CE00A0C
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 08:23:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v2AGNYPX001416
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 10 Mar 2017 08:23:34 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 10 Mar 2017 08:23:33 -0800
To: Otavio Salvador <otavio.salvador@ossystems.com.br>, Alexander Kanavin
	<alexander.kanavin@linux.intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
	<b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
	<CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <cefcebd5-ac53-8142-6e64-05d309832bc4@windriver.com>
Date: Fri, 10 Mar 2017 10:23:32 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
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
X-List-Received-Date: Fri, 10 Mar 2017 16:23:45 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 3/10/17 8:58 AM, Otavio Salvador wrote:
> On Fri, Mar 10, 2017 at 11:48 AM, Alexander Kanavin
> <alexander.kanavin@linux.intel.com> wrote:
>> On 03/10/2017 04:30 PM, Otavio Salvador wrote:
>>>
>>> When integrating the CHICKEN Scheme support onto the Yocto Project we
>>> dealt it using their installation tool but making the package of
>>> individual packages (eggs, in this specific case) as individual
>>> recipes. We went further and automated the recipe generation and this
>>> made it quite easy to maintain in long term.
>>>
>>> Take a look at:
>>>
>>> https://github.com/OSSystems/meta-chicken
>>
>>
>> Thanks, even though my Scheme-fu isn't great :)
>>
>> I'd like to avoid generating entire separate recipes though, because that
>> implies your custom-written tool would be figuring out where the dependency
>> source came from in the first place, and what are its own dependencies, when
>> creating the recipe, which can be tricky, breakage-prone guesswork.
> 
> In fact not; as you generate the recipes for the dependencies, it goes
> recursively and is always good.
> 
>> I want to use existing tools (like 'npm install') for getting the stuff from
>> the network - we don't really need full recipes, we just want to know the
>> licenses of the dependencies, and, if possible, lock them down to a specific
>> version.
> 
> Well we initially thought this would suffice but consider a security
> flaw. As many apps may be using different versions of same package it
> becomes a nightmare to figure which ones are affected. If using
> dependencies it is fine, for free.
> 

I'm wondering if there may be any way to generate these recipes on the fly (say
during ConfigParsed -- and then issue a reparse if things have changed?)

I've got concerns with this "new model" of development specifically around:

*) Bug fixes
   -) Security bugs especially

   When something is updated to fix a problem, how do we know we "got
everything"?  Something needs to flag the system to make it clear that not only
the items itself, but all of the things it depends on are at the correct
(revised) versions.

   The other problem is 'certified' devices.  Various certification requirements
don't allow just 'downloading new content whenever', but they often allow small
targeted fixes.  So in these cases, the user would likely want to know there was
an update for a specific reason and then 'backport, and not change the version'
to address their certification issues.  (And yes, I know of companies that used
to lock down version numbers of code, and simply upgrade anyway to get around
this -- it's always possible, but not exactly within the spirit of the
certification process..  targeted changes are much more reasonable in that
environment.)


*) License considerations
   A big problem in all of these new developer centric models is that they are
designed for back-end service were the license doesn't matter (as much).  For
embedded devices, we have to have a clear lineage of the license, code and
source (SRC_URI) to have any chance to "doing the right thing" or at worst
(defending work during a lawsuit).


*) Export/import control
    Unlike random open source projects, when you build a physical device there
may export/import control that has to happen as well.  Without the discrete
components being clearly visible to the developers -- it is -very- difficult to
satisfy the constraints of the various export/import requirements around the world.


I think auto-generating recipe contents help with these.  Having a good process
behind the auto-generation can make the license and software "update" procedure
a lot cleaner and provide the tracking needed for the export/import control.

I do see we need a better model for these components as we move away from the
core operating system and 'up the stack'.... better auto-generation and using
the tooling provided, while yet conforming to the needs we have makes the most
sense to me.  (The problem of course is most of these seem to need an expert, or
at least a highly interested developer to have a shot at working or keep working
over time.... the developer needs to be able to explain for the OE the
alternative model needed so we can collectively figure out how to do it best.)

I think this is a good start at the discussion, but other then listing concerns,
unfortunately I don't have any solutions to offer.

--Mark

