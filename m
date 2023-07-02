Return-Path: <przemek.recha@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46919EB64D9
	for <webhook@archiver.kernel.org>; Sun,  2 Jul 2023 19:45:47 +0000 (UTC)
Subject: Building Tailscale with Yocto #golang
To: yocto@lists.yoctoproject.org
From: przemek.recha@gmail.com
X-Originating-Location: Bytom, Silesia, PL (178.213.216.60)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 02 Jul 2023 12:45:40 -0700
Message-ID: <4HqO.1688327140014497685.1oIK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QkS53t87oF7a1oqOCZh8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jul 2023 19:45:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60491

--QkS53t87oF7a1oqOCZh8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!
I'm trying to build Tailscale with Yocto
This is me recipe:

inherit go-mod

SRC_URI =3D "git://github.com/tailscale/tailscale;protocol=3Dhttps;branch=
=3Dmain"
SRCREV =3D "30d9201a11ebc2e3a0f17bf8963956b77dadeb5d"

GO_IMPORT =3D "tailscale.com"
GO_WORKDIR =3D "${GO_IMPORT}"
GO_INSTALL =3D "\
${GO_IMPORT}/cmd/tailscale \
${GO_IMPORT}/cmd/tailscaled \
"

do_install() {
install -d ${D}/${bindir}
install -d ${D}/${sbindir}
install ${B}/bin/tailscale ${D}/${bindir}/tailscale
install ${B}/bin/tailscaled ${D}/${sbindir}/tailscaled
}

However, build step ends up with errors like these (full log):

| wgengine/netstack/netstack.go:34:2: gvisor.dev/gvisor@v0.0.0-202305041754=
54-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-=
20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.=
8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable
| wgengine/netstack/netstack.go:35:2: gvisor.dev/gvisor@v0.0.0-202305041754=
54-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-=
20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.=
8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable
| net/tstun/tap_linux.go:23:2: gvisor.dev/gvisor@v0.0.0-20230504175454-7b0a=
1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-2023050=
4175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:53:=
 dial udp 8.8.8.8:53: connect: network is unreachable
| wgengine/netstack/netstack.go:37:2: gvisor.dev/gvisor@v0.0.0-202305041754=
54-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-=
20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.=
8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable
| ipn/ipnauth/ipnauth.go:16:2: inet.af/peercred@v0.0.0-20210906144145-0893e=
a02156a: Get "https://proxy.golang.org/inet.af/peercred/@v/v0.0.0-202109061=
44145-0893ea02156a.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:53: d=
ial udp 8.8.8.8:53: connect: network is unreachable

On some resources I have found it was recomended to add environmental varia=
bles: `GOPROXY=3D"direct"` and `GOSUMDB=3D"off"`, but it didn't helped.

Maybe someone has some ideas what is the cause of these errors?

--QkS53t87oF7a1oqOCZh8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi!</div>
<div>I'm trying to build Tailscale with Yocto</div>
<div>This is me recipe:</div>
<div>&nbsp;</div>
<div>inherit go-mod</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "git://github.com/tailscale/tailscale;protocol=3Dhttps;bra=
nch=3Dmain"</div>
<div>SRCREV =3D "30d9201a11ebc2e3a0f17bf8963956b77dadeb5d"</div>
<div>&nbsp;</div>
<div>GO_IMPORT =3D "tailscale.com"</div>
<div>GO_WORKDIR =3D "${GO_IMPORT}"</div>
<div>GO_INSTALL =3D "\</div>
<div>&nbsp; &nbsp; ${GO_IMPORT}/cmd/tailscale \</div>
<div>&nbsp; &nbsp; ${GO_IMPORT}/cmd/tailscaled \</div>
<div>"</div>
<div>&nbsp;</div>
<div>do_install() {</div>
<div>&nbsp; &nbsp; install -d ${D}/${bindir}</div>
<div>&nbsp; &nbsp; install -d ${D}/${sbindir}</div>
<div>&nbsp; &nbsp; install ${B}/bin/tailscale ${D}/${bindir}/tailscale</div=
>
<div>&nbsp; &nbsp; install ${B}/bin/tailscaled ${D}/${sbindir}/tailscaled</=
div>
<div>}</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>However, build step ends up with errors like these (full log):</div>
<div>&nbsp;</div>
<div>| wgengine/netstack/netstack.go:34:2: gvisor.dev/gvisor@v0.0.0-2023050=
4175454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0=
.0.0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on=
 8.8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>| wgengine/netstack/netstack.go:35:2: gvisor.dev/gvisor@v0.0.0-2023050=
4175454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0=
.0.0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on=
 8.8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>| net/tstun/tap_linux.go:23:2: gvisor.dev/gvisor@v0.0.0-20230504175454=
-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20=
230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.8.=
8:53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>| wgengine/netstack/netstack.go:37:2: gvisor.dev/gvisor@v0.0.0-2023050=
4175454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0=
.0.0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on=
 8.8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>| ipn/ipnauth/ipnauth.go:16:2: inet.af/peercred@v0.0.0-20210906144145-=
0893ea02156a: Get "https://proxy.golang.org/inet.af/peercred/@v/v0.0.0-2021=
0906144145-0893ea02156a.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:=
53: dial udp 8.8.8.8:53: connect: network is unreachable</div>
<div>&nbsp;</div>
<div>On some resources I have found it was recomended to add environmental =
variables: `GOPROXY=3D"direct"` and `GOSUMDB=3D"off"`, but it didn't helped=
.</div>
<div>&nbsp;</div>
<div>Maybe someone has some ideas what is the cause of these errors?</div>

--QkS53t87oF7a1oqOCZh8--

