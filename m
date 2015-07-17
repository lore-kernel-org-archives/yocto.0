Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89E8CE009E5; Fri, 17 Jul 2015 11:44:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 221E1E009C3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 11:44:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 0B36F27E2D1;
	Fri, 17 Jul 2015 18:44:32 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id UiruwlTCnSDW; Fri, 17 Jul 2015 18:44:30 +0000 (UTC)
Received: from [192.168.0.12] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id EED1F27E289;
	Fri, 17 Jul 2015 18:44:29 +0000 (UTC)
Message-ID: <55A94D03.207@dynamicdevices.co.uk>
Date: Fri, 17 Jul 2015 19:44:19 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Tollerton <rich.tollerton@ni.com>, yocto@yoctoproject.org
References: <cover.1437151912.git.rich.tollerton@ni.com>
	<55A93AAF.7010601@dynamicdevices.co.uk>
	<87y4iewsku.fsf@weregild.amer.corp.natinst.com>
In-Reply-To: <87y4iewsku.fsf@weregild.amer.corp.natinst.com>
Subject: Re: [meta-mono] [RFC] [PATCH 0/1] Force MONO_CFG_DIR
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
X-List-Received-Date: Fri, 17 Jul 2015 18:44:40 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 17/07/2015 19:24, Richard Tollerton wrote:
> Alex J Lennon <ajlennon@dynamicdevices.co.uk> writes:
>
>> Hi Richard,
>>
>> On 17/07/2015 17:57, Richard Tollerton wrote:
>>> Hi Alex,
>>>
>>> When you mentioned having weird build troubles, that reminded me that I
>>> was seeing weird build problems of my own, that I had been refraining
>>> from sending patches on until I could better characterize the issue.
>>>
>>> If you've been seeing weird build failures in executables that really
>>> should never be failing in the first place -- i.e., gacutils failures,
>>> or "invalid resx file", or anything involving not being able to dlopen
>>> libc or being unable to open /etc/mono/config -- you might be interested
>>> in this patch.
>> I think I have identified the problems I was seeing with the recipes,
>> which boil down to the lack of a mono gmcs script and inheriting
>> autotools-brokensep instead of autotools.
>>
>> I can't quite understand why you were not seeing the problem at your
>> end, but I can see that gmcs was removed at end 2014 -
>>
>> https://github.com/mono/mono/commit/b304ec5e0e694ef7098e0fc3eba9dbc0162f4568
> Yeah, I saw it too. :F I wound up working around it by adding a gmcs
> symlink in the recipe, but then I also added a gmcs symlink in my host
> OS, which wound up masking the build errors when I tried removing the
> gmcs symlink from the recipe later.
>
> There were also some autotools-brokensep build problems I was planning
> on submitting later, sounds like you got those fixed first (yay!)

Good - that explains it then. Yes autotools-brokensep is in there now.
The gmcs workaround will arrive shortly

>> The commits I made today address the autotools-brokensep issue and get
>> me to a point where I can build image-full-mono with a hand-added gmcs
>> script in sysroot
>>
>> (There was a patch needed for monotools-server to support the more
>> recent mono-xsp and mono-upnp needed autotools-brokensep).
>>
>> Now I just need to decide whether to reintroduce the gmcs script or fix
>> all the other autotools configurations...
> A-ha! mono-xsp fixed its gmcs references in master, but hasn't cut a
> release since May 2013. I just asked on #monodev for somebody to cut a
> new release, but until then, I suppose a workaround is to create a
> mono-xsp_git.bb?
>
> Which other packages require gmcs? I see that monotools-server does, but
> I can't find evidence of that being maintained since 2010, and I
> otherwise don't have a use for it AFAIK.

I'd have to check. I think there were a couple of others but adding in
gmcs made all the problems "disappear" so I didn't investigate further.

If I get a chance I may remove tmp/ and rebuild without the gmcs patch
to see what breaks.

monotools-server is there because I want to be able to remote debug onto
ARM platforms with Visual Studio (or Xamarin IDE if I have to) Some time
ago Xamarin had a neat Visual Studio plugin that supported this but
unfortunately it has disappeared. Xamarin IDE can be  configured to
remote debug against Mono/Arm/Linux and I've had some success with
trivial applications but I really want to find time to get this up and
running for more complex commercial applications.

>> I am probably going to reintroduce the script due to time contraints
>> unless you want to take a look at this?
> Yeah, go for it.
>
> I asked on #monodev whether there was any downside to symlinking gmcs to
> mcs, and at least one person responded in the negative. But IIRC, at the
> same time, nobody expressed any surprise that this isn't done already,
> which is kinda weird. I did do some grepping through the mono codebase
> and was unable to find any behavioral changes that were keyed off
> executing mcs as gmcs, so obviously it's going to emit 4.5-compatible
> stuff which isn't ideal, but it does get stuff building.
>
> I presume that your script solution restricts assembly versions
> appropriately and the like and tries to do The Right Thing.
>
> See also
> https://github.com/mono/mono/commit/6b76c7e984cbe42d6455ffcde2fe227aa5ffd801,
> which was breaking mono-xsp when build with gmcs symlinked to mcs. I
> presume you didn't encounter this with your script because it's properly
> behaving like gmcs, but once these mono-xsp gmcs fixes roll in, this
> will probably start breaking stuff.

I wasn't keen on symlinking, so in the short term I am looking at just
reverting the patch I referenced which removed gmcs.

I can believe that may lead us onto other issues but at least it is a
step in the right direction as the recipes will at least build...

>> I use mono primarily on ARM (i.MX6) - commercially, quite a lot - and
>> haven't seen anything that was problematical with the build for some
>> time, since I addressed some issues with use of out of tree mono
>> installed on the host.
>>
>> So from my experience "all is well" with Mono ARM builds. I'd like to
>> know about any issues you or others have seen on ARM platforms though
>> which we need to address.
>>
>> That said, I can't see any reason not to apply your patch so will merge
>> that in.
> Thanks. I'll try to dig deeper into this soon, and will work upstream
> with the mono devs when I get to the bottom of it.

Great!

Cheers,

Alex


