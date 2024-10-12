Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F499CF2585
	for <webhook@archiver.kernel.org>; Sat, 12 Oct 2024 21:20:52 +0000 (UTC)
Subject: Re: [yocto] Currect usage of pkgconfig / find_package(pkgconfig)
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.251.86)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 12 Oct 2024 14:20:44 -0700
References: <CANNYZj9q_5N3hOdf4MD9VeVbO+XfgUHHNg-jv9H2LeHkmErHVA@mail.gmail.com>
In-Reply-To: <CANNYZj9q_5N3hOdf4MD9VeVbO+XfgUHHNg-jv9H2LeHkmErHVA@mail.gmail.com>
Message-ID: <303.1728768044201363035@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Cjfk2P8g8rl8N7ALWBIs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Oct 2024 21:20:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64015

--Cjfk2P8g8rl8N7ALWBIs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 12, 2024 at 11:00 AM, Alexander Kanavin wrote:

>=20
> But what is it actually checking for? Is it something that only A
> would need? If so, then why consumers of A are forced to use the same
> file which contains checks for things they don't actually use?

It is checking for gstreamer libraries. Here's a bit more context, it can v=
ery well be though, that we are using find_package(...) wrongly when it com=
es to Yocto.

Recipe / Project A

Note that the below code snippet is as-is and that I have issues with this =
because the Targets.cmake file eventually contains host paths, meaning when=
 the recipe is not built from scratch but pulled from the sstate-cache for =
example, the build fails because the Targets.cmake file contains paths to r=
ecipe-sysroot, which in the second case do not exist. But this is another i=
ssue, I don't want to bother you with it. Anyway, the code snippet:

find_package(PkgConfig)
pkg_check_modules(GST REQUIRED gstreamer-1.0>=3D1.4)
target_include_directories(A PUBLIC ${GST_INCLUDE_DIRS})
target_compile_options(A PUBLIC ${GST_CFLAGS})
target_link_libraries(A PUBLIC ${GST_LIBRARIES})

Additionally (and I believe this is _the_ issue), our every CMake project w=
rites and exports an additional cmake file, called Deps.cmake, which (1) co=
ntains all the dependencies (find_package(...) calls) and (2) is through th=
e Config.cmake file included by the consumer projects. This means that cons=
umers also call find_package(PkgConfig) through this Config.cmake file, whi=
ch, if pkgconfig is not inherited, fails (as in this case).

While writing this, it occurred to me whether we really need to export the =
Deps.cmake file and especially find_package(PkgConfig) line. So I just perf=
ormed two tests: (1) I removed the find_package(PkgConfig) line from our De=
ps.cmake file and (2) I completely removed the export of the Deps.cmake fil=
e. The result: the Yocto build works in both cases, so I am wondering why w=
e even export the Deps.cmake file through Config.cmake... Maybe because we =
also build on Windows/Ubuntu and export our packages with Conan, I'll doubl=
e check with my colleagues next week.

Aleksandar

>=20
> Alex

--Cjfk2P8g8rl8N7ALWBIs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Sat, Oct 12, 2024 at 11:00 AM, Alexander Kanavin wrote:</div>
<div>
<blockquote>But what is it actually checking for? Is it something that only=
 A<br />would need? If so, then why consumers of A are forced to use the sa=
me<br />file which contains checks for things they don't actually use?</blo=
ckquote>
It is checking for gstreamer libraries. Here's a bit more context, it can v=
ery well be though, that we are using find_package(...) wrongly when it com=
es to Yocto.</div>
<div>&nbsp;</div>
<div>Recipe / Project A</div>
<div>&nbsp;</div>
<div>Note that the below code snippet is as-is and that I have issues with =
this because the Targets.cmake file eventually contains host paths, meaning=
 when the recipe is not built from scratch but pulled from the sstate-cache=
 for example, the build fails because the Targets.cmake file contains paths=
 to recipe-sysroot, which in the second case do not exist. But this is anot=
her issue, I don't want to bother you with it. Anyway, the code snippet:</d=
iv>
<div>&nbsp;</div>
<div>find_package(PkgConfig)</div>
<div>pkg_check_modules(GST REQUIRED gstreamer-1.0&gt;=3D1.4)</div>
<div>target_include_directories(A PUBLIC ${GST_INCLUDE_DIRS})<br />target_c=
ompile_options(A PUBLIC ${GST_CFLAGS})<br />target_link_libraries(A PUBLIC =
${GST_LIBRARIES})</div>
<div>&nbsp;</div>
<div>Additionally (and I believe this is _the_ issue), our every CMake proj=
ect writes and exports an additional cmake file, called Deps.cmake, which (=
1) contains all the dependencies (find_package(...) calls) and (2) is throu=
gh the Config.cmake file included by the consumer projects. This means that=
 consumers also call find_package(PkgConfig) through this Config.cmake file=
, which, if pkgconfig is not inherited, fails (as in this case).&nbsp;</div=
>
<div>&nbsp;</div>
<div>While writing this, it occurred to me whether we really need to export=
 the Deps.cmake file and especially find_package(PkgConfig) line. So I just=
 performed two tests: (1) I removed the find_package(PkgConfig) line from o=
ur Deps.cmake file and (2) I completely removed the export of the Deps.cmak=
e file. The result: the Yocto build works in both cases, so I am wondering =
why we even export the Deps.cmake file through Config.cmake... Maybe becaus=
e we also build on Windows/Ubuntu and export our packages with Conan, I'll =
double check with my colleagues next week.</div>
<div>&nbsp;</div>
<div>Aleksandar</div>
<div><br />
<blockquote>Alex</blockquote>
</div>

--Cjfk2P8g8rl8N7ALWBIs--

