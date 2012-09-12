Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe001.messaging.microsoft.com [65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7AB9E00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 14:58:48 -0700 (PDT)
Received: from mail70-tx2-R.bigfish.com (10.9.14.239) by
	TX2EHSOBE002.bigfish.com (10.9.40.22) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 21:58:48 +0000
Received: from mail70-tx2 (localhost [127.0.0.1])	by mail70-tx2-R.bigfish.com
	(Postfix) with ESMTP id E92813A02B1	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 21:58:47 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Ic857hzz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail70-tx2 (localhost.localdomain [127.0.0.1]) by mail70-tx2
	(MessageSwitch) id 1347487126420644_505; Wed, 12 Sep 2012 21:58:46 +0000
	(UTC)
Received: from TX2EHSMHS031.bigfish.com (unknown [10.9.14.242])	by
	mail70-tx2.bigfish.com (Postfix) with ESMTP id 630C240047	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 21:58:46 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS031.bigfish.com
	(10.9.99.131) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 21:58:45 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0309.003; Wed, 12 Sep 2012 16:57:53 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc 06/16] ethtool: add FSL specific patch
Thread-Index: AQHNkTGohjG9Tq9r0Umt3NNA6DMtaw==
Date: Wed, 12 Sep 2012 21:57:52 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A675542@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-6-git-send-email-b19537@freescale.com>
In-Reply-To: <1347433590-8481-6-git-send-email-b19537@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 06/16] ethtool: add FSL specific patch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 21:58:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <CDF450275A58CE4EB519A5E24FD9D916@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2012 at 2:06 AM,  <b19537@freescale.com> wrote:
> From: Zhenhua Luo <b19537@freescale.com>

Another for-denzil patch. This patch needs to be rewritten for master
as a patch added in oe-core or as a bbappends in our layer.

-M


