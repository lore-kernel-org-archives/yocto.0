Received: from IND01-MA1-obe.outbound.protection.outlook.com (IND01-MA1-obe.outbound.protection.outlook.com [40.107.138.57])
 by mx.groups.io with SMTP id smtpd.web08.5966.1615886779373405299
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 02:26:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpit.com header.s=selector1 header.b=dBDO1Kpf;
 spf=pass (domain: kpit.com, ip: 40.107.138.57, mailfrom: purushottam.choudhary@kpit.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ej+bDPRBaKBFGuMLdQSkAgZNnmBUhINNM+O8JU+8oxvKKkDpgYP91C12sWCRYb3IhESyLZeLps734BMqDfXK5sDPMIOD8KVLrTOPaPCSPDKN6Bh/zXe6mSXYFYWydqQz8pvWszdGW8MSvc1In8/bT/ufQot6G1PRRcjmb4NbRRlQjtFJNyEqempOPCXhfCFIkFufM0K8sXQT1dSG3z52neQNb1MK/ml4ZhEuybs9YJSXCo13G9uQAVx5A/sdOyV34KzLsfMj9ygLI0VD74oVPRsgFKzZku5HG3ZK3OLRLuqJf3wsA0gcTma48HLooBxnVxqq4Szc2QZJWz6Klzmmjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vHgqClWPjMQvwkc6TpjQWG9mCZNRNPc6aT2FVjPa7Y4=;
 b=aTi68gpxLQuIwV4SPniEMZ4qFFrBhf6/ycwaQ7uLFopU3hDq90B3iPbl+vav+Qwk7ukcn1CopWwY8w2uo5hq3RLopeW9uGtIEvpZq6s4k7sA4J2+ItCX7O5+ZWjZuVoPJokEqU7dCz2Dr9fmR4DNl3re6/xDgK2xxjEtKuY+hyo5AAyQ/o5WLh8p3idfj2HrJgptc5vr6g24FRcXMvQPikI+0Ks8ftyaLkS21gF5auSyZ7TFWFaCTylQkTA5B5pHAZRdY6PcTz1YNyK3wV4eC3y+khkWO/2bEWf8hJ/DK+xUEIe+TYV4H37WgfZ83E68QBZcMtdbMYeCLqiSvN2wCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kpit.com; dmarc=pass action=none header.from=kpit.com;
 dkim=pass header.d=kpit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vHgqClWPjMQvwkc6TpjQWG9mCZNRNPc6aT2FVjPa7Y4=;
 b=dBDO1KpfuV69SxO7W4yrAOPnV7nYOreGWZlJQnA3GJm5D791MnFoGUj5AsxMbtByiNyGtJzffE7ttFPqu1kOs2V+J9kwBjMtQfMg72goqUN453Xa223Coqsg/JBr5GRf6DRSgV9CyyJ4IXdgfYKG51WnvnSzTssZhiIg9cAfWts=
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:1c::9)
 by PN1PR0101MB1808.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:16::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Tue, 16 Mar
 2021 09:26:05 +0000
Received: from PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::f0db:6436:b4a0:7db7]) by PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::f0db:6436:b4a0:7db7%4]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 09:26:05 +0000
From: "Purushottam choudhary" <purushottam.choudhary@kpit.com>
To: Joe MacDonald <joe@deserted.net>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: Nisha Parrakat <Nisha.Parrakat@kpit.com>
Subject: Re: [yocto] [meta-selinux][PATCH] openssh: don't overwrite sshd_config unconditionally
Thread-Topic: [yocto] [meta-selinux][PATCH] openssh: don't overwrite
 sshd_config unconditionally
Thread-Index: AQHXGkQxOzklJ4LuKEiIsyjfBk9oFaqGV33d
Date: Tue, 16 Mar 2021 09:26:04 +0000
Message-ID: 
 <PNZPR01MB42242D8FA44397E4E37974FB906B9@PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <PNZPR01MB4224133A8F7ECB6409BD62E8906B9@PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PNZPR01MB4224133A8F7ECB6409BD62E8906B9@PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: deserted.net; dkim=none (message not signed)
 header.d=none;deserted.net; dmarc=none action=none header.from=kpit.com;
