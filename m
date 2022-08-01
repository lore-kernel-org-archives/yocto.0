Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513CBC00144
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 15:35:39 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web08.26360.1659368136210003602
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 08:35:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=ktpwKNK0;
 spf=pass (domain: lightyear.one, ip: 209.85.218.49,
 mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ej1-f49.google.com with SMTP id i14so2318759ejg.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 08:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=/psX4fiuUrfEex4M8vVw6g/rceX9obVsV5JIuzkoNBg=;
        b=ktpwKNK0gGXU0m/rianOkHWmhWyvb5OoeYL1Rph1oJyxwLyx9bNyCbW32+rDi8WgYV
         icp2BUAKoAAwcqAzRwDag2RC2omppvbpOwNwgyM5sMNGSakeB3c3cBj+6m/3SSeEky7u
         mlwE5sH/v2Z9vnD/SSRqFql6uaRiISZ4SsVJmPF3l5WvfNSqdFA9ozUmlZ7xnFs1GtGh
         y5GrJxHpJdWpiXphCEWZjZnEqWhCB38ipS9DscuRjzAvMyDKkYoLfXYRVH02F4XMYptl
         6DieGXUfmvxPhD82KTilIBeHPJtSNq/xL6LwfwGtzj16UyD5BSzhb+fOhtF/jQLggy+K
         wd6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=/psX4fiuUrfEex4M8vVw6g/rceX9obVsV5JIuzkoNBg=;
        b=i7h7qbzWxqtA89e14R2mWpDfx8yPrEAmAkGYQxZfdniJ83B8cclWnHVZkQUNQ+LdVD
         FtnDpjBlm5f6qqjYaIRumyXtLdhy8u4l5/rRK28PLmk1hI6HaXFJQshqP8cZDHhVMux2
         rN8FWj46aA7B3+swAcNDOC5swtjn01cau0KwZKsr1Yo+8bgzukqNVP2bazH9HVDQ59Ke
         Z1tn0tQBxYBHoYnDsoFRlFPfJN1vvcjTBvTKOrJi959zOKvik2qh4VCBIwbl9pqMqhWH
         N5cCC+6VS9UTUraNxkETeENnu+qKLHvoinUnKObXOaid4G14hnTpZsgJNjQlAB9HOg8E
         ppwg==
X-Gm-Message-State: AJIora9yF1ufNvB/h2sYsBb/bJbrIZ4HqfBacb80QcElnSqE53xxGC9a
	l8hBMEJfQvHJT+Zm/mqqCAxHJKsPN+KSm/ctakECMF5hD5SpAA6YQ4KKhvMm4ISy1scbVBOZJ9n
	DLN1zrj0XpeaNEHWxc15FSzLshDEBjfH/qA==
X-Google-Smtp-Source: 
 AGRyM1t0X0gCck0KZ/Bx8/pP5qV3cT2GmRin2EMG15lQ3Wx46W3ivyCBDcvXGSw00JegvUpcoddYYF6+7/H2GiIfGNM=
X-Received: by 2002:a17:907:2808:b0:72b:57c2:5e1e with SMTP id
 eb8-20020a170907280800b0072b57c25e1emr12697387ejc.577.1659368134508; Mon, 01
 Aug 2022 08:35:34 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAKO9uzqsbZso--U487egNqGJ7qzFpTxG-jLP-Xcrpi+w0y-TZA@mail.gmail.com>
 <CAKO9uzoJoHreC1L7zr1mkZYF7xcGKKPnQfX1bQcCKyp2n_pDNA@mail.gmail.com>
 <8c7f4c6e-16c2-f8ff-ce5b-7906351ec615@theobroma-systems.com>
In-Reply-To: <8c7f4c6e-16c2-f8ff-ce5b-7906351ec615@theobroma-systems.com>
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Mon, 1 Aug 2022 17:34:58 +0200
Message-ID: 
 <CAKO9uzp3t+G=QUypwOoBnN4yptvQ0o+QZwL8wmqgHiAJ3jHRrw@mail.gmail.com>
Subject: Re: [yocto] nftables_0.7 not working
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000036036205e52fc065"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 15:35:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57716

--00000000000036036205e52fc065
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,

Thank you for your response!

I added kernel-modules to the IMAGE_INSTALL_append, but it seems that the
modules are still not being loaded.
Is that the correct way?

Also I see that CONFIG_NF_TABLES is not set (with ~# zcat /proc/config.gz |
grep CONFIG_NF_ | grep TABLE)
Is that expected?

Kind regards,

Maik Vermeulen

Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one/>
+31 6 16 82 73 79 <+31616827379>


On Mon, Aug 1, 2022 at 3:51 PM Quentin Schulz <
quentin.schulz@theobroma-systems.com> wrote:

> Hi Maik,
>
> On 8/1/22 14:41, Maik Vermeulen wrote:
> > Hi,
> >
> > I added the following to our image recipe:
> > IMAGE_INSTALL_append =3D " nftables"
> >
> > When running that image, nftables seems to be included, but we get the
> > following error:
> > ~# nft
> > ../../nftables-0.7/src/netlink.c:59: Unable to initialize Netlink socke=
t:
> > Protocol not supported
> >
> > Furthermore, it's not showing in lsmod, and also not in modprobe
> > --showconfigs.
> >
> > This is the active kernel config:
> > root@agent336:~# zcat /proc/config.gz | grep
> "CONFIG_NF_\|CONFIG_NETFILTER_"
> > CONFIG_NETFILTER_ADVANCED=3Dy
> > CONFIG_NETFILTER_INGRESS=3Dy
> > # CONFIG_NETFILTER_NETLINK_ACCT is not set
> > # CONFIG_NETFILTER_NETLINK_QUEUE is not set
> > # CONFIG_NETFILTER_NETLINK_LOG is not set
> > CONFIG_NF_CONNTRACK=3Dm
> > CONFIG_NF_LOG_COMMON=3Dm
> > # CONFIG_NF_LOG_NETDEV is not set
> > # CONFIG_NF_CONNTRACK_MARK is not set
> > CONFIG_NF_CONNTRACK_PROCFS=3Dy
> > CONFIG_NF_CONNTRACK_EVENTS=3Dy
> > # CONFIG_NF_CONNTRACK_TIMEOUT is not set
> > # CONFIG_NF_CONNTRACK_TIMESTAMP is not set
> > CONFIG_NF_CT_PROTO_DCCP=3Dy
> > CONFIG_NF_CT_PROTO_SCTP=3Dy
> > CONFIG_NF_CT_PROTO_UDPLITE=3Dy
> > # CONFIG_NF_CONNTRACK_AMANDA is not set
> > # CONFIG_NF_CONNTRACK_FTP is not set
> > # CONFIG_NF_CONNTRACK_H323 is not set
> > # CONFIG_NF_CONNTRACK_IRC is not set
> > # CONFIG_NF_CONNTRACK_NETBIOS_NS is not set
> > # CONFIG_NF_CONNTRACK_SNMP is not set
> > # CONFIG_NF_CONNTRACK_PPTP is not set
> > # CONFIG_NF_CONNTRACK_SANE is not set
> > # CONFIG_NF_CONNTRACK_SIP is not set
> > # CONFIG_NF_CONNTRACK_TFTP is not set
> > # CONFIG_NF_CT_NETLINK is not set
> > # CONFIG_NF_CT_NETLINK_TIMEOUT is not set
> > CONFIG_NF_NAT=3Dm
> > CONFIG_NF_NAT_NEEDED=3Dy
> > CONFIG_NF_NAT_PROTO_DCCP=3Dy
> > CONFIG_NF_NAT_PROTO_UDPLITE=3Dy
> > CONFIG_NF_NAT_PROTO_SCTP=3Dy
> > # CONFIG_NF_NAT_AMANDA is not set
> > # CONFIG_NF_NAT_FTP is not set
> > # CONFIG_NF_NAT_IRC is not set
> > # CONFIG_NF_NAT_SIP is not set
> > # CONFIG_NF_NAT_TFTP is not set
> > # CONFIG_NF_NAT_REDIRECT is not set
> > # CONFIG_NF_TABLES is not set
> > CONFIG_NETFILTER_XTABLES=3Dm
> > # CONFIG_NETFILTER_XT_MARK is not set
> > # CONFIG_NETFILTER_XT_CONNMARK is not set
> > # CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
> > CONFIG_NETFILTER_XT_TARGET_CHECKSUM=3Dm
> > # CONFIG_NETFILTER_XT_TARGET_CLASSIFY is not set
> > # CONFIG_NETFILTER_XT_TARGET_CONNMARK is not set
> > # CONFIG_NETFILTER_XT_TARGET_DSCP is not set
> > # CONFIG_NETFILTER_XT_TARGET_HL is not set
> > # CONFIG_NETFILTER_XT_TARGET_HMARK is not set
> > # CONFIG_NETFILTER_XT_TARGET_IDLETIMER is not set
> > # CONFIG_NETFILTER_XT_TARGET_LED is not set
> > CONFIG_NETFILTER_XT_TARGET_LOG=3Dm
> > # CONFIG_NETFILTER_XT_TARGET_MARK is not set
> > CONFIG_NETFILTER_XT_NAT=3Dm
> > # CONFIG_NETFILTER_XT_TARGET_NETMAP is not set
> > # CONFIG_NETFILTER_XT_TARGET_NFLOG is not set
> > # CONFIG_NETFILTER_XT_TARGET_NFQUEUE is not set
> > # CONFIG_NETFILTER_XT_TARGET_RATEEST is not set
> > # CONFIG_NETFILTER_XT_TARGET_REDIRECT is not set
> > # CONFIG_NETFILTER_XT_TARGET_TEE is not set
> > # CONFIG_NETFILTER_XT_TARGET_TPROXY is not set
> > # CONFIG_NETFILTER_XT_TARGET_TCPMSS is not set
> > # CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP is not set
> > CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=3Dm
> > # CONFIG_NETFILTER_XT_MATCH_BPF is not set
> > # CONFIG_NETFILTER_XT_MATCH_CGROUP is not set
> > # CONFIG_NETFILTER_XT_MATCH_CLUSTER is not set
> > # CONFIG_NETFILTER_XT_MATCH_COMMENT is not set
> > # CONFIG_NETFILTER_XT_MATCH_CONNBYTES is not set
> > # CONFIG_NETFILTER_XT_MATCH_CONNLABEL is not set
> > # CONFIG_NETFILTER_XT_MATCH_CONNLIMIT is not set
> > # CONFIG_NETFILTER_XT_MATCH_CONNMARK is not set
> > CONFIG_NETFILTER_XT_MATCH_CONNTRACK=3Dm
> > # CONFIG_NETFILTER_XT_MATCH_CPU is not set
> > # CONFIG_NETFILTER_XT_MATCH_DCCP is not set
> > # CONFIG_NETFILTER_XT_MATCH_DEVGROUP is not set
> > # CONFIG_NETFILTER_XT_MATCH_DSCP is not set
> > # CONFIG_NETFILTER_XT_MATCH_ECN is not set
> > # CONFIG_NETFILTER_XT_MATCH_ESP is not set
> > # CONFIG_NETFILTER_XT_MATCH_HASHLIMIT is not set
> > # CONFIG_NETFILTER_XT_MATCH_HELPER is not set
> > # CONFIG_NETFILTER_XT_MATCH_HL is not set
> > # CONFIG_NETFILTER_XT_MATCH_IPCOMP is not set
> > # CONFIG_NETFILTER_XT_MATCH_IPRANGE is not set
> > # CONFIG_NETFILTER_XT_MATCH_L2TP is not set
> > # CONFIG_NETFILTER_XT_MATCH_LENGTH is not set
> > # CONFIG_NETFILTER_XT_MATCH_LIMIT is not set
> > # CONFIG_NETFILTER_XT_MATCH_MAC is not set
> > # CONFIG_NETFILTER_XT_MATCH_MARK is not set
> > # CONFIG_NETFILTER_XT_MATCH_MULTIPORT is not set
> > # CONFIG_NETFILTER_XT_MATCH_NFACCT is not set
> > # CONFIG_NETFILTER_XT_MATCH_OWNER is not set
> > # CONFIG_NETFILTER_XT_MATCH_POLICY is not set
> > # CONFIG_NETFILTER_XT_MATCH_PHYSDEV is not set
> > # CONFIG_NETFILTER_XT_MATCH_PKTTYPE is not set
> > # CONFIG_NETFILTER_XT_MATCH_QUOTA is not set
> > # CONFIG_NETFILTER_XT_MATCH_RATEEST is not set
> > # CONFIG_NETFILTER_XT_MATCH_REALM is not set
> > # CONFIG_NETFILTER_XT_MATCH_RECENT is not set
> > # CONFIG_NETFILTER_XT_MATCH_SCTP is not set
> > # CONFIG_NETFILTER_XT_MATCH_STATE is not set
> > # CONFIG_NETFILTER_XT_MATCH_STATISTIC is not set
> > # CONFIG_NETFILTER_XT_MATCH_STRING is not set
> > # CONFIG_NETFILTER_XT_MATCH_TCPMSS is not set
> > # CONFIG_NETFILTER_XT_MATCH_TIME is not set
> > # CONFIG_NETFILTER_XT_MATCH_U32 is not set
> > CONFIG_NF_DEFRAG_IPV4=3Dm
> > CONFIG_NF_CONNTRACK_IPV4=3Dm
> > # CONFIG_NF_SOCKET_IPV4 is not set
> > # CONFIG_NF_DUP_IPV4 is not set
> > # CONFIG_NF_LOG_ARP is not set
> > CONFIG_NF_LOG_IPV4=3Dm
> > CONFIG_NF_REJECT_IPV4=3Dm
> > CONFIG_NF_NAT_IPV4=3Dm
> > CONFIG_NF_NAT_MASQUERADE_IPV4=3Dm
> > # CONFIG_NF_NAT_PPTP is not set
> > # CONFIG_NF_NAT_H323 is not set
> > CONFIG_NF_DEFRAG_IPV6=3Dm
> > CONFIG_NF_CONNTRACK_IPV6=3Dm
> > # CONFIG_NF_SOCKET_IPV6 is not set
> > # CONFIG_NF_DUP_IPV6 is not set
> > CONFIG_NF_REJECT_IPV6=3Dm
> > CONFIG_NF_LOG_IPV6=3Dm
> > CONFIG_NF_NAT_IPV6=3Dm
> > CONFIG_NF_NAT_MASQUERADE_IPV6=3Dm
> >
> > What am I missing? Should I enable it some other way instead of using
> > IMAGE_INSTALL_append? Do I need to enable more?
> >
>
> It seems you built many netfilter features/drivers as modules and not
> built-in in the kernel. When that is the case, you need to add the
> modules to your image because Yocto does not do it for you. Yocto splits
> each module in its own package. As a simple try, you can add the
> kernel-modules package to your image, it is a package that pulls all
> kernel module packages all at once. At least you'll know if there's
> another issue before pinpointing the exact kernel module package names
> you will want in your image (kernel-modules can be pretty big if you
> don't have a "clean" defconfig with many unnecessary drivers built as
> modules).
>
> Cheers,
> Quentin
>

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

--00000000000036036205e52fc065
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Quentin,<div><br></div><div>Thank you for your response=
!</div><div><br></div><div>I added=C2=A0kernel-modules to the IMAGE_INSTALL=
_append, but it seems that the modules are still not being loaded.</div><di=
v>Is that the correct way?</div><div><br></div><div>Also I see that CONFIG_=
NF_TABLES is not set (with ~# zcat /proc/config.gz | grep CONFIG_NF_ | grep=
 TABLE)</div><div>Is that expected?</div><div><br></div><div>Kind regards,<=
br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><br><div><span style=3D"color:rgb=
(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:16px">Maik Verm=
eulen</span></div><br><div><span style=3D"color:rgb(29,29,27);font-family:H=
elvetica,Arial,sans-serif;font-size:13px">Embedded Software Engineer=E2=80=
=82=E2=80=94=E2=80=82<a href=3D"https://www.lightyear.one/" rel=3D"noopener=
 noreferrer" style=3D"color:rgb(51,206,224)" target=3D"_blank">Lightyear</a=
></span></div><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica=
,Arial,sans-serif;font-size:13px"><a href=3D"tel:+31616827379" rel=3D"noope=
ner" style=3D"color:rgb(29,29,27)" target=3D"_blank">+31 6 16 82 73 79</a><=
/span></div></div></div></div><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 1, 2022 at 3:51 PM Quen=
tin Schulz &lt;<a href=3D"mailto:quentin.schulz@theobroma-systems.com">quen=
tin.schulz@theobroma-systems.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi Maik,<br>
<br>
On 8/1/22 14:41, Maik Vermeulen wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I added the following to our image recipe:<br>
&gt; IMAGE_INSTALL_append =3D &quot; nftables&quot;<br>
&gt; <br>
&gt; When running that image, nftables seems to be included, but we get the=
<br>
&gt; following error:<br>
&gt; ~# nft<br>
&gt; ../../nftables-0.7/src/netlink.c:59: Unable to initialize Netlink sock=
et:<br>
&gt; Protocol not supported<br>
&gt; <br>
&gt; Furthermore, it&#39;s not showing in lsmod, and also not in modprobe<b=
r>
&gt; --showconfigs.<br>
&gt; <br>
&gt; This is the active kernel config:<br>
&gt; root@agent336:~# zcat /proc/config.gz | grep &quot;CONFIG_NF_\|CONFIG_=
NETFILTER_&quot;<br>
&gt; CONFIG_NETFILTER_ADVANCED=3Dy<br>
&gt; CONFIG_NETFILTER_INGRESS=3Dy<br>
&gt; # CONFIG_NETFILTER_NETLINK_ACCT is not set<br>
&gt; # CONFIG_NETFILTER_NETLINK_QUEUE is not set<br>
&gt; # CONFIG_NETFILTER_NETLINK_LOG is not set<br>
&gt; CONFIG_NF_CONNTRACK=3Dm<br>
&gt; CONFIG_NF_LOG_COMMON=3Dm<br>
&gt; # CONFIG_NF_LOG_NETDEV is not set<br>
&gt; # CONFIG_NF_CONNTRACK_MARK is not set<br>
&gt; CONFIG_NF_CONNTRACK_PROCFS=3Dy<br>
&gt; CONFIG_NF_CONNTRACK_EVENTS=3Dy<br>
&gt; # CONFIG_NF_CONNTRACK_TIMEOUT is not set<br>
&gt; # CONFIG_NF_CONNTRACK_TIMESTAMP is not set<br>
&gt; CONFIG_NF_CT_PROTO_DCCP=3Dy<br>
&gt; CONFIG_NF_CT_PROTO_SCTP=3Dy<br>
&gt; CONFIG_NF_CT_PROTO_UDPLITE=3Dy<br>
&gt; # CONFIG_NF_CONNTRACK_AMANDA is not set<br>
&gt; # CONFIG_NF_CONNTRACK_FTP is not set<br>
&gt; # CONFIG_NF_CONNTRACK_H323 is not set<br>
&gt; # CONFIG_NF_CONNTRACK_IRC is not set<br>
&gt; # CONFIG_NF_CONNTRACK_NETBIOS_NS is not set<br>
&gt; # CONFIG_NF_CONNTRACK_SNMP is not set<br>
&gt; # CONFIG_NF_CONNTRACK_PPTP is not set<br>
&gt; # CONFIG_NF_CONNTRACK_SANE is not set<br>
&gt; # CONFIG_NF_CONNTRACK_SIP is not set<br>
&gt; # CONFIG_NF_CONNTRACK_TFTP is not set<br>
&gt; # CONFIG_NF_CT_NETLINK is not set<br>
&gt; # CONFIG_NF_CT_NETLINK_TIMEOUT is not set<br>
&gt; CONFIG_NF_NAT=3Dm<br>
&gt; CONFIG_NF_NAT_NEEDED=3Dy<br>
&gt; CONFIG_NF_NAT_PROTO_DCCP=3Dy<br>
&gt; CONFIG_NF_NAT_PROTO_UDPLITE=3Dy<br>
&gt; CONFIG_NF_NAT_PROTO_SCTP=3Dy<br>
&gt; # CONFIG_NF_NAT_AMANDA is not set<br>
&gt; # CONFIG_NF_NAT_FTP is not set<br>
&gt; # CONFIG_NF_NAT_IRC is not set<br>
&gt; # CONFIG_NF_NAT_SIP is not set<br>
&gt; # CONFIG_NF_NAT_TFTP is not set<br>
&gt; # CONFIG_NF_NAT_REDIRECT is not set<br>
&gt; # CONFIG_NF_TABLES is not set<br>
&gt; CONFIG_NETFILTER_XTABLES=3Dm<br>
&gt; # CONFIG_NETFILTER_XT_MARK is not set<br>
&gt; # CONFIG_NETFILTER_XT_CONNMARK is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_AUDIT is not set<br>
&gt; CONFIG_NETFILTER_XT_TARGET_CHECKSUM=3Dm<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_CLASSIFY is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_CONNMARK is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_DSCP is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_HL is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_HMARK is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_IDLETIMER is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_LED is not set<br>
&gt; CONFIG_NETFILTER_XT_TARGET_LOG=3Dm<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_MARK is not set<br>
&gt; CONFIG_NETFILTER_XT_NAT=3Dm<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_NETMAP is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_NFLOG is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_NFQUEUE is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_RATEEST is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_REDIRECT is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_TEE is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_TPROXY is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_TCPMSS is not set<br>
&gt; # CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP is not set<br>
&gt; CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=3Dm<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_BPF is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_CGROUP is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_CLUSTER is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_COMMENT is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_CONNBYTES is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_CONNLABEL is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_CONNLIMIT is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_CONNMARK is not set<br>
&gt; CONFIG_NETFILTER_XT_MATCH_CONNTRACK=3Dm<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_CPU is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_DCCP is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_DEVGROUP is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_DSCP is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_ECN is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_ESP is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_HASHLIMIT is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_HELPER is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_HL is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_IPCOMP is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_IPRANGE is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_L2TP is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_LENGTH is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_LIMIT is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_MAC is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_MARK is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_MULTIPORT is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_NFACCT is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_OWNER is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_POLICY is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_PHYSDEV is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_PKTTYPE is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_QUOTA is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_RATEEST is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_REALM is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_RECENT is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_SCTP is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_STATE is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_STATISTIC is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_STRING is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_TCPMSS is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_TIME is not set<br>
&gt; # CONFIG_NETFILTER_XT_MATCH_U32 is not set<br>
&gt; CONFIG_NF_DEFRAG_IPV4=3Dm<br>
&gt; CONFIG_NF_CONNTRACK_IPV4=3Dm<br>
&gt; # CONFIG_NF_SOCKET_IPV4 is not set<br>
&gt; # CONFIG_NF_DUP_IPV4 is not set<br>
&gt; # CONFIG_NF_LOG_ARP is not set<br>
&gt; CONFIG_NF_LOG_IPV4=3Dm<br>
&gt; CONFIG_NF_REJECT_IPV4=3Dm<br>
&gt; CONFIG_NF_NAT_IPV4=3Dm<br>
&gt; CONFIG_NF_NAT_MASQUERADE_IPV4=3Dm<br>
&gt; # CONFIG_NF_NAT_PPTP is not set<br>
&gt; # CONFIG_NF_NAT_H323 is not set<br>
&gt; CONFIG_NF_DEFRAG_IPV6=3Dm<br>
&gt; CONFIG_NF_CONNTRACK_IPV6=3Dm<br>
&gt; # CONFIG_NF_SOCKET_IPV6 is not set<br>
&gt; # CONFIG_NF_DUP_IPV6 is not set<br>
&gt; CONFIG_NF_REJECT_IPV6=3Dm<br>
&gt; CONFIG_NF_LOG_IPV6=3Dm<br>
&gt; CONFIG_NF_NAT_IPV6=3Dm<br>
&gt; CONFIG_NF_NAT_MASQUERADE_IPV6=3Dm<br>
&gt; <br>
&gt; What am I missing? Should I enable it some other way instead of using<=
br>
&gt; IMAGE_INSTALL_append? Do I need to enable more?<br>
&gt; <br>
<br>
It seems you built many netfilter features/drivers as modules and not <br>
built-in in the kernel. When that is the case, you need to add the <br>
modules to your image because Yocto does not do it for you. Yocto splits <b=
r>
each module in its own package. As a simple try, you can add the <br>
kernel-modules package to your image, it is a package that pulls all <br>
kernel module packages all at once. At least you&#39;ll know if there&#39;s=
 <br>
another issue before pinpointing the exact kernel module package names <br>
you will want in your image (kernel-modules can be pretty big if you <br>
don&#39;t have a &quot;clean&quot; defconfig with many unnecessary drivers =
built as <br>
modules).<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

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
--00000000000036036205e52fc065--

