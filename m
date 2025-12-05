Return-Path: <christian.leeb@hitachienergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D3D0D3398C
	for <webhook@archiver.kernel.org>; Fri,  5 Dec 2025 16:20:43 +0000 (UTC)
Subject: Re: [yocto] Bitbake fetch does not re-fetch from network if gitrepo is found in DL_DIR
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: christian.leeb@hitachienergy.com
X-Originating-Location: Zurich, CH (147.161.246.109)
X-Originating-Platform: Windows Edge 142
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Dec 2025 08:20:34 -0800
References: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org> <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com> <96936.1764884505239996619@lists.yoctoproject.org> <33793480-bdcc-4b88-ab11-0d493118836e@gmail.com>
In-Reply-To: <33793480-bdcc-4b88-ab11-0d493118836e@gmail.com>
Message-ID: <123016.1764951634952562755@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SU04IuTqomidjBYhiLha"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Dec 2025 16:20:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66092

--SU04IuTqomidjBYhiLha
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot, Gyorgy, for your feedback. Maybe a bit of background what we =
are trying to do.

We have the following situation - we call it "top-up":
We start bitbake fetch as described with DL_DIR containing the sources of a=
 previous release.
The state cache is empty.
The idea is that bitbake fetch only re-fetches repos which are not up-to-da=
te.

In a regular release, we always fetch all sources anew from upstream (debat=
able if this is the right approach). At the end of the release we archive a=
ll sources of the dl folder. We do not archive the sstate cache.

For reproducing a release we take the archive of the release and rebuild wi=
thout network (BB_NONETWORK)

The motivation for "top-up" came from last week's outage of cloudflare: we =
urgently needed to issue a release, but one upstream server was down. So we=
 used dl archive of previous release, removed the "BB_NONETWORK and hoped i=
t would fetch the missing stuff (in my example some commits of the kernel) =
and then we can build.

--SU04IuTqomidjBYhiLha
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks a lot, Gyorgy, for your feedback. Maybe a bit of background wha=
t we are trying to do.</div>
<div>&nbsp;</div>
<div>We have the following situation - we call it "top-up":</div>
<div>We start bitbake fetch as described with DL_DIR containing the sources=
 of a previous release.</div>
<div>The state cache is empty.</div>
<div>The idea is that bitbake fetch only re-fetches repos which are not up-=
to-date.</div>
<div><br />In a regular release, we always fetch all sources anew from upst=
ream (debatable if this is the right approach). At the end of the release w=
e archive all sources of the dl folder. We do not archive the sstate cache.=
</div>
<div><br />For reproducing a release we take the archive of the release and=
 rebuild without network (BB_NONETWORK)</div>
<div>&nbsp;</div>
<div>The motivation for "top-up" came from last week's outage of cloudflare=
: we urgently needed to issue a release, but one upstream server was down. =
So we used dl archive of previous release, removed the "BB_NONETWORK and ho=
ped it would fetch the missing stuff (in my example some commits of the ker=
nel) and then we can build.&nbsp;</div>

--SU04IuTqomidjBYhiLha--

