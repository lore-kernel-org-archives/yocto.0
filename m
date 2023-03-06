Return-Path: <tamtamis@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E427C678D4
	for <webhook@archiver.kernel.org>; Mon,  6 Mar 2023 12:33:24 +0000 (UTC)
Subject: Re: Question about psuedo abort errors
To: yocto@lists.yoctoproject.org
From: "Tamis" <tamtamis@gmail.com>
X-Originating-Location: DE (147.161.165.18)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 Mar 2023 04:33:22 -0800
References: <1b81f570-b96d-ea82-6275-d962255d20ea@windriver.com>
In-Reply-To: <1b81f570-b96d-ea82-6275-d962255d20ea@windriver.com>
Message-ID: <22051.1678106002246388737@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sojQGqIgxnjEJpB8J9DF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 12:33:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59347

--sojQGqIgxnjEJpB8J9DF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I think Qi found something. But lets see all points raised one by one:

>=20
>=20
>=20
> This is saying the file on disk with inode 7868999 is:
> WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h
>=20
> but the pseudo database thinks this is:
>=20
> WORKDIR/lib32-las/M-WBS0.1-r0/package/usr/src/debug/lib32-las/M-WBS0.1-r0=
/git/lasiflib/include/lasif_list.h
>=20
>=20
> so the question is when was this file created? It would be created by
> do_package since it is in the /package/ directory. It would seem to be
> being deleted outside of pseudo context.
>=20
>=20
>=20

The file is indeed being created by the good execution of the do_package st=
age. But on subsequent execution the build fails on do_install.
It is not being deleted outside of pseudo. As I wrote above besides a copy =
we do not touch the WORKDIR folder.
Right now I have deleted that build in order to make new builds but the ino=
des matched with all those files into WORKDIR since they were hard links.
The strange thing now is that while some executions before the problem was =
100% reproducible now it is not. This is very odd.

>=20
>=20
>=20
> How are you excluding it? I have to wonder if that is somehow breaking
> things due to dependency changes.
>=20
>=20
>=20

I am using:
INHERIT +=3D "rm_work"
RM_WORK_EXCLUDE +=3D "... lib32-las lib32-ldh ..." in local.conf
Since you spoke about dependencies:
ldh recipe depends on las. Both are excluded from rm_work. Sometimes we hav=
e observed the same install issue problem also to ldh recipe.

>=20
>=20
>=20
> Are you saying the first failure is here in the do_install above?
>=20
>=20
>=20

Yes. When I reproduced the error and made my tests.

>=20
> This is odd. Why would an rm_work run here?

I do not know. I guess it might runs for every recipe and if that recipe is=
 in RM_WORK_EXCLUDE it just exits?

>=20
> This is also odd since if rm_work did run, shouldn't the unpack/patch
> need to run again? Didn't you say you'd disabled rm_work for this
> recipe?

I guess that rm_work invocation did not removed anything. Since WORKDIR fil=
es were all there. As wrote above it run and then exists doing nothing sinc=
e RM_WORK_EXCLUDE=C2=A0is set.

>=20
> Something is deleting the files in /package/ which is confusing pseudo.
> The question is what/when. Stepping through this and seeing when the
> files there disappear would be the next step to debug it, narrow down
> when something is deleting them.
>=20

I am like 99% sure that nothing is touching files outside pseudo. But eithe=
r way I will observe the issue and report back in case I find something mor=
e and if reproduced again.

>=20
>=20
>=20
> This is weird since ${S} is usually in PSEUDO_IGNORE_PATHS.
> And if I understand it correctly, if ${S} is in PSEUDO_IGNORE_PATHS,
> pseudo should not complain about any file under ${S}.
> Could you please check if your recipe's PSEUDO_INGORE_PATHS contains
> "WORKDIR/lib32-las/M-WBS0.1-r0/git"?
>=20
>=20
>=20

I checked the=C2=A0PSEUDO_IGNORE_PATHS of the recipe.
S =3D "${WORKDIR}/git/v2"
So:
PSEUDO_IGNORE_PATHS=3D".....
WORKDIR/lib32-las/M-WBS0.1-r0/git/v2,
WORKDIR/lib32-las/M-WBS0.1-r0/git/v2"

