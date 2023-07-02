Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0DEEB64D9
	for <webhook@archiver.kernel.org>; Sun,  2 Jul 2023 20:30:47 +0000 (UTC)
Received: from mailout01.t-online.de (mailout01.t-online.de [194.25.134.80])
 by mx.groups.io with SMTP id smtpd.web10.13686.1688329844771408363
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jul 2023 13:30:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.80, mailfrom: f_l_k@t-online.de)
Received: from fwd71.dcpf.telekom.de (fwd71.aul.t-online.de [10.223.144.97])
	by mailout01.t-online.de (Postfix) with SMTP id 022EA77DC;
	Sun,  2 Jul 2023 22:30:36 +0200 (CEST)
Received: from [192.168.178.156] ([84.154.171.62]) by fwd71.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1qG3iN-38aZlI0; Sun, 2 Jul 2023 22:30:35 +0200
Date: Sun, 02 Jul 2023 22:30:29 +0200
From: f_l_k@t-online.de
Subject: Re: [yocto] Building Tailscale with Yocto #golang
To: przemek.recha@gmail.com
Cc: yocto@lists.yoctoproject.org
Message-Id: <TMR6XR.EE45UBD6649W1@t-online.de>
In-Reply-To: <4HqO.1688327140014497685.1oIK@lists.yoctoproject.org>
References: <4HqO.1688327140014497685.1oIK@lists.yoctoproject.org>
X-Mailer: geary/43.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-AHKY29uWNuBHBN/Jg98B"
X-TOI-EXPURGATEID: 150726::1688329835-39BCD7D8-71D6B13D/0/0 CLEAN NORMAL
X-TOI-MSGID: 93a9a913-ba86-4829-96d6-f2fb7aef64ea
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jul 2023 20:30:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60492

--=-AHKY29uWNuBHBN/Jg98B
Content-Type: text/plain; charset=us-ascii; format=flowed

You need to allow network connection for the do_compile task

do_compile[network] = "1"


On Sun, Jul 2 2023 at 12:45:40 PM -0700, przemek.recha@gmail.com wrote:
> Hi!
> I'm trying to build Tailscale with Yocto
> This is me recipe:
> 
> inherit go-mod
> 
> SRC_URI = 
> "git://github.com/tailscale/tailscale;protocol=https;branch=main"
> SRCREV = "30d9201a11ebc2e3a0f17bf8963956b77dadeb5d"
> 
> GO_IMPORT = "tailscale.com"
> GO_WORKDIR = "${GO_IMPORT}"
> GO_INSTALL = "\
>     ${GO_IMPORT}/cmd/tailscale \
>     ${GO_IMPORT}/cmd/tailscaled \
> "
> 
> do_install() {
>     install -d ${D}/${bindir}
>     install -d ${D}/${sbindir}
>     install ${B}/bin/tailscale ${D}/${bindir}/tailscale
>     install ${B}/bin/tailscaled ${D}/${sbindir}/tailscaled
> }
> 
> 
> However, build step ends up with errors like these (full log):
> 
> | wgengine/netstack/netstack.go:34:2: 
> gvisor.dev/gvisor@v0.0.0-20230504175454-7b0a1988a28f: Get 
> "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20230504175454-7b0a1988a28f.zip": 
> dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: 
> connect: network is unreachable
> | wgengine/netstack/netstack.go:35:2: 
> gvisor.dev/gvisor@v0.0.0-20230504175454-7b0a1988a28f: Get 
> "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20230504175454-7b0a1988a28f.zip": 
> dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: 
> connect: network is unreachable
> | net/tstun/tap_linux.go:23:2: 
> gvisor.dev/gvisor@v0.0.0-20230504175454-7b0a1988a28f: Get 
> "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20230504175454-7b0a1988a28f.zip": 
> dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: 
> connect: network is unreachable
> | wgengine/netstack/netstack.go:37:2: 
> gvisor.dev/gvisor@v0.0.0-20230504175454-7b0a1988a28f: Get 
> "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20230504175454-7b0a1988a28f.zip": 
> dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: 
> connect: network is unreachable
> | ipn/ipnauth/ipnauth.go:16:2: 
> inet.af/peercred@v0.0.0-20210906144145-0893ea02156a: Get 
> "https://proxy.golang.org/inet.af/peercred/@v/v0.0.0-20210906144145-0893ea02156a.zip": 
> dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: 
> connect: network is unreachable
> 
> On some resources I have found it was recomended to add environmental 
> variables: `GOPROXY="direct"` and `GOSUMDB="off"`, but it didn't 
> helped.
> 
> Maybe someone has some ideas what is the cause of these errors?


--=-AHKY29uWNuBHBN/Jg98B
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto"><div><div>You need to allow network connection for the do_compile task</div><div><br></div><div>do_compile[network] = "1"</div></div><div><br></div></div><div id="geary-quote" dir="auto"><br>On Sun, Jul 2 2023 at 12:45:40 PM -0700, przemek.recha@gmail.com wrote:<br><blockquote type="cite"><div>Hi!</div>
<div>I'm trying to build Tailscale with Yocto</div>
<div>This is me recipe:</div>
<div>&nbsp;</div>
<div>inherit go-mod</div>
<div>&nbsp;</div>
<div>SRC_URI = "git://github.com/tailscale/tailscale;protocol=https;branch=main"</div>
<div>SRCREV = "30d9201a11ebc2e3a0f17bf8963956b77dadeb5d"</div>
<div>&nbsp;</div>
<div>GO_IMPORT = "tailscale.com"</div>
<div>GO_WORKDIR = "${GO_IMPORT}"</div>
<div>GO_INSTALL = "\</div>
<div>&nbsp; &nbsp; ${GO_IMPORT}/cmd/tailscale \</div>
<div>&nbsp; &nbsp; ${GO_IMPORT}/cmd/tailscaled \</div>
<div>"</div>
<div>&nbsp;</div>
<div>do_install() {</div>
<div>&nbsp; &nbsp; install -d ${D}/${bindir}</div>
<div>&nbsp; &nbsp; install -d ${D}/${sbindir}</div>
<div>&nbsp; &nbsp; install ${B}/bin/tailscale ${D}/${bindir}/tailscale</div>
<div>&nbsp; &nbsp; install ${B}/bin/tailscaled ${D}/${sbindir}/tailscaled</div>
<div>}</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>However, build step ends up with errors like these (full log):</div>
<div>&nbsp;</div>
<div>| wgengine/netstack/netstack.go:34:2: gvisor.dev/gvisor@v0.0.0-20230504175454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>| wgengine/netstack/netstack.go:35:2: gvisor.dev/gvisor@v0.0.0-20230504175454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>| net/tstun/tap_linux.go:23:2: gvisor.dev/gvisor@v0.0.0-20230504175454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>| wgengine/netstack/netstack.go:37:2: gvisor.dev/gvisor@v0.0.0-20230504175454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>| ipn/ipnauth/ipnauth.go:16:2: inet.af/peercred@v0.0.0-20210906144145-0893ea02156a: Get "https://proxy.golang.org/inet.af/peercred/@v/v0.0.0-20210906144145-0893ea02156a.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>&nbsp;</div>
<div>On some resources I have found it was recomended to add environmental variables: `GOPROXY="direct"` and `GOSUMDB="off"`, but it didn't helped.</div>
<div>&nbsp;</div>
<div>Maybe someone has some ideas what is the cause of these errors?</div>
</blockquote></div>
--=-AHKY29uWNuBHBN/Jg98B--