x-originating-ip: [49.37.86.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d243780b-30df-47a4-d726-08d8e85d85f7
x-ms-traffictypediagnostic: PN1PR0101MB1808:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <PN1PR0101MB1808D96664DAA22C4183E59F906B9@PN1PR0101MB1808.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 595jkt3Yv15qikX6QHmFZuAxMXlSsEkeeCt+brmGoIyL5BJTpj6xF1INm9vTTpZ8+x9tvNJohtcNCfGFAuuxxuAHveSC8A5csX4R1L3W2UmSitWLzM9btYsgAmWZWPgHl0x4lva2hEiOa18ju3JMWfpLieXwZsmbBaAmJh8AfJ1U3Usn8CC282R2cpqipWm3EF3QCwrOFpfYsvn4utky5nl+jQ2+vln/4W8npuxJ2ByJiI6lP4Y11DWgXmoQuuE6H6e9mDfbFtMkMC1YpH9tpBnuMSKh5SgOpcSL2gWryd+K32iQFfXS1s+bp/aXKcnXKP807gy/hkgq7exkVXyLrhEYMyDQd6Ynvgxw5cKcz+BhCcrLanIvjTHGy7uMtXC2zCNJkPMpbHY/fwZ/wyi2LjT4TEnGAqLb7XgHxehJ0vk6Xc6oZv4mClJll85AaPsZEdKbZFKd0xugknL6Cz94d1D79W4jw9jz7uWAGVn+u4R1/uql1o21u6KC1T4JMVoZdo0onBrWjawioZbj+d3nno0Df4+jOE6M8mSLfT+d3LVGlSNzb+I2yGwFbC0o7mfCLarGoS9fFIqa8m1CUvWYQMtbz1HVmTU4Bqv8UCns81BUcpzUckwobyBIxLQsmk4JggWPFVlEYr54zsn0fDTY7g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(366004)(346002)(39850400004)(396003)(8676002)(53546011)(83380400001)(186003)(7696005)(110136005)(33656002)(26005)(478600001)(5660300002)(66574015)(71200400001)(55016002)(4326008)(6506007)(166002)(8936002)(64756008)(30864003)(52536014)(76116006)(2940100002)(966005)(9686003)(2906002)(66556008)(66446008)(107886003)(66476007)(66946007)(19627405001)(316002)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?iso-2022-jp?B?Nlc2b2RsYWxJcDVaNUFVTTR5V2cvbTJjVC81aGFQckdjNFdLUjNGUmpL?=
 =?iso-2022-jp?B?SmZMdnBTcHJhRkJnOTNVYkpRVnhkK0FKczFXN2YwcVVmMi9oZWtqNURp?=
 =?iso-2022-jp?B?cnFFN3Z3dGw2U2tzNDJBWGxrTFhxNU9USTgxVlFadzJuZ1ZPUDBzSFUr?=
 =?iso-2022-jp?B?dEo0c3d6bXNMeExlT0VwMW9vVG10MDh5R29DSEMxN0hEYTVEd0ZJR2xB?=
 =?iso-2022-jp?B?L1lKMG1YWmNCeXM5NVRMTzhBY002WE9iaGdOOTVMaGdaNkFaV29qMmNZ?=
 =?iso-2022-jp?B?Nk4xYzBDTE5uUTFVUDVLckdkWjEyUFZDbzBXNWNCY081VUdkZmZySWNq?=
 =?iso-2022-jp?B?cFpQVVpZQWpjbkN5SW9ENkdoYjd4QmZiYjlleXRYT0cyTTYyZ0F5S0xP?=
 =?iso-2022-jp?B?RysvNC9BMWsyQ3lyZUVtMEpuL2QxQk92dkNNK2k5dlk2OXRCNzNwbXhZ?=
 =?iso-2022-jp?B?QzFGdUlBQVdrZGFBbVcrQ3pVUjZ2Wm01WHYzcW4zd2xvR2tZNGNlNmM3?=
 =?iso-2022-jp?B?SmVDU1VDdDJzUHJoTEJPYzZwQm40V3g4a0U3TlB2cEM3cDhFNm9vb25H?=
 =?iso-2022-jp?B?dXNTc2dvdFcxdkFocS9sN0FqQ3hvQS8zVVZoVXUrRklVdzYyb0pqWjgz?=
 =?iso-2022-jp?B?MlN3emJ4dktTM2JrdS90Sk9QL08ydFhKS0dDTkJjTmZFNlpDcjJvcnVs?=
 =?iso-2022-jp?B?TU1yVDd3YUFUeEFzQnJaRno3alBHUWRweTlhVUpQUUd1d3lya2g0N0w5?=
 =?iso-2022-jp?B?dWlzUXJzYWVmdEIwS0RtQWZKVEJBWmF5VHlPYk9rc05WelRndUJZaGRi?=
 =?iso-2022-jp?B?M21ySDkwbEliMXRvRWorUlFjVmQwU3JNSmM1WFYyeDUvTytDNlZPT2M4?=
 =?iso-2022-jp?B?QkYrbnhhQXNSRnU4MXg2ak9lQTRFSVNCVkdsMWRmejNBN1VWQ3d2M3lF?=
 =?iso-2022-jp?B?alF2NnErMnhJSTY5dEl4MlgyNDVwcnpLOGN0SUhtczRuenZPK2ZZZGRK?=
 =?iso-2022-jp?B?cmJTdW9RQ0JncmkzdDc2T2xKTGl4RVYzYWJ2M0tJUnpNNEs2dWtLejUw?=
 =?iso-2022-jp?B?REpzWU1FdjRBWWhhdjJXRWQ4YW9mUXA1YnhpVTJGS0VJYWhhcFJWWFAx?=
 =?iso-2022-jp?B?RFJ5UHNIbzZVY1NxR0NRSDFRTEt2OHRUY0RBaVd1MHFUTW1GdFlmSmZZ?=
 =?iso-2022-jp?B?eTVBa05GRWdYVlNRNEIwYy9oU2NGemdiZnpURUxWUU1SY1RzekJ4aThv?=
 =?iso-2022-jp?B?am1qcTZxV2hIcHViYTg0OXFKZGZYTnkxM1lDTDY1OTQxSE54NXVRZ2Rk?=
 =?iso-2022-jp?B?OTRWRUxHM0VqRzdnei8xVTVCb3lRWHFtaTIzSWROV1dSVjJlSERqUlVi?=
 =?iso-2022-jp?B?MHU1SHVKT2p1bmdxQWRmVUExdlZqYy9NVExxcC82emt2OHd1cExMM1k2?=
 =?iso-2022-jp?B?MW9wVEhwZWZnbm05L1dzMGpQb1lzOHVZS3l2bzZsd3Vrc0RrRDJEdUox?=
 =?iso-2022-jp?B?d3F2alhORTR0VU8wWlFRVzFNWW9aaXZBK0NVSjZ6YkZSVWk2Szd6MkVC?=
 =?iso-2022-jp?B?Q25hbDFQZUVRaGJTSDI4bXljSG9oYThsaXlUQWNMaHdpZGIzUmZRRWZr?=
 =?iso-2022-jp?B?ZU1QWXM5RkcyL2FHVTZ3Zi82Tk9UWDc5TjFrUjJnbWJ1WkwrdFZoNDBQ?=
 =?iso-2022-jp?B?VjZnVXNNKzZaVDUyWkRkY1dYVU0yb0I4K28yTFRWVytJMnFLNTMrNjZC?=
 =?iso-2022-jp?B?c2RIOGM2c1dtYnRSWUJZL0NWc3lDZ0NwUTBvaVgxTE5pZTZiMytnYnYr?=
 =?iso-2022-jp?B?MUtwQXlzMEJDVC95MU53dFlEV3pUR2xQaG9Mb0FNeDBGR0JrK1RCOWRJ?=
 =?iso-2022-jp?B?Rnc1WmlDVjJ2MUxGaDM0WS9Xdm5nPQ==?=
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d243780b-30df-47a4-d726-08d8e85d85f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 09:26:04.7217
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L3Er0y7irTWON2D8xGISsZs3EFBOy/H4zoOLlLD0BhTx3Q8qX1bbcKgsiah+ocShlHnoS8/dX4+lCXZCbsS9aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR0101MB1808
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PNZPR01MB42242D8FA44397E4E37974FB906B9PNZPR01MB4224INDP_"

--_000_PNZPR01MB42242D8FA44397E4E37974FB906B9PNZPR01MB4224INDP_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi Joe,

Also, we're using many system users and in addition are separating service=
s using SELinux, and since none of the users have passwords (or any other a=
uthentication methods, for that matter) configured, we don't need PAM.

Thanks & Regards,
Purushottam
________________________________
From: Purushottam Choudhary
Sent: Tuesday, March 16, 2021 2:41 PM
To: Joe MacDonald <joe@deserted.net>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Nisha Par=
rakat <Nisha.Parrakat@kpit.com>
Subject: Re: [yocto] [meta-selinux][PATCH] openssh: don't overwrite sshd_c=
onfig unconditionally

Hi Joe,

PAM is an option distro feature and SElinux is also a different distro fea=
ture.
Ours is an embedded system with no requirement of the users to login to th=
e system.
The project wide requirement considers selinux and pam as two different fe=
atures.
Selinux doesn't depend on pam so there should be at least an option to not=
 use pam with meta-selinux.
From security point of view, in our project, we do not need PAM but we nee=
d selinux
and we may not test PAM at all ,that could cause us to overlook the vulner=
abilities and patches.

this patch is for two reasons
1. We find that the current implementation completely replaced the sshd_co=
nfig from yocto
just to set the UsePAM =3D yes , which is not such a good idea considering=
 the fact the rest of the
sshd_config changes are currently the same as in yocto.
2. the sshd is also completely replaced by just selecting the selinux dist=
ro and even if the user doesn't select PAM as distro in our case.


Thanks & Regards,
Purushottam

________________________________
From: Joe MacDonald
Sent: Friday, March 12, 2021 9:39 PM
To: Purushottam Choudhary
Cc: yocto@lists.yoctoproject.org; Nisha Parrakat
Subject: Re: [yocto] [meta-selinux][PATCH] openssh: don't overwrite sshd_c=
onfig unconditionally

Hi Purushottam,

[Re: [yocto] [meta-selinux][PATCH] openssh: don't overwrite sshd_config un=
conditionally] On 21.03.12 (Fri 12:05) Purushottam choudhary wrote:

> Hi,
>
> Please let me know if there any update on this change
> & the tentative week when this change is going to merge in the code.

Sorry about that, I haven't merged it for a couple of reasons, but I
should have followed up before now on it.  It doesn't appear to be against
the currnet head of tree, so I'd suggest a quick rebase on your part and
resend if you think it is still relevant.

At a more basic level, though, I don't know who or how many projects are
intending to use meta-selinux without PAM.  The layer documentation does
make it clear we expect PAM to always be present:

 45 1.2 - How does this layer do to enable SELinux features?
 46
 47 To enable SELinux features, this layers has done these works:
 48
 49    * new DISTRO_FEATURES "selinux" defined
 50    * new DISTRO "poky-selinux" defined, with DISTRO_FEATURES +=3D "pam=
 selinux"
 51    * config file for Linux kernel to enable SELinux
 52    * recipes for SELinux userland libraries and tools
 53    * package group (packagegroup-core-selinux) for SELinux userland pa=
ckages
 54    * bbappends for SELinux related recipes to build with SELinux enabl=
ed
 55    * recipes for SELinux policy modified from refpolicy

The documentation is certainly in need of some updating, but I think the
majority of our users (if not all) are including PAM in their projects.  I
would be interested to hear about your PAM-less meta-selinux project if
you can share some details.

It is certainly arguable whether the config file should be dumped in place
as it is being today, but I do think it's functioning as intended right
now.  Shifting the PAM sshd configuration to a different directory is fine
with me, I don't have any particular love of everything in one files/
directory, but I also don't have any strong aversion to it until it
becomes an obvious problem (eg. two separate files that should have the
same name and different purposes, such as something to be installed in
/etc/defaults/ and /etc/X11/, maybe).

I hope that clears things up a bit.  Thanks.

-Joe.

>
> Thanks & Regards,
> Purushottam
>
> =1B$B(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(=
,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,=
(,(,(,(,(,(,(,(,=1B(B
> From: Purushottam Choudhary <purushottam.choudhary@kpit.com>
> Sent: Friday, February 26, 2021 2:29 PM
> To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Cc: Nisha Parrakat <Nisha.Parrakat@kpit.com>
> Subject: [meta-selinux][PATCH] openssh: don't overwrite sshd_config
> unconditionally
>
> The current implementation was overwriting the sshd_config and sshd
> assuming PAM is needed by default.
>
> openssh should use the default sshd_config packaged with the component
> if no distro specific needs are present and not overwrite the full
> sshd_config file.
>
> 1. If PAM is enabled as a distro then enable the UsePAM option in sshd_c=
onfig.
> 2. Moved the file sshd to pam directory so that when pam is enabled,
>    then replace the default from poky by installing the same.
>
> Signed-off-by: Purushottam Choudhary <purushottam.choudhary@kpit.com>
> ---
>  recipes-connectivity/openssh/files/{ =3D> pam}/sshd |   0
>  recipes-connectivity/openssh/files/sshd_config    | 118 ---------------=
-------
>  recipes-connectivity/openssh/openssh_%.bbappend   |  14 +++
>  3 files changed, 14 insertions(+), 118 deletions(-)
>  rename recipes-connectivity/openssh/files/{ =3D> pam}/sshd (100%)
>  delete mode 100644 recipes-connectivity/openssh/files/sshd_config
>
> diff --git a/recipes-connectivity/openssh/files/sshd b/recipes-connectiv=
ity/
> openssh/files/pam/sshd
> similarity index 100%
> rename from recipes-connectivity/openssh/files/sshd
> rename to recipes-connectivity/openssh/files/pam/sshd
> diff --git a/recipes-connectivity/openssh/files/sshd_config b/
> recipes-connectivity/openssh/files/sshd_config
> deleted file mode 100644
> index 1c33ad0..0000000
> --- a/recipes-connectivity/openssh/files/sshd_config
> +++ /dev/null
> @@ -1,118 +0,0 @@
> -#      $OpenBSD: sshd_config,v 1.102 2018/02/16 02:32:40 djm Exp $
> -
> -# This is the sshd server system-wide configuration file.  See
> -# sshd_config(5) for more information.
> -
> -# This sshd was compiled with PATH=3D/usr/bin:/bin:/usr/sbin:/sbin
> -
> -# The strategy used for options in the default sshd_config shipped with
> -# OpenSSH is to specify options with their default value where
> -# possible, but leave them commented.  Uncommented options override the
> -# default value.
> -
> -#Port 22
> -#AddressFamily any
> -#ListenAddress 0.0.0.0
> -#ListenAddress ::
> -
> -#HostKey /etc/ssh/ssh_host_rsa_key
> -#HostKey /etc/ssh/ssh_host_ecdsa_key
> -#HostKey /etc/ssh/ssh_host_ed25519_key
> -
> -# Ciphers and keying
> -#RekeyLimit default none
> -
> -# Logging
> -#SyslogFacility AUTH
> -#LogLevel INFO
> -
> -# Authentication:
> -
> -#LoginGraceTime 2m
> -#PermitRootLogin prohibit-password
> -#StrictModes yes
> -#MaxAuthTries 6
> -#MaxSessions 10
> -
> -#PubkeyAuthentication yes
> -
> -# The default is to check both .ssh/authorized_keys and .ssh/authorized=
_keys2
> -# but this is overridden so installations will only check .ssh/authoriz=
ed_keys
> -#AuthorizedKeysFile    .ssh/authorized_keys
> -
> -#AuthorizedPrincipalsFile none
> -
> -#AuthorizedKeysCommand none
> -#AuthorizedKeysCommandUser nobody
> -
> -# For this to work you will also need host keys in /etc/ssh/ssh_known_h=
osts
> -#HostbasedAuthentication no
> -# Change to yes if you don't trust ~/.ssh/known_hosts for
> -# HostbasedAuthentication
> -#IgnoreUserKnownHosts no
> -# Don't read the user's ~/.rhosts and ~/.shosts files
> -#IgnoreRhosts yes
> -
> -# To disable tunneled clear text passwords, change to no here!
> -#PasswordAuthentication yes
> -#PermitEmptyPasswords no
> -
> -# Change to yes to enable challenge-response passwords (beware issues w=
ith
> -# some PAM modules and threads)
> -ChallengeResponseAuthentication no
> -
> -# Kerberos options
> -#KerberosAuthentication no
> -#KerberosOrLocalPasswd yes
> -#KerberosTicketCleanup yes
> -#KerberosGetAFSToken no
> -
> -# GSSAPI options
> -#GSSAPIAuthentication no
> -#GSSAPICleanupCredentials yes
> -
> -# Set this to 'yes' to enable PAM authentication, account processing,
> -# and session processing. If this is enabled, PAM authentication will
> -# be allowed through the ChallengeResponseAuthentication and
> -# PasswordAuthentication.  Depending on your PAM configuration,
> -# PAM authentication via ChallengeResponseAuthentication may bypass
> -# the setting of "PermitRootLogin without-password".
> -# If you just want the PAM account and session checks to run without
> -# PAM authentication, then enable this but set PasswordAuthentication
> -# and ChallengeResponseAuthentication to 'no'.
> -UsePAM yes
> -
> -#AllowAgentForwarding yes
> -#AllowTcpForwarding yes
> -#GatewayPorts no
> -#X11Forwarding no
> -#X11DisplayOffset 10
> -#X11UseLocalhost yes
> -#PermitTTY yes
> -#PrintMotd yes
> -#PrintLastLog yes
> -#TCPKeepAlive yes
> -#UseLogin no
> -#PermitUserEnvironment no
> -Compression no
> -ClientAliveInterval 15
> -ClientAliveCountMax 4
> -#UseDNS no
> -#PidFile /var/run/sshd.pid
> -#MaxStartups 10:30:100
> -#PermitTunnel no
> -#ChrootDirectory none
> -#VersionAddendum none
> -
> -# no default banner path
> -#Banner none
> -
> -# override default of no subsystems
> -Subsystem      sftp    /usr/libexec/sftp-server
> -
> -# Example of overriding settings on a per-user basis
> -#Match User anoncvs
> -#      X11Forwarding no
> -#      AllowTcpForwarding no
> -#      PermitTTY no
> -#      ForceCommand cvs server
> diff --git a/recipes-connectivity/openssh/openssh_%.bbappend b/
> recipes-connectivity/openssh/openssh_%.bbappend
> index 7719d3b..b541c3e 100644
> --- a/recipes-connectivity/openssh/openssh_%.bbappend
> +++ b/recipes-connectivity/openssh/openssh_%.bbappend
> @@ -1 +1,15 @@
>  require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}
> _selinux.inc', '', d)}
> +
> +# if pam feature is enabled in the distro then take sshd from the pam
> directory.
> +FILESEXTRAPATHS_prepend :=3D "${@bb.utils.contains('DISTRO_FEATURES', '=
pam', '$
> {THISDIR}/files/pam:', ' ', d)}"
> +
> +do_install_append(){
> +
> +    if [ "${@bb.utils.filter('DISTRO_FEATURES', 'pam', d)}" ]; then
> +        # Make sure UsePAM entry is in the sshd_config file.
> +        # If entry not present then append it.
> +        grep -q 'UsePAM' "${D}/etc/ssh/sshd_config" && \
> +        sed -i 's/.*UsePAM.*/UsePAM yes/' "${D}/etc/ssh/sshd_config" ||=
 \
> +        echo 'UsePAM yes' >> "${D}/etc/ssh/sshd_config"
> +    fi
> +}
> --
> 2.7.4
>
> This message contains information that may be privileged or confidential=
 and is
> the property of the KPIT Technologies Ltd. It is intended only for the p=
erson
> to whom it is addressed. If you are not the intended recipient, you are =
not
> authorized to read, print, retain copy, disseminate, distribute, or use =
this
> message or any part thereof. If you receive this message in error, pleas=
e
> notify the sender immediately and delete all copies of this message. KPI=
T
> Technologies Ltd. does not accept any liability for virus infected mails=
.

>
>=20
>


--
-Joe MacDonald.
:wq
This message contains information that may be privileged or confidential a=
nd is the property of the KPIT Technologies Ltd. It is intended only for th=
e person to whom it is addressed. If you are not the intended recipient, yo=
u are not authorized to read, print, retain copy, disseminate, distribute, =
or use this message or any part thereof. If you receive this message in err=
or, please notify the sender immediately and delete all copies of this mess=
age. KPIT Technologies Ltd. does not accept any liability for virus infecte=
d mails.

--_000_PNZPR01MB42242D8FA44397E4E37974FB906B9PNZPR01MB4224INDP_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022=
-jp">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-b=
ottom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
Hi Joe,<br>
<br>
<span style=3D"box-sizing:border-box;font-family:&quot;Segoe UI&quot;, sys=
tem-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-ser=
if;font-size:14px;orphans:2;widows:2">Also, we're using many system users a=
nd in addition are separating services using SELinux, and since none
 of the users have passwords (or any other authentication methods, for tha=
t matter) configured, we don't need PAM.</span><br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:; margin:0">
<div>Thanks &amp; Regards,</div>
<div>Purushottam<br>
</div>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" s=
tyle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Purushottam Choudhar=
y<br>
<b>Sent:</b> Tuesday, March 16, 2021 2:41 PM<br>
<b>To:</b> Joe MacDonald &lt;joe@deserted.net&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&g=
t;; Nisha Parrakat &lt;Nisha.Parrakat@kpit.com&gt;<br>
<b>Subject:</b> Re: [yocto] [meta-selinux][PATCH] openssh: don't overwrite=
 sshd_config unconditionally</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0)">
Hi Joe,<br>
<br>
<div style=3D"box-sizing:border-box; font-family:&quot;Segoe UI&quot;,syst=
em-ui,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,sans-serif; =
font-size:14px; orphans:2; widows:2">
<div>PAM is an option distro feature and SElinux is also a different distr=
o feature.<br>
Ours is an embedded system with no requirement of the users to login to th=
e system.<br>
The project wide requirement considers selinux and pam as two different fe=
atures.</div>
<div>
<div></div>
<div>
<div>Selinux doesn't depend on pam so there should be at least an option t=
o not use pam with meta-selinux.<br>
From security point of view, in our project, we do not need PAM but we nee=
d selinux<br>
and we may not test PAM at all ,that could cause us to overlook the vulner=
abilities and patches.</div>
<div>
<div>
<div><br>
this patch is for two reasons</div>
<div>
<div></div>
<div>
<div>1. We find that the current implementation completely replaced the ss=
hd_config from yocto<br>
just to set the UsePAM =3D yes , which is not such a good idea considering=
 the fact the rest of the<br>
sshd_config changes are currently the same as in yocto.</div>
<div>
<div></div>
<div>
<div>2. the sshd is also completely replaced by just selecting the selinux=
 distro and even if the user doesn't select PAM as distro in our case.</div=
>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_Signature">
<div>
<div name=3D"x_divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif; font-size:; margin:0">
<div>Thanks &amp; Regards,</div>
<div>Purushottam<br>
</div>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0)">
<br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<b>From:</b> Joe MacDonald<br>
<b>Sent:</b> Friday, March 12, 2021 9:39 PM<br>
<b>To:</b> Purushottam Choudhary<br>
<b>Cc:</b> yocto@lists.yoctoproject.org; Nisha Parrakat<br>
<b>Subject:</b> Re: [yocto] [meta-selinux][PATCH] openssh: don't overwrite=
 sshd_config unconditionally
<div><br>
</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11=
pt">
<div class=3D"x_PlainText">Hi Purushottam,<br>
<br>
[Re: [yocto] [meta-selinux][PATCH] openssh: don't overwrite sshd_config un=
conditionally] On 21.03.12 (Fri 12:05) Purushottam choudhary wrote:<br>
<br>
&gt; Hi,<br>
&gt; <br>
&gt; Please let me know if there any update on this change<br>
&gt; &amp; the tentative week when this change is going to merge in the co=
de.<br>
<br>
Sorry about that, I haven't merged it for a couple of reasons, but I<br>
should have followed up before now on it.&nbsp; It doesn't appear to be ag=
ainst<br>
the currnet head of tree, so I'd suggest a quick rebase on your part and<b=
r>
resend if you think it is still relevant.<br>
<br>
At a more basic level, though, I don't know who or how many projects are<b=
r>
intending to use meta-selinux without PAM.&nbsp; The layer documentation d=
oes<br>
make it clear we expect PAM to always be present:<br>
<br>
&nbsp;45 1.2 - How does this layer do to enable SELinux features?<br>
&nbsp;46<br>
&nbsp;47 To enable SELinux features, this layers has done these works:<br>
&nbsp;48<br>
&nbsp;49&nbsp;&nbsp;&nbsp; * new DISTRO_FEATURES &quot;selinux&quot; defin=
ed<br>
&nbsp;50&nbsp;&nbsp;&nbsp; * new DISTRO &quot;poky-selinux&quot; defined, =
with DISTRO_FEATURES +=3D &quot;pam selinux&quot;<br>
&nbsp;51&nbsp;&nbsp;&nbsp; * config file for Linux kernel to enable SELinu=
x<br>
&nbsp;52&nbsp;&nbsp;&nbsp; * recipes for SELinux userland libraries and to=
ols<br>
&nbsp;53&nbsp;&nbsp;&nbsp; * package group (packagegroup-core-selinux) for=
 SELinux userland packages<br>
&nbsp;54&nbsp;&nbsp;&nbsp; * bbappends for SELinux related recipes to buil=
d with SELinux enabled<br>
&nbsp;55&nbsp;&nbsp;&nbsp; * recipes for SELinux policy modified from refp=
olicy<br>
&nbsp;<br>
The documentation is certainly in need of some updating, but I think the<b=
r>
majority of our users (if not all) are including PAM in their projects.&nb=
sp; I<br>
would be interested to hear about your PAM-less meta-selinux project if<br=
>
you can share some details.<br>
<br>
It is certainly arguable whether the config file should be dumped in place=
<br>
as it is being today, but I do think it's functioning as intended right<br=
>
now.&nbsp; Shifting the PAM sshd configuration to a different directory is=
 fine<br>
with me, I don't have any particular love of everything in one files/<br>
directory, but I also don't have any strong aversion to it until it<br>
becomes an obvious problem (eg. two separate files that should have the<br=
>
same name and different purposes, such as something to be installed in<br>
/etc/defaults/ and /etc/X11/, maybe).<br>
<br>
I hope that clears things up a bit.&nbsp; Thanks.<br>
<br>
-Joe.<br>
<br>
&gt; <br>
&gt; Thanks &amp; Regards,<br>
&gt; Purushottam<br>
&gt; <br>
&gt; =1B$B(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,=
(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(,(=
,(,(,(,(,(,(,(,(,(,=1B(B<br>
&gt; From: Purushottam Choudhary &lt;purushottam.choudhary@kpit.com&gt;<br=
>
&gt; Sent: Friday, February 26, 2021 2:29 PM<br>
&gt; To: yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;=
<br>
&gt; Cc: Nisha Parrakat &lt;Nisha.Parrakat@kpit.com&gt;<br>
&gt; Subject: [meta-selinux][PATCH] openssh: don't overwrite sshd_config<b=
r>
&gt; unconditionally<br>
&gt;&nbsp; <br>
&gt; The current implementation was overwriting the sshd_config and sshd<b=
r>
&gt; assuming PAM is needed by default.<br>
&gt; <br>
&gt; openssh should use the default sshd_config packaged with the componen=
t<br>
&gt; if no distro specific needs are present and not overwrite the full<br=
>
&gt; sshd_config file.<br>
&gt; <br>
&gt; 1. If PAM is enabled as a distro then enable the UsePAM option in ssh=
d_config.<br>
&gt; 2. Moved the file sshd to pam directory so that when pam is enabled,<=
br>
&gt;&nbsp;&nbsp;&nbsp; then replace the default from poky by installing th=
e same.<br>
&gt; <br>
&gt; Signed-off-by: Purushottam Choudhary &lt;purushottam.choudhary@kpit.c=
om&gt;<br>
&gt; ---<br>
&gt;&nbsp; recipes-connectivity/openssh/files/{ =3D&gt; pam}/sshd |&nbsp;&=
nbsp; 0<br>
&gt;&nbsp; recipes-connectivity/openssh/files/sshd_config&nbsp;&nbsp;&nbsp=
; | 118 ----------------------<br>
&gt;&nbsp; recipes-connectivity/openssh/openssh_%.bbappend&nbsp;&nbsp; |&n=
bsp; 14 +++<br>
&gt;&nbsp; 3 files changed, 14 insertions(+), 118 deletions(-)<br>
&gt;&nbsp; rename recipes-connectivity/openssh/files/{ =3D&gt; pam}/sshd (=
100%)<br>
&gt;&nbsp; delete mode 100644 recipes-connectivity/openssh/files/sshd_conf=
ig<br>
&gt; <br>
&gt; diff --git a/recipes-connectivity/openssh/files/sshd b/recipes-connec=
tivity/<br>
&gt; openssh/files/pam/sshd<br>
&gt; similarity index 100%<br>
&gt; rename from recipes-connectivity/openssh/files/sshd<br>
&gt; rename to recipes-connectivity/openssh/files/pam/sshd<br>
&gt; diff --git a/recipes-connectivity/openssh/files/sshd_config b/<br>
&gt; recipes-connectivity/openssh/files/sshd_config<br>
&gt; deleted file mode 100644<br>
&gt; index 1c33ad0..0000000<br>
&gt; --- a/recipes-connectivity/openssh/files/sshd_config<br>
&gt; +++ /dev/null<br>
&gt; @@ -1,118 +0,0 @@<br>
&gt; -#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $OpenBSD: sshd_config,v 1.102 2018/0=
2/16 02:32:40 djm Exp $<br>
&gt; -<br>
&gt; -# This is the sshd server system-wide configuration file.&nbsp; See<=
br>
&gt; -# sshd_config(5) for more information.<br>
&gt; -<br>
&gt; -# This sshd was compiled with PATH=3D/usr/bin:/bin:/usr/sbin:/sbin<b=
r>
&gt; -<br>
&gt; -# The strategy used for options in the default sshd_config shipped w=
ith<br>
&gt; -# OpenSSH is to specify options with their default value where<br>
&gt; -# possible, but leave them commented.&nbsp; Uncommented options over=
ride the<br>
&gt; -# default value.<br>
&gt; -<br>
&gt; -#Port 22<br>
&gt; -#AddressFamily any<br>
&gt; -#ListenAddress 0.0.0.0<br>
&gt; -#ListenAddress ::<br>
&gt; -<br>
&gt; -#HostKey /etc/ssh/ssh_host_rsa_key<br>
&gt; -#HostKey /etc/ssh/ssh_host_ecdsa_key<br>
&gt; -#HostKey /etc/ssh/ssh_host_ed25519_key<br>
&gt; -<br>
&gt; -# Ciphers and keying<br>
&gt; -#RekeyLimit default none<br>
&gt; -<br>
&gt; -# Logging<br>
&gt; -#SyslogFacility AUTH<br>
&gt; -#LogLevel INFO<br>
&gt; -<br>
&gt; -# Authentication:<br>
&gt; -<br>
&gt; -#LoginGraceTime 2m<br>
&gt; -#PermitRootLogin prohibit-password<br>
&gt; -#StrictModes yes<br>
&gt; -#MaxAuthTries 6<br>
&gt; -#MaxSessions 10<br>
&gt; -<br>
&gt; -#PubkeyAuthentication yes<br>
&gt; -<br>
&gt; -# The default is to check both .ssh/authorized_keys and .ssh/authori=
zed_keys2<br>
&gt; -# but this is overridden so installations will only check .ssh/autho=
rized_keys<br>
&gt; -#AuthorizedKeysFile&nbsp;&nbsp;&nbsp; .ssh/authorized_keys<br>
&gt; -<br>
&gt; -#AuthorizedPrincipalsFile none<br>
&gt; -<br>
&gt; -#AuthorizedKeysCommand none<br>
&gt; -#AuthorizedKeysCommandUser nobody<br>
&gt; -<br>
&gt; -# For this to work you will also need host keys in /etc/ssh/ssh_know=
n_hosts<br>
&gt; -#HostbasedAuthentication no<br>
&gt; -# Change to yes if you don't trust ~/.ssh/known_hosts for<br>
&gt; -# HostbasedAuthentication<br>
&gt; -#IgnoreUserKnownHosts no<br>
&gt; -# Don't read the user's ~/.rhosts and ~/.shosts files<br>
&gt; -#IgnoreRhosts yes<br>
&gt; -<br>
&gt; -# To disable tunneled clear text passwords, change to no here!<br>
&gt; -#PasswordAuthentication yes<br>
&gt; -#PermitEmptyPasswords no<br>
&gt; -<br>
&gt; -# Change to yes to enable challenge-response passwords (beware issue=
s with<br>
&gt; -# some PAM modules and threads)<br>
&gt; -ChallengeResponseAuthentication no<br>
&gt; -<br>
&gt; -# Kerberos options<br>
&gt; -#KerberosAuthentication no<br>
&gt; -#KerberosOrLocalPasswd yes<br>
&gt; -#KerberosTicketCleanup yes<br>
&gt; -#KerberosGetAFSToken no<br>
&gt; -<br>
&gt; -# GSSAPI options<br>
&gt; -#GSSAPIAuthentication no<br>
&gt; -#GSSAPICleanupCredentials yes<br>
&gt; -<br>
&gt; -# Set this to 'yes' to enable PAM authentication, account processing=
,<br>
&gt; -# and session processing. If this is enabled, PAM authentication wil=
l<br>
&gt; -# be allowed through the ChallengeResponseAuthentication and<br>
&gt; -# PasswordAuthentication.&nbsp; Depending on your PAM configuration,=
<br>
&gt; -# PAM authentication via ChallengeResponseAuthentication may bypass<=
br>
&gt; -# the setting of &quot;PermitRootLogin without-password&quot;.<br>
&gt; -# If you just want the PAM account and session checks to run without=
<br>
&gt; -# PAM authentication, then enable this but set PasswordAuthenticatio=
n<br>
&gt; -# and ChallengeResponseAuthentication to 'no'.<br>
&gt; -UsePAM yes<br>
&gt; -<br>
&gt; -#AllowAgentForwarding yes<br>
&gt; -#AllowTcpForwarding yes<br>
&gt; -#GatewayPorts no<br>
&gt; -#X11Forwarding no<br>
&gt; -#X11DisplayOffset 10<br>
&gt; -#X11UseLocalhost yes<br>
&gt; -#PermitTTY yes<br>
&gt; -#PrintMotd yes<br>
&gt; -#PrintLastLog yes<br>
&gt; -#TCPKeepAlive yes<br>
&gt; -#UseLogin no<br>
&gt; -#PermitUserEnvironment no<br>
&gt; -Compression no<br>
&gt; -ClientAliveInterval 15<br>
&gt; -ClientAliveCountMax 4<br>
&gt; -#UseDNS no<br>
&gt; -#PidFile /var/run/sshd.pid<br>
&gt; -#MaxStartups 10:30:100<br>
&gt; -#PermitTunnel no<br>
&gt; -#ChrootDirectory none<br>
&gt; -#VersionAddendum none<br>
&gt; -<br>
&gt; -# no default banner path<br>
&gt; -#Banner none<br>
&gt; -<br>
&gt; -# override default of no subsystems<br>
&gt; -Subsystem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sftp&nbsp;&nbsp;&nbsp; /usr/=
libexec/sftp-server<br>
&gt; -<br>
&gt; -# Example of overriding settings on a per-user basis<br>
&gt; -#Match User anoncvs<br>
&gt; -#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X11Forwarding no<br>
&gt; -#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AllowTcpForwarding no<br>
&gt; -#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PermitTTY no<br>
&gt; -#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ForceCommand cvs server<br>
&gt; diff --git a/recipes-connectivity/openssh/openssh_%.bbappend b/<br>
&gt; recipes-connectivity/openssh/openssh_%.bbappend<br>
&gt; index 7719d3b..b541c3e 100644<br>
&gt; --- a/recipes-connectivity/openssh/openssh_%.bbappend<br>
&gt; +++ b/recipes-connectivity/openssh/openssh_%.bbappend<br>
&gt; @@ -1 +1,15 @@<br>
&gt;&nbsp; require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${B=
PN}<br>
&gt; _selinux.inc', '', d)}<br>
&gt; +<br>
&gt; +# if pam feature is enabled in the distro then take sshd from the pa=
m<br>
&gt; directory.<br>
&gt; +FILESEXTRAPATHS_prepend :=3D &quot;${@bb.utils.contains('DISTRO_FEAT=
URES', 'pam', '$<br>
&gt; {THISDIR}/files/pam:', ' ', d)}&quot;<br>
&gt; +<br>
&gt; +do_install_append(){<br>
&gt; +<br>
&gt; +&nbsp;&nbsp;&nbsp; if [ &quot;${@bb.utils.filter('DISTRO_FEATURES', =
'pam', d)}&quot; ]; then<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Make sure UsePAM entry =
is in the sshd_config file.<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # If entry not present th=
en append it.<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; grep -q 'UsePAM' &quot;${=
D}/etc/ssh/sshd_config&quot; &amp;&amp; \<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed -i 's/.*UsePAM.*/UseP=
AM yes/' &quot;${D}/etc/ssh/sshd_config&quot; || \<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo 'UsePAM yes' &gt;&gt=
; &quot;${D}/etc/ssh/sshd_config&quot;<br>
&gt; +&nbsp;&nbsp;&nbsp; fi<br>
&gt; +}<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt; <br>
&gt; This message contains information that may be privileged or confident=
ial and is<br>
&gt; the property of the KPIT Technologies Ltd. It is intended only for th=
e person<br>
&gt; to whom it is addressed. If you are not the intended recipient, you a=
re not<br>
&gt; authorized to read, print, retain copy, disseminate, distribute, or u=
se this<br>
&gt; message or any part thereof. If you receive this message in error, pl=
ease<br>
&gt; notify the sender immediately and delete all copies of this message. =
KPIT<br>
&gt; Technologies Ltd. does not accept any liability for virus infected ma=
ils.<br>
<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
-Joe MacDonald.<br>
:wq<br>
</div>
</span></font></div>
</div>
</div>
</div>
</div>
</div>
This message contains information that may be privileged or confidential a=
nd is the property of the KPIT Technologies Ltd. It is intended only for th=
e person to whom it is addressed. If you are not the intended recipient, yo=
u are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part the=
reof. If you receive this message in error, please notify the sender immedi=
ately and delete all copies of this message. KPIT Technologies Ltd. does no=
t accept any liability for virus
 infected mails.
</body>
</html>

--_000_PNZPR01MB42242D8FA44397E4E37974FB906B9PNZPR01MB4224INDP_--
