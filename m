Return-Path: <ryan.a.lovelett@saic.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B028C19F32
	for <webhook@archiver.kernel.org>; Thu,  6 Mar 2025 00:23:09 +0000 (UTC)
Subject: Re: [yocto] linux-intel-rt: TUN/TAP Driver Config Not Being Applied #linux #kernel #kernelmodule
To: "Yoann Congal" <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
From: "Ryan Lovelett" <ryan.a.lovelett@saic.com>
X-Originating-Location: US (192.26.8.4)
X-Originating-Platform: Mac Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 Mar 2025 16:23:02 -0800
References: <CAMSfU+7Ret6jgpFneAmj+Kaxp7UDkxQ1RY4a10wzzCZRPcqa=Q@mail.gmail.com>
In-Reply-To: <CAMSfU+7Ret6jgpFneAmj+Kaxp7UDkxQ1RY4a10wzzCZRPcqa=Q@mail.gmail.com>
Message-ID: <359.1741220582976891631@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6dgh4kcGOSztJVtMTaoC"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Mar 2025 00:23:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64926

--6dgh4kcGOSztJVtMTaoC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Right that was my expectation as well. With CONFIG_TAP=3Dy , CONFIG_TUN=3Dy=
 set I should not have to do modprobe tun. Yet when I look at what is in /p=
roc/config.gz it is always a module.

# zgrep CONFIG_TUN /proc/config.gz
CONFIG_TUN=3Dm

I've put everything into a single config and confirmed that the other modul=
es I've enabled are now built-in drivers. However, tap/tun remain modules.

CONFIG_TAP=3Dy
CONFIG_TUN=3Dy
CONFIG_VHOST_NET=3Dy
CONFIG_I6300ESB_WDT=3Dy
CONFIG_NET=3Dy
CONFIG_CAN=3Dy
CONFIG_CAN_VCAN=3Dy
CONFIG_CAN_VXCAN=3Dy
CONFIG_CAN_DEBUG_DEVICES=3Dy
CONFIG_NETFILTER_XTABLES=3Dy
CONFIG_IP_NF_IPTABLES=3Dy
CONFIG_IP_NF_ARPTABLES=3Dy
CONFIG_IP6_NF_IPTABLES=3Dy
CONFIG_AUDIT=3Dy
CONFIG_AUDITSYSCALL=3Dy
CONFIG_NETFILTER_XT_TARGET_AUDIT=3Dy
CONFIG_DM_AUDIT=3Dy
CONFIG_INTEGRITY_AUDIT=3Dy

The only three that do not turn into a built-in drivers are CONFIG_TAP , CO=
NFIG_TUN and CONFIG_VHOST_NET , which relies on the first 2. For now what I=
've done is explicitly add kernel-module-tun as a runtime dependency and no=
w the module is available to modprobe, but this really has me stumped, I sh=
ould not have to modprobe.

--6dgh4kcGOSztJVtMTaoC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Right that was my expectation as well. With <code>CONFIG_TAP=3Dy</code=
>, <code>CONFIG_TUN=3Dy</code> set I should not have to do <code>modprobe t=
un</code>. Yet when I look at what is in <code>/proc/config.gz</code> it is=
 always a module.</div>
<div>&nbsp;</div>
<pre><code># zgrep CONFIG_TUN /proc/config.gz
CONFIG_TUN=3Dm
</code></pre>
<div>&nbsp;</div>
<div>I've put everything into a single config and confirmed that the other =
modules I've enabled are now built-in drivers. However, tap/tun remain modu=
les.</div>
<div>&nbsp;</div>
<pre><code>CONFIG_TAP=3Dy
CONFIG_TUN=3Dy
CONFIG_VHOST_NET=3Dy
CONFIG_I6300ESB_WDT=3Dy
CONFIG_NET=3Dy
CONFIG_CAN=3Dy
CONFIG_CAN_VCAN=3Dy
CONFIG_CAN_VXCAN=3Dy
CONFIG_CAN_DEBUG_DEVICES=3Dy
CONFIG_NETFILTER_XTABLES=3Dy
CONFIG_IP_NF_IPTABLES=3Dy
CONFIG_IP_NF_ARPTABLES=3Dy
CONFIG_IP6_NF_IPTABLES=3Dy
CONFIG_AUDIT=3Dy
CONFIG_AUDITSYSCALL=3Dy
CONFIG_NETFILTER_XT_TARGET_AUDIT=3Dy
CONFIG_DM_AUDIT=3Dy
CONFIG_INTEGRITY_AUDIT=3Dy
</code></pre>
<div>&nbsp;</div>
<div>The only three that do not turn into a built-in drivers are <code>CONF=
IG_TAP</code>, <code>CONFIG_TUN</code> and <code>CONFIG_VHOST_NET</code>, w=
hich relies on the first 2. For now what I've done is explicitly add <code>=
kernel-module-tun</code> as a runtime dependency and now the module is avai=
lable to modprobe, but this really has me stumped, I should not have to mod=
probe.</div>

--6dgh4kcGOSztJVtMTaoC--