So as you see the v2 path is into the PSEUDO paths. But the file in questio=
n is one path above and those files are being installed via do_install
install -m 0644 ${WORKDIR}/git/lasiflib/include/* ${D}${includedir}

Would above be the reason somehow? That not the whole ${WORKDIR}/git is not=
 into PSEUDO?
I could add in PSEUDO_IGNORE_PATHS the S =3D "${WORKDIR}/git to see if this=
 will solve the problem.

But first I need to manage to reproduced the error again. Manually right no=
w I cannot. I will wait till next invocation of our CI.

Regards,
Panagiotis

--sojQGqIgxnjEJpB8J9DF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello all,</p>
<p>I think Qi found something. But lets see all points raised one by one:</=
p>
<blockquote>
<p><span style=3D"white-space: pre-wrap;">This is saying the file on disk w=
ith inode 7868999 is:</span><br style=3D"white-space: pre-wrap;" /><span st=
yle=3D"white-space: pre-wrap;">WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/i=
nclude/lasif_list.h&nbsp;</span><br style=3D"white-space: pre-wrap;" /><br =
style=3D"white-space: pre-wrap;" /><span style=3D"white-space: pre-wrap;">b=
ut the pseudo database thinks this is:</span><br style=3D"white-space: pre-=
wrap;" /><br style=3D"white-space: pre-wrap;" /><span style=3D"white-space:=
 pre-wrap;">WORKDIR/lib32-las/M-WBS0.1-r0/package/usr/src/debug/lib32-las/M=
-WBS0.1-r0/git/lasiflib/include/lasif_list.h</span><br style=3D"white-space=
: pre-wrap;" /><br style=3D"white-space: pre-wrap;" /><span style=3D"white-=
space: pre-wrap;">so the question is when was this file created? It would b=
e created by</span><br style=3D"white-space: pre-wrap;" /><span style=3D"wh=
ite-space: pre-wrap;">do_package since it is in the /package/ directory. It=
 would seem to be</span><br style=3D"white-space: pre-wrap;" /><span style=
=3D"white-space: pre-wrap;">being deleted outside of pseudo context.<br /><=
/span></p>
</blockquote>
<p><br />The file is indeed being created by the good execution of the do_p=
ackage stage. But on subsequent execution the build fails on do_install.<br=
 />It is not being deleted outside of pseudo. As I wrote above besides a co=
py we do not touch the WORKDIR folder.<br />Right now I have deleted that b=
uild in order to make new builds but the inodes matched with all those file=
s into WORKDIR since they were hard links.<br />The strange thing now is th=
at while some executions before the problem was 100% reproducible now it is=
 not. This is very odd.</p>
<blockquote>
<p><span style=3D"white-space: pre-wrap;">How are you excluding it? I have =
to wonder if that is somehow breaking</span><br style=3D"white-space: pre-w=
rap;" /><span style=3D"white-space: pre-wrap;">things due to dependency cha=
nges.<br /></span></p>
</blockquote>
<p><br />I am using:<br />INHERIT +=3D "rm_work"<br />RM_WORK_EXCLUDE +=3D =
"... lib32-las lib32-ldh ..." in local.conf<br />Since you spoke about depe=
ndencies:<br />ldh recipe depends on las. Both are excluded from rm_work. S=
ometimes we have observed the same install issue problem also to ldh recipe=
.<br /><br /></p>
<blockquote>
<p><span style=3D"white-space: pre-wrap;">Are you saying the first failure =
is here in the do_install above?<br /></span></p>
</blockquote>
Yes. When I reproduced the error and made my tests.<br /><br />
<blockquote><span style=3D"white-space: pre-wrap;">This is odd. Why would a=
n rm_work run here?</span></blockquote>
I do not know. I guess it might runs for every recipe and if that recipe is=
 in RM_WORK_EXCLUDE it just exits?<br /><br />
<blockquote><span style=3D"white-space: pre-wrap;">This is also odd since i=
f rm_work did run, shouldn't the unpack/patch</span><br style=3D"white-spac=
e: pre-wrap;" /><span style=3D"white-space: pre-wrap;">need to run again? D=
idn't you say you'd disabled rm_work for this</span><br style=3D"white-spac=
e: pre-wrap;" /><span style=3D"white-space: pre-wrap;">recipe?</span></bloc=
kquote>
I guess that rm_work invocation did not removed anything. Since WORKDIR fil=
es were all there. As wrote above it run and then exists doing nothing sinc=
e RM_WORK_EXCLUDE&nbsp;is set.<br /><br />
<blockquote><span style=3D"white-space: pre-wrap;">Something is deleting th=
e files in /package/ which is confusing pseudo.</span><br style=3D"white-sp=
ace: pre-wrap;" /><span style=3D"white-space: pre-wrap;">The question is wh=
at/when. Stepping through this and seeing when the</span><br style=3D"white=
-space: pre-wrap;" /><span style=3D"white-space: pre-wrap;">files there dis=
appear would be the next step to debug it, narrow down</span><br style=3D"w=
hite-space: pre-wrap;" /><span style=3D"white-space: pre-wrap;">when someth=
ing is deleting them.<br /></span></blockquote>
<p><br />I am like 99% sure that nothing is touching files outside pseudo. =
But either way I will observe the issue and report back in case I find some=
thing more and if reproduced again.</p>
<p>&nbsp;</p>
<blockquote>
<p><span style=3D"white-space: pre-wrap;">This is weird since ${S} is usual=
ly in PSEUDO_IGNORE_PATHS.</span><br style=3D"white-space: pre-wrap;" /><sp=
an style=3D"white-space: pre-wrap;">And if I understand it correctly, if ${=
S} is in PSEUDO_IGNORE_PATHS, pseudo should not complain about any file und=
er ${S}.</span><br style=3D"white-space: pre-wrap;" /><span style=3D"white-=
space: pre-wrap;">Could you please check if your recipe's PSEUDO_INGORE_PAT=
HS contains "WORKDIR/lib32-las/M-WBS0.1-r0/git"?<br /></span></p>
</blockquote>
<p><br />I checked the&nbsp;PSEUDO_IGNORE_PATHS of the recipe.<br />S =3D "=
${WORKDIR}/git/v2"<br />So:<br />PSEUDO_IGNORE_PATHS=3D"..... <br />WORKDIR=
/lib32-las/M-WBS0.1-r0/git/v2,<br />WORKDIR/lib32-las/M-WBS0.1-r0/git/v2"</=
p>
<p><br />So as you see the v2 path is into the PSEUDO paths. But the file i=
n question is one path above and those files are being installed via do_ins=
tall<br />install -m 0644 ${WORKDIR}/git/lasiflib/include/* ${D}${includedi=
r}</p>
<p><br />Would above be the reason somehow? That not the whole ${WORKDIR}/g=
it is not into PSEUDO?<br />I could add in PSEUDO_IGNORE_PATHS the S =3D "$=
{WORKDIR}/git to see if this will solve the problem.<br /><br />But first I=
 need to manage to reproduced the error again. Manually right now I cannot.=
 I will wait till next invocation of our CI.</p>
<p>Regards,<br />Panagiotis</p>

--sojQGqIgxnjEJpB8J9DF--

