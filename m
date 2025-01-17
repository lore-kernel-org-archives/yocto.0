Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DACDC02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 13:53:29 +0000 (UTC)
Subject: Advice for tracking down changes that invalidate sstate cache across builds
To: yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jan 2025 05:53:24 -0800
Message-ID: <Ri6f.1737122004068036139.nOLu@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Lvj3FSfWcagZodi9uetZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 13:53:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64577

--Lvj3FSfWcagZodi9uetZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm looking for some advice on how to track down why sstate cache isn't bei=
ng used in some builds for some recipes/tasks.

I don't have a specific problem right now but I often run into a scenario w=
here builds are taking much longer than expected on a developers machine. I=
t usually comes down to an early dependency having changed for some reason =
(for example a recent one was a sneaky build path dependency in a Xilinx re=
cipe).

To complicate things we:
- Build across many machines (developers and build servers etc).
- Have multiple sstate caches (developer local, our network cache, Xilinx i=
nternet cache).
- Have multiple boards that build with largely overlapping sets of recipes =
but differ in the contents of a few low level ones like the device tree (wh=
ich is a dependency of the kernel so the kernel changes, then our drivers c=
hange, then our applications change, etc). This makes finding the sstate ca=
che file that hasn't been used this time (when it normally would be) hard t=
o identify as there are often lots of versions of cache for a single recipe=
 in the various caches.
- Have a few recipes that will change almost every build (putting build ver=
sion numbers into the image for example).
- Use Xilinx PetaLinux tools.

What is the best way of tracking down the specific task that has changed an=
d caused a whole swathe of others to rebuild?

Currently I have a mostly manual process of try and guess the earliest reci=
pes (by looking at the first few non-setscene tasks in the logs). Then comp=
are the stamps against the relevant siginfo files in the various caches and=
 try to find the most recent one, which i can then bitbake-diffsigs against=
 to find a difference. Often this is in a dependency and then I have to man=
ually track the changes again till I find a concrete difference to investig=
ate.

I've tried to write my own tool to investigate but not gotten very far as I=
 run into the complexities of the sstate and trying to work out things like=
 the SSTATE_VERSION and SSTATE_PKGARCH. I also can't see a good way of sear=
ching the webserver that hosts the sstate cache for a near miss cache file =
as I won't know the checksum from the build!

I feel like i must be missing an easier way here? Or I'm going about this i=
n the wrong way?

Any advice would be greatly appreciated.

Best Regards,
Phil Dawson

--Lvj3FSfWcagZodi9uetZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I'm looking for some advice on how to track down why sstate cache isn'=
t being used in some builds for some recipes/tasks.</div>
<div>&nbsp;</div>
<div>I don't have a specific problem right now but I often run into a scena=
rio where builds are taking much longer than expected on a developers machi=
ne. It usually comes down to an early dependency having changed for some re=
ason (for example a recent one was a sneaky build path dependency in a Xili=
nx recipe).</div>
<div>&nbsp;</div>
<div>To complicate things we:</div>
<div>&nbsp;- Build across many machines (developers and build servers etc).=
</div>
<div>&nbsp;- Have multiple sstate caches (developer local, our network cach=
e, Xilinx internet cache).</div>
<div>&nbsp;- Have multiple boards that build with largely overlapping sets =
of recipes but differ in the contents of a few low level ones like the devi=
ce tree (which is a dependency of the kernel so the kernel changes, then ou=
r drivers change, then our applications change, etc). This makes finding th=
e sstate cache file that hasn't been used this time (when it normally would=
 be) hard to identify as there are often lots of versions of cache for a si=
ngle recipe in the various caches.</div>
<div>&nbsp;- Have a few recipes that will change almost every build (puttin=
g build version numbers into the image for example).</div>
<div>&nbsp;- Use Xilinx PetaLinux tools.</div>
<div>&nbsp;</div>
<div>What is the best way of tracking down the specific task that has chang=
ed and caused a whole swathe of others to rebuild?</div>
<div>&nbsp;</div>
<div>Currently I have a mostly manual process of try and guess the earliest=
 recipes (by looking at the first few non-setscene tasks in the logs). Then=
 compare the stamps against the relevant siginfo files in the various cache=
s and try to find the most recent one, which i can then bitbake-diffsigs ag=
ainst to find a difference. Often this is in a dependency and then I have t=
o manually track the changes again till I find a concrete difference to inv=
estigate.</div>
<div>&nbsp;</div>
<div>I've tried to write my own tool to investigate but not gotten very far=
 as I run into the complexities of the sstate and trying to work out things=
 like the SSTATE_VERSION and SSTATE_PKGARCH. I also can't see a good way of=
 searching the webserver that hosts the sstate cache for a near miss cache =
file as I won't know the checksum from the build!</div>
<div>&nbsp;</div>
<div>I feel like i must be missing an easier way here? Or I'm going about t=
his in the wrong way?</div>
<div>&nbsp;</div>
<div>Any advice would be greatly appreciated.</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Phil Dawson</div>

--Lvj3FSfWcagZodi9uetZ--

