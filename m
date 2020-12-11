Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [40.107.77.80])
 by mx.groups.io with SMTP id smtpd.web08.13424.1607719297757198934
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 12:41:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=c81YoShb;
 spf=pass (domain: windriver.com, ip: 40.107.77.80, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xit0yduZozx1aPEqmKo61d6rukQ3rgfNENw1S8Ew/j4iD/ns1EkdK5GKoNCOEcVmIV68gx24zQAT8ldchGIIw1jmJnQtHiIA7jHpclRozxM/8L6rsCN5vxq2DL5L1iG/4jmFCYLCo97kPY8fNA/VRTYMHrFcQwbuUYAO9NBqYDVly27j2Y63Fnogw4gUN08io2sgV8+sOo3NNweJ6++oLFoysNg+xsE8xknasHL40BccK5Qtq+EbTRMpEhF0E3rOhqS0cpRJ3TmqMhxMSMLeDWEJwZzv29/n7uoRIv+wqH31GyNNj7h6SqRenv3tR6ArzyXd84myHhhgIWj7RzMX9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XK+zkX4FnKLJtKrFPyQNVb1rvf9++RkirCTJV3ned5g=;
 b=VK5BzjaUVpFGutNKuHJBBX9Iq2JtELL6R6lb0pU+DVxBBcOuiXzl56uNdZW2mcjlta7jAWnCWQg1uFxVZcxlEYS7AAEaY4BiJrFY9gGn25gQp5g6T8HVbYhLebiKNzKxnwfcqSgFTLjIsZu5zEccP2/vzJrAflVAM8RBAZEiY9Ttq7bkaFPDeIM404DC5RN5XSsgFwaOSsXtVb6iVjvokeE16NEUjFrl9zDBE7WgOGcQ0tqC8a0sEYyBVgDriiBqgdqp3ejAHNAzGm8MCx1JZrCSqRQ85maGUBjLlGmMaIvAuF7TxNCjN/UGj2e7W8ziTQzMMnoUSF8WFypmhjBBIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XK+zkX4FnKLJtKrFPyQNVb1rvf9++RkirCTJV3ned5g=;
 b=c81YoShba9bQM6AMQ4K0WcDkf+kOxyvsUpnKsRX8vqA9EFtBtLrOHES631jtdV0cjFkvI7xM1eg1Uwc9GzJCzkXxhnkqUBNzURC8IwsSv4oF4gNvOxrR0GClcIBbAt5F2nW+z4kXMhT+Ca02F42E6WI03gAQbZSSkWKdanTyqLE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4739.namprd11.prod.outlook.com (2603:10b6:5:2a0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Fri, 11 Dec
 2020 20:41:36 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588%6]) with mapi id 15.20.3654.017; Fri, 11 Dec 2020
 20:41:36 +0000
