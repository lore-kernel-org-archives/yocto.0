Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF114CFA77B
	for <webhook@archiver.kernel.org>; Fri,  4 Oct 2024 13:33:54 +0000 (UTC)
Subject: Re: [yocto] sstate cache and task hash changing with constant base hash
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Oct 2024 06:33:50 -0700
References: <7c92a7e1df2a16f0cddd3bbf4ad6f7f4a335a754.camel@linuxfoundation.org>
In-Reply-To: <7c92a7e1df2a16f0cddd3bbf4ad6f7f4a335a754.camel@linuxfoundation.org>
Message-ID: <26848.1728048830776468426@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CZWvhy6cO2vBVLWS67xk"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 13:33:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63942

--CZWvhy6cO2vBVLWS67xk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> That is a big clue in itself, that function was added for a reason. The
> reason that code was added may be related to the problem.
>=20
> https://git.openembedded.org/bitbake/commit/?id=3D5293a1b36eeb89f57577cb7=
09ec7f293909039a1
>=20
>=20
>=20
>=20
>>=20
>>=20
>>> I don't understand how you have two siginfo files with different sigs
>>> and the same data.
>>=20
>> It's a mystery to me too at this point! Is there anything I can do to
>> get more information on how it's calculating the task hash?
>>=20
>> I'll try and run across more PCs as well to see if it's just the one
>> CI machine that's different.
>=20
> I'd try adding the above commit as there were bugs in this area that
> sound very similar to this.
>=20
>=20
>=20

I've patched my siggen.py manually with changes from both the linked patche=
s.
I'm rebuilding now but it has understandably changed the sigs of a while bu=
nch of tasks so I'll need to repopulate the caches and see if it's the same=
 across build machines which will take a while!

The changes to siggen.py between langdale and scarthgap look pretty extensi=
ve - Is there a chance they'll be contained to siggen.py enough that I can =
lift the scarthgap version wholesale? Or is it likely to break when paired =
with an older bitbake checkout?

Thanks,
Phil

--CZWvhy6cO2vBVLWS67xk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>That is a big clue in itself, that function was added for a reason. Th=
e<br />reason that code was added may be related to the problem.<br /><br /=
><a href=3D"https://git.openembedded.org/bitbake/commit/?id=3D5293a1b36eeb8=
9f57577cb709ec7f293909039a1" target=3D"_blank" rel=3D"noopener">https://git=
.openembedded.org/bitbake/commit/?id=3D5293a1b36eeb89f57577cb709ec7f2939090=
39a1</a><br /><br /><br />
<blockquote>&nbsp;<br />
<blockquote>I don't understand how you have two siginfo files with differen=
t sigs<br />and the same data.</blockquote>
It's a mystery to me too at this point! Is there anything I can do to<br />=
get more information on how it's calculating the task hash?<br /><br />I'll=
 try and run across more PCs as well to see if it's just the one<br />CI ma=
chine that's different.</blockquote>
I'd try adding the above commit as there were bugs in this area that<br />s=
ound very similar to this.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</blockquote>
<div>I've patched my siggen.py manually with changes from both the linked p=
atches.</div>
<div>I'm rebuilding now but it has understandably changed the sigs of a whi=
le bunch of tasks so I'll need to repopulate the caches and see if it's the=
 same across build machines which will take a while!</div>
<div>&nbsp;</div>
<div>The changes to siggen.py between langdale and scarthgap look pretty ex=
tensive - Is there a chance they'll be contained to siggen.py enough that I=
 can lift the scarthgap version wholesale? Or is it likely to break when pa=
ired with an older bitbake checkout?</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Phil</div>

--CZWvhy6cO2vBVLWS67xk--

