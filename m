Return-Path: <jarno.katajainen@solotop.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DB7CF34AD
	for <webhook@archiver.kernel.org>; Wed, 19 Nov 2025 13:52:17 +0000 (UTC)
Subject: weston 13.0.1 assert fail  #scarthgap
To: yocto@lists.yoctoproject.org
From: "Jarno" <jarno.katajainen@solotop.fi>
X-Originating-Location: Turku, Southwest Finland, FI (62.78.136.11)
X-Originating-Platform: Linux Chrome 141
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Nov 2025 05:52:16 -0800
Message-ID: <NWUB.1763560336855590654.KUb9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Z7n7iGVxqjq32xlXPxgM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Nov 2025 13:52:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66035

--Z7n7iGVxqjq32xlXPxgM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

anybody willing to share guidance or solution to overcome known (?) bug on =
weston crash. I'm able to get weston up and running but when ever moving mo=
use weston crashes. From gdb stack:

#5 =C2=A00x0000007f9ac35624 in __assert_fail
(assertion=3Dassertion@entry=3D0x7f99eff420 "fb", file=3Dfile@entry=3D0x7f9=
9efead0 "/usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c=
", line=3Dline@entry=3D506, function=3Dfunction@entry=3D0x7f99f00ab0 <__PRE=
TTY_FUNCTION__.5> "drm_output_find_plane_for_view") at assert.c:105
#6 =C2=A00x0000007f99ef784c in drm_output_find_plane_for_view
(current_lowest_zpos=3D18446744073709551615, scanout_state=3D0x0, mode=3DDR=
M_OUTPUT_PROPOSE_STATE_PLANES_ONLY, pnode=3D0x55b20579b0, state=3D0x55b1f3d=
0e0)
at /usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c:506

--Z7n7iGVxqjq32xlXPxgM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>anybody willing to share guidance or solution to overcome known (?) bu=
g on weston crash. I'm able to get weston up and running but when ever movi=
ng mouse weston crashes. From gdb stack:</div>
<div>&nbsp;</div>
<div>#5 &nbsp;0x0000007f9ac35624 in __assert_fail<br />&nbsp; &nbsp; (asser=
tion=3Dassertion@entry=3D0x7f99eff420 "fb", file=3Dfile@entry=3D0x7f99efead=
0 "/usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c", lin=
e=3Dline@entry=3D506, function=3Dfunction@entry=3D0x7f99f00ab0 &lt;__PRETTY=
_FUNCTION__.5&gt; "drm_output_find_plane_for_view") at assert.c:105<br />#6=
 &nbsp;0x0000007f99ef784c in drm_output_find_plane_for_view<br />&nbsp; &nb=
sp; (current_lowest_zpos=3D18446744073709551615, scanout_state=3D0x0, mode=
=3DDRM_OUTPUT_PROPOSE_STATE_PLANES_ONLY, pnode=3D0x55b20579b0, state=3D0x55=
b1f3d0e0)<br />&nbsp; &nbsp; at /usr/src/debug/weston/13.0.1/libweston/back=
end-drm/state-propose.c:506</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--Z7n7iGVxqjq32xlXPxgM--