Subject: Re: [yocto] file /etc/ethertypes conflicts between netbase-1:6.2-r0.corei7_64 and ebtables-2.0.10+4-r4.corei7_64
To: Dingo <dingo@optimcloud.com>, yocto@lists.yoctoproject.org
References: <f02242ba-a5ac-a4bc-ce1d-16604306acd5@optimcloud.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <d40483ac-7d13-dc87-fd0e-2ba00e464682@windriver.com>
Date: Fri, 11 Dec 2020 15:41:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <f02242ba-a5ac-a4bc-ce1d-16604306acd5@optimcloud.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0026.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::31) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0026.namprd03.prod.outlook.com (2603:10b6:a03:33a::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Fri, 11 Dec 2020 20:41:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 55268b85-15bf-43b7-24df-08d89e15276e
X-MS-TrafficTypeDiagnostic: DM6PR11MB4739:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB47397F616788188C93E49C26F8CA0@DM6PR11MB4739.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9TpODxQvAlaOsYezba4ynCZzL4+7bCLBXpckPvgY4bhxy4cFqFE8eEx4Wqlf84if1xlvSHQRXun3HuCdBYZOk//inl9Qqnw5ngO/9x2XPFmwL4+lpYfkUgOMRjR5a6dxj7EPAhMaMphS54cKhGgwETjyQWl3AsOXdtQ/hR2+XgyBUdBEtuD9Yzdd1zeD9MshSHjMOimIEbnkIPqxnlTCZHHIy65UBGvmrMLLrxF66hOR1bWG4JpTMq36KC6RW3/D6iWKc8z4nZtqpsIMSzfDNkvkU7QoK7EAD2MKxrf4MFa8T4I3ucz1f8BBkXUk27OGv90FtK8Mbk499SoyWShBbudxj7pEzJf7T6WBctJGA/Pf/Ss7KapYUy9FGcStWOaea38SUM10kzeCFE5joYn9iGruJG6HHPJaxg+LuRaCqTFlU3vii9cY32Wm+2cyQ/AtcyEAZxMbJpz2r9EZeAxlDblPMRatxO6pay+fPuv5l2w=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(136003)(376002)(366004)(39850400004)(53546011)(956004)(52116002)(8936002)(6666004)(86362001)(66476007)(8676002)(26005)(31696002)(2616005)(186003)(966005)(66556008)(83380400001)(36756003)(2906002)(6486002)(16526019)(316002)(5660300002)(4001150100001)(31686004)(66946007)(478600001)(16576012)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?7wmiNp65WdV6M2KXJF1OXPaZ7cRy5I2pybKzNEWW3WPC9eyrHrW3m/bg/EQw?=
 =?us-ascii?Q?7X3IZv/f5FNIk8o/zKwq4chUhPfOqLF7Dw4ECxdfX8d1N4eOir40IYxONMFN?=
 =?us-ascii?Q?ca9bZfBUL8Ek3Io9urUI5IKDwwpCeF5nimj4JUzyr3WK8gLGwb1HKhURCy6f?=
 =?us-ascii?Q?ow8DMZurHC247cPsXLO2N58n9K3uOI3YDDfOwJKsK4RsDo3MlR26EKbu+rW8?=
 =?us-ascii?Q?oVXsyh9ZKIYwWrbOsrxnnoB346oz39bkEHB29/v1tgDHkbhCPxS/FeRmyEwg?=
 =?us-ascii?Q?M/XmkWMG9UEo55QcoL0u4x+gLSHU1lOWjsgOS8BsDC9uB8N/sEIIDkyAnfUG?=
 =?us-ascii?Q?5frQKigs4fgAhtVAlhNBXncaJcYap8K09CRJJvz2BWlnqTyS/jButMJzTKM7?=
 =?us-ascii?Q?YAMrrbe0KTABaTO7hV4ty8ad8W0/nhq4/e53GZQajSCuboaQ8zC4pOFTRmcl?=
 =?us-ascii?Q?V566YX/BndoDh3jnzJhiIC98SBArFDXazJu7nhJnvnJfWpWHkT5Cwr1HYCtN?=
 =?us-ascii?Q?1FfZi2HP3N6N5lthsvxjURdHx+07RIYr/scSh0+h9UleppiZmsGxrh2FQuLx?=
 =?us-ascii?Q?0sq2OpbPOePUOzLWoa91DUEs0CtPFPQ304vrIv0TeXXamqv+zaGG9pNadiJg?=
 =?us-ascii?Q?buDwj6JOQM+MaRMkL1PgtUwu3umw5cPBdImtBXtkkk0/4Or9xILi9ntVbGJv?=
 =?us-ascii?Q?mNxjQBdm0TW5VeR8rRpgwhp2sX8An0JWDFRM1VorVOU76JPcRRBsrT87sd0V?=
 =?us-ascii?Q?qaUw+5sYSDvI8YNBbgV250v1fwif0ltA3F5GQQ3NsEukCHjZDGSszP3weHHi?=
 =?us-ascii?Q?QaBxAY60wuPZKudvMg66LyUraySJ920Z0cnES8g/7NRsfyrb2VkLKUz3TO2N?=
 =?us-ascii?Q?WUOvG7Csa8eBCmiw1KjeeXdcqBEwaqgDy7rAf7Bildjnl1mb/zFQo3cEN7JM?=
 =?us-ascii?Q?jgYlRuKggYircUy/HeUUJ+nOU3P4NeNn9dpy+S5yHqNAcxBuOhR5m/EbPWkZ?=
 =?us-ascii?Q?7TuB?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 20:41:36.5257
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 55268b85-15bf-43b7-24df-08d89e15276e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nDiHEqdk68zWdnyx2CF0/m81FcsgpYho1hbszYvT8/bu6eIerywRDeKt2xuyn4uBAT+EL+ahXGBzxmA3n7ZJqfWQU8oGD7Y182yHIttsY1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4739
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-12-11 1:21 p.m., Dingo wrote:
> file /etc/ethertypes conflicts between attempted installs of=20
> netbase-1:6.2-r0.corei7_64 and ebtables-2.0.10+4-r4.corei7_64

Thanks for the report. Unless someone replies here,
can you submit a fix to the oe-core and/or meta-oe lists?

If not, can you open a bug in the YP Bugzilla?

Create an account here:
https://bugzilla.yoctoproject.org/createaccount.cgi
then file a bug:
https://bugzilla.yoctoproject.org/

Thanks,
../Randy


> commit ba069a5a3dae374744f68a57ab9e7869167beb2b
> Author: Alexander Kanavin <alex.kanavin@gmail.com>
> Date:=C2=A0=C2=A0 Fri Dec 4 21:07:14 2020 +0100
>  =C2=A0=C2=A0=C2=A0 netbase: upgrade 6.1 -> 6.2
>  =C2=A0=C2=A0=C2=A0 Not sure why this didn't inherit allarch, but now it=
 does - only
>  =C2=A0=C2=A0=C2=A0 static data is installed.
>=20
>  =C2=A0=C2=A0=C2=A0 (From OE-Core rev: ae1880436b293449318655f5b0207d2a7=
41052ba)
>=20
>  =C2=A0=C2=A0=C2=A0 Signed-off-by: Alexander Kanavin <alex.kanavin@gmail=
.com>
>  =C2=A0=C2=A0=C2=A0 Signed-off-by: Richard Purdie <richard.purdie@linuxf=
oundation.org>
> diff --git a/meta/recipes-core/netbase/netbase_6.1.bb=20
> b/meta/recipes-core/netbase/netbase_6.2.bb
> similarity index 65%
> rename from meta/recipes-core/netbase/netbase_6.1.bb
> rename to meta/recipes-core/netbase/netbase_6.2.bb
> index 33eca459d5..a54d2e7764 100644
> --- a/meta/recipes-core/netbase/netbase_6.1.bb
> +++ b/meta/recipes-core/netbase/netbase_6.2.bb
> @@ -6,17 +6,18 @@ LICENSE =3D "GPLv2"
>  =C2=A0LIC_FILES_CHKSUM =3D=20
> "file://debian/copyright;md5=3D3dd6192d306f582dee7687da3d8748ab"
>  =C2=A0PE =3D "1"
>=20
> -SRC_URI =3D "${DEBIAN_MIRROR}/main/n/${BPN}/${BPN}_${PV}~bpo10+1.tar.xz=
"
> -S =3D "${WORKDIR}/${BPN}-${PV}~bpo10+1"
> +SRC_URI =3D "${DEBIAN_MIRROR}/main/n/${BPN}/${BPN}_${PV}.tar.xz"
>=20
> -SRC_URI[md5sum] =3D "4fa7517285b4045ac0dc8dbf6730dd7a"
> -SRC_URI[sha256sum] =3D=20
> "4e9c3082dff8896cb6b6bea9bb2200d82fb0d7c8d8c8fc9b18704fe553316237"
> +inherit allarch
> +
> +SRC_URI[sha256sum] =3D=20
> "309a24146a06347d654b261e9e07a82fab844b173674a42e223803dd8258541e"
>=20
>  =C2=A0UPSTREAM_CHECK_URI =3D "${DEBIAN_MIRROR}/main/n/netbase/"
> -do_install () {
>=20
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}/${mandir}/man8 ${D=
}${sysconfdir}
> +do_install () {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 ${S}/etc/rpc=
 ${D}${sysconfdir}/rpc
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 ${S}/etc/pro=
tocols ${D}${sysconfdir}/protocols
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 ${S}/etc/ser=
vices ${D}${sysconfdir}/services
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 ${S}/etc/ethertype=
s ${D}${sysconfdir}/ethertypes
>  =C2=A0}
>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
