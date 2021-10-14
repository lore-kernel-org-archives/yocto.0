Return-Path: <crawford.benjamin15@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2999C433F5
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 16:23:23 +0000 (UTC)
Subject: docker fragment missing conntrack and netfilter entries?
 #meta-virtualization
To: yocto@lists.yoctoproject.org
From: crawford.benjamin15@gmail.com
X-Originating-Location: Cambridge, England, GB (217.140.106.55)
X-Originating-Platform: Linux Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 14 Oct 2021 09:23:22 -0700
Message-ID: <i1rt.1634228602998685993.yIPa@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kLCu1aBnh4A3BjqfBFfe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 16:23:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55074

--kLCu1aBnh4A3BjqfBFfe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have just completed a bringup of Poky on the ODROID N2+ platform, but not=
iced that Docker failed to start, complaining that it could not load the "n=
f_conntrack_netlink" module.
After checking docker.cfg, I noticed that a few configuration options I exp=
ected were missing.

Shouldn't the following be added: (?)

CONFIG_NETFILTER_NETLINK=3Dm
CONFIG_NT_CT_NETLINK=3Dm

CONFIG_NETFILTER_XT_MATCH_CONNTRACK=3Dm

Thanks,
Ben

--kLCu1aBnh4A3BjqfBFfe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I have just completed a bringup of Poky on the ODROID N2+ pl=
atform, but noticed that Docker failed to start, complaining that it could =
not load the "nf_conntrack_netlink" module.<br />After checking docker.cfg,=
 I noticed that a few configuration options I expected were missing.<br /><=
br />Shouldn't the following be added: (?)<br /><br />
<div class=3D"line number1 index0 alt2" style=3D"margin: 0px; padding: 0px =
1em 0px 0em; border-radius: 0px; background-image: none; background-positio=
n: initial; background-size: initial; background-repeat: initial; backgroun=
d-attachment: initial; background-origin: initial; background-clip: initial=
; border: 0px; inset: auto; float: none; height: auto; line-height: 20px; o=
utline: 0px; overflow: visible; position: static; vertical-align: baseline;=
 width: auto; box-sizing: content-box; font-family: Consolas, 'Bitstream Ve=
ra Sans Mono', 'Courier New', Courier, monospace; min-height: inherit; whit=
e-space: nowrap;"><code class=3D"java plain" style=3D"font-family: Consolas=
, 'Bitstream Vera Sans Mono', 'Courier New', Courier, monospace; border-rad=
ius: 0px; background: none; border: 0px; inset: auto; float: none; height: =
auto; line-height: 20px; margin: 0px; outline: 0px; overflow: visible; padd=
ing: 0px; position: static; vertical-align: baseline; width: auto; box-sizi=
ng: content-box; font-size: 14px; min-height: inherit; color: #000000 !impo=
rtant;">CONFIG_NETFILTER_NETLINK=3Dm</code></div>
<div class=3D"line number2 index1 alt1" style=3D"margin: 0px; padding: 0px =
1em 0px 0em; border-radius: 0px; background-image: none; background-positio=
n: initial; background-size: initial; background-repeat: initial; backgroun=
d-attachment: initial; background-origin: initial; background-clip: initial=
; border: 0px; inset: auto; float: none; height: auto; line-height: 20px; o=
utline: 0px; overflow: visible; position: static; vertical-align: baseline;=
 width: auto; box-sizing: content-box; font-family: Consolas, 'Bitstream Ve=
ra Sans Mono', 'Courier New', Courier, monospace; min-height: inherit; whit=
e-space: nowrap;"><code class=3D"java plain" style=3D"font-family: Consolas=
, 'Bitstream Vera Sans Mono', 'Courier New', Courier, monospace; border-rad=
ius: 0px; background: none; border: 0px; inset: auto; float: none; height: =
auto; line-height: 20px; margin: 0px; outline: 0px; overflow: visible; padd=
ing: 0px; position: static; vertical-align: baseline; width: auto; box-sizi=
ng: content-box; font-size: 14px; min-height: inherit; color: #000000 !impo=
rtant;">CONFIG_NT_CT_NETLINK=3Dm</code></div>
<p class=3D"line number3 index2 alt2" style=3D"margin: 0px; padding: 0px 1e=
m 0px 0em; border-radius: 0px; background-image: none; background-position:=
 initial; background-size: initial; background-repeat: initial; background-=
attachment: initial; background-origin: initial; background-clip: initial; =
border: 0px; inset: auto; float: none; height: auto; line-height: 20px; out=
line: 0px; overflow: visible; position: static; vertical-align: baseline; w=
idth: auto; box-sizing: content-box; font-family: Consolas, 'Bitstream Vera=
 Sans Mono', 'Courier New', Courier, monospace; min-height: inherit; white-=
space: nowrap;"><code class=3D"java plain" style=3D"font-family: Consolas, =
'Bitstream Vera Sans Mono', 'Courier New', Courier, monospace; border-radiu=
s: 0px; background: none; border: 0px; inset: auto; float: none; height: au=
to; line-height: 20px; margin: 0px; outline: 0px; overflow: visible; paddin=
g: 0px; position: static; vertical-align: baseline; width: auto; box-sizing=
: content-box; font-size: 14px; min-height: inherit; color: #000000 !import=
ant;">CONFIG_NETFILTER_XT_MATCH_CONNTRACK=3Dm<br /><br /><span style=3D"fon=
t-family: helvetica;">Thanks,</span><br /><span style=3D"font-family: helve=
tica;">Ben</span></code></p>

--kLCu1aBnh4A3BjqfBFfe--

