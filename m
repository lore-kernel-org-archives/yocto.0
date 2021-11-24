Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0D8C433F5
	for <webhook@archiver.kernel.org>; Wed, 24 Nov 2021 14:05:56 +0000 (UTC)
Subject: Re: User configuration & host contamination
To: yocto@lists.yoctoproject.org
From: "Jeffrey Simons" <jeffrey.simons@boonedam.com>
X-Originating-Location: Assendelft, North Holland, NL (178.84.56.61)
X-Originating-Platform: Linux Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Nov 2021 06:05:56 -0800
References: 
 <AM0PR0702MB3761E551236BFCE0AC36B57DFE949@AM0PR0702MB3761.eurprd07.prod.outlook.com>
In-Reply-To: 
 <AM0PR0702MB3761E551236BFCE0AC36B57DFE949@AM0PR0702MB3761.eurprd07.prod.outlook.com>
Message-ID: <9905.1637762756025711481@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mGd7gwYa2Ic0SuD68BiU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Nov 2021 14:05:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55405

--mGd7gwYa2Ic0SuD68BiU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 11, 2021 at 03:34 PM, Jeffrey Simons wrote:

>=20
> Hi Manuel,
>=20
>=20
>> Subject: Re: [yocto] User configuration & host contamination
>>=20
>> Hi Jeffrey,
>>=20
>> Does the recipe which builds the application DEPEND on the recipe which
>> sets up the user? This is what I would try. If I understand
>> things correctly, Yocto/Bitbake provides every recipe a pristine
>> environment unnaffected from other recipes going into the same image.
>> For example, if you want to link your application against some libraries
>> provided by other recipes, you need to add them to DEPENDS.
>> That populates your build environment with that other recipes output. I'=
m
>> not sure this applies to user accounts as well, but I guess it's worth a
>> try.
>>=20
>> Please note I probably used the termins "recipe" and "package"
>> incorrectly.
>>=20
>> Hope this helps,
>> Manuel
>=20
> Thank you for your reply and suggestion.
> I already have a dependency on the user-configuration script, see the
> below snippet from my recipe.
>=20
> # Compile-time dependencies for testapp
> DEPENDS =3D "user-configuration"
>=20
> # Run-time dependencies for testapp
> RDEPENDS_${PN} +=3D "rsyslog \
>=20
> Unfortunately that did not work, I have seen some suggestions on
> stack-overflow where they added the user multiple times per recipe by
> using extrauseradd (I believe).
> That seems a bit weird to me to add every time the same user, also the
> drawback is that if the user changes then I have to adjust all recipes
> that rely on that specific user.
> What I did today to circumvent the issue is to assign the user by
> reference of UID and GID, but I'm not sure if this is the intended Yocto
> way. As you stated before
> Yocto presents you with a pristine environment with all information
> present, so I would expect that my user is there. Perhaps I did not
> include the user-configuration
> correctly?
> I did include the user-configuration by adding it into our distribution
> description, see the next coding snippet.
>=20
> #
> # Usernames that will be used within the distro.
> # Can be changed when desired, each recipe must use this user for the
> application.
> #
> TEST_USER =3D "testuser"
> TEST_USER_UID =3D "1200"
>=20
> DISTRO_EXTRA_RDEPENDS +=3D "user-configuration"
>=20
> Can you or any one else clarify if this is the correct way or not?
>=20
> Thank you in advance.
>=20
> Jeffrey Simons
>=20
> Software Engineer
> Royal Boon Edam International B.V.

Hi All,

Can anyone elaborate on my fix if this is the correct way, or point me in t=
he correct direction.

With kind regards,
Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.

--mGd7gwYa2Ic0SuD68BiU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 11, 2021 at 03:34 PM, Jeffrey Simons wrote:<br />
<blockquote>Hi Manuel,<br /><br />
<blockquote>Subject: Re: [yocto] User configuration &amp; host contaminatio=
n<br /><br />Hi Jeffrey,<br /><br />Does the recipe which builds the applic=
ation DEPEND on the recipe which sets up the user? This is what I would try=
. If I understand <br />things correctly, Yocto/Bitbake provides every reci=
pe a pristine environment unnaffected from other recipes going into the sam=
e image. <br />For example, if you want to link your application against so=
me libraries provided by other recipes, you need to add them to DEPENDS. <b=
r />That populates your build environment with that other recipes output. I=
'm not sure this applies to user accounts as well, but I guess it's worth a=
 try.<br /><br />Please note I probably used the termins "recipe" and "pack=
age" incorrectly.<br /><br />Hope this helps,<br />Manuel</blockquote>
Thank you for your reply and suggestion.<br />I already have a dependency o=
n the user-configuration script, see the below snippet from my recipe.<br /=
><br /># Compile-time dependencies for testapp<br />DEPENDS =3D "user-confi=
guration"<br /><br /># Run-time dependencies for testapp<br />RDEPENDS_${PN=
} +=3D "rsyslog \<br /><br />Unfortunately that did not work, I have seen s=
ome suggestions on stack-overflow where they added the user multiple times =
per recipe by using extrauseradd (I believe).<br />That seems a bit weird t=
o me to add every time the same user, also the drawback is that if the user=
 changes then I have to adjust all recipes that rely on that specific user.=
<br />What I did today to circumvent the issue is to assign the user by ref=
erence of UID and GID, but I'm not sure if this is the intended Yocto way. =
As you stated before<br />Yocto presents you with a pristine environment wi=
th all information present, so I would expect that my user is there. Perhap=
s I did not include the user-configuration<br />correctly?<br />I did inclu=
de the user-configuration by adding it into our distribution description, s=
ee the next coding snippet.<br /><br />#<br /># Usernames that will be used=
 within the distro.<br /># Can be changed when desired, each recipe must us=
e this user for the application.<br />#<br />TEST_USER =3D "testuser"<br />=
TEST_USER_UID =3D "1200"<br /><br />DISTRO_EXTRA_RDEPENDS +=3D "user-config=
uration" <br /><br />Can you or any one else clarify if this is the correct=
 way or not?<br /><br />Thank you in advance.<br /><br />Jeffrey Simons<br =
/><br />Software Engineer<br />Royal Boon Edam International B.V.</blockquo=
te>
Hi All,<br /><br />Can anyone elaborate on my fix if this is the correct wa=
y, or point me in the correct direction.<br /><br />With kind regards,<br /=
><span style=3D"white-space: pre-wrap;">Jeffrey Simons</span><br style=3D"w=
hite-space: pre-wrap;" /><br style=3D"white-space: pre-wrap;" /><span style=
=3D"white-space: pre-wrap;">Software Engineer</span><br style=3D"white-spac=
e: pre-wrap;" /><span style=3D"white-space: pre-wrap;">Royal Boon Edam Inte=
rnational B.V.</span>

--mGd7gwYa2Ic0SuD68BiU--

