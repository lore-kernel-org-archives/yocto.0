Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 156B7C79FBB
	for <webhook@archiver.kernel.org>; Thu, 10 Sep 2026 20:00:29 +0000 (UTC)
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.23886.1789070419184345734
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2026 13:00:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=QYIwm45W;
 spf=pass (domain: gmail.com, ip: 74.125.224.49, mailfrom: jpewhacker@gmail.com)
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-671061b015eso104542d50.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2026 13:00:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789070418; cv=none;
        d=google.com; s=arc-20260327;
        b=dD1Q2DTPVyjkoTsOkpQv5X4EwHglCgZfR/eT+2mOt5pG+8s7N2zqZHSzkmFZDxOO3J
         pgj7qC2Bu1UlMa0LPOqpf6wBrg25LHs9w1uVwqyYE9GWnoo3VYJn6s8v0YRhMxKJZ9Rb
         RFnEwRjX2Yfby7KvPQI3WKFBF9JJGzsbuWHLW5pjJnfLe8Z3/BBP5cFy3/K0SI6q7QgF
         MY08gALoOWkccj8txzacCFbIdAS5Ii2bYTca4snIluuyN9kIoeVMz6Icusjf6ARBUlXs
         2hbhHhGyxFxJOSMB5jqdEfaAA+XoJnWZTp4BHllLRcIJCbfpO6SOW+YnqymdjCT5ivmq
         VK4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=fIod7x7iIhjhUc7e9z+wRQeRJzXz8qjRPV+M8acqGQE=;
        fh=OmIBit34vGolAmUGVlVOwl2WiHGbGRffiegO/2+9Z6A=;
        b=NBiE4KHDXx81NwkQ+Zi0sUvnaelNHahllT5Qpk9zQl2baXRSb4HuG74r2uz5aT6bR3
         QPK5P3MWwMBgOBFG3x6TkwwWgA4TFUNVmLlQS8QooDPhYMva7s8NYU/gLFNNShxlCVah
         xfZto72oUnmAhpAU0SoO64eQ9WYkw+iOHQHfu8T35zwbdgUrFNnykBU6oackuPr3MgI9
         BJ9U6vrDPwK9x/FFyZ/4ZUjgiKZlC+HW27pJgU0j0MB6FyeNdavWhvHAfedGdXINeCle
         sOkl6ys5FH+KnmEFQvojtlT6GYFrV9wiK0l2DEXwYHgsN3G4f5NQOMmmmaqhQucgzyMj
         A+sA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789070418; x=1789675218; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fIod7x7iIhjhUc7e9z+wRQeRJzXz8qjRPV+M8acqGQE=;
        b=QYIwm45W731casy0fETkGMzgypnVmRQ96aXiJRk+QDZx0QoItpAS3rV+wwzYJUGc/u
         9OE03gyCB55PRmTB4BqGhbSo16QuV8LTOmV/TOWUuhL1gz/vxyUtp94oLEqHOlnEqdPb
         O9cdubtk3leOhHTmkdDUg/MSiclcIpkT3O2xhQjO0u5SUYG5XIFrTGUT7y1SBk0Y4bmX
         stpHrT7g7zceWUHB9cE7lBh8zMUx0960erMeB5Z9bqjdGyqlVKYVuApQeFShfYX/2+W9
         EMi1Osxz70sR/3lXca56CKTd8kVrFFIIjVRqwzQi5iyynh1KU+2/BL7XWpaaypAvsUW3
         b9VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789070418; x=1789675218;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fIod7x7iIhjhUc7e9z+wRQeRJzXz8qjRPV+M8acqGQE=;
        b=qem7uUCFTMcWLG5nVZBUFsO9zSfYHorFbm3C6s5nyqcsTvPfBvyLWoXB22uBsspGyg
         ABYUogJmgoS1O+MtLO17AnruAH4hvpgB0X6nvHVlgTAdPphfTU/7SlmOfQDuAD6zimF8
         Hz9EMRqu9l0EqgaQU+zFOq2aw+z3Jj8zaLAuaaBTpPUeNqxX+T9nCtpVodO4bhHTr/Ni
         UjoT39wXXsRLG6fhMjAB0Z8UvuTuNex6r523JTXbtef1f/IBdpLb4DjUwIOD5a9IJS+z
         LBhTKFTYgYZvbavIq/m7AM5dc95YFytHWUFXgiXLHFH2S4p3U8Z4AHbyX8OKADWRbycD
         Fhpw==
