Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E339CFA769
	for <webhook@archiver.kernel.org>; Fri,  4 Oct 2024 11:11:34 +0000 (UTC)
Subject: Re: [yocto] sstate cache and task hash changing with constant base hash
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Oct 2024 04:11:31 -0700
References: <2e69144abbe85faef5500fa43b6b904587711881.camel@linuxfoundation.org>
In-Reply-To: <2e69144abbe85faef5500fa43b6b904587711881.camel@linuxfoundation.org>
Message-ID: <26848.1728040291156676618@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2t99m4tOe1SIOIXvn4iS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 11:11:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63938

--2t99m4tOe1SIOIXvn4iS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> It sounds like you're on the right track but there is a piece of
> information which I can highlight: do_fetch is not an sstate
> accelerated task.
>=20
> As such, I'd not expect a do_fetch task to come from sstate. What
> happens is that a recipe's other sstate tasks (populate_sysroot,
> package_write_XXX, package, package_qa, packagedata) come from sstate
> and if that happens, tasks like fetch, configure, compile and so on
> don't need to happen.
>=20
> I'd therefore look at the populate_sysroot task and compare the sigs
> there.
>=20

The tasks with sstate artifacts all have different hashes than the cached v=
ersions, It's a little hard to tell as I'm trying to grab logs of a CI syst=
em that cleans up build folders often, but I think this is following a task=
 dependency chain back to the do_fetch.

Given that the do_fetch in the stamps folder and the do_fetch in the cache =
have different task hashes wouldn't that imply that all the dependant tasks=
 have different task hashes and need to re-run as well? (though unpack/conf=
igure etc to the package/deploy tasks with sstate artifacts beyond just sig=
info files).

>=20
> Also, FWIW do_fetch can have task dependencies although you may be
> right that yours does not.
>=20

Yes in this case from the siginfo it doesn't but I will bear it in mind.
Is there something else that could be affecting the do_fetch task hash give=
n that the sig info reports "Tasks this task depends on: []" and the base h=
ash is unchanged?

Thanks,
Phil

--2t99m4tOe1SIOIXvn4iS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>It sounds like you're on the right track but there is a piece of<br />=
information which I can highlight: do_fetch is not an sstate<br />accelerat=
ed task.<br /><br />As such, I'd not expect a do_fetch task to come from ss=
tate. What<br />happens is that a recipe's other sstate tasks (populate_sys=
root,<br />package_write_XXX, package, package_qa, packagedata) come from s=
state<br />and if that happens, tasks like fetch, configure, compile and so=
 on<br />don't need to happen.<br /><br />I'd therefore look at the populat=
e_sysroot task and compare the sigs<br />there.</div>
</blockquote>
<div>The tasks with sstate artifacts all have different hashes than the cac=
hed versions, It's a little hard to tell as I'm trying to grab logs of a CI=
 system that cleans up build folders often, but I think this is following a=
 task dependency chain back to the do_fetch.</div>
<div>&nbsp;</div>
<div>Given that the do_fetch in the stamps folder and the do_fetch in the c=
ache have different task hashes wouldn't that imply that all the dependant =
tasks have different task hashes and need to re-run as well? (though unpack=
/configure etc to the package/deploy tasks with sstate artifacts beyond jus=
t siginfo files).</div>
<div>&nbsp;</div>
<blockquote>
<div>
<div>Also, FWIW do_fetch can have task dependencies although you may be<br =
/>right that yours does not.</div>
</div>
</blockquote>
<div>Yes in this case from the siginfo it doesn't but I will bear it in min=
d.</div>
<div>Is there something else that could be affecting the do_fetch task hash=
 given that the sig info reports "Tasks this task depends on: []" and the b=
ase hash is unchanged?</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Phil</div>

--2t99m4tOe1SIOIXvn4iS--

