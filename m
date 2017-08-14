Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDD0BE00D33; Mon, 14 Aug 2017 15:07:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-05v.sys.comcast.net
	(resqmta-ch2-05v.sys.comcast.net [69.252.207.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C8D3E008D2
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 15:07:21 -0700 (PDT)
Received: from resomta-ch2-04v.sys.comcast.net ([69.252.207.100])
	by resqmta-ch2-05v.sys.comcast.net with ESMTP
	id hNVudJNcghorthNW4dp80t; Mon, 14 Aug 2017 22:07:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1502748440;
	bh=iiOAKew2a+T171ZiV26PixUGRfv2cVzf6GxWtCB+X2o=;
	h=Received:Received:Content-Type:Mime-Version:Subject:From:Date:
	Message-Id:To;
	b=MV+zd8rU4qXOgUBZht/c7b/oSNHRrMy/dXydRbCuRESFLBm6zGfZkLRMZ+avslTHd
	OVAV/PL9qk9PVFCzysPqrGk3pItapqx5Kkk3JFwn3gAEwBzMpt+ndee7Qp0twhonI4
	CH5XFSw8db169nLyhqGMQtDyXotRlOCMHQGkY9rwjZlm2JPQiCyaX2veIlbRIsVhCY
	+7wBi/vQ00qYs+8S4Q6tAuWzL7S+UDod8G2JP2ACSLSsVg9gc5TS59UtsUMrQNtkwo
	412/Wr5n+UlruMvN/ZoS5wftvNAWyoIdUbS8mPEVXU+IZ9ZszkAf+/QHyYjiZV4w7F
	6KT1iEaZbDoVw==
Received: from [IPv6:2601:18f:800:acc1:ddfd:8f97:1a56:f71]
	([IPv6:2601:18f:800:acc1:ddfd:8f97:1a56:f71])
	by resomta-ch2-04v.sys.comcast.net with SMTP
	id hNW3dwXR5N1TYhNW4dTpcu; Mon, 14 Aug 2017 22:07:20 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Russell Peterson <bluehills7@comcast.net>
In-Reply-To: <1502737813.26251.119.camel@genivi.org>
Date: Mon, 14 Aug 2017 18:07:19 -0400
Message-Id: <659BEA09-1E18-4E3A-98E1-69BCCE38B153@comcast.net>
References: <CC06751E-FB4C-46CE-8127-6344F8B00D96@comcast.net>
	<1502737813.26251.119.camel@genivi.org>
To: Gunnar Andersson <gandersson@genivi.org>
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfOprIUf4g2VGL63hLR9OmWMWoFPqqG3em51ap2fTpAw5hZ3pfVwVVN023wmDSWDu5JVNEcqh9kMi5SyALvHMxLsrjrFJWtJpbibsgPdrAPhT/mkJVFhS
	oG38t8WjDEwbo//MZEWzsNwrw/U1/1ESE6xLjyGQWG6lkAiM9Yo/rETKiOFxLizr/sTpwbnuYgJ8qHc7nH6di0MaSYopv4VcOOGtvl3EM2KmHis/uctIcIek
Cc: yocto@yoctoproject.org
Subject: Re: release management
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
X-List-Received-Date: Mon, 14 Aug 2017 22:07:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks very much, Gunnar, for your detailed and helpful response.

Not sure I will go the git submodule path.  My initial try is using a =
script in my build environment that pulls in whatever layers it needs =
via git clone and then using a specific commit in a specific branch for =
that specific build.  The cloned layers are considered =E2=80=9Cread =
only=E2=80=9D.  Right now we clone directly from yocto or github but we =
could easily switch to local, non-public mirrors that we could populate =
to specific versions.

Thanks again!

Regards,

Russell


> On Aug 14, 2017, at 3:10 PM, Gunnar Andersson <gandersson@genivi.org> =
wrote:
>=20
>=20
> Hey Russell
>=20
> I don't claim to be an authority on best practices but I will share =
some
> thoughts.
>=20
> On Sun, 2017-08-13 at 06:58 -0400, Russell Peterson wrote:
>> Hello.
>>=20
>> As I learn more about yocto and more importantly gain practical =
experience
>> with it I have started to think about my release structure.  Is there =
a
>> =E2=80=9Cbest practices=E2=80=9D document or something like that that =
speaks to this?
>> For example, how does everyone deal with =E2=80=9Cexternal=E2=80=9D =
meta layer
>> dependencies?  My software uses poky and meta-openembedded, of =
course. =20
>=20
> We simply use a parent project [1] that includes git submodules, one =
per
> yocto layer.  I'm of the opinion that if git (only) can be used, why
> introduce other tools?   But it requires you to learn and master that
> feature.
>=20
> For the primary layer that is unique to this project, meta-genivi-dev, =
we
> later on decided to merge it into the parent git repository instead, =
but
> keep all other layers as submodules.  Since there are frequent changes =
to
> the primary layer, it reduces the complexity of having to update a =
submodule
> for them continuously.  But the purpose is also to keep *only* unique =
things
> there, and thereby such things that are reusable by others will be =
naturally
> pushed to the other layers (those that are reusable, and therefore =
should be
> separate repos).
>=20
> There's a natural tradeoff between layers being developed =
independently (and
> widely reused by other projects), vs. the complexity of hacking on =
your
> project.
>=20
> Other projects use Google's "repo" tool but I have yet to understand =
what
> that adds compared to git-submodules (in a medium sized project at =
least),
> other than just additional hoops to jump through.
>=20
>> It also relies on some recipes in meta-linaro and =
meta-virtualization.  I
>> suspect there will be more as time goes by.  I have tweaked my layer
>> priorities as well as used BBMASK to avoid unwanted bbappend files =
etc=E2=80=A6
>> works but seems slightly clunky=E2=80=A6 still better than =
duplicating recipes in
>> my meta layer I think.
>=20
> I think you've got it.  Those are the tools you have.  I haven't found =
too
> frequent needs to mask away that which is provided by other layers, =
but it
> depends on your needs...
>=20
>>=20
>> Also=E2=80=A6 I quickly came to the conclusion that =E2=80=9Cthou =
shall not modify poky or
>> meta-openembedded=E2=80=9D. =20
>> That is, ALWAYS use bbappend files instead of modifying external =
layers. =20
>=20
> Absolutely that's the Yocto way.  But .bbappends are a kind of =
patches,
> so who's to say what is right or wrong?  Some people might think that =
git is
> actually a better tool to keep track of local modifications - keeping =
those
> on branches that can be efficiently diffed and merged when upstream =
changes.
>=20
> But clearly most Yocto proficient developers will be used to a =
.bbappend
> based workflow, and I would wager that you will be better received =
with any
> support questions than if you say "I have made my own branch of =
poky/meta-
> oe).  Strictly speaking the two option ought to be equivalent, but I'm =
just
> guessing it will still be perceived differently.  Yocto devs might =
agree or
> disagree.
>=20
>=20
>> If I think that poky or some other layer has a recipe bug or want to
>> change something in poky, for example, I plan to upstream a fix to =
the
>> project and when that becomes available I rebase my poky and remove =
the
>> bbappend from my meta layer.=20
>=20
>> One thing about modifying poky and not using bbappend files is that I
>> would then need to ship patches for poky instead of just directing =
users
>> to to use this branch and this commit for release x.y.z.
>=20
> You're not really asking a question here - just drawing the standard =
open-
> source process conclusions.  I for one agree with you.  Use bbappends. =
 Talk
> to the upstream.  Always second-guess why you need to change anything =
at
> all.  Then if the appends become very complex, consider if finally
> overriding with a new .bb file fits better. =20
>=20
> In our policy that I will describe further (below) we also mostly =
prefer the
> more explicit separate bbappend files that by virtue of having its own =
path
> location can be selectively included or not included in the local.conf =
for
> different project variations.  This feels less magical than having =
various
> hardware-specific overrides and other deeply embedded tweaks.  But =
there's
> not 100% right or wrong here -- it's clearly a case of use the right =
tool
> depending on the situation.
>=20
>>=20
>> Comments and suggestions welcome.
>=20
> In the GENIVI community we decided on a quite specific organization =
for
> layer modifications / bbappends.  I have been meaning to write an =
email to
> gather community feedback on it, but it's better done in a separate =
thread I
> think.
>=20
> Best Regards
> - Gunnar
>=20
> [1] https://github.com//GENIVI/genivi-dev-platform
>=20
> --=20
> Gunnar Andersson <gandersson@genivi.org>
> Development Lead
> GENIVI Alliance
>=20
>=20
>>=20
>> Regards,
>>=20
>> Russell
>>=20
>>=20
>>=20
>>=20
>=20