X-Gm-Message-State: AFuF++lgqLku/m0J5rBdfT5//Dkl0pe3wUJ8r7dimZLbWdwHNsxkkwsG
	nCuUl0UH0TBzOTSE1sRJ9gVoUEZ8CAWoPqqaSoWww2dsZgwam1PMdlm4rMlBoFl/mUq8lzlPEAS
	gCGGUcy076A/xuc5A/Aqu2faPnm9T4QbHcg==
X-Gm-Gg: AYBFou3ZmXRFw0zz9S0x+jJ0aW+cMTeedgu5hj+uBgSRxW6PpANbqHs0WhwHjxgF0y1
	/PdXvSWNGSu9vlA75ZOmdVm8o9be641ThZA7lS3ULWHdMWwThZbRh0A/YbcZN1YM6EOEL1XWi/m
	WuvhU+MASSGAz1CSNsoR4EJ0YI42+tx8hhEmqB8xV2vkcbLCTA2eaJ/J37fVOrGE50k/nVWbV3X
	b6tkG5Jcy5+OKLdMkbp/ujBSCr9O9fj6DQ3Js+jH2rjFtSAWsZTRGFrIB1o6srLNRqPstjdNMOI
	wSumsIZ5sayvBTEmSsBIo7a2K02w4r21/A5E0rTcq1cClR1NiufM7IErgCG1UupKO2cg7A==
X-Received: by 2002:a05:690e:4892:10b0:66f:c2c7:3a4f with SMTP id
 956f58d0204a3-6712455cce4mr451430d50.19.1789070417681; Thu, 10 Sep 2026
 13:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <p7FW.1789069372704480303.Aepi@lists.yoctoproject.org>
In-Reply-To: <p7FW.1789069372704480303.Aepi@lists.yoctoproject.org>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 10 Sep 2026 14:00:06 -0600
X-Gm-Features: AcwNN1VeKeQJDN-_mT9stMDu9lJDlQFFPk0dB3pZlkSVNMB8rMJ_e9mPSpBDwyY
Message-ID: <CAJdd5GYeUhZg6x6EK9eFt8EHzXVUUSO==3R+4nBNDiNFkM126A@mail.gmail.com>
Subject: Re: [yocto] Hashserve OEEquivHash unihash issue
To: yocto@lists.yoctoproject.org, wanwizard@openpli.org
Content-Type: multipart/alternative; boundary="000000000000b96147065b266aca"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2026 20:00:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66718

--000000000000b96147065b266aca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 10, 2026 at 1:42=E2=80=AFPM Harro Verton via lists.yoctoproject=
.org
<wanwizard=3Dopenpli.org@lists.yoctoproject.org> wrote:

> Hello Community,
>
> First post, and a relative OE newbie, so please bear with me.
>
> I've inherited a build environment of an open source project (
> https://github.com/OpenPLi/openpli-oe-core ). The project builds images
> for some 120 different devices, with MIPSEL or ARM SoCs, covering 5
> different ARCHs.
>
> All are build from a single repository, containing the submodules for
> Bitbake, Openembedded-Core and meta-openembedded, and all required BSP's
> for these devices. They all share sstate, a PR server, and a Hashserve
> server.
>
> In order to avoid packages build for the ARCH feed rebuilding for all
> subsequent MACHINEs using that same ARCH, my predecessor has introduced
> HashServe, using OEEquivHash.
>
> This works fine in our previous release (which is based on Hardknott), an=
d
> worked fine in our current release (which is based on Scarthgap), until a
> few months ago.
> We want to start with the next release, based on Wrynose, but we can't
> until we can make a final Scarthgap release, which we can't because of th=
is
> issue.
>
> I've run a  test, building two different MACHINEs with the same ARCH
> (identical hardware, different brands, different drivers, so separate
> BSPs), with an empty build directory (so no sstate cache, new PR database=
,
> no hash data). For the second machine, 230 tasks are recorded as having a
> changed unihash, which triggers a recipe rebuild for the second MACHINE.
>
> I've enabled hashserve debugging, and these recipes log something like:
> log.do_package_write_ipk.212153:DEBUG: Reported task
> efe6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e as uniha=
sh
> efe6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e to
> unix:///data/openpli/oe/scarthgap/build/hashserve.sock
> log.do_package_write_ipk.2223688:DEBUG: Task
> 8da90b016d0a41cac6ce46c20d8ee64d5e7af35687de43c306544508050227e8 unihash
> changed 8da90b016d0a41cac6ce46c20d8ee64d5e7af35687de43c306544508050227e8 =
->
> efe6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e by serve=
r
> unix:///data/openpli/oe/scarthgap/build/hashserve.sock
> so the second build records a changed unihash, which triggers a rebuild o=
f
> the package, and leads to an r0.1 version of the ipk.
>
> All of them but 8 report a unihash change for  do_package_qa, those 8
> also for do_package_write_ipk.
>
> The downside of this is that after device A is flashed with the result of
> the first build, and you do an "opkg list-upgradable", you're presented
> with 182 packages from the ARCH feed shared between the two devices that
> are supposedly changed (but the only change is r0.0 to r0.1 due to the
> rebuild). Apart from the fact that most of our users are not tech savvy,
> several devices are limited on flash memory space, so having to update 18=
0+
> packages every time we have a build run is quite a bit of an issue.
>
> I can't find a reason why this suddenly happens, some of these packages
> are quite basic and don't contain binary code, packages like
> python3-requests for example. And I have no idea how to debug this furthe=
r.
>
> For this test build, Bitbake is at yocto-5.0.19, openembedded-core and
> meta-openembedded are on the scarthgap branch, pulled yesterday.
>
> I've looked at the commit history in our repo, the only time this trio wa=
s
> updated was on July 30th. If I revert that, bitbake goes back to
> yocto-5.0.15 and both OE submodules to a commit in december 2025, which i=
s
> when we started with our Scarthgap branch.
> When I repeat the test build after the revert, only two recipes for the
> ARCH feed are rebuild for the second machine, ffmpeg and gstreamer, both
> are recipes that we override in our own meta layer ( version upgrades to
> those in openembedded ).
>
> So somewhere along the line, something got broken (or how it worked
> changed, and we missed that).
>
> re there fixes in later versions for this issue, that are not backported
> to Scarthgap? How can I debug what exactly causes the unihash to change? =
Or
> better, how do I fix this?
>

