Return-Path: <alexzoyv@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2166ECDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 14:32:59 +0000 (UTC)
Subject: Re: Http access token fetching with gitsm fetcher
To: yocto@lists.yoctoproject.org
From: alexzoyv@gmail.com
X-Originating-Location: RU (193.232.110.5)
X-Originating-Platform: Linux Chrome 118
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 20 Oct 2023 07:32:54 -0700
References: <CAMSfU+4EP2UnoNUo7Fycsp-xPe0VcUOz3Wnwzatvbt06iC11Eg@mail.gmail.com>
In-Reply-To: <CAMSfU+4EP2UnoNUo7Fycsp-xPe0VcUOz3Wnwzatvbt06iC11Eg@mail.gmail.com>
Message-ID: <19195.1697812374702702885@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="damLIyyZWcw0rp2kLjcP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 14:32:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61437

--damLIyyZWcw0rp2kLjcP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Adrian, Yoann,
Thank you very much and sorry for bringing it up.
.netrc does fix my problem.
Alex
On Fri, Oct 20, 2023 at 04:43 PM, Yoann Congal wrote:

>=20
> Hi,
>=20
> Le ven. 20 oct. 2023 =C3=A0 15:32, Adrian Freihofer
> <adrian.freihofer@gmail.com> a =C3=A9crit :
>=20
>> Did you already consider to write the credentials in a .netrc file?
>>=20
>> Regards
>> Adrian
>>=20
>> <alexzoyv@gmail.com> schrieb am Fr., 20. Okt. 2023, 13:55:
>>=20
>>>=20
>>> Greetings!
>>> I try to use gitsm fetcher to fetch bitbucket repository with read-only
>>> https access token. SRC_URI looks like this
>>>=20
>>> SRC_URI =3D
>>> "gitsm://******.git;protocol=3Dhttps;branch=3D${BRANCH};user=3Dazoykin:=
${TOKEN}"
>>>=20
>>>=20
>>> This recipe fetches parent repository, but is unable to fetch submodule=
,
>>> writing fatal: could not read Username for ' https://tps-git.topcon.com=
' :
>>> No such device or address in log.do_fetch
>>> It happens because url is passed to fetcher function already with user
>>> string. I suggest a patch to fix this issue
>>=20
>>=20
>=20
> I'm sorry but this is a known WONTFIX bug :
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13550
> See : https://git.openembedded.org/bitbake/tree/lib/bb/fetch2/gitsm.py#n1=
27
>=20
>=20
> The only supported way to do this (that I know of) is to use .netrc as
> Adrian suggested.
>=20
> Regards,
> --
> Yoann Congal
> Smile ECS - Tech expert

--damLIyyZWcw0rp2kLjcP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Adrian, Yoann,<br />Thank you very much and sorry for bringing it up.<br />=
.netrc does fix my problem.<br />Alex<br />On Fri, Oct 20, 2023 at 04:43 PM=
, Yoann Congal wrote:<br />
<blockquote>Hi,<br /><br />Le ven. 20 oct. 2023 &agrave; 15:32, Adrian Frei=
hofer<br />&lt;adrian.freihofer@gmail.com&gt; a &eacute;crit :<br />
<blockquote>Did you already consider to write the credentials in a .netrc f=
ile?<br /><br />Regards<br />Adrian<br /><br />&lt;alexzoyv@gmail.com&gt; s=
chrieb am Fr., 20. Okt. 2023, 13:55:<br />
<blockquote><br />Greetings!<br />I try to use gitsm fetcher to fetch bitbu=
cket repository with read-only https access token. SRC_URI looks like this<=
br /><br />SRC_URI =3D "gitsm://******.git;protocol=3Dhttps;branch=3D${BRAN=
CH};user=3Dazoykin:${TOKEN}"<br /><br />This recipe fetches parent reposito=
ry, but is unable to fetch submodule, writing fatal: could not read Usernam=
e for '<a href=3D"https://tps-git.topcon.com'" target=3D"_blank" rel=3D"noo=
pener">https://tps-git.topcon.com'</a>: No such device or address in log.do=
_fetch<br />It happens because url is passed to fetcher function already wi=
th user string. I suggest a patch to fix this issue</blockquote>
</blockquote>
I'm sorry but this is a known WONTFIX bug :<br /><a href=3D"https://bugzill=
a.yoctoproject.org/show_bug.cgi?id=3D13550" target=3D"_blank" rel=3D"noopen=
er">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13550</a><br />See =
: <a href=3D"https://git.openembedded.org/bitbake/tree/lib/bb/fetch2/gitsm.=
py#n127" target=3D"_blank" rel=3D"noopener">https://git.openembedded.org/bi=
tbake/tree/lib/bb/fetch2/gitsm.py#n127</a><br /><br />The only supported wa=
y to do this (that I know of) is to use .netrc as<br />Adrian suggested.<br=
 /><br />Regards,<br />-- <br />Yoann Congal<br />Smile ECS - Tech expert</=
blockquote>

--damLIyyZWcw0rp2kLjcP--

