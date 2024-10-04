Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F4135CFA752
	for <webhook@archiver.kernel.org>; Fri,  4 Oct 2024 08:49:32 +0000 (UTC)
Subject: sstate cache and task hash changing with constant base hash
To: yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Oct 2024 01:49:23 -0700
Message-ID: <XALn.1728031763085754078.irlF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mzWigem5OjpoFJ5Ih865"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 08:49:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63936

--mzWigem5OjpoFJ5Ih865
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to set up a network sstate cache server for yocto builds run on =
developer machines and CI systems.

One of my recipes is not using the sstate cache objects from the network se=
rver only when run from the CI machine. When run from my development PC it =
uses the network cache just fine.

I have copied the siginfo files for the do_fetch task from the CI build sta=
mps folder (which had an sstate cache miss) and the sstate cache (for the d=
ev PC which used the cache objects). Putting them both through bitbake-diff=
sigs shows no difference. Putting them both through bitbake-dumpsig shows t=
hey only differ on "Computed task hash" the rest of the output (including C=
omputed base hash) is identical.

I've tried reading through the various bits of bitbake and yocto documentat=
ion on sstate hashes/signatures and as far as I can tell the task hash is s=
upposed to be based on the basehash and the hashes of any tasks it depends =
on, but in this case its a do_fetch and has no tasks it depends on.

The signature handler as checked through bitbake-getvar is:
BB_SIGNATURE_HANDLER=3D"OEBasicHash"

How is the task hash being computed? And why is it different on these two m=
achines even though the rest of the siginfo is identical?

Best Regards,
Phil Dawson

--mzWigem5OjpoFJ5Ih865
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I'm trying to set up a network sstate cache server for yocto builds ru=
n on developer machines and CI systems.</div>
<div>&nbsp;</div>
<div>One of my recipes is not using the sstate cache objects from the netwo=
rk server only when run from the CI machine. When run from my development P=
C it uses the network cache just fine.</div>
<div>&nbsp;</div>
<div>I have copied the siginfo files for the do_fetch task from the CI buil=
d stamps folder (which had an sstate cache miss) and the sstate cache (for =
the dev PC which used the cache objects). Putting them both through bitbake=
-diffsigs shows no difference. Putting them both through bitbake-dumpsig sh=
ows they only differ on "Computed task hash" the rest of the output (includ=
ing Computed base hash) is identical.</div>
<div>&nbsp;</div>
<div>I've tried reading through the various bits of bitbake and yocto docum=
entation on sstate hashes/signatures and as far as I can tell the task hash=
 is supposed to be based on the basehash and the hashes of any tasks it dep=
ends on, but in this case its a do_fetch and has no tasks it depends on.</d=
iv>
<div>&nbsp;</div>
<div>The signature handler as checked through bitbake-getvar is:</div>
<div>BB_SIGNATURE_HANDLER=3D"OEBasicHash"</div>
<div>&nbsp;</div>
<div>How is the task hash being computed? And why is it different on these =
two machines even though the rest of the siginfo is identical?</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Phil Dawson</div>

--mzWigem5OjpoFJ5Ih865--