Are you using a PR server to automatically bump the PR? There could be some
strange interaction happening between that and the hash server (and TBH,
it's not entirely clear how they should co-exist).

Also, are you running an external hash server? If so, is it the latest
version?


>
> TIA,
>
> Harro Verton, member of the PLi Association
> https://openpli.org
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66715):
> https://lists.yoctoproject.org/g/yocto/message/66715
> Mute This Topic: https://lists.yoctoproject.org/mt/121187356/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> JPEWhacker@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b96147065b266aca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10,=
 2026 at 1:42=E2=80=AFPM Harro Verton via <a href=3D"http://lists.yoctoproj=
ect.org">lists.yoctoproject.org</a> &lt;wanwizard=3D<a href=3D"mailto:openp=
li.org@lists.yoctoproject.org">openpli.org@lists.yoctoproject.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hello=
 Community,</div>
<div>=C2=A0</div>
<div>First post, and a relative OE newbie, so please bear with me.</div>
<div>=C2=A0</div>
<div>I&#39;ve inherited a build environment of an open source project ( <a =
href=3D"https://github.com/OpenPLi/openpli-oe-core" rel=3D"noopener" target=
=3D"_blank">https://github.com/OpenPLi/openpli-oe-core</a> ). The project b=
uilds images for some 120 different devices, with MIPSEL or ARM SoCs, cover=
ing 5 different ARCHs.</div>
<div>=C2=A0</div>
<div>All are build from a single repository, containing the submodules for =
Bitbake, Openembedded-Core and meta-openembedded, and all required BSP&#39;=
s for these devices. They all share sstate, a PR server, and a Hashserve se=
rver.</div>
<div>=C2=A0</div>
<div>In order to avoid packages build for the ARCH feed rebuilding for all =
subsequent MACHINEs using that same ARCH, my predecessor has introduced Has=
hServe, using OEEquivHash.</div>
<div>=C2=A0</div>
<div>This works fine in our previous release (which is based on Hardknott),=
 and worked fine in our current release (which is based on Scarthgap), unti=
