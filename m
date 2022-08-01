Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8FC00144
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 12:41:58 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.24192.1659357715133320849
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 05:41:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=C2/4REZ9;
 spf=pass (domain: lightyear.one, ip: 209.85.218.46,
 mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ej1-f46.google.com with SMTP id tk8so20090904ejc.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 05:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc;
        bh=BgL7LO+7tppqi2InOcCH0tnW1l6AosZVC9adpfDYe2U=;
        b=C2/4REZ9osOibVs2WN6IVR/hf2+a6rKu2vbRURO4NBeagW1EvpWtVZEkxE4nkoppZW
         TprRC/stGIWZ8D/4KkGV1vhBnd+MF131XfjxFVLFUH+I4Bki4Fm0w90AZvdOGnXcjEZ6
         DyHOzqod7vCbjsxiQT47dYlEnJ1HT5qsQ+H9P0A1l1wK2cnbOfT/SbI0k+031/d1moVT
         n0xP1Ra+ebcsZOcKxxb22PUCLTxdX4a/yVzNfhXZFcZHmFbzHhrlFg6J1X4n/h+jTnXt
         huRxAp9DVYWr13A2uPVUQFE9f3fb9Yo93Otjb0VI15so4ggMR1gD0il+54vqIwgNjk7Q
         TtCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc;
        bh=BgL7LO+7tppqi2InOcCH0tnW1l6AosZVC9adpfDYe2U=;
        b=2S7ei7qWDSQes8g0wvqjU9pGXGmJACLBEa11exoBNj8+OC2X52lhkAQ19ukeM7QtZY
         yGx/v6E/KF/31gMu7Y2/Wq1d0dFD7PYnHS3VGVxXEWMFDTeLt21PWfoe/uWWAGf9Hfyk
         EHmsT9etP7bYP7aKWx/26YU5i1kUVegJ3XSW+vcJkpLgtK9Y8PjIJxC/hjtvQajEcPao
         8AcuzsvqEsTNkvXyPWspDCQx/1qWDpqr+n+Y+rihX7aawR9nGY8e6Vo5OswbaXnvPkXv
         Xt8Kf7p4kS9cIlz22NgN4cKP/87brpYFFLCKWKxNK9WS7sfqihkKJ9skr3AKWWiVsFsh
         B7lw==
X-Gm-Message-State: ACgBeo0eGSFvh/z/w5UMpfgEE+8zn7GE5s7p37zvU2I3qlKaix2E06+4
	hNWh2fnQXtxjvQ5pKwPI8CDlny8xUpKMuFASYtTNMURpOu64m+a81VLcZUdK5oIdVseX7iiU4Df
	AFpoCNRsSLVxqRO1giyqZ8TFrULH5LbzOc08wzsc=
X-Google-Smtp-Source: 
 AA6agR7tMFZZuTUfnTk7gg7oY4BSCH/7Xvtfzx0xl6jcoUERc9QduOjHKNxsCQlwF7pqsXkiIb6uTXjMbnA/Fda8tXQ=
X-Received: by 2002:a17:906:98c8:b0:730:7ada:87a7 with SMTP id
 zd8-20020a17090698c800b007307ada87a7mr4560726ejb.748.1659357712968; Mon, 01
 Aug 2022 05:41:52 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAKO9uzqsbZso--U487egNqGJ7qzFpTxG-jLP-Xcrpi+w0y-TZA@mail.gmail.com>
In-Reply-To: 
 <CAKO9uzqsbZso--U487egNqGJ7qzFpTxG-jLP-Xcrpi+w0y-TZA@mail.gmail.com>
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Mon, 1 Aug 2022 14:41:17 +0200
Message-ID: 
 <CAKO9uzoJoHreC1L7zr1mkZYF7xcGKKPnQfX1bQcCKyp2n_pDNA@mail.gmail.com>
Subject: nftables_0.7 not working
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000009976405e52d5361"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 12:41:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57713

--00000000000009976405e52d5361
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I added the following to our image recipe:
IMAGE_INSTALL_append =3D " nftables"

When running that image, nftables seems to be included, but we get the
following error:
~# nft
../../nftables-0.7/src/netlink.c:59: Unable to initialize Netlink socket:
Protocol not supported

Furthermore, it's not showing in lsmod, and also not in modprobe
--showconfigs.

This is the active kernel config:
root@agent336:~# zcat /proc/config.gz | grep "CONFIG_NF_\|CONFIG_NETFILTER_=
"
CONFIG_NETFILTER_ADVANCED=3Dy
CONFIG_NETFILTER_INGRESS=3Dy
# CONFIG_NETFILTER_NETLINK_ACCT is not set
# CONFIG_NETFILTER_NETLINK_QUEUE is not set
# CONFIG_NETFILTER_NETLINK_LOG is not set
CONFIG_NF_CONNTRACK=3Dm
CONFIG_NF_LOG_COMMON=3Dm
# CONFIG_NF_LOG_NETDEV is not set
# CONFIG_NF_CONNTRACK_MARK is not set
CONFIG_NF_CONNTRACK_PROCFS=3Dy
CONFIG_NF_CONNTRACK_EVENTS=3Dy
# CONFIG_NF_CONNTRACK_TIMEOUT is not set
# CONFIG_NF_CONNTRACK_TIMESTAMP is not set
CONFIG_NF_CT_PROTO_DCCP=3Dy
CONFIG_NF_CT_PROTO_SCTP=3Dy
CONFIG_NF_CT_PROTO_UDPLITE=3Dy
# CONFIG_NF_CONNTRACK_AMANDA is not set
# CONFIG_NF_CONNTRACK_FTP is not set
# CONFIG_NF_CONNTRACK_H323 is not set
# CONFIG_NF_CONNTRACK_IRC is not set
# CONFIG_NF_CONNTRACK_NETBIOS_NS is not set
# CONFIG_NF_CONNTRACK_SNMP is not set
# CONFIG_NF_CONNTRACK_PPTP is not set
# CONFIG_NF_CONNTRACK_SANE is not set
# CONFIG_NF_CONNTRACK_SIP is not set
# CONFIG_NF_CONNTRACK_TFTP is not set
# CONFIG_NF_CT_NETLINK is not set
# CONFIG_NF_CT_NETLINK_TIMEOUT is not set
CONFIG_NF_NAT=3Dm
CONFIG_NF_NAT_NEEDED=3Dy
CONFIG_NF_NAT_PROTO_DCCP=3Dy
CONFIG_NF_NAT_PROTO_UDPLITE=3Dy
CONFIG_NF_NAT_PROTO_SCTP=3Dy
# CONFIG_NF_NAT_AMANDA is not set
# CONFIG_NF_NAT_FTP is not set
# CONFIG_NF_NAT_IRC is not set
# CONFIG_NF_NAT_SIP is not set
# CONFIG_NF_NAT_TFTP is not set
# CONFIG_NF_NAT_REDIRECT is not set
# CONFIG_NF_TABLES is not set
CONFIG_NETFILTER_XTABLES=3Dm
# CONFIG_NETFILTER_XT_MARK is not set
# CONFIG_NETFILTER_XT_CONNMARK is not set
# CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
CONFIG_NETFILTER_XT_TARGET_CHECKSUM=3Dm
# CONFIG_NETFILTER_XT_TARGET_CLASSIFY is not set
# CONFIG_NETFILTER_XT_TARGET_CONNMARK is not set
# CONFIG_NETFILTER_XT_TARGET_DSCP is not set
# CONFIG_NETFILTER_XT_TARGET_HL is not set
# CONFIG_NETFILTER_XT_TARGET_HMARK is not set
# CONFIG_NETFILTER_XT_TARGET_IDLETIMER is not set
# CONFIG_NETFILTER_XT_TARGET_LED is not set
CONFIG_NETFILTER_XT_TARGET_LOG=3Dm
# CONFIG_NETFILTER_XT_TARGET_MARK is not set
CONFIG_NETFILTER_XT_NAT=3Dm
# CONFIG_NETFILTER_XT_TARGET_NETMAP is not set
# CONFIG_NETFILTER_XT_TARGET_NFLOG is not set
# CONFIG_NETFILTER_XT_TARGET_NFQUEUE is not set
# CONFIG_NETFILTER_XT_TARGET_RATEEST is not set
# CONFIG_NETFILTER_XT_TARGET_REDIRECT is not set
# CONFIG_NETFILTER_XT_TARGET_TEE is not set
# CONFIG_NETFILTER_XT_TARGET_TPROXY is not set
# CONFIG_NETFILTER_XT_TARGET_TCPMSS is not set
# CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP is not set
CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=3Dm
# CONFIG_NETFILTER_XT_MATCH_BPF is not set
# CONFIG_NETFILTER_XT_MATCH_CGROUP is not set
# CONFIG_NETFILTER_XT_MATCH_CLUSTER is not set
# CONFIG_NETFILTER_XT_MATCH_COMMENT is not set
# CONFIG_NETFILTER_XT_MATCH_CONNBYTES is not set
# CONFIG_NETFILTER_XT_MATCH_CONNLABEL is not set
# CONFIG_NETFILTER_XT_MATCH_CONNLIMIT is not set
# CONFIG_NETFILTER_XT_MATCH_CONNMARK is not set
CONFIG_NETFILTER_XT_MATCH_CONNTRACK=3Dm
# CONFIG_NETFILTER_XT_MATCH_CPU is not set
# CONFIG_NETFILTER_XT_MATCH_DCCP is not set
# CONFIG_NETFILTER_XT_MATCH_DEVGROUP is not set
# CONFIG_NETFILTER_XT_MATCH_DSCP is not set
# CONFIG_NETFILTER_XT_MATCH_ECN is not set
# CONFIG_NETFILTER_XT_MATCH_ESP is not set
# CONFIG_NETFILTER_XT_MATCH_HASHLIMIT is not set
# CONFIG_NETFILTER_XT_MATCH_HELPER is not set
# CONFIG_NETFILTER_XT_MATCH_HL is not set
# CONFIG_NETFILTER_XT_MATCH_IPCOMP is not set
# CONFIG_NETFILTER_XT_MATCH_IPRANGE is not set
# CONFIG_NETFILTER_XT_MATCH_L2TP is not set
# CONFIG_NETFILTER_XT_MATCH_LENGTH is not set
# CONFIG_NETFILTER_XT_MATCH_LIMIT is not set
# CONFIG_NETFILTER_XT_MATCH_MAC is not set
# CONFIG_NETFILTER_XT_MATCH_MARK is not set
# CONFIG_NETFILTER_XT_MATCH_MULTIPORT is not set
# CONFIG_NETFILTER_XT_MATCH_NFACCT is not set
# CONFIG_NETFILTER_XT_MATCH_OWNER is not set
# CONFIG_NETFILTER_XT_MATCH_POLICY is not set
# CONFIG_NETFILTER_XT_MATCH_PHYSDEV is not set
# CONFIG_NETFILTER_XT_MATCH_PKTTYPE is not set
# CONFIG_NETFILTER_XT_MATCH_QUOTA is not set
# CONFIG_NETFILTER_XT_MATCH_RATEEST is not set
# CONFIG_NETFILTER_XT_MATCH_REALM is not set
# CONFIG_NETFILTER_XT_MATCH_RECENT is not set
# CONFIG_NETFILTER_XT_MATCH_SCTP is not set
# CONFIG_NETFILTER_XT_MATCH_STATE is not set
# CONFIG_NETFILTER_XT_MATCH_STATISTIC is not set
# CONFIG_NETFILTER_XT_MATCH_STRING is not set
# CONFIG_NETFILTER_XT_MATCH_TCPMSS is not set
# CONFIG_NETFILTER_XT_MATCH_TIME is not set
# CONFIG_NETFILTER_XT_MATCH_U32 is not set
CONFIG_NF_DEFRAG_IPV4=3Dm
CONFIG_NF_CONNTRACK_IPV4=3Dm
# CONFIG_NF_SOCKET_IPV4 is not set
# CONFIG_NF_DUP_IPV4 is not set
# CONFIG_NF_LOG_ARP is not set
CONFIG_NF_LOG_IPV4=3Dm
CONFIG_NF_REJECT_IPV4=3Dm
CONFIG_NF_NAT_IPV4=3Dm
CONFIG_NF_NAT_MASQUERADE_IPV4=3Dm
# CONFIG_NF_NAT_PPTP is not set
# CONFIG_NF_NAT_H323 is not set
CONFIG_NF_DEFRAG_IPV6=3Dm
CONFIG_NF_CONNTRACK_IPV6=3Dm
# CONFIG_NF_SOCKET_IPV6 is not set
# CONFIG_NF_DUP_IPV6 is not set
CONFIG_NF_REJECT_IPV6=3Dm
CONFIG_NF_LOG_IPV6=3Dm
CONFIG_NF_NAT_IPV6=3Dm
CONFIG_NF_NAT_MASQUERADE_IPV6=3Dm

What am I missing? Should I enable it some other way instead of using
IMAGE_INSTALL_append? Do I need to enable more?

Thanks,
Kind regards,

Maik Vermeulen

Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one/>
+31 6 16 82 73 79 <+31616827379>

--=20
=20
<https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotli=
ghtroles&utm_medium=3Demail#vacancies>

--=20


Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
www.lightyear.one=20
<https://lightyear.one/>
 <https://www.linkedin.com/company/lightyear.one/>

This email may contain information which is privileged and/or=20
confidential. If you received this e-mail in error, please notify us=20
immediately by e-mail and delete the email without copying or disclosing=20
its contents to any other person. Lightyear is a trade name of Atlas=20
Technologies B.V. and is registered at the Dutch Chamber of Commerce under=
=20
number 67264298.=C2=A0

--00000000000009976405e52d5361
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Hi,<br><div><b=
r></div><div>I added the following to our image recipe:</div><div>IMAGE_INS=
TALL_append =3D &quot; nftables&quot;<br></div><div><br></div><div>When run=
ning that image, nftables seems to be included, but we get the following=C2=
=A0error:</div><div>~# nft<br>../../nftables-0.7/src/netlink.c:59: Unable t=
o initialize Netlink socket: Protocol not supported<br></div><div><div><br>=
</div><div>Furthermore, it&#39;s not showing in lsmod, and also not in modp=
robe --showconfigs.</div><div><br></div><div>This is the active kernel conf=
ig:</div><div>root@agent336:~# zcat /proc/config.gz | grep &quot;CONFIG_NF_=
\|CONFIG_NETFILTER_&quot;<br>CONFIG_NETFILTER_ADVANCED=3Dy<br>CONFIG_NETFIL=
TER_INGRESS=3Dy<br># CONFIG_NETFILTER_NETLINK_ACCT is not set<br># CONFIG_N=
ETFILTER_NETLINK_QUEUE is not set<br># CONFIG_NETFILTER_NETLINK_LOG is not =
set<br>CONFIG_NF_CONNTRACK=3Dm<br>CONFIG_NF_LOG_COMMON=3Dm<br># CONFIG_NF_L=
OG_NETDEV is not set<br># CONFIG_NF_CONNTRACK_MARK is not set<br>CONFIG_NF_=
CONNTRACK_PROCFS=3Dy<br>CONFIG_NF_CONNTRACK_EVENTS=3Dy<br># CONFIG_NF_CONNT=
RACK_TIMEOUT is not set<br># CONFIG_NF_CONNTRACK_TIMESTAMP is not set<br>CO=
NFIG_NF_CT_PROTO_DCCP=3Dy<br>CONFIG_NF_CT_PROTO_SCTP=3Dy<br>CONFIG_NF_CT_PR=
OTO_UDPLITE=3Dy<br># CONFIG_NF_CONNTRACK_AMANDA is not set<br># CONFIG_NF_C=
ONNTRACK_FTP is not set<br># CONFIG_NF_CONNTRACK_H323 is not set<br># CONFI=
G_NF_CONNTRACK_IRC is not set<br># CONFIG_NF_CONNTRACK_NETBIOS_NS is not se=
t<br># CONFIG_NF_CONNTRACK_SNMP is not set<br># CONFIG_NF_CONNTRACK_PPTP is=
 not set<br># CONFIG_NF_CONNTRACK_SANE is not set<br># CONFIG_NF_CONNTRACK_=
SIP is not set<br># CONFIG_NF_CONNTRACK_TFTP is not set<br># CONFIG_NF_CT_N=
ETLINK is not set<br># CONFIG_NF_CT_NETLINK_TIMEOUT is not set<br>CONFIG_NF=
_NAT=3Dm<br>CONFIG_NF_NAT_NEEDED=3Dy<br>CONFIG_NF_NAT_PROTO_DCCP=3Dy<br>CON=
FIG_NF_NAT_PROTO_UDPLITE=3Dy<br>CONFIG_NF_NAT_PROTO_SCTP=3Dy<br># CONFIG_NF=
_NAT_AMANDA is not set<br># CONFIG_NF_NAT_FTP is not set<br># CONFIG_NF_NAT=
_IRC is not set<br># CONFIG_NF_NAT_SIP is not set<br># CONFIG_NF_NAT_TFTP i=
s not set<br># CONFIG_NF_NAT_REDIRECT is not set<br># CONFIG_NF_TABLES is n=
ot set<br>CONFIG_NETFILTER_XTABLES=3Dm<br># CONFIG_NETFILTER_XT_MARK is not=
 set<br># CONFIG_NETFILTER_XT_CONNMARK is not set<br># CONFIG_NETFILTER_XT_=
TARGET_AUDIT is not set<br>CONFIG_NETFILTER_XT_TARGET_CHECKSUM=3Dm<br># CON=
FIG_NETFILTER_XT_TARGET_CLASSIFY is not set<br># CONFIG_NETFILTER_XT_TARGET=
_CONNMARK is not set<br># CONFIG_NETFILTER_XT_TARGET_DSCP is not set<br># C=
ONFIG_NETFILTER_XT_TARGET_HL is not set<br># CONFIG_NETFILTER_XT_TARGET_HMA=
RK is not set<br># CONFIG_NETFILTER_XT_TARGET_IDLETIMER is not set<br># CON=
FIG_NETFILTER_XT_TARGET_LED is not set<br>CONFIG_NETFILTER_XT_TARGET_LOG=3D=
m<br># CONFIG_NETFILTER_XT_TARGET_MARK is not set<br>CONFIG_NETFILTER_XT_NA=
T=3Dm<br># CONFIG_NETFILTER_XT_TARGET_NETMAP is not set<br># CONFIG_NETFILT=
ER_XT_TARGET_NFLOG is not set<br># CONFIG_NETFILTER_XT_TARGET_NFQUEUE is no=
t set<br># CONFIG_NETFILTER_XT_TARGET_RATEEST is not set<br># CONFIG_NETFIL=
TER_XT_TARGET_REDIRECT is not set<br># CONFIG_NETFILTER_XT_TARGET_TEE is no=
t set<br># CONFIG_NETFILTER_XT_TARGET_TPROXY is not set<br># CONFIG_NETFILT=
ER_XT_TARGET_TCPMSS is not set<br># CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP =
is not set<br>CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=3Dm<br># CONFIG_NETFILTER_=
XT_MATCH_BPF is not set<br># CONFIG_NETFILTER_XT_MATCH_CGROUP is not set<br=
># CONFIG_NETFILTER_XT_MATCH_CLUSTER is not set<br># CONFIG_NETFILTER_XT_MA=
TCH_COMMENT is not set<br># CONFIG_NETFILTER_XT_MATCH_CONNBYTES is not set<=
br># CONFIG_NETFILTER_XT_MATCH_CONNLABEL is not set<br># CONFIG_NETFILTER_X=
T_MATCH_CONNLIMIT is not set<br># CONFIG_NETFILTER_XT_MATCH_CONNMARK is not=
 set<br>CONFIG_NETFILTER_XT_MATCH_CONNTRACK=3Dm<br># CONFIG_NETFILTER_XT_MA=
TCH_CPU is not set<br># CONFIG_NETFILTER_XT_MATCH_DCCP is not set<br># CONF=
IG_NETFILTER_XT_MATCH_DEVGROUP is not set<br># CONFIG_NETFILTER_XT_MATCH_DS=
CP is not set<br># CONFIG_NETFILTER_XT_MATCH_ECN is not set<br># CONFIG_NET=
FILTER_XT_MATCH_ESP is not set<br># CONFIG_NETFILTER_XT_MATCH_HASHLIMIT is =
not set<br># CONFIG_NETFILTER_XT_MATCH_HELPER is not set<br># CONFIG_NETFIL=
TER_XT_MATCH_HL is not set<br># CONFIG_NETFILTER_XT_MATCH_IPCOMP is not set=
<br># CONFIG_NETFILTER_XT_MATCH_IPRANGE is not set<br># CONFIG_NETFILTER_XT=
_MATCH_L2TP is not set<br># CONFIG_NETFILTER_XT_MATCH_LENGTH is not set<br>=
# CONFIG_NETFILTER_XT_MATCH_LIMIT is not set<br># CONFIG_NETFILTER_XT_MATCH=
_MAC is not set<br># CONFIG_NETFILTER_XT_MATCH_MARK is not set<br># CONFIG_=
NETFILTER_XT_MATCH_MULTIPORT is not set<br># CONFIG_NETFILTER_XT_MATCH_NFAC=
CT is not set<br># CONFIG_NETFILTER_XT_MATCH_OWNER is not set<br># CONFIG_N=
ETFILTER_XT_MATCH_POLICY is not set<br># CONFIG_NETFILTER_XT_MATCH_PHYSDEV =
is not set<br># CONFIG_NETFILTER_XT_MATCH_PKTTYPE is not set<br># CONFIG_NE=
TFILTER_XT_MATCH_QUOTA is not set<br># CONFIG_NETFILTER_XT_MATCH_RATEEST is=
 not set<br># CONFIG_NETFILTER_XT_MATCH_REALM is not set<br># CONFIG_NETFIL=
TER_XT_MATCH_RECENT is not set<br># CONFIG_NETFILTER_XT_MATCH_SCTP is not s=
et<br># CONFIG_NETFILTER_XT_MATCH_STATE is not set<br># CONFIG_NETFILTER_XT=
_MATCH_STATISTIC is not set<br># CONFIG_NETFILTER_XT_MATCH_STRING is not se=
t<br># CONFIG_NETFILTER_XT_MATCH_TCPMSS is not set<br># CONFIG_NETFILTER_XT=
_MATCH_TIME is not set<br># CONFIG_NETFILTER_XT_MATCH_U32 is not set<br>CON=
FIG_NF_DEFRAG_IPV4=3Dm<br>CONFIG_NF_CONNTRACK_IPV4=3Dm<br># CONFIG_NF_SOCKE=
T_IPV4 is not set<br># CONFIG_NF_DUP_IPV4 is not set<br># CONFIG_NF_LOG_ARP=
 is not set<br>CONFIG_NF_LOG_IPV4=3Dm<br>CONFIG_NF_REJECT_IPV4=3Dm<br>CONFI=
G_NF_NAT_IPV4=3Dm<br>CONFIG_NF_NAT_MASQUERADE_IPV4=3Dm<br># CONFIG_NF_NAT_P=
PTP is not set<br># CONFIG_NF_NAT_H323 is not set<br>CONFIG_NF_DEFRAG_IPV6=
=3Dm<br>CONFIG_NF_CONNTRACK_IPV6=3Dm<br># CONFIG_NF_SOCKET_IPV6 is not set<=
br># CONFIG_NF_DUP_IPV6 is not set<br>CONFIG_NF_REJECT_IPV6=3Dm<br>CONFIG_N=
F_LOG_IPV6=3Dm<br>CONFIG_NF_NAT_IPV6=3Dm<br>CONFIG_NF_NAT_MASQUERADE_IPV6=
=3Dm<br></div><div><br></div><div>What am I missing? Should I enable it som=
e other way instead of using IMAGE_INSTALL_append? Do I need to enable more=
?</div><div><br></div><div>Thanks,</div><div>Kind regards,<br clear=3D"all"=
><div><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
<br><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,san=
s-serif;font-size:16px">Maik Vermeulen</span></div><br><div><span style=3D"=
color:rgb(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13px">=
Embedded Software Engineer=E2=80=82=E2=80=94=E2=80=82<a href=3D"https://www=
.lightyear.one/" rel=3D"noopener noreferrer" style=3D"color:rgb(51,206,224)=
" target=3D"_blank">Lightyear</a></span></div><div><span style=3D"color:rgb=
(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13px"><a href=
=3D"tel:+31616827379" rel=3D"noopener" style=3D"color:rgb(29,29,27)" target=
=3D"_blank">+31 6 16 82 73 79</a></span></div></div></div></div></div></div=
></div>
</div></div>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
--00000000000009976405e52d5361--

