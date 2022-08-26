Return-Path: <acox@reliablecontrols.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2926BECAAA3
	for <webhook@archiver.kernel.org>; Fri, 26 Aug 2022 20:38:28 +0000 (UTC)
Subject: Re: Devtool fails if SRCREV is set to ${AUTOREV} #kirkstone #devtool
 #yocto
To: yocto@lists.yoctoproject.org
From: acox@reliablecontrols.com
X-Originating-Location: Victoria, British Columbia, CA (64.251.73.50)
X-Originating-Platform: Windows Firefox 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 26 Aug 2022 13:38:22 -0700
References: <xSB7.1660818745077819917.g6sG@lists.yoctoproject.org>
In-Reply-To: <xSB7.1660818745077819917.g6sG@lists.yoctoproject.org>
Message-ID: <3684.1661546302833449840@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JCMX46oCzbbBk7nWDKtD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Aug 2022 20:38:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57913

--JCMX46oCzbbBk7nWDKtD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm having the exact same issue when just modifying a custom linux recipie =
which is essntially the same as the one provided but referencing 5.15 after=
 transposing recipies from dunfell to kirkstone. The builds without any dev=
tool modify sources work fine but the second I am working with a devtool'd =
linux it produces that error. So the current best workflow seems to be to m=
ake changes in a branch on the remote repository which will require forking=
 the kernel sources and then pointing the branch at the branch created on t=
he fork of the repository.

In my naieve attempts to troubleshoot this I tried changing SRCREV to the s=
ame branch name I was referencing and changed the error message to the new =
format where it changes the raise line to the following it seemed to be usi=
ng SRCREV for ud.unresolvedrev[name], that doesn't seem correct to me as if=
 I changed the SRCREV to "5.15" (different from the git branch) it would ou=
tput "5.15". Not sure if this is expected.

raise bb.fetch2.FetchError("Recipe uses a floating tag/branch '%s' for repo=
 '%s' without a fixed SRCREV yet doesn't call bb.fetch2.get_srcrev() (use S=
RCPV in PV for OE)." % (ud.unresolvedrev[name], ud.host+ud.path))

^ https://git.yoctoproject.org/poky/plain/bitbake/lib/bb/fetch2/git.py

--JCMX46oCzbbBk7nWDKtD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I'm having the exact same issue when just modifying a custom linux recip=
ie which is essntially the same as the one provided but referencing 5.15 af=
ter transposing recipies from dunfell to kirkstone. The builds without any =
devtool modify sources work fine but the second I am working with a devtool=
'd linux it produces that error. So the current best workflow seems to be t=
o make changes in a branch on the remote repository which will require fork=
ing the kernel sources and then pointing the branch at the branch created o=
n the fork of the repository.<br /><br />In my naieve attempts to troublesh=
oot this I tried changing SRCREV to the same branch name I was referencing =
and changed the error message to the new format where it changes the raise =
line to the following it seemed to be using SRCREV for ud.unresolvedrev[nam=
e], that doesn't seem correct to me as if I changed the SRCREV to "5.15" (d=
ifferent from the git branch) it would output "5.15". Not sure if this is e=
xpected.</p>
<pre>raise bb.fetch2.FetchError("Recipe uses a floating tag/branch '%s' for=
 repo '%s' without a fixed SRCREV yet doesn't call bb.fetch2.get_srcrev() (=
use SRCPV in PV for OE)." % (ud.unresolvedrev[name], ud.host+ud.path))
</pre>
<p>^ https://git.yoctoproject.org/poky/plain/bitbake/lib/bb/fetch2/git.py</=
p>

--JCMX46oCzbbBk7nWDKtD--

