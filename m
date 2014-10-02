Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9CB0E0076C; Thu,  2 Oct 2014 09:51:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DD60E00749
	for <yocto@yoctoproject.org>; Thu,  2 Oct 2014 09:51:35 -0700 (PDT)
Received: from [109.224.171.0] (port=1475 helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XZjbE-0027hn-44; Thu, 02 Oct 2014 17:51:31 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0LaHLETQJxzVpm_B9y+GX9RNBiCY1UF7kBhuWBEeMcs+Uw@mail.gmail.com>
Date: Thu, 2 Oct 2014 17:51:29 +0100
Message-Id: <3235B79C-5FB8-46CD-82AD-96E2A6BBB159@keylevel.com>
References: <OF2C69ED33.175EBBCF-ONC1257D65.0034C92B@alpine.de>
	<CAJTo0LaHLETQJxzVpm_B9y+GX9RNBiCY1UF7kBhuWBEeMcs+Uw@mail.gmail.com>
To: Oliver Novakovic <Oliver.Novakovic@alpine.de>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recommended Hardware for building
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
X-List-Received-Date: Thu, 02 Oct 2014 16:51:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 2 Oct 2014, at 11:04, Burton, Ross <ross.burton@intel.com> wrote:

> On 2 October 2014 10:36, Oliver Novakovic <Oliver.Novakovic@alpine.de> =
wrote:
>> Can anyone recommend a reasonable performant hardware setup to use ?
>>=20
>> What should be considered ? Are there any pitfalls ? What about =
bottlenecks
>> in the build system ?
>>=20
>> Specifically:
>>=20
>> How many cores are recommended ? And how much cache is necessary ?
>> How much of the main memory does Yocto really use ? Is 32 GB =
sufficient or
>> should I go for 64 ?
>>=20
>> Does it make sense to use two SSDs as Raid0  to get builds faster ?
>=20
> As much of everything as you can afford.  :)  The build isn't heavy in
> any particular metric, so don't sacrifice RAM for SSDs for example.
>=20
> RAID 0 over SSD would be nice and fast, but I prefer having a good
> amount of RAM and a tuned ext4 (no journal, long commit delay) so data
> doesn't actually hit the disk as frequently. Keeping the actual build
> directories on a separate disk is good for performance and not causing
> data loss when you lose a disk.
>=20
> There are people that have 64GB in machines and then set TMPDIR to a
> tmpfs.  Surprisingly this isn't that much faster (5% or so), but it's
> a lot easier on the hardware and power consumption.

My experience:

I've got a quad core with hyper-threading (so 8 usable cores) running at =
about 3.8 GHz, 16GB of RAM and use multiple SSDs - one to hold the meta =
data, downloads and top level build areas (local.conf, etc) and have the =
TMPDIR on a second SSD (so, as Ross says, I don't get a surprise when it =
wears out!).

I can build my images (basically an x11 image) in just under 60 minutes =
(once all the files have been fetched). I run with BB_NUMBER_THREADS and =
PARALLEL_MAKE both set to 16 to make sure the cores are fully loaded as =
much as possible (other says that should be 8 and 8 to reduce scheduling =
overhead).

During the build the system is CPU bound quite a bit of the time (so =
more cores should help), but there are significant periods where the =
build dependency chain means this isn't the case and only two or three =
cores are active. Previously I recall comparing results with someone =
else and finding that having lots more cores (24, I think) didn't give a =
significant improvement in build time (certainly not for the 3x system =
build cost).

I've never seen peak memory usage go much above 9 GB during a build, and =
the peaks generally coincide with linking activities for "big" items =
(gcc, eglibc). This is likely to go higher with more active threads.

I started out with a RAID-0 SSD build array, but I didn't really see any =
difference over a single high-spec (consumer) SSD. As Ross said, running =
a fast file system on the disk is a good idea.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


