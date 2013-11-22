Return-Path: <zhenhua.luo@freescale.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0184.outbound.messaging.microsoft.com [213.199.154.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F87E006B7
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 02:44:01 -0800 (PST)
Received: from mail112-db8-R.bigfish.com (10.174.8.237) by
	DB8EHSOBE034.bigfish.com (10.174.4.97) with Microsoft SMTP Server id
	14.1.225.22; Fri, 22 Nov 2013 10:44:00 +0000
Received: from mail112-db8 (localhost [127.0.0.1])	by
	mail112-db8-R.bigfish.com (Postfix) with ESMTP id 4CD791C052A	for
	<yocto@yoctoproject.org>; Fri, 22 Nov 2013 10:44:00 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zz14ffIzz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h1d1ah1d2ah1fc6hzzz2dh109h2a8h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1b2fh2222h224fh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e1dh1ff5h2184h21a6h2216h22d0hbe9i1155h)
Received: from mail112-db8 (localhost.localdomain [127.0.0.1]) by mail112-db8
	(MessageSwitch) id 1385117039522178_29700;
	Fri, 22 Nov 2013 10:43:59 +0000 (UTC)
Received: from DB8EHSMHS031.bigfish.com (unknown [10.174.8.237])	by
	mail112-db8.bigfish.com (Postfix) with ESMTP id 7BAD12C0040	for
	<yocto@yoctoproject.org>; Fri, 22 Nov 2013 10:43:59 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB8EHSMHS031.bigfish.com
	(10.174.4.41) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Fri, 22 Nov 2013 10:43:59 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.28]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.03.0158.002;
	Fri, 22 Nov 2013 10:43:58 +0000
From: Zhenhua Luo <zhenhua.luo@freescale.com>
To: Software Development Power Arch Multicore <MCSWDEV@freescale.com>
Thread-Topic: Yocto branches policy for concurrent SDK releases
Thread-Index: Ac7nb754wRnh+qMzR5uPbZBHD585iA==
Importance: high
X-Priority: 1
Date: Fri, 22 Nov 2013 10:43:57 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A0181242A@039-SN2MPN1-021.039d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.58]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto branches policy for concurrent SDK releases
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
X-List-Received-Date: Fri, 22 Nov 2013 10:44:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Currently concurrent SDKs are on-going(e.g. SDK 1.5, T1040/T2080, LS1, etc)=
, the same Yocto branch is used for multiple releases, there is conflict of=
 Yocto recipes for different SDKs.

To resolve above issue, following branch mechanism will be used:

1. For those layers without conflict(poky, meta-oe, meta-virtualization and=
 layers reused from community), same branch will be used and no extra branc=
hes need to be created, change for those layer should be upstreamed synchro=
nously.=20

2. For those layers with conflict, the branch specific to SDK are created, =
currently meta-fsl-ppc and meta-fsl-networking have conflict for different =
SDKs. Following branches will co-exist for such layers.=20
   a. Yocto release branch: dylan, dora. the common changes for all SDKs sh=
ould be submitted against this branch and cherry-picked to SDK specific bra=
nches. The changes should be upstreamed synchronously.=20
   b. SDK specific branch: dylan-sdk1.5, dylan-t1_t2, etc. The SDK specific=
 change should be submitted against SDK branch, when SDK is formally releas=
ed, the changes will be upstreamed. =20

Please let me know if any comment. =20


Best Regards,

Zhenhua


