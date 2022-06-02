Return-Path: <scott.threet@konecranes.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFE0C43334
	for <webhook@archiver.kernel.org>; Thu,  2 Jun 2022 12:53:00 +0000 (UTC)
Subject: tc commands in yocto
To: yocto@lists.yoctoproject.org
From: scott.threet@konecranes.com
X-Originating-Location: =?utf-8?b?SGFydmlhbGEsIEthbnRhLUjDpG1lLCBGSSAoNjIu?=
 =?utf-8?b?NjEuOTcuMTEp?=
X-Originating-Platform: Windows Firefox 98
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Jun 2022 05:52:58 -0700
Message-ID: <ZLvj.1654174378520969482.IEN9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XrJ6tvoa9rA9wQ9TO5yT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jun 2022 12:53:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57245

--XrJ6tvoa9rA9wQ9TO5yT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to run tc commands, specifically tc qdisc add dev ppp0 root net=
em delay 2000ms to add network latency so I can check that things at least =
won't break when network connection is poor

whenever I run that command I get:

*RTNETLINK answers: Operation not supported*

I have the following in my kernel defconfig (tried several combinations wit=
h parts of them, these options are taken from 3 sources who all say to enab=
le different config options for tc for some reason):

>=20
> CONFIG_NET_SCHED =3Dy
> CONFIG_NET_SCH_CBQ =3Dy
> CONFIG_NET_SCH_HTB =3Dy
> CONFIG_NET_SCH_CSZ =3Dy
> CONFIG_NET_SCH_PRIO =3Dy
> CONFIG_NET_SCH_RED =3Dy
> CONFIG_NET_SCH_SFQ =3Dy
> CONFIG_NET_SCH_TEQL =3Dy
> CONFIG_NET_SCH_TBF =3Dy
> CONFIG_NET_SCH_GRED =3Dy
> CONFIG_NET_SCH_DSMARK =3Dy
> CONFIG_NET_SCH_INGRESS =3Dy
> CONFIG_NET_QOS =3Dy
> CONFIG_NET_ESTIMATOR =3Dy
> CONFIG_NET_CLS =3Dy
> CONFIG_NET_CLS_TCINDEX =3Dy
> CONFIG_NET_CLS_ROUTE4 =3Dy
> CONFIG_NET_CLS_ROUTE =3Dy
> CONFIG_NET_CLS_FW =3Dy
> CONFIG_NET_CLS_U32 =3Dy
> CONFIG_NET_CLS_RSVP =3Dy
> CONFIG_NET_CLS_RSVP6 =3Dy
> CONFIG_NET_CLS_POLICE =3Dy
> CONFIG_NET_SCH_HFSC =3Dy
> CONFIG_NET_SCH_ATM =3Dy
> CONFIG_NET_SCH_MULTIQ =3Dy
> CONFIG_NET_SCH_NETEM =3Dy
> CONFIG_IP_ADVANCED_ROUTER =3Dy
> CONFIG_IP_MULTIPLE_TABLES =3Dy
> CONFIG_NETFILTER_NETLINK =3Dy
> CONFIG_NETFILTER_NETLINK_QUEUE =3Dy
> CONFIG_NETFILTER_NETLINK_LOG =3Dy
> CONFIG_NF_CT_NETLINK =3Dy
> CONFIG_NETFILTER_XT_TARGET_MARK =3Dy
> CONFIG_SCSI_NETLINK =3Dy
>=20
>=20
>=20
>=20
>=20

thanks for any help

--XrJ6tvoa9rA9wQ9TO5yT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I am trying to run tc commands, specifically <em>tc qdisc add dev ppp0 r=
oot netem delay 2000ms</em> to add network latency so I can check that thin=
gs at least won't break when network connection is poor</p>
<p>whenever I run that command I get:</p>
<p><strong>RTNETLINK answers: Operation not supported</strong></p>
<p>&nbsp;</p>
<p>I have the following in my kernel defconfig (tried several combinations =
with parts of them, these options are taken from 3 sources who all say to e=
nable different config options for tc for some reason):</p>
<blockquote>
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: Conso=
las, 'Courier New', monospace; font-weight: normal; font-size: 14px; line-h=
eight: 19px; white-space: pre;">
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCHED</span><span style=3D"=
color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_CBQ</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_HTB</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_CSZ</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_PRIO</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_RED</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_SFQ</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_TEQL</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_TBF</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_GRED</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_DSMARK</span><span styl=
e=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_INGRESS</span><span sty=
le=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_QOS</span><span style=3D"co=
lor: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_ESTIMATOR</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_CLS</span><span style=3D"co=
lor: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_CLS_TCINDEX</span><span sty=
le=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_CLS_ROUTE4</span><span styl=
e=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_CLS_ROUTE</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_CLS_FW</span><span style=3D=
"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_CLS_U32</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_CLS_RSVP</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_CLS_RSVP6</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_CLS_POLICE</span><span styl=
e=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_HFSC</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_ATM</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_MULTIQ</span><span styl=
e=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NET_SCH_NETEM</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_IP_ADVANCED_ROUTER</span><span =
style=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_IP_MULTIPLE_TABLES</span><span =
style=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NETFILTER_NETLINK</span><span s=
tyle=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NETFILTER_NETLINK_QUEUE</span><=
span style=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NETFILTER_NETLINK_LOG</span><sp=
an style=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NF_CT_NETLINK</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_NETFILTER_XT_TARGET_MARK</span>=
<span style=3D"color: #d4d4d4;">=3Dy</span></div>
<div><span style=3D"color: #9cdcfe;">CONFIG_SCSI_NETLINK</span><span style=
=3D"color: #d4d4d4;">=3Dy</span></div>
</div>
<p>&nbsp;</p>
</blockquote>
<p>&nbsp;</p>
<p>thanks for any help</p>

--XrJ6tvoa9rA9wQ9TO5yT--

