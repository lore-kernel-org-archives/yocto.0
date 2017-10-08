Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05C00E00CAB; Sun,  8 Oct 2017 02:08:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mirza.krak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D77ECE00C43
	for <yocto@yoctoproject.org>; Sun,  8 Oct 2017 02:07:59 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id s14so8054807qks.6
	for <yocto@yoctoproject.org>; Sun, 08 Oct 2017 02:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gTnH826CcMAMl6uHv9Fdii+Mj/3bxwVgdDJmMqczj34=;
	b=DOvy8X+y3E+4rqlNFoMw22ihHKX0F8nhshaSwgdkZoBsa0NFTS9IUXDwrPeOJa0m4I
	Fh6iIKQ0K4M25J4wYfGNp9FnOV9mbx/wp0JZhyWpxhmlbF+L3cplupQRshO/IsBQMHba
	IYCjU/V7EN8AhGf5KleViTFxZe/VNG7fXa84RWh14ADfaPg+rXvJi4NshpCdyKO5fLIw
	qzwu69YdZBvTNlSd4FdKODh2jKz1iEq9p9l80563bUvMSl+YH5fFBH6b+n5/q9QyAbbR
	qY7rlft0GIBtY6hffUOudiDsbG089fzG96NMhDok7A5vETxpqPFXKyNILrjx6gaNyRpo
	unxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gTnH826CcMAMl6uHv9Fdii+Mj/3bxwVgdDJmMqczj34=;
	b=uGxlGUrmFWVHWdkmWVch1Ftsm3mGAteC2EGxqbjuqDQmMdc1sCi0yFaDhvLAr7F24p
	xM4BzFDgu3eUZYAnpuB/9PflSc+gPxDtcmxLgzPWbesqC8xBxv4Eg1dcbq5+05fzBHMU
	3RJJbu2h2s0YJcgiqIDUniwp7BTV4/5Q3/B11bT4dpHR3JRmB1BJI60SVWlLri8YK/uE
	9VRwaWMYwvWH8FCgthJZDhRUkSehPUb1DmQ5607EbqIlJ6oGvsVixvlqEF9JQFpSvRrm
	RVlGTvEb2O2nXIolKoDG1uVlUmQhBoOgspMMdP5R0vP/uYVPzg+c0McXeV3yRkcYHm0U
	RQyQ==
X-Gm-Message-State: AMCzsaXZdp97Icdgv1UDYV68soe4gr4BSoVHks7umKguMUmFxL4et0Q5
	PtIPdyqAXIFFK5cQhLu6Yfo7VbgIlnheiORflNM=
X-Google-Smtp-Source: AOwi7QAQUmT1eAbodcZN3PXv75gTguZqPHZBiG9IEpoHdjRcNazkfdR6l/A9uFfNPLTjqMPwvl3RIGXMtWapOJU/0ME=
X-Received: by 10.233.244.74 with SMTP id z10mr5239021qkl.31.1507453678846;
	Sun, 08 Oct 2017 02:07:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.61.250 with HTTP; Sun, 8 Oct 2017 02:07:58 -0700 (PDT)
In-Reply-To: <CAHUNapTF9HTACQU4XZZrFpuSgAZWmLYm8HH4MHVcnKx2Ys_OXw@mail.gmail.com>
References: <CALw8SCVUAGEV9MVN2V21G3kGex5SK=T3CAzwuYxhErtogpyZBQ@mail.gmail.com>
	<CAHUNapTF9HTACQU4XZZrFpuSgAZWmLYm8HH4MHVcnKx2Ys_OXw@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Sun, 8 Oct 2017 11:07:58 +0200
Message-ID: <CALw8SCUVwECnRATTRscJFknwyQBbSXAZRCYJUwiEDxZujdHaNA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip] The various rockchip layers
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
X-List-Received-Date: Sun, 08 Oct 2017 09:08:01 -0000
Content-Type: text/plain; charset="UTF-8"

2017-10-08 5:39 GMT+02:00 Trevor Woerner <twoerner@gmail.com>:
> On Sat, Oct 7, 2017 at 7:03 PM, Mirza Krak <mirza.krak@gmail.com> wrote:

