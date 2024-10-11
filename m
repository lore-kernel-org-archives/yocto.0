Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFCDD0EE30
	for <webhook@archiver.kernel.org>; Fri, 11 Oct 2024 19:49:12 +0000 (UTC)
Subject: Re: [yocto] Currect usage of pkgconfig / find_package(pkgconfig)
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.251.86)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Oct 2024 12:49:11 -0700
References: <CANNYZj-M=WJCA-ypRYpi3svbVb3ciJH2sd1VeEyQP5cXjevXcg@mail.gmail.com>
In-Reply-To: <CANNYZj-M=WJCA-ypRYpi3svbVb3ciJH2sd1VeEyQP5cXjevXcg@mail.gmail.com>
Message-ID: <24753.1728676151495526216@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uV7hKX8ONFgEr7isKjEm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 19:49:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64011

--uV7hKX8ONFgEr7isKjEm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 11, 2024 at 10:14 AM, Alexander Kanavin wrote:

>=20
> On Fri, 11 Oct 2024 at 07:31, Aleksandar Nikolic via
> lists.yoctoproject.org
> <aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
>> I have recipe A that builds a cmake project which, among other
>> dependencies, also has "find_package(pkgconfig)", so, I inherited the
>> pkgconfig class in the recipe. This cmake project is used by other
>> projects since it builds a .so, thus I am also exporting the AConfig.cma=
ke
>> file, which contains the "find_package(pkgconfig)" call. This works well=
,
>> the project is built and the pkg-config binary is in recipe-sysroot-nati=
ve
>> (as expected).
>>=20
>> Recipe B builds another cmake project, which depends on the cmake projec=
t
>> A. Thus, I added recipe A to recipe B's DEPENDS. As expected, this nicel=
y
>> copies everything needed from recipe A (the .so file, the headers, the
>> AConfig.cmake and ATargets.cmake, etc.). However, (expectedly?) it does
>> not copy the pkg-config binary along with it, thus building recipe B
>> fails, because the "find_package(pkgconfig)" call from the AConfig.cmake
>> file fails.
>>=20
>> Is the above usage of PkgConfig correct? I understand the pkg-config
>> binary from recipe A's recipe-sysroot-native should not be copied to
>> recipe B's recipe-sysroot-native, but still don't understand how this al=
l
>> is supposed to work. Shouldn't all dependencies from recipe A also be
>> available for recipe B?
>>=20
>> It goes without saying, when I inherit the pkgconfig class in recipe B,
>> everything works as expected (because the pkg-config binary is found in
>> recipe-sysroot-native of recipe B), but this is also not correct, as
>> recipe B does not really depend on pkgconfig and shouldn't even know abo=
ut
>> it.
>=20
> Build time dependencies on executables aren't transitive like that. If
> A needs executable X during its own build, this does not mean that B
> (which requires A) would need that same executable.

I was thinking this, thanks for clearing it up! And yes, this does make sen=
se!

>=20
> You either need to split .cmake files to have one for own build of A
> (with pkg-config call), and one for consumers of A (without pkg-config
> call), or write a bbclass for consumers that contains both DEPENDS on
> A and inherit pkgconfig.

Hm, I have a question regarding this idea (please ignore it if it goes out =
of scope for Yocto).
The A cmake project calls find_package(PkgConfig) because it uses the comma=
nd pkg_check_modules(). AFAIK this command just looks for modules, so I nee=
d this in every cmake project which depends on A, basically meaning inherit=
ing pkconfig.bbclass is the only solution here.

Aleksandar

>=20
> Alex

--uV7hKX8ONFgEr7isKjEm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Fri, Oct 11, 2024 at 10:14 AM, Alexander Kanavin wrote:</div>
<div>
<blockquote>On Fri, 11 Oct 2024 at 07:31, Aleksandar Nikolic via<br />lists=
.yoctoproject.org<br />&lt;aleksandar.nikolic010=3Dgmail.com@lists.yoctopro=
ject.org&gt; wrote:<br />
<blockquote>I have recipe A that builds a cmake project which, among other =
dependencies, also has "find_package(pkgconfig)", so, I inherited the pkgco=
nfig class in the recipe. This cmake project is used by other projects sinc=
e it builds a .so, thus I am also exporting the AConfig.cmake file, which c=
ontains the "find_package(pkgconfig)" call. This works well, the project is=
 built and the pkg-config binary is in recipe-sysroot-native (as expected).=
<br /><br />Recipe B builds another cmake project, which depends on the cma=
ke project A. Thus, I added recipe A to recipe B's DEPENDS. As expected, th=
is nicely copies everything needed from recipe A (the .so file, the headers=
, the AConfig.cmake and ATargets.cmake, etc.). However, (expectedly?) it do=
es not copy the pkg-config binary along with it, thus building recipe B fai=
ls, because the "find_package(pkgconfig)" call from the AConfig.cmake file =
fails.<br /><br />Is the above usage of PkgConfig correct? I understand the=
 pkg-config binary from recipe A's recipe-sysroot-native should not be copi=
ed to recipe B's recipe-sysroot-native, but still don't understand how this=
 all is supposed to work. Shouldn't all dependencies from recipe A also be =
available for recipe B?<br /><br />It goes without saying, when I inherit t=
he pkgconfig class in recipe B, everything works as expected (because the p=
kg-config binary is found in recipe-sysroot-native of recipe B), but this i=
s also not correct, as recipe B does not really depend on pkgconfig and sho=
uldn't even know about it.</blockquote>
Build time dependencies on executables aren't transitive like that. If<br /=
>A needs executable X during its own build, this does not mean that B<br />=
(which requires A) would need that same executable.</blockquote>
I was thinking this, thanks for clearing it up! And yes, this does make sen=
se!</div>
<div><br />
<blockquote>You either need to split .cmake files to have one for own build=
 of A<br />(with pkg-config call), and one for consumers of A (without pkg-=
config<br />call), or write a bbclass for consumers that contains both DEPE=
NDS on<br />A and inherit pkgconfig.</blockquote>
Hm, I have a question regarding this idea (please ignore it if it goes out =
of scope for Yocto).</div>
<div>The A cmake project calls find_package(PkgConfig) because it uses the =
command pkg_check_modules(). AFAIK this command just looks for modules, so =
I need this in every cmake project which depends on A, basically meaning in=
heriting pkconfig.bbclass is the only solution here.</div>
<div>&nbsp;</div>
<div>Aleksandar&nbsp;</div>
<div><br />
<blockquote>Alex</blockquote>
</div>

--uV7hKX8ONFgEr7isKjEm--