l a few months ago. <br>We want to start with the next release, based on Wr=
ynose, but we can&#39;t until we can make a final Scarthgap release, which =
we can&#39;t because of this issue.</div>
<div>=C2=A0</div>
<div>I&#39;ve run a=C2=A0 test, building two different MACHINEs with the sa=
me ARCH (identical hardware, different brands, different drivers, so separa=
te BSPs), with an empty build directory (so no sstate cache, new PR databas=
e, no hash data). For the second machine, 230 tasks are recorded as having =
a changed unihash, which triggers a recipe rebuild for the second MACHINE.<=
br><br>I&#39;ve enabled hashserve debugging, and these recipes log somethin=
g like:</div>
<div><span style=3D"color:rgb(221,221,221);font-family:Menlo,Monaco,Consola=
s,&quot;Courier New&quot;,monospace;font-size:13px;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:left;text-indent:0px;text-transform:none;word-spacin=
g:0px;white-space:pre-wrap;background-color:rgb(39,40,34);text-decoration-s=
tyle:initial;text-decoration-color:initial;display:inline;float:none">log.d=
o_package_write_ipk.212153:DEBUG: Reported task efe6373f8d36e03f92f0198b5c2=
891fba8b459bd1e16ee9043f3e3d85a47c65e as unihash efe6373f8d36e03f92f0198b5c=
2891fba8b459bd1e16ee9043f3e3d85a47c65e to unix:///data/openpli/oe/scarthgap=
/build/hashserve.sock log.do_package_write_ipk.2223688:DEBUG: Task 8da90b01=
6d0a41cac6ce46c20d8ee64d5e7af35687de43c306544508050227e8 unihash changed 8d=
a90b016d0a41cac6ce46c20d8ee64d5e7af35687de43c306544508050227e8 -&gt; efe637=
3f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e by server unix:/=
//data/openpli/oe/scarthgap/build/hashserve.sock</span></div>
<div>so the second build records a changed unihash, which triggers a rebuil=
d of the package, and leads to an r0.1 version of the ipk.</div>
<div>=C2=A0</div>
<div>All of them but 8 report a unihash change for=C2=A0<span style=3D"colo=
r:rgb(221,221,221);font-family:&quot;Open Sans&quot;,sans-serif;font-size:1=
4px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;tex=
t-transform:none;word-spacing:0px;white-space:pre-wrap;background-color:rgb=
(54,57,63);text-decoration-style:initial;text-decoration-color:initial;disp=
lay:inline;float:none"> do_package_qa</span>, those 8 also for <span style=
=3D"color:rgb(221,221,221);font-family:Menlo,Monaco,Consolas,&quot;Courier =
New&quot;,monospace;font-size:13px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:left;text-indent:0px;text-transform:none;word-spacing:0px;white-spac=
e:pre-wrap;background-color:rgb(39,40,34);text-decoration-style:initial;tex=
t-decoration-color:initial;display:inline;float:none">do_package_write_ipk<=
/span>.</div>
<div>=C2=A0</div>
<div>The downside of this is that after device A is flashed with the result=
 of the first build, and you do an &quot;opkg list-upgradable&quot;, you&#3=
9;re presented with 182 packages from the ARCH feed shared between the two =
devices that are supposedly changed (but the only change is r0.0 to r0.1 du=
e to the rebuild). Apart from the fact that most of our users are not tech =
savvy, several devices are limited on flash memory space, so having to upda=
te 180+ packages every time we have a build run is quite a bit of an issue.=
</div>
<div>=C2=A0</div>
<div>I can&#39;t find a reason why this suddenly happens, some of these pac=
kages are quite basic and don&#39;t contain binary code, packages like pyth=
on3-requests for example. And I have no idea how to debug this further.</di=
v>
<div>=C2=A0</div>
<div>For this test build, Bitbake is at yocto-5.0.19, openembedded-core and=
 meta-openembedded are on the scarthgap branch, pulled yesterday.</div>
<div>=C2=A0</div>
<div>I&#39;ve looked at the commit history in our repo, the only time this =
trio was updated was on July 30th. If I revert that, bitbake goes back to y=
octo-5.0.15 and both OE submodules to a commit in december 2025, which is w=
hen we started with our Scarthgap branch.</div>
<div>When I repeat the test build after the revert, only two recipes for th=
e ARCH feed are rebuild for the second machine, ffmpeg and gstreamer, both =
are recipes that we override in our own meta layer ( version upgrades to th=
ose in openembedded ).</div>
<div>=C2=A0</div>
<div>So somewhere along the line, something got broken (or how it worked ch=
anged, and we missed that).</div>
<div>=C2=A0</div>
<div>re there fixes in later versions for this issue, that are not backport=
ed to Scarthgap? How can I debug what exactly causes the unihash to change?=
 Or better, how do I fix this?</div></blockquote><div><br></div><div>Are yo=
u using a PR server to automatically bump the PR? There could be some stran=
ge interaction happening between that and the hash server (and TBH, it&#39;=
s not entirely clear how they should co-exist).=C2=A0</div><div><br></div><=
div>Also, are you running an external hash server? If so, is it the latest =
version?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
<div>=C2=A0</div>
<div>TIA,</div>
<div>=C2=A0</div>
<div>Harro Verton, member of the PLi Association</div>
<div><a href=3D"https://openpli.org" target=3D"_blank">https://openpli.org<=
/a></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66715): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66715" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66715</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/121187356/361=
6693" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/121187356/3616693</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:JPEWhacker@gmail.com" target=3D"_blank">JPEWhack=
er@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000b96147065b266aca--

