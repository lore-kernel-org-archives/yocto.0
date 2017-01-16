Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3539E00805; Mon, 16 Jan 2017 05:59:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.194 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f194.google.com (mail-ot0-f194.google.com
	[74.125.82.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE27CE0050B
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 05:59:01 -0800 (PST)
Received: by mail-ot0-f194.google.com with SMTP id 65so6555007otq.2
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 05:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qNwTkpmqz6AP+gyeHWUsfU4XS7nRkVjFM+moFWh2jFc=;
	b=AR8/t3zgR+DNV6kSICeAsPjMxvfHxD+1mhEGJWsEOi2t6L2x90UjsHXY1YRCmyATrG
	k9KcyfVZOaIFg8S/gUw1e+1LfpXg8s7Zudaw85c4NASpPBkSsP39w9YfydzirohuWXxG
	7APoGXJ7vP739MLnOCD61A/C95uam+SGdEJNdjn1DOmxl3T4lY6vlunQTBURI9rM3MaM
	dT+sWcXOcU2Y/f0am61D+ckYUTjDp923aAm7hFm3kV/tTaYxYi9Ih0srgKBt1e4HytN3
	vRXFNNNT79E0w3exsSponeBY3pMfKRglmTtOyPXMH/SFQd1Cac2D1mnIb8RpQoOivAhA
	eI9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qNwTkpmqz6AP+gyeHWUsfU4XS7nRkVjFM+moFWh2jFc=;
	b=QTHrLSkgfRIdPG14GpSZKJT/SCJJcTALosYiLTykLY++MSPXiQONGpW3nRYvjsJ2t0
	F/oVK1oApLCOwzo+FZTp/qNIsKu8z6/6IW411aIxAk6PzY23kcRXBSy2LSv+F+BuEvit
	0E9XWT12fhHzdfRdvabwTiiCnuZZUbSa8cpQOT9bpdstM81Dsx59a2WvoQ65npE/y4NO
	dySbAtMN11SQZANMV5Kj3WXkLIHf5aTZ38C2rcW1NmW0RcKUmJrqDdS+SX1GQPgwy7xf
	QKSFPFmspaM8YFaPJTB/QNz2yw16YgVmRx8mxnFAC9OgsWQLjOudfs8EXpQK1FL/lj2I
	Gv7g==
X-Gm-Message-State: AIkVDXIxOznHw4aSFqD6ypb/lOwHHk1em5Wmn2c0t8CUXVrVOQJ1y8m/HJLGyj11uaGJPRHuE3BGuFxQSHGZlA==
X-Received: by 10.157.37.203 with SMTP id q69mr16076146ota.182.1484575140997; 
	Mon, 16 Jan 2017 05:59:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.1.71 with HTTP; Mon, 16 Jan 2017 05:59:00 -0800 (PST)
In-Reply-To: <20170112152727.GB8392@mentor.com>
References: <20170110144821.GC8258@mentor.com>
	<5fe24a37-12c7-13f1-c2a4-5c1f2dffef3c@windriver.com>
	<20170112152727.GB8392@mentor.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
Date: Mon, 16 Jan 2017 19:29:00 +0530
Message-ID: <CALwQEroUsQyjSR_P8z3kUpZ8mvJtHZusLNYMEO4fGKOs4chW9w@mail.gmail.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
Cc: yocto@yoctoproject.org, Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: Re: [meta-selinux] What's the point of refpolicy-minimum?
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
X-List-Received-Date: Mon, 16 Jan 2017 13:59:04 -0000
Content-Type: multipart/alternative; boundary=001a113d75aeebedcd0546369528

--001a113d75aeebedcd0546369528
Content-Type: text/plain; charset=UTF-8

Hi Joe,

On Thu, Jan 12, 2017 at 8:57 PM, Joe MacDonald <Joe_MacDonald@mentor.com>
wrote:
>
> Hi guys,
>
> [Re: [meta-selinux] What's the point of refpolicy-minimum?] On 17.01.12
(Thu 12:57) wenzong fan wrote:
>
> > On 01/10/2017 10:48 PM, Joe MacDonald wrote:
> > >Wenzong / Shrikant,
> > >
> > >I thought I knew the answer to the above question, and maybe my
> > >understanding is still correct, but I think I need to ask it now
anyway.
> > >
> > >I don't use refpolicy-minimum for anything, so when I did the updates
to
> > >refpolicy*_git I didn't even glance at refpolicy-minimum_git.
Wenzong's
> > >change to refpolicy-minimum_2.20161023 (in the same thread as the uprev
> > >of the recipe) piqued my curiosity, so I had a look.  Of course,
> > >refpolicy-minimum_git.bb also needs to be updated (or thrown out), but
> > >now that I'm looking at the recipe I see what seems like conflicting
> > >statements in the recipe:
> > >
> > >   recipes-security/refpolicy/refpolicy-minimum_2.20161023.bb:
> > >
> > >     1 include refpolicy-targeted_${PV}.bb
> > >     2
> > >     3 SUMMARY = "SELinux minimum policy"
> > >     4 DESCRIPTION = "\
> > >     5 This is a minimum reference policy with just core policy
modules, and \
> > >     6 could be used as a base for customizing targeted policy. \
> > >     7 Pretty much everything runs as initrc_t or unconfined_t so all
of the \
> > >     8 domains are unconfined. \
> > >     9 "
> > >
> > >and:
> > >
> > >   recipes-security/refpolicy/refpolicy-targeted_2.20161023.bb:
> > >
> > >     1 SUMMARY = "SELinux targeted policy"
> > >     2 DESCRIPTION = "\
> > >     3 This is the targeted variant of the SELinux reference policy.
Most service \
> > >     4 domains are locked down. Users and admins will login in with
unconfined_t \
> > >     5 domain, so they have the same access to the system as if
SELinux was not \
> > >     6 enabled. \
> > >     7 "
> > >
> > >So now I'm trying to understand what the point of refpolicy-minimum
> > >really is here.  Those of you who are using it, what are you using it
> > >for and what do you expect would be the correct behaviour of a system
> > >running that policy?
> > >
> >
> > I don't have much experience on using the refpolicy-minimum as well.
> >
> > But from the original logs it should be "minimum targeted policy".
> >
> > commit 65675f02e33f5da31ec5dbac7a45849f4952569b
> > Author: Wenzong Fan <wenzong.fan@windriver.com>
> > Date:   Mon Mar 24 21:07:50 2014 -0400
> >
> >     refpolicy: add minimum targeted policy
> >
> >     This is a minimum targeted policy with just core policy modules, and
> >     could be used as a base for customizing targeted policy.
> >     Pretty much everything runs as initrc_t or unconfined_t so all of
the
> >     domains are unconfined.
> >
> >     Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> >     Signed-off-by: Joe MacDonald <joe@deserted.net>
> >
> >
> > >At the very least, I'm going to remove the 'include [...].bb' from both
> > >'minimum' recipes, as that's completely incorrect, but when I do that I
> > >want to know what anyone using this recipe wants to see from it, so
> > >whatever the 'include' gets replaced with is doing the right thing
> > >(which isn't necessarily what it's doing today).
> >
> > I won't object to make the changes, if you think there should be a
different
> > minimum policy with targeted.
>
> I'm not proposing an alternative, I'm just saying that the statements in
> the descriptions of the recipes seem to conflict.  (And do note that the
> git log you quoted is precisely the text in DESCRIPTION for
> refpolicy-minimum.
>
> What I'm confused by is this in minimum:
>
> >     Pretty much everything runs as initrc_t or unconfined_t so all of
the
> >     domains are unconfined.
>
> and this in targeted:
>
> > >     Most service domains are locked down.
>
> So I guess my question is what is the desired behaviour out of this
> recipe?  If nobody knows and it's not being used, I'm leaning toward a
> 'git rm'-based solution.  :-)
>
> It sounds, though, like Shrikant is using it, so it's of some use, I
> guess.  Shrikant, on the systems you've used the minimum policy, what
> does the policy look like on your running system?  In the current world
> refpolicy-minimum inherits POLICY_TYPE and POLICY_MLS_SENS from
> refpolicy-targeted, is that good / bad / irrelevant to what you're doing
> with it?  If I just rework minimum to remove the include and bring in
> the minimal number of changes to get the policy to load again, is that
> good enough for your purposes?  Do you want to volunteer to test my
> changes for me before I commit them?  :-)

Sure, the rework for minimum to remove the include and minimal no. of
changes to get the policy loading,
seems good to server the expectations from it.
Happy to volunteer  to validate the changes, please advise the location to
fork the in-progress changes. :)

>
> --
> -Joe MacDonald.
> :wq
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Thanks
Shrikant

--001a113d75aeebedcd0546369528
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joe,<br><div><br>On Thu, Jan 12, 2017 at 8:57 PM, Joe M=
acDonald &lt;<a href=3D"mailto:Joe_MacDonald@mentor.com">Joe_MacDonald@ment=
or.com</a>&gt; wrote:<br>&gt;<br>&gt; Hi guys,<br>&gt;<br>&gt; [Re: [meta-s=
elinux] What&#39;s the point of refpolicy-minimum?] On 17.01.12 (Thu 12:57)=
 wenzong fan wrote:<br>&gt;<br>&gt; &gt; On 01/10/2017 10:48 PM, Joe MacDon=
ald wrote:<br>&gt; &gt; &gt;Wenzong / Shrikant,<br>&gt; &gt; &gt;<br>&gt; &=
gt; &gt;I thought I knew the answer to the above question, and maybe my<br>=
&gt; &gt; &gt;understanding is still correct, but I think I need to ask it =
now anyway.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;I don&#39;t use refpolicy-mi=
nimum for anything, so when I did the updates to<br>&gt; &gt; &gt;refpolicy=
*_git I didn&#39;t even glance at refpolicy-minimum_git.=C2=A0 Wenzong&#39;=
s<br>&gt; &gt; &gt;change to refpolicy-minimum_2.20161023 (in the same thre=
ad as the uprev<br>&gt; &gt; &gt;of the recipe) piqued my curiosity, so I h=
ad a look.=C2=A0 Of course,<br>&gt; &gt; &gt;<a href=3D"http://refpolicy-mi=
nimum_git.bb">refpolicy-minimum_git.bb</a> also needs to be updated (or thr=
own out), but<br>&gt; &gt; &gt;now that I&#39;m looking at the recipe I see=
 what seems like conflicting<br>&gt; &gt; &gt;statements in the recipe:<br>=
&gt; &gt; &gt;<br>&gt; &gt; &gt; =C2=A0 recipes-security/refpolicy/<a href=
=3D"http://refpolicy-minimum_2.20161023.bb">refpolicy-minimum_2.20161023.bb=
</a>:<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; =C2=A0 =C2=A0 1 include refpolicy=
-targeted_${PV}.bb<br>&gt; &gt; &gt; =C2=A0 =C2=A0 2<br>&gt; &gt; &gt; =C2=
=A0 =C2=A0 3 SUMMARY =3D &quot;SELinux minimum policy&quot;<br>&gt; &gt; &g=
t; =C2=A0 =C2=A0 4 DESCRIPTION =3D &quot;\<br>&gt; &gt; &gt; =C2=A0 =C2=A0 =
5 This is a minimum reference policy with just core policy modules, and \<b=
r>&gt; &gt; &gt; =C2=A0 =C2=A0 6 could be used as a base for customizing ta=
rgeted policy. \<br>&gt; &gt; &gt; =C2=A0 =C2=A0 7 Pretty much everything r=
uns as initrc_t or unconfined_t so all of the \<br>&gt; &gt; &gt; =C2=A0 =
=C2=A0 8 domains are unconfined. \<br>&gt; &gt; &gt; =C2=A0 =C2=A0 9 &quot;=
<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;and:<br>&gt; &gt; &gt;<br>&gt; &gt; &gt=
; =C2=A0 recipes-security/refpolicy/<a href=3D"http://refpolicy-targeted_2.=
20161023.bb">refpolicy-targeted_2.20161023.bb</a>:<br>&gt; &gt; &gt;<br>&gt=
; &gt; &gt; =C2=A0 =C2=A0 1 SUMMARY =3D &quot;SELinux targeted policy&quot;=
<br>&gt; &gt; &gt; =C2=A0 =C2=A0 2 DESCRIPTION =3D &quot;\<br>&gt; &gt; &gt=
; =C2=A0 =C2=A0 3 This is the targeted variant of the SELinux reference pol=
icy.=C2=A0 Most service \<br>&gt; &gt; &gt; =C2=A0 =C2=A0 4 domains are loc=
ked down. Users and admins will login in with unconfined_t \<br>&gt; &gt; &=
gt; =C2=A0 =C2=A0 5 domain, so they have the same access to the system as i=
f SELinux was not \<br>&gt; &gt; &gt; =C2=A0 =C2=A0 6 enabled. \<br>&gt; &g=
t; &gt; =C2=A0 =C2=A0 7 &quot;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;So now I&=
#39;m trying to understand what the point of refpolicy-minimum<br>&gt; &gt;=
 &gt;really is here.=C2=A0 Those of you who are using it, what are you usin=
g it<br>&gt; &gt; &gt;for and what do you expect would be the correct behav=
iour of a system<br>&gt; &gt; &gt;running that policy?<br>&gt; &gt; &gt;<br=
>&gt; &gt;<br>&gt; &gt; I don&#39;t have much experience on using the refpo=
licy-minimum as well.<br>&gt; &gt;<br>&gt; &gt; But from the original logs =
it should be &quot;minimum targeted policy&quot;.<br>&gt; &gt;<br>&gt; &gt;=
 commit 65675f02e33f5da31ec5dbac7a45849f4952569b<br>&gt; &gt; Author: Wenzo=
ng Fan &lt;<a href=3D"mailto:wenzong.fan@windriver.com">wenzong.fan@windriv=
er.com</a>&gt;<br>&gt; &gt; Date: =C2=A0 Mon Mar 24 21:07:50 2014 -0400<br>=
&gt; &gt;<br>&gt; &gt; =C2=A0 =C2=A0 refpolicy: add minimum targeted policy=
<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =C2=A0 This is a minimum targeted policy =
with just core policy modules, and<br>&gt; &gt; =C2=A0 =C2=A0 could be used=
 as a base for customizing targeted policy.<br>&gt; &gt; =C2=A0 =C2=A0 Pret=
ty much everything runs as initrc_t or unconfined_t so all of the<br>&gt; &=
gt; =C2=A0 =C2=A0 domains are unconfined.<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =
=C2=A0 Signed-off-by: Wenzong Fan &lt;<a href=3D"mailto:wenzong.fan@windriv=
er.com">wenzong.fan@windriver.com</a>&gt;<br>&gt; &gt; =C2=A0 =C2=A0 Signed=
-off-by: Joe MacDonald &lt;<a href=3D"mailto:joe@deserted.net">joe@deserted=
.net</a>&gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt; &gt;At the very least, =
I&#39;m going to remove the &#39;include [...].bb&#39; from both<br>&gt; &g=
t; &gt;&#39;minimum&#39; recipes, as that&#39;s completely incorrect, but w=
hen I do that I<br>&gt; &gt; &gt;want to know what anyone using this recipe=
 wants to see from it, so<br>&gt; &gt; &gt;whatever the &#39;include&#39; g=
ets replaced with is doing the right thing<br>&gt; &gt; &gt;(which isn&#39;=
t necessarily what it&#39;s doing today).<br>&gt; &gt;<br>&gt; &gt; I won&#=
39;t object to make the changes, if you think there should be a different<b=
r>&gt; &gt; minimum policy with targeted.<br>&gt;<br>&gt; I&#39;m not propo=
sing an alternative, I&#39;m just saying that the statements in<br>&gt; the=
 descriptions of the recipes seem to conflict. =C2=A0(And do note that the<=
br>&gt; git log you quoted is precisely the text in DESCRIPTION for<br>&gt;=
 refpolicy-minimum.<br>&gt;<br>&gt; What I&#39;m confused by is this in min=
imum:<br>&gt;<br>&gt; &gt; =C2=A0 =C2=A0 Pretty much everything runs as ini=
trc_t or unconfined_t so all of the<br>&gt; &gt; =C2=A0 =C2=A0 domains are =
unconfined.<br>&gt;<br>&gt; and this in targeted:<br>&gt;<br>&gt; &gt; &gt;=
 =C2=A0 =C2=A0 Most service domains are locked down.<br>&gt;<br>&gt; So I g=
uess my question is what is the desired behaviour out of this<br>&gt; recip=
e?=C2=A0 If nobody knows and it&#39;s not being used, I&#39;m leaning towar=
d a<br>&gt; &#39;git rm&#39;-based solution. =C2=A0:-)<br>&gt;<br>&gt; It s=
ounds, though, like Shrikant is using it, so it&#39;s of some use, I<br>&gt=
; guess.=C2=A0 Shrikant, on the systems you&#39;ve used the minimum policy,=
 what<br>&gt; does the policy look like on your running system?=C2=A0 In th=
e current world<br>&gt; refpolicy-minimum inherits POLICY_TYPE and POLICY_M=
LS_SENS from<br>&gt; refpolicy-targeted, is that good / bad / irrelevant to=
 what you&#39;re doing<br>&gt; with it?=C2=A0 If I just rework minimum to r=
emove the include and bring in<br>&gt; the minimal number of changes to get=
 the policy to load again, is that<br>&gt; good enough for your purposes?=
=C2=A0 Do you want to volunteer to test my<br>&gt; changes for me before I =
commit them? =C2=A0:-)<br><br>Sure, the rework for minimum to remove the in=
clude and minimal no. of changes to get the policy loading,<br>seems good t=
o server the expectations from it.<br>Happy to volunteer=C2=A0 to validate =
the changes, please advise the location to fork the in-progress changes. :)=
<br><br>&gt;<br>&gt; --<br>&gt; -Joe MacDonald.<br>&gt; :wq<br>&gt;<br>&gt;=
 --<br>&gt; _______________________________________________<br>&gt; yocto m=
ailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopr=
oject.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yo=
cto">https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;<br><br></div=
><div>Thanks<br></div><div>Shrikant<br></div></div>

--001a113d75aeebedcd0546369528--
