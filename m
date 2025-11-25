Return-Path: <jarno.katajainen@solotop.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E0ED0EE01
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 15:39:28 +0000 (UTC)
Subject: Re: [yocto] weston 13.0.1 assert fail #scarthgap
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Jarno" <jarno.katajainen@solotop.fi>
X-Originating-Location: Turku, Southwest Finland, FI (62.78.136.11)
X-Originating-Platform: Linux Chrome 141
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Nov 2025 07:39:28 -0800
References: <NWUB.1763560336855590654.KUb9@lists.yoctoproject.org> <48750926-4ee5-4d46-b452-8d0c0dd680bc@gmail.com> <564360.1763630492381329900@lists.yoctoproject.org> <46e999f4-7254-453d-8414-b019d0381209@gmail.com> <686098.1763993744038185859@lists.yoctoproject.org> <d8c5fc86-eac2-486c-9dec-c03b076a3e5e@gmail.com>
In-Reply-To: <d8c5fc86-eac2-486c-9dec-c03b076a3e5e@gmail.com>
Message-ID: <699212.1764085168440917647@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="j9czXdJ3NgFW8UZC2v9w"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 15:39:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66059

--j9czXdJ3NgFW8UZC2v9w
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

git rev-parse HEAD
5240b5c200e594b494a7f1a8f9d81e7c09bc8939

MACHINE=3Draspberrypi4-64 bitbake -e weston | grep ^SRC_URI
SRC_URI=3D"file://0001-libweston-tools-Include-libgen.h-for-basename-signat=
.patch file://0001-vnc-Allow-neatvnc-in-version-0.8.0.patch file://weston.p=
ng file://weston.desktop file://xwayland.weston-start file://systemd-notify=
.weston-start file://0001-Adapt-weston-to-64-bit-plane-IDs.patch"

After build and flash same behaviour persist.

core dump:

#4 =C2=A00x0000007f93ba55a0 in __assert_fail_base
(fmt=3D0x7f93cbdb70 "%s%s%s:%u: %s%sAssertion `%s' failed.\n%n", assertion=
=3Dassertion@entry=3D0x7f92e6f420 "fb", file=3Dfile@entry=3D0x7f92e6ead0 "/=
usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c", line=3D=
line@entry=3D506, function=3Dfunction@entry=3D0x7f92e70ab0 <__PRETTY_FUNCTI=
ON__.5> "drm_output_find_plane_for_view") at assert.c:96
#5 =C2=A00x0000007f93ba5624 in __assert_fail
(assertion=3Dassertion@entry=3D0x7f92e6f420 "fb", file=3Dfile@entry=3D0x7f9=
2e6ead0 "/usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c=
", line=3Dline@entry=3D506, function=3Dfunction@entry=3D0x7f92e70ab0 <__PRE=
TTY_FUNCTION__.5> "drm_output_find_plane_for_view") at assert.c:105
#6 =C2=A00x0000007f92e6784c in drm_output_find_plane_for_view
(current_lowest_zpos=3D18446744073709551615, scanout_state=3D0x0, mode=3DDR=
M_OUTPUT_PROPOSE_STATE_PLANES_ONLY, pnode=3D0x55812dab90, state=3D0x558137f=
c70) at /usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c:=
506

--j9czXdJ3NgFW8UZC2v9w
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>git rev-parse HEAD<br />5240b5c200e594b494a7f1a8f9d81e7c09bc8939</div>
<div>&nbsp;</div>
<div>MACHINE=3Draspberrypi4-64 bitbake -e weston | grep ^SRC_URI<br />SRC_U=
RI=3D"file://0001-libweston-tools-Include-libgen.h-for-basename-signat.patc=
h file://0001-vnc-Allow-neatvnc-in-version-0.8.0.patch file://weston.png fi=
le://weston.desktop file://xwayland.weston-start file://systemd-notify.west=
on-start file://0001-Adapt-weston-to-64-bit-plane-IDs.patch"</div>
<div>&nbsp;</div>
<div>After build and flash same behaviour persist.</div>
<div>&nbsp;</div>
<div>core dump:</div>
<div>&nbsp;</div>
<div>#4 &nbsp;0x0000007f93ba55a0 in __assert_fail_base<br />&nbsp; &nbsp; (=
fmt=3D0x7f93cbdb70 "%s%s%s:%u: %s%sAssertion `%s' failed.\n%n", assertion=
=3Dassertion@entry=3D0x7f92e6f420 "fb", file=3Dfile@entry=3D0x7f92e6ead0 "/=
usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c", line=3D=
line@entry=3D506, function=3Dfunction@entry=3D0x7f92e70ab0 &lt;__PRETTY_FUN=
CTION__.5&gt; "drm_output_find_plane_for_view") at assert.c:96<br />#5 &nbs=
p;0x0000007f93ba5624 in __assert_fail<br />&nbsp; &nbsp; (assertion=3Dasser=
tion@entry=3D0x7f92e6f420 "fb", file=3Dfile@entry=3D0x7f92e6ead0 "/usr/src/=
debug/weston/13.0.1/libweston/backend-drm/state-propose.c", line=3Dline@ent=
ry=3D506, function=3Dfunction@entry=3D0x7f92e70ab0 &lt;__PRETTY_FUNCTION__.=
5&gt; "drm_output_find_plane_for_view") at assert.c:105<br />#6 &nbsp;0x000=
0007f92e6784c in drm_output_find_plane_for_view<br />&nbsp; &nbsp; (current=
_lowest_zpos=3D18446744073709551615, scanout_state=3D0x0, mode=3DDRM_OUTPUT=
_PROPOSE_STATE_PLANES_ONLY, pnode=3D0x55812dab90, state=3D0x558137fc70) at =
/usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c:506</div=
>
<div>&nbsp;</div>
<div>&nbsp;</div>
</div>

--j9czXdJ3NgFW8UZC2v9w--

