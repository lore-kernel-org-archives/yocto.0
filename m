Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 017C7E00AC5; Sat,  2 Mar 2019 10:39:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22C8CE006D8
	for <yocto@yoctoproject.org>; Sat,  2 Mar 2019 10:39:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x22IcWdV004939
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 2 Mar 2019 10:38:34 -0800 (PST)
Received: from [147.11.118.103] (147.11.118.103) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Sat, 2 Mar 2019 10:38:31 -0800
To: Adrian Bunk <bunk@stusta.de>, "Burton, Ross" <ross.burton@intel.com>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
	<20190227235448.GJ12046@bill-the-cat>
	<CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
	<20190228051945.GB11051@localhost>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <b5a10ab4-b30a-9490-cf3f-3308cf335d85@windriver.com>
Date: Sat, 2 Mar 2019 10:38:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190228051945.GB11051@localhost>
X-Originating-IP: [147.11.118.103]
Cc: Tom Rini <trini@konsulko.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Sat, 02 Mar 2019 18:39:11 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 2/27/19 9:19 PM, Adrian Bunk wrote:
> On Wed, Feb 27, 2019 at 11:59:42PM +0000, Burton, Ross wrote:
>> On Wed, 27 Feb 2019 at 23:55, Tom Rini <trini@konsulko.com> wrote:
>>> My current incomplete list is:
>>>      bind-utils \
>>>      bridge-utils \
>>>      coreutils \
>>>      dnsmasq \
>>>      e2fsprogs \
>>>      e2fsprogs-resize2fs \
>>>      e2fsprogs-tune2fs \
>>>      findutils \
>>>      gawk \
>>>      grep \
>>>      inetutils-ping \
>>>      inetutils-ping6 \
>>>      inetutils-traceroute \
>>>      iproute2 \
>>>      less \
>>>      net-tools \
>>>      parted \
>>>      pciutils \
>>>      procps \
>>>      sed \
>>>      util-linux \
>>>      vim \
>>>      which \
>>>
>>> And it's also incomplete as there's more stuff under inetutils I don't
>>> need (but others may), and I set aside patch/diff/ed and some other
>>> stuff I don't need.  And since some of that stuff comes from
>>> meta-openembedded, it's indeed really not clear how/where a packagegroup
>>> would reside as we need things out of meta-networking.
>>
>> That's a good start.  For a oe-core packagegroup

Rather than just a single list per layer, we could do
something similar to:

https://github.com/WindRiver-Labs/wrlinux/blob/WRLINUX_10_17_BASE/wrlinux-distro/recipes-base/images/wrlinux-image-glibc-core.bb

where we defined an image called 'glibc-core' that tries to be a
close to a minimal set of discrete apps needed to boot to a
command line. Then we provide 10+ package groups that added a (mostly!)
logical set of packages that provide groups of functionality.
The groups and not perfect of course but the ones that we came up
with 5+ years ago are:
 
https://github.com/WindRiver-Labs/wrlinux/tree/WRLINUX_10_18_BASE/wrlinux-distro/recipes-base/packagegroups


For qemux86-64, our images (years old data) vary from:

Image Name    Size (MB)    Comment
==========    =========    =======
glibc-tiny       6+        Trimmed down glibc/busybox/minimal init
glibc-small     50         A standard busybox with sysvint, rsyslog
glibc-core      65         A minimal non-busybox image with
                            sysvinit, rsyslog
glibc-std      350         A more complete non-busybox image with
                            packages that are present for
                            historical reasons.

We also have a WR specific template scheme that lets users add
blocks of functionality (single or multiple packages, kernel configs)
to the images above. I think MarkH has explained that to people before.

Anyway, I'm certainly not suggesting that Yocto would want to
adopt any of this directly but rather I'm just trying to give
an impression of what we use and find useful when contructing 
non-busybox based images. I could revisit the Wind River image
definitions and see if the lists we came up with years ago
could be tweaked, renamed and added to oe-core and meta-oe
to share this approach with other Yocto developers and users for
the an upcoming release, maybe even for 2.8 if people are interested.

I guess the question is if we want to spend time coming to an agreement 
on, testing and maintain these package groups and if they would
really be useful to users since, historically at least, people
who create images tend to be domain experts who can easily write
their own packagegroup file.

../Randy

> 
> I do not think a core-only packagegroup makes sense when the goal is to
> completely replace busybox (and not just most apps while keeping a few
> busybox apps installed).
> 
>> I'd suggest dropping
>> dnsmasq bridgeutils bindutils to keep it lean.
> 
> The stated usecases are not "lean" but "replace all busybox commands
> with the full versions".
> 
> For that you need bind-utils (in oe-core) for DNS lookup.
> 
>> ...
>> Also swap vim for something in core obviously.
> 
> It is not obvious how to do that.
> 
> What other vi implementation is in core?
> Is there even any good non-busybox non-GUI editor in core?
> Replacing busybox vi with ed would be a bad fit for the
> stated usecases.
> 
> There has to be some vi implementation installed,
> and the "desktop command" implementation is vim.
> 
>> Ross
> 
> cu
> Adrian
> 


-- 
# Randy MacLeod
# Wind River Linux

