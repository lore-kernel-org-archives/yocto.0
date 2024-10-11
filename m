Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D60D0EE31
	for <webhook@archiver.kernel.org>; Fri, 11 Oct 2024 19:58:12 +0000 (UTC)
Subject: Re: [yocto] Currect usage of pkgconfig / find_package(pkgconfig)
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.251.86)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Oct 2024 12:58:07 -0700
References: <6AF5B7D9-5BE5-4262-B252-E912285BD591@arm.com>
In-Reply-To: <6AF5B7D9-5BE5-4262-B252-E912285BD591@arm.com>
Message-ID: <20572.1728676687865105553@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OXsdsdqruaKCzpskdGSS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 19:58:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64012

--OXsdsdqruaKCzpskdGSS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 11, 2024 at 01:01 PM, Ross Burton wrote:

>=20
> On 11 Oct 2024, at 06:31, Aleksandar Nikolic via lists.yoctoproject.org
> <aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
>> It goes without saying, when I inherit the pkgconfig class in recipe B,
>> everything works as expected (because the pkg-config binary is found in
>> recipe-sysroot-native of recipe B), but this is also not correct, as
>> recipe B does not really depend on pkgconfig and shouldn't even know abo=
ut
>> it.
>=20
> But it does: it=E2=80=99s calling cmake macros that use pkgconfig. Inheri=
ting the
> class is the right thing to do here.

I misspelled a bit, I was going to say "recipe B does not directly depend o=
n pkgconfig, but rather through recipe A". What I meant by it was: I see re=
cipe A as a blackbox which is supposed to bring all its dependencies with i=
t and it does, except binaries (why they are not here has already been clea=
red up by Alex). I was just thinking "If I didn't know what recipe A depend=
s on, but only that my recipe B depends on A, I would never inherit pkgconf=
ig as recipe B does not know about this dependency".=C2=A0But then again, I=
 fully understand why dependencies on executables aren't transitive in Yoct=
o.

Aleksandar

>=20
> Ross

--OXsdsdqruaKCzpskdGSS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Fri, Oct 11, 2024 at 01:01 PM, Ross Burton wrote:</div>
<div>
<blockquote>On 11 Oct 2024, at 06:31, Aleksandar Nikolic via lists.yoctopro=
ject.org &lt;aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org&gt; w=
rote:<br />
<blockquote>It goes without saying, when I inherit the pkgconfig class in r=
ecipe B, everything works as expected (because the pkg-config binary is fou=
nd in recipe-sysroot-native of recipe B), but this is also not correct, as =
recipe B does not really depend on pkgconfig and shouldn't even know about =
it.</blockquote>
But it does: it&rsquo;s calling cmake macros that use pkgconfig. Inheriting=
 the class is the right thing to do here.</blockquote>
I misspelled a bit, I was going to say "recipe B does not directly depend o=
n pkgconfig, but rather through recipe A". What I meant by it was: I see re=
cipe A as a blackbox which is supposed to bring all its dependencies with i=
t and it does, except binaries (why they are not here has already been clea=
red up by Alex). I was just thinking "If I didn't know what recipe A depend=
s on, but only that my recipe B depends on A, I would never inherit pkgconf=
ig as recipe B does not know about this dependency".&nbsp;But then again, I=
 fully understand why <span style=3D"color: #333333; font-family: system-ui=
, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Ari=
al, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', '=
Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-ligatu=
res: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spac=
e: pre-wrap; background-color: #ffffff; text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial; display: i=
nline !important; float: none;">dependencies on executables aren't transiti=
ve</span> in Yocto.</div>
<div>&nbsp;</div>
<div>Aleksandar</div>
<div><br />
<blockquote>Ross</blockquote>
</div>

--OXsdsdqruaKCzpskdGSS--

