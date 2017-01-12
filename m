Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA0FAE00C78; Thu, 12 Jan 2017 14:59:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37AA6E00C65
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 14:59:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v0CMx4nO028005
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 14:59:04 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 12 Jan 2017 14:59:03 -0800
To: <yocto@yoctoproject.org>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
	<CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
	<448FE605-0D5E-4057-BF49-9EFFBC5CB8DD@sentientblue.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <a0f910e1-e4e3-a36c-54f8-029cd72bae83@windriver.com>
Date: Thu, 12 Jan 2017 16:59:03 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <448FE605-0D5E-4057-BF49-9EFFBC5CB8DD@sentientblue.com>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 22:59:07 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 1/12/17 11:41 AM, Roger Smith wrote:
>  I have Parallels (running on El Capitan the one before Sierra)  and ubuntu 14
>  running my current build environment on a MacBook Pro, but boy is the build
> slow… I also worked at Apple for 19 years on drivers inside MacOS X/iOS, so I am
> more than motivated to have this working natively rather than inside any
> container or disk space hogging environment.  As I mentioned I am working with
> the Intel Aero compute board, so slogging though all this fat to build an image
> is a productivity killer.

So take from this.. there is desire for oe/bitbake to work natively.  Most
people don't have the skill or free time to do the work.  A number of us started
it at one time or another and made enough progress to say "ya I think it's
possible" and then ran out of time.

As far as I know pseudo and the security introduced in 10.11 that affect
preloading is likely the biggest technical problem...  everything else is just
"it's not Linux".

--Mark

> I think most of the  incompatibilities between Linux and os x (which btw is
> coming from the ios side of the fence unfortunately), can be mitigated with boot
> args or via the command line . Apple’s compiler team had to make llvm compatible
> with gcc, so I am surprised if in 2017, there are compiler issues to building
> for an x86_64 platform with llvm on the Mac . That’s the kind of bug Apple likes
> to fix promptly.. 
> 
> As I mentioned, I tried to simply source the oe-init-build-env, and got an error
> that the readlink command that yocto is using is incompatible with the bsd
> version of readlink built into os x. 
> 
> i.e when I run .
> 
> source oe-init-build-env
> 
> I get the error
> 
> readlink: illegal option -- f
> 
> Which is because on OS X readlink doesn’t specify -f
> 
> YNOPSIS
>      stat [-FLnq] [-f format| -l | -r | -s | -x] [-t timefmt] [file...]
>      readlink [-n] [file...]
> 
> I didn’t want to go through this level of change in the Yocto sources if (1)
> people don’t care to take changes or (2) it had already been done before.. I was
> curious how far down this rabbit hole people had gone before..
> 
> Roger
> 
> 
>> On Jan 12, 2017, at 8:50 AM, Andrea Galbusera <gizero@gmail.com
>> <mailto:gizero@gmail.com>> wrote:
>>
>> On Thu, Jan 12, 2017 at 5:21 PM, Belisko Marek <marek.belisko@gmail.com
>> <mailto:marek.belisko@gmail.com>> wrote:
>>
>>     On Thu, Jan 12, 2017 at 4:39 PM, Tim Orling
>>     <timothy.t.orling@linux.intel.com
>>     <mailto:timothy.t.orling@linux.intel.com>> wrote:
>>     > You can also build using Docker containers:
>>     > https://github.com/crops/docker-win-mac-docs/wiki
>>     <https://github.com/crops/docker-win-mac-docs/wiki>
>>     Well the re is other limitation about slow filesystem access from
>>     docker on osx. There is workaround to use nfs but it's not possible to
>>     use nfs for building yocto - so it's kind of chicken-egg problem ;)
>>
>>
>> I shortly tested the CROPS docker-based setup after watching some presentation
>> at ELCE 2016 in Berlin. It basically worked but I experienced the filesystem
>> slowness your are talking about. I ended up waiting hours to see a simple
>> core-image-minimal build complete (even after giving more cores to docker).
>> One more point is that slightly more complex build scenarios, i.e. building
>> resin.os, also required tweaking docker run parameters for the build container
>> in order to give bitbake access to features like loop devices it needed (not
>> always easily debuggable issues indeed). Turned out I decided to stick with
>> more canonical linux based environments for the moment.
>>
>> Anyway, the technology behind CROPS is *very* interesting to me, and I'd like
>> to hear from people closely involved (Tim?) what the state of the art is and
>> what we can expect to see in the near future. IIRC, the roadmap for Yocto 2.3
>> release was supposed to resurrect the Eclipse plugin and adopt CROPS as an
>> alternative for running eSDK in a seamless way on different development host
>> OSs. Beside from the images on docker hub and the github projects that didn't
>> have high activity in the latest months, I hardly find discussions and
>> documentation on the whole approach. Isn't this hot enough anymore or are
>> there big issues that will prevent this technology from taking off. I often
>> manage SDKs for Windows-minded developers and I strongly yearn to find a
>> better approach to help them feel at home while building stuff for OE/Yocto
>> based systems... 
>>
>>  
>>
>>     >
>>     > On Jan 12, 2017, at 7:34 AM, Burton, Ross <ross.burton@intel.com
>>     <mailto:ross.burton@intel.com>> wrote:
>>     >
>>     >
>>     > On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com
>>     <mailto:roger@sentientblue.com>> wrote:
>>     >>
>>     >> Is there any documentation for running the Yocto build system on Mac OS X
>>     >> or macOS as Apple now calls it? I am working with the Intel Aero board.
>>     >> Before I go down the rabbit hole of fixing issues like this one (and I am
>>     >> using the bash shell), I’d like to know if anyone has build it on os x
>>     >> before.
>>     >
>>     >
>>     > If you install all of the GNU tools using brew or similar and put them first
>>     > on $PATH then you can get bitbake started.  Then you need to stub out the
>>     > linux-specific bits in bitbake.  I've previously started on this work
>>     > already
>>     >
>>     (http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=ross/darwin
>>     <http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=ross/darwin>).
>>     > The next step is figuring out how to configure OE to build and link natively
>>     > on OSX using LLVM instead of GCC.
>>     >
>>     > However all of this is mostly academic because in Sierra (iirc) onwards
>>     > there is tighter security on processes, which means that pseudo won't work
>>     > even if you port it to macOS.
>>     >
>>     > So unless you fancy some non-trivial engineering the short version is just
>>     > use something like Docker to run a Linux system on your Mac.
>>     >
>>     > Ross
>>     > --
>>     > _______________________________________________
>>     > yocto mailing list
>>     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     > https://lists.yoctoproject.org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>     >
>>     >
>>     >
>>     > --
>>     > _______________________________________________
>>     > yocto mailing list
>>     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     > https://lists.yoctoproject.org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>     >
>>
>>     marek
>>
>>     --
>>     as simple and primitive as possible
>>     -------------------------------------------------
>>     Marek Belisko - OPEN-NANDRA
>>     Freelance Developer
>>
>>     Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>>     Tel: +421 915 052 184 <tel:%2B421%20915%20052%20184>
>>     skype: marekwhite
>>     twitter: #opennandra
>>     web: http://open-nandra.com <http://open-nandra.com/>
>>     --
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 