Thank you for taking the time and explaining the current and previous
state. It is highly appreciated.


>> As I started digging to check the current state of the different
>> layers it was quite clear to me that there where two different sets.
>> One is maintained by Rockchip [1] and the other one by the community
>> [2].
>
> Don't forget https://github.com/jackmitch/meta-tinker ;-)

Yeah, noticed that one. Neat little layer that the meta-rockchip
should try and consume :).

>
>> And it made sense to me initially. I do not know the full background
>> story with the Rockchip layers (would be nice if someone could tell it
>> :)) on what the intent was with "community" Rockchip layers.
>
> Romain started meta-rockchip initially, then I joined, then people
> from Rockchip joined later.

Ok, that explains it a bit.

>
>> But as I looked in to it further it was quite clear to me that the
>> Rockchip maintained layers are more "up to date" then the community
>> ones. And then I started thinking on why are not these merged and we
>> could focus effort on maintaining one layer.
>
> The main goal Romain and I have is to have a meta-rockchip that helps
> users run upstream code on their rockchip devices. My guess is that
> the main goal of the Rockchip meta-rockchip is to demonstrate the
> performance of the rockchip SoC (usually via vendor kernels, vendor
> bootloaders, binary blobs, etc.)
>
>> There are a couple things that are interesting:
>>
>> - The Rockchip maintained layers state that they do accept
>> contributions trough pull-requests on github. So nothing stopping us
>> there?
>
> They are quite friendly, but they have their goals.
>
>> - The Rockchip maintained layers supports more "community" boards then
>> the community layers does. Bit odd? :)
>
> The rockchip people are paid to maintain meta-rockchip as part of
> their day-jobs, Romain and I aren't. I buy my own boards, I haven't
> received any hardware support, so my contributions tend to focus on
> boards I actually have. I would rather have support for boards I can
> actually test and therefore actually have rather than guessing whether
> stuff will work. Not to mention I have to find time to work on this
> after other "more important" things are done :-)

That is of course fully understandable.
>
>> - The community layers are a bit outdated on older Yocto branches,
>> master branch seems active though.
>
> Mostly a time issue. I build master with firefly-rk3288 every night
> with all the latest master updates and try to fix any issues that come
> up. I don't have the resources, unfortunately, to keep my finger on
> various past releases.

Also understandable.

>
>> - Trevor and Romain (maintainers of the community layers) are listed
>> as maintainers of the Rockchip layers? [4]
>
> Initially the Rockchip people would send pull requests for the one
> meta-rockchip layer. Many of those pull requests were to add recipes
> pointing to vendor kernels/bootloaders and binary blobs. Also they
> would send patches for boards that (at those times) weren't available
> or sometimes weren't even announced! We pushed back on some of the
> contributions, not just for philosophical reasons but sometimes for
> technical reasons as well. They weren't happy with our slow response
> times and push-back so they just forked and went on their own way.
> When they forked they forgot to change some of the boilerplate stuff
> that should have been changed (such as the maintainers). So yes,
> Romain and I are listed as the maintainers of the Rockchip
> meta-rockchip layer, but we're not :-)

This explains a lot thanks.

