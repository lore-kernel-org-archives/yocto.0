Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B88E01304
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 09:31:11 -0700 (PDT)
Received: by lagu2 with SMTP id u2so2536639lag.35
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 09:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=JjWeGzzXRnlNv4OfwFxIFzeifLCPQZUa1LVeJaLQcJ8=;
	b=IxTTIgt9JJ9yMq8+gLP9mhRtag45cGSELbnZzmhGmUIsCRGDfSR5C+ajNMcbInxtUx
	xXM2ZF0EoBLU38jkANoiq96DWCQlzDLab3nH5Gfxb4cP/Uz/RlwYBEWjNtqvs+U21DrL
	qhs4EF639Bsq+mazmRAZNvT639ng9AtUZ/9CLSDKmsbbb1vLrvD1FhB6uRqlqV7/Nzgz
	VcNVzX9CCuZOGqpHGdYaN01soB9shzDxVDyX6o1NGeIKmBmg46+QxrNI16JLRQfm4TT3
	NHB+qcTH/sixrsPHnzMQpd7QikzK1jcNDW+ZHhtMOmPlup08xX0G2toDhpEhwemLHTLV
	scXQ==
Received: by 10.152.146.163 with SMTP id td3mr2843820lab.31.1333211470648;
	Sat, 31 Mar 2012 09:31:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Sat, 31 Mar 2012 09:30:40 -0700 (PDT)
In-Reply-To: <1333141865.18082.120.camel@ted>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 31 Mar 2012 09:30:40 -0700
Message-ID: <CAMKF1spxRhbgpbbfpvZ_Gui6KNaoCvt7tEA1NPqM9Ch1i3XNVw@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Sat, 31 Mar 2012 16:31:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 30, 2012 at 2:11 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2012-03-30 at 15:18 -0500, Mark Hatle wrote:
>> On 3/30/12 2:33 PM, Koen Kooi wrote:
>> >
>> > Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:
>> >
>> >> On 3/30/12 1:44 PM, Koen Kooi wrote:
>> >>> Hi,
>> >>>
>> >>> RP said I should raise this on the yocto lists, so here it is:
>> >>>
>> >>> The Angstrom core team would like to move angstrom under the yocto b=
anner so
>> >>> we can formally claim to be 'yocto'.
>
> In the interests of clarity, as Tracey will tell you there is no
> "Yocto" (which is an SI prefix), only the "Yocto Project" :). I know
> some of us have bad habits but since we're trying to ensure we're all
> consistent, this is worth highlighting.
>
>> >> For it to be on the yocto project web site, it just need to have
>> the layers hosted on the git.yoctoproject.org. =C2=A0But there is no
>> "yocto".. It's the Yocto Project, Poky, or specific git repositories.
>> There is no reason we can't have an angstrom repository. =C2=A0It could =
be
>> in a similar format to the Poky repository (everything combined for a
>> single download), or it could be a layer [or layers] that sit on top
>> of Poky.
>> >
>> > Why on top of poky? I do not want poky, nor do my customers, oe-core i=
s what
>> > we need and want. This proposal to move angstrom under yocto is target=
ed at
>> > eliminating 'poky' from the stack while still being able to say 'yocto=
'.
>>
>> Poky is a repository made up of bitbake + oe-core + meta-yocto, as well =
as a
>> distribution definition (in meta-yocto). =C2=A0I assume angstrom has it'=
s own
>> distribution definition.
>>
>> So my question is why NOT on top of Poky (the repository, not distributi=
on
>> definition)?
>
> FWIW I don't think it has to be "on top of Poky".
>
> Basically the question is whether you'd include the meta-yocto layer or
> not. I know that doesn't have its own repository yet (but that's purely
> a time thing). I have no strong feelings either way about the inclusion
> of that layer. Its purposefully not got that much in it (one distro
> definition and some hardware/BSP addons).
>
> Also, Angstrom has a different repository format in the way the user
> fetches and interacts with layers. I don't think Yocto mandates any
> requirement in that area, or that it needs to.

I think the repository format used for poky in yocto project
could also be confusing things. Since it does not clone openembedded-core
or bitbake from upstream locations but maintains a copy of its own. even
though they are ditto copies of upstream it still has logical separation
that can be source of confusion. So if there was a meta-poky that defined
the distro policies and another integration layer that
sources openembedded-core and bitbake meta-poky and other layers
would make it much clearer.

As such OE-Core is distroless as we all know and can be built standalone
and poky uses most of defaults so meta-poky could be a thin layer on top
right now I think poky combines distro policy layer and integration
layer into one
which could also be source of confusion. I think creating distinct layers
for these two will clear up the air quite a bit.

Whether you want to include angstrom as an alternative distro layer is
Yocto project and angstrom community to decide I think this would make
the distinctions very clear.

-Khem