> Signed-off-by: Zhenhua Luo <b19537@freescale.com>
> ---
>  ...ool-3.0-Enable-nfc-rx-flow-hashing-on-SPI.patch |   95 ++++++++++++++=
++++++
>  recipes-extended/ethtool/ethtool_3.0.bb            |    7 +-
>  2 files changed, 101 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-extended/ethtool/ethtool-3.0/ethtool-3.0-Enab=
le-nfc-rx-flow-hashing-on-SPI.patch
>
> diff --git a/recipes-extended/ethtool/ethtool-3.0/ethtool-3.0-Enable-nfc-=
rx-flow-hashing-on-SPI.patch b/recipes-extended/ethtool/ethtool-3.0/ethtool=
-3.0-Enable-nfc-rx-flow-hashing-on-SPI.patch
> new file mode 100644
> index 0000000..216e3b4
> --- /dev/null
> +++ b/recipes-extended/ethtool/ethtool-3.0/ethtool-3.0-Enable-nfc-rx-flow=
-hashing-on-SPI.patch
> @@ -0,0 +1,95 @@
> +From patchwork Thu Aug 30 15:44:09 2012
> +Content-Type: text/plain; charset=3D"utf-8"
> +MIME-Version: 1.0
> +Content-Transfer-Encoding: 7bit
> +Subject: [SDK1.3] ethtool-3.0: Enable nfc rx-flow hashing on SPI
> +Date: Thu, 30 Aug 2012 21:44:09 -0000
> +From: Claudiu Manoil <claudiu.manoil@freescale.com>
> +X-Patchwork-Id: 25852
> +
> +This makes it possible to enable hashing of AH or ESP flows
> +(IPSEC) based on their SPI (Security Parameter Index) field.
> +
> +Applies on top of (ethtool v3.0):
> +git.kernel.org/pub/scm/network/ethtool/ethtool.git
> +commit-
> +"a6fc65b Release version 3.0."
> +
> +Signed-off-by: Pankaj Chauhan <pankaj.chauhan@freescale.com>
> +Signed-off-by: Claudiu Manoil <claudiu.manoil@freescale.com>
> +---
> + ethtool-copy.h |    1 +
> + ethtool.8.in   |    1 +
> + ethtool.c      |   14 +++++++++++---
> + 3 files changed, 13 insertions(+), 3 deletions(-)
> +
> +diff --git a/ethtool-copy.h b/ethtool-copy.h
> +index c7a18f7..cf20158 100644
> +--- a/ethtool-copy.h
> ++++ b/ethtool-copy.h
> +@@ -888,6 +888,7 @@ enum ethtool_sfeatures_retval_bits {
> + #define       RXH_IP_DST      (1 << 5)
> + #define       RXH_L4_B_0_1    (1 << 6) /* src port in case of TCP/UDP/S=
CTP */
> + #define       RXH_L4_B_2_3    (1 << 7) /* dst port in case of TCP/UDP/S=
CTP */
> ++#define       RXH_AH_ESP_SPI  (1 << 8) /* SPI field, for AH/ESP flows *=
/
> + #define       RXH_DISCARD     (1 << 31)
> +
> + #define       RX_CLS_FLOW_DISC        0xffffffffffffffffULL
> +diff --git a/ethtool.8.in b/ethtool.8.in
> +index 7a0bd43..a640317 100644
> +--- a/ethtool.8.in
> ++++ b/ethtool.8.in
> +@@ -601,6 +601,7 @@ s  Hash on the IP source address of the rx packet.
> + d     Hash on the IP destination address of the rx packet.
> + f     Hash on bytes 0 and 1 of the Layer 4 header of the rx packet.
> + n     Hash on bytes 2 and 3 of the Layer 4 header of the rx packet.
> ++S     Hash on the SPI field (4 bytes), for AH/ESP packets.
> + r     T{
> + Discard all packets of this flow type. When this option is set, all
> + other options are ignored.
> +diff --git a/ethtool.c b/ethtool.c
> +index 943dfb7..bb9d592 100644
> +--- a/ethtool.c
> ++++ b/ethtool.c
> +@@ -231,7 +231,7 @@ static struct option {
> +     { "-N", "--config-nfc", MODE_SNFC, "Configure Rx network flow "
> +               "classification options",
> +               "               [ rx-flow-hash tcp4|udp4|ah4|esp4|sctp4|"
> +-              "tcp6|udp6|ah6|esp6|sctp6 m|v|t|s|d|f|n|r... ]\n" },
> ++              "tcp6|udp6|ah6|esp6|sctp6 m|v|t|s|d|f|n|S|r... ]\n" },
> +     { "-x", "--show-rxfh-indir", MODE_GRXFHINDIR, "Show Rx flow hash "
> +               "indirection" },
> +     { "-X", "--set-rxfh-indir", MODE_SRXFHINDIR, "Set Rx flow hash indi=
rection",
> +@@ -728,8 +728,10 @@ static int rxflow_str_to_type(const char *str)
> +               flow_type =3D TCP_V4_FLOW;
> +       else if (!strcmp(str, "udp4"))
> +               flow_type =3D UDP_V4_FLOW;
> +-      else if (!strcmp(str, "ah4") || !strcmp(str, "esp4"))
> +-              flow_type =3D AH_ESP_V4_FLOW;
> ++      else if (!strcmp(str, "ah4"))
> ++              flow_type =3D AH_V4_FLOW;
> ++      else if (!strcmp(str, "esp4"))
> ++              flow_type =3D ESP_V4_FLOW;
> +       else if (!strcmp(str, "sctp4"))
> +               flow_type =3D SCTP_V4_FLOW;
> +       else if (!strcmp(str, "tcp6"))
> +@@ -1538,6 +1540,9 @@ static int parse_rxfhashopts(char *optstr, u32 *da=
ta)
> +                       case 'n':
> +                               *data |=3D RXH_L4_B_2_3;
> +                               break;
> ++                      case 'S':
> ++                              *data |=3D RXH_AH_ESP_SPI;
> ++                              break;
> +                       case 'r':
> +                               *data |=3D RXH_DISCARD;
> +                               break;
> +@@ -1577,6 +1582,9 @@ static char *unparse_rxfhashopts(u64 opts)
> +               if (opts & RXH_L4_B_2_3) {
> +                       strcat(buf, "L4 bytes 2 & 3 [TCP/UDP dst port]\n"=
);
> +               }
> ++              if (opts & RXH_AH_ESP_SPI) {
> ++                      strcat(buf, "SPI field (AH/ESP header)\n");
> ++              }
> +       } else {
> +               sprintf(buf, "None");
> +       }
> diff --git a/recipes-extended/ethtool/ethtool_3.0.bb b/recipes-extended/e=
thtool/ethtool_3.0.bb
> index cc4862d..ca73055 100644
> --- a/recipes-extended/ethtool/ethtool_3.0.bb
> +++ b/recipes-extended/ethtool/ethtool_3.0.bb
> @@ -5,7 +5,12 @@ SECTION =3D "console/network"
>  LICENSE =3D "GPLv2+"
>  LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae=
19f"
>
> -SRC_URI =3D "${KERNELORG_MIRROR}/software/network/ethtool/ethtool-${PV}.=
tar.gz"
> +PR =3D "r1"
> +
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/ethtool-3.0:"
> +
> +SRC_URI =3D "${KERNELORG_MIRROR}/software/network/ethtool/ethtool-${PV}.=
tar.gz \
> +    file://ethtool-3.0-Enable-nfc-rx-flow-hashing-on-SPI.patch "
>  SRC_URI[md5sum] =3D "a339cbdcbe1c1fbe377c36d84231bda6"
>  SRC_URI[sha256sum] =3D "9b9caffc0ee3567b607618ca5bc85505230d66cd9d5caa1c=
333760b3885f0ae4"
>
> --
> 1.7.9.5
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