> It's on my TODO list to send them some patches for things like that :-)
>
>> What I am really after is better understanding the workflow working
>> with Rockchip SOC`s and Yocto and that is why I am raising questions
>> to do so :).
>>
>> My plan was getting involved in one of the Rockchip layers as I have
>> some improvements and I have some ideas for further improvements. And
>> the goal with this email was to figure out where.
>
> Every once in a while I try to carve out some time to try the Rockchip
> meta-rockchip layer and see how things are going. Maybe it's just a
> coincidence, but often they don't build for me. Looking through their
> instructions they seem to want lots of control over a user's
> setup/configuration (i.e. by using repo to pull specific versions of a
> specific set of layers, then using their own setup tool). My goal is
> to have a layer that works any way the user wants to work (e.g.
> distroless with openembedded-core, or with poky, or with angstrom,
> etc...). When I use their instructions I do have more success (but not
> always), but I don't believe that's how BSP layers should work. I
> don't think it's a good situation when a user must use a specific
> distro, or specific layers at specific commit points, or a specific
> setup tool in order to build for a MACHINE successfully.

I actually recently was in the situation on choosing of one of
meta-rockchip layers and I ended up with the Rockchip one, mostly
since it had Tinkerboard support and 4.4 vendor kernel. It built for
me at least :).

I am not totally against using repo and manifest to help users setup a
simple "demo" (and it is quite common to use this). As the BSP layer
does not really provide you with anything cool beside booting to a
console, if one is to provide a demo layer (which is quite common to
demo X11, Walyand, and Qt as examples) making it easier to get started
with development. But the BSP layer should of course work standalone.

>
> I'm hoping that one day
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11881 will get
> accepted. If/When that happens then it will be theoretically possible
> to have both a set of upstream recipes and a set of vendor recipes
> within the same BSP layer. Maybe at that point the two (three?) layers
> can come together. Unfortunately there doesn't seem to be much
> interest in BSP layers outside of the BSP community. I'll probably
> just have to add the support to the layer itself in order to gain this
> functionality (as do the FSL layers, which is where this idea
> originates).

This is certainly a interesting change but IMO not required to have
multiple u-boots, Linux kernels etc. The Freescale layer is by far
more complex (due to the number of boards/SOCs supported) and makes
sense there, most other BSP layers maybe do not that kind of
complexity and not the same need I guess.

>
> I am hoping for a better situation in the future. I'm glad for any
> suggestions, patches, testing, etc. For example, the meta-rockchip I
> help maintain still uses a vendor u-boot although I've been told the
> upstream should work fine; I just haven't had the time to investigate.
> Also, I'd like to add a linux-stable recipe for 4.13 (similar to
> meta-odroid) but I can't seem to get the defconfig right. Also, I have
> a firefly-rk3399 and a tinker-rk3288, but haven't had the time to get
> anything into a state I can push publicly.

It is quite obvious to me that any attempted efforts should be
directed to the community layers as this was once the base of the
Rockchip layers.

I do have some time and ambition to spend I will list some ideas here
so that they can be shot down before I start working on them (some
things might not align with your goals of the layer):

- Synchronize the Rockchip and community layers. There are some
goodies in the Rockchip layers that would be nice to pull in.
Especially the vendor 4.4 kernel with GPU support and accompanied
binary blobs (that should work with Qt, Wayland, X11), I have tested
X11 my self. Running mainline is nice but without the GPU support your
are really not utilized the true power of the SoC`s. And IMO this
should be the default kernel as it provides the most functionality.

- Bring in various boards from Rockchip to community layer. I know
your wrote that you do not like to bring in boards that can not test,
but you will never have all the boards :). When bringing in the
various boards we should also try and get people interested in
maintaining them, that could be one condition on bring in boards that
you do not have.

- Bring in more vendor kernels (tinkerboard, phycore, firefly?) who
all have their own forks. Again mainline is nice but does not provide
the same functionality as the vendor kernels.

- Consolidate machine configurations. I started working on something
targeting the Rockchip layer here [2]

- Add proper extlinux support [1], instead of hardcoding it in the gpt
image classes.

- Move away from custom image classes to WIC, I am running this in a
custom layer and it works just fine.

- There seems to be a lot of "stale/dead" code in the community
rockchip layer. Old kernels and "petitboot" that might not be used
today? This is basically a clean-up task.

- I kinda like the meta-rockchip-extra layer to provide more "capable"
demo images for testing purpose.

Also the ambition would be to try and get Rockchip involved again in
the community layer instead of forking or at least push changes to
community layer if they want to keep the fork.

There is probably more but I will stop here for now :).

>
> Never a dull moment :-D

We would not be doing this otherwise :).

[1]. https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/uboot-extlinux-config.bbclass
[2]. https://github.com/mirzak/meta-rockchip/commits/consolidate-machines

-- 
Best Regards
Mirza

