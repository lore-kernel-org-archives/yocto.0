Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51CB6E009E5; Fri, 17 Jul 2015 11:24:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC999E009C3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 11:24:21 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6HIOHNf014011; Fri, 17 Jul 2015 13:24:17 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071713241800-1388535 ;
	Fri, 17 Jul 2015 13:24:18 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, yocto@yoctoproject.org
In-Reply-To: <55A93AAF.7010601@dynamicdevices.co.uk>
References: <cover.1437151912.git.rich.tollerton@ni.com>
	<55A93AAF.7010601@dynamicdevices.co.uk>
User-Agent: Notmuch/0.20.1 (http://notmuchmail.org) Emacs/24.5.2
	(x86_64-unknown-linux-gnu)
Date: Fri, 17 Jul 2015 13:24:17 -0500
Message-ID: <87y4iewsku.fsf@weregild.amer.corp.natinst.com>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/17/2015 01:24:18 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/17/2015 01:24:18 PM,
	Serialize complete at 07/17/2015 01:24:18 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-17_09:, , signatures=0
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
X-List-Received-Date: Fri, 17 Jul 2015 18:24:26 -0000
Content-Type: text/plain

Alex J Lennon <ajlennon@dynamicdevices.co.uk> writes:

> Hi Richard,
>
> On 17/07/2015 17:57, Richard Tollerton wrote:
>> Hi Alex,
>>
>> When you mentioned having weird build troubles, that reminded me that I
>> was seeing weird build problems of my own, that I had been refraining
>> from sending patches on until I could better characterize the issue.
>>
>> If you've been seeing weird build failures in executables that really
>> should never be failing in the first place -- i.e., gacutils failures,
>> or "invalid resx file", or anything involving not being able to dlopen
>> libc or being unable to open /etc/mono/config -- you might be interested
>> in this patch.
>
> I think I have identified the problems I was seeing with the recipes,
> which boil down to the lack of a mono gmcs script and inheriting
> autotools-brokensep instead of autotools.
>
> I can't quite understand why you were not seeing the problem at your
> end, but I can see that gmcs was removed at end 2014 -
>
> https://github.com/mono/mono/commit/b304ec5e0e694ef7098e0fc3eba9dbc0162f4568

Yeah, I saw it too. :F I wound up working around it by adding a gmcs
symlink in the recipe, but then I also added a gmcs symlink in my host
OS, which wound up masking the build errors when I tried removing the
gmcs symlink from the recipe later.

There were also some autotools-brokensep build problems I was planning
on submitting later, sounds like you got those fixed first (yay!)

> The commits I made today address the autotools-brokensep issue and get
> me to a point where I can build image-full-mono with a hand-added gmcs
> script in sysroot
>
> (There was a patch needed for monotools-server to support the more
> recent mono-xsp and mono-upnp needed autotools-brokensep).
>
> Now I just need to decide whether to reintroduce the gmcs script or fix
> all the other autotools configurations...

A-ha! mono-xsp fixed its gmcs references in master, but hasn't cut a
release since May 2013. I just asked on #monodev for somebody to cut a
new release, but until then, I suppose a workaround is to create a
mono-xsp_git.bb?

Which other packages require gmcs? I see that monotools-server does, but
I can't find evidence of that being maintained since 2010, and I
otherwise don't have a use for it AFAIK.

> I am probably going to reintroduce the script due to time contraints
> unless you want to take a look at this?

Yeah, go for it.

I asked on #monodev whether there was any downside to symlinking gmcs to
mcs, and at least one person responded in the negative. But IIRC, at the
same time, nobody expressed any surprise that this isn't done already,
which is kinda weird. I did do some grepping through the mono codebase
and was unable to find any behavioral changes that were keyed off
executing mcs as gmcs, so obviously it's going to emit 4.5-compatible
stuff which isn't ideal, but it does get stuff building.

I presume that your script solution restricts assembly versions
appropriately and the like and tries to do The Right Thing.

See also
https://github.com/mono/mono/commit/6b76c7e984cbe42d6455ffcde2fe227aa5ffd801,
which was breaking mono-xsp when build with gmcs symlinked to mcs. I
presume you didn't encounter this with your script because it's properly
behaving like gmcs, but once these mono-xsp gmcs fixes roll in, this
will probably start breaking stuff.

> I use mono primarily on ARM (i.MX6) - commercially, quite a lot - and
> haven't seen anything that was problematical with the build for some
> time, since I addressed some issues with use of out of tree mono
> installed on the host.
>
> So from my experience "all is well" with Mono ARM builds. I'd like to
> know about any issues you or others have seen on ARM platforms though
> which we need to address.
>
> That said, I can't see any reason not to apply your patch so will merge
> that in.

Thanks. I'll try to dig deeper into this soon, and will work upstream
with the mono devs when I get to the bottom of it.

> Regards,
>
> Alex

