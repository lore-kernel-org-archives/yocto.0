Return-Path: <zhenhua.luo@freescale.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0188.outbound.messaging.microsoft.com [213.199.154.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C51AE006CA
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 05:33:14 -0800 (PST)
Received: from mail6-db8-R.bigfish.com (10.174.8.247) by
	DB8EHSOBE017.bigfish.com (10.174.4.80) with Microsoft SMTP Server id
	14.1.225.22; Fri, 22 Nov 2013 13:33:13 +0000
Received: from mail6-db8 (localhost [127.0.0.1])	by mail6-db8-R.bigfish.com
	(Postfix) with ESMTP id CF999D80790	for <yocto@yoctoproject.org>;
	Fri, 22 Nov 2013 13:33:12 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz9371I542I1432I14ffIzz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h1d1ah1d2ah1fc6hzz1de098h8275dh1de097hz2dh109h2a8h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1b2fh2222h224fh1fb3h1d0ch1d2eh1d3fh1dfeh1dffh1e1dh1fe8h1ff5h2184h21a6h2216h22d0hbe9i1155h)
Received: from mail6-db8 (localhost.localdomain [127.0.0.1]) by mail6-db8
	(MessageSwitch) id 1385127176795953_23831;
	Fri, 22 Nov 2013 13:32:56 +0000 (UTC)
Received: from DB8EHSMHS027.bigfish.com (unknown [10.174.8.227])	by
	mail6-db8.bigfish.com (Postfix) with ESMTP id 3969A800070	for
	<yocto@yoctoproject.org>; Fri, 22 Nov 2013 13:32:52 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB8EHSMHS027.bigfish.com
	(10.174.4.37) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Fri, 22 Nov 2013 13:32:51 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.28]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.03.0158.002;
	Fri, 22 Nov 2013 13:32:50 +0000
From: Zhenhua Luo <zhenhua.luo@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto branches policy for concurrent SDK releases
Thread-Index: Ac7nb754wRnh+qMzR5uPbZBHD585iAAF3tBA
Date: Fri, 22 Nov 2013 13:32:49 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A0181277E@039-SN2MPN1-021.039d.mgd.msft.net>
References: <11.22.2013-mgd.freescale.com-31-6352068864395453777460-5604@freescale.com>
In-Reply-To: <11.22.2013-mgd.freescale.com-31-6352068864395453777460-5604@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.185.143]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Subject: Re: Yocto branches policy for concurrent SDK releases
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Nov 2013 13:33:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please ignore, sorry for the noise.=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: Luo Zhenhua-B19537
> Sent: Friday, November 22, 2013 6:44 PM
> To: Software Development Power Arch Multicore
> Cc: yocto@yoctoproject.org
> Subject: [mcswdev] Yocto branches policy for concurrent SDK releases
> Importance: High
>=20
> Hi all,
>=20
> Currently concurrent SDKs are on-going(e.g. SDK 1.5, T1040/T2080, LS1,
> etc), the same Yocto branch is used for multiple releases, there is
> conflict of Yocto recipes for different SDKs.
>=20
> To resolve above issue, following branch mechanism will be used:
>=20
> 1. For those layers without conflict(poky, meta-oe, meta-virtualization
> and layers reused from community), same branch will be used and no extra
> branches need to be created, change for those layer should be upstreamed
> synchronously.
>=20
> 2. For those layers with conflict, the branch specific to SDK are created=
,
> currently meta-fsl-ppc and meta-fsl-networking have conflict for
> different SDKs. Following branches will co-exist for such layers.
>    a. Yocto release branch: dylan, dora. the common changes for all SDKs
> should be submitted against this branch and cherry-picked to SDK specific
> branches. The changes should be upstreamed synchronously.
>    b. SDK specific branch: dylan-sdk1.5, dylan-t1_t2, etc. The SDK
> specific change should be submitted against SDK branch, when SDK is
> formally released, the changes will be upstreamed.
>=20
> Please let me know if any comment.
>=20
>=20
> Best Regards,
>=20
> Zhenhua



