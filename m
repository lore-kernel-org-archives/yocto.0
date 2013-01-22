Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0367CE00743
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 12:34:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0MKYvHo010006
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Jan 2013 12:34:57 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 22 Jan 2013 12:34:57 -0800
Message-ID: <50FEF7EC.6030601@windriver.com>
Date: Tue, 22 Jan 2013 15:34:52 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Patrick Turley <PatrickTurley@gamestop.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Build external module against Yocto kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Jan 2013 20:35:00 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-01-22 03:28 PM, Patrick Turley wrote:
> On Jan 16, 2013, at 11:11 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>> On 01/15/2013 10:38 AM, Bruce Ashfield wrote:
>>> I finally found the entries that I was recalling earlier. They are:
>>>
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=241
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1614
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2968
>>>
>>> 1614 and 2968 are the most interesting for what you are asking.
>>>
>>> As you can see the net result of those bugs is that you can get the
>>> right parts of the kernel tree in SDK packages, since they include
>>> dev packages, and with what is currently in kernel-dev .. it should
>>> be enough to build against in the SDK (perhaps with just the LDFLAGS
>>> tweaks mentioned in the other thread). The sources should be part
>>> of the sysroot, and hence available when that is packaged for use
>>> outside of bitbake/yocto.
>>>
>>> If you aren't seeing kernel-dev in the SDK image, it might be that
>>> TOOLCHAIN_TARGET_TASK doesn't have kernel-dev by default, or something
>>> else is different in the SDK that is being generated in your testing.
>>>
>>> I'm only speculating about what might be missing, since I'm not 100%
>>> familiar with the SDK, but perhaps Jessica or others can chime in if
>>> I've led you astray :)
>
> You have *not* led me astray. A fundamental problem was that I didn't comprehend the distinction/correspondence between "target image" recipes and "SDK image" recipes. I believe I get that now.
>
> We've created a target image recipe, and an SDK image recipe that "require's" the former (this is conventional, I believe). The SDK image recipe adds all the development packages and, yes, it includes kernel-dev. So, when I install my SDK now, I certainly *do* get all the kernel header files. As you know, I do *not* get the hostprogs.
>
> As I described in an earlier post, I am currently reaching into the "tmp" directory, pulling out the kernel work directory, and making it directly available to my external build process. This solves my problem because the work directory contains all the header files I need *and* the hostprogs. Of course, it's "bad" because it's not an intended way to use the build artifacts, and it's awkward to distribute.
>
> With the recent improvement, I can now get the kernel header files packaged in the SDK. That's good because it's an intended mechanism and it's easy to distribute.
>
> With regard to:
>
>      https://bugzilla.yoctoproject.org/show_bug.cgi?id=1614
>
> This seems a reasonable solution to the problem of building modules on the target, given the difficulties of dealing with executables. I'm not building modules on the target (I'm cross-compiling them), but this seems to apply anyway. It adds an extra step to SDK installation, but that's the least of our problems.
>
> One problem I ran into … When I tried to execute "make scripts," I got a whole bunch of config questions that I *think* should have been answered with a .config file or something. Should I have copied out the .config file from the kernel work directory into the SDK installation before I ran that? Is that the "best" way to get around all the questions?
>

Interesting. I haven't seen this myself, so just a couple of quick
questions:

   - without the .config, did you still get a working set of hostprogs, and
     only had to suffer the warnings ?

   - If the answer is yes, then the .config really doesn't matter for this
     and the approach of grabbing a .config should work fine or even
     having a dummy defconfig available with enough to keep the build
     happy.

Definitely sounds like something we can address and it's worth putting into
bugzilla so it doesn't get lost.

Bruce

>> Patrick, please keep us posted if this continues to not work for you. I
>> will open a bug to include a section about this in the kernel
>> development manual.
>
> It's very *nearly* working for me now. See my question above.
>


