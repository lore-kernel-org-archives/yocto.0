Return-Path: <sandeep.gundlupet-raju@amd.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB9BCF6D3A
	for <webhook@archiver.kernel.org>; Wed,  2 Oct 2024 15:38:15 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (NAM04-BN8-obe.outbound.protection.outlook.com [40.107.100.80])
 by mx.groups.io with SMTP id smtpd.web10.10471.1727883484028126253
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Oct 2024 08:38:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@amd.com header.s=selector1 header.b=LZDjoNDz;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.100.80, mailfrom: sandeep.gundlupet-raju@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SH+JSabCA2AY8f/aFAtvgJOVuzbRSWKdapvE5NcSSqli2ysZRDvNSOloXMv4T0eXxczGDncTGaF/Y35nLt82qyYuK6Q1vCig7ovbEL0ijDQuAWVJc4/PKzwhDrIxsqPb3qvGwSGV5sA6jTNDhYSqbGS/9MYsT57JVdFwrKvsVvu9YyBRA7pjTL0qGkaTX3mMueYr4Obe1X+EANtTY84yy/kRqJESddQ2d6l4WYwsWrWENBCpSY5aYcScJiRuV5fk215AfztcVTIOoygVxleSn0PzVRvS7I//t7ChNFLuMXlXQF0YTE4DjRphMwECFGOVXo5oyGjBrScUhI4WAoNkNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JUDYowrlRiOjj2AWeTzQRFAVGs2vctGAVGtgGq7yMvI=;
 b=ABTD2ZE8R7KUkquGOAlb/afroUTFKY8DsjSk38UH86r7Ju/YpkqMjbTF96zaepjdoZXzv6tFC8+AHndE2BfDW7/mWPUxe7MVlrN7Qxl9XVZGw7K8ZlOXKpTAilgBpXdrYmmYH2exFED67NWjOh3PlbBFA/V0LVVm6xzWextgaBn9Ne+TWsL2QClu6W5l6B3hzN/R5cRVKNgEZ9sGbYBR4007OMw7C+Q09TX9DfLq9W05MbWSjzQ62vdzMD4WCh9CKPhrZLVh8OxTIXt/Sc64FX4TVFBiOeVjn/KkNkfWGCRDiwhLqP6eFyH4+memgYGKh4ekQqofwsgs0Zm5Qj4SIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JUDYowrlRiOjj2AWeTzQRFAVGs2vctGAVGtgGq7yMvI=;
 b=LZDjoNDzVWx4fyM7kstCAFOaxbUvsFK9h/Is7D8xY4H72j9DNXa9rzi2hdAY/2NxDivn9QGFt+0LeZyX9FGZS7dUn3PNM8p8sHyMSGg91C1SHBsZ7HHXeuzOhPLfELpnicXBbe+qodUO7jMKxgLWSZ0sxm+VWR40FAjtUdoDgUM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from SA0PR12MB4367.namprd12.prod.outlook.com (2603:10b6:806:94::13)
 by DS7PR12MB6168.namprd12.prod.outlook.com (2603:10b6:8:97::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8026.16; Wed, 2 Oct 2024 15:38:00 +0000
Received: from SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::dfc2:2c4:b68b:3f76]) by SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::dfc2:2c4:b68b:3f76%4]) with mapi id 15.20.8005.026; Wed, 2 Oct 2024
 15:38:00 +0000
Message-ID: <f08f650e-b72c-43e1-b425-c5fcfb1af980@amd.com>
Date: Wed, 2 Oct 2024 09:37:57 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: "Gundlupet Raju, Sandeep" <sandeep.gundlupet-raju@amd.com>
Subject: Scarthgap jffs2 image fails to mount
To: yocto@lists.yoctoproject.org
CC: "mark.hatle@kernel.crashing.org" <mark.hatle@kernel.crashing.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: CYXPR02CA0017.namprd02.prod.outlook.com
 (2603:10b6:930:cf::12) To SA0PR12MB4367.namprd12.prod.outlook.com
 (2603:10b6:806:94::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA0PR12MB4367:EE_|DS7PR12MB6168:EE_
X-MS-Office365-Filtering-Correlation-Id: c1d1ff51-e3c2-4d43-58e6-08dce2f8320b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?ow8AggVH7v+5rPNHa8T/OeB9eoADArmrOsLkOYSB6Ym5zS6bsZCqCB74ZjcT?=
 =?us-ascii?Q?D0ImN1dLJOnsYQZrosQyPDTXz/tXau/prfnDiiEjcccJZ7dELtEP14yNXwvm?=
 =?us-ascii?Q?W5qDqcjkr/DmxnpdcHdJ3xzEuwboo6M5E/RJfjx3swduDqEtSAUViggao6A8?=
 =?us-ascii?Q?O+rD1mVCERpcjsdiTjyoyrIpsihdjsbiQx4JpIKQgaFVuWbQonoij2Lz1KeM?=
 =?us-ascii?Q?Z1ITo3VI+F6Dr/GMCKSSW1qqouapQOj4ASIktl/kM+tSbFL5pgQxSx3pt5iD?=
 =?us-ascii?Q?olarADTiusUt3tX1kzrR5ZdM/wCXILA5NwCLpenRqFjrKD5t+4KKLP4w08hS?=
 =?us-ascii?Q?eXHhvhkOYWighwf52KNTjirVAHGzipT+ZrnwXVCb7fqCR5+dny+GAs2jzZUa?=
 =?us-ascii?Q?8uRG71UEsqpdzaQIg07/sVDg9oS4AoRS6eFbuyb1YjCcbwIq9XjMaYumWSUz?=
 =?us-ascii?Q?9gHmg/YjiyIDuPYMERPcBWqPW0jZ3bIsQhfnEJbnCbmFavUCftgxcc9RIOU2?=
 =?us-ascii?Q?7iGBJtXN936ag3hVMm190QytTrmBRKBK9AJbW0rw7nbzJU9e312esFoPIJ0a?=
 =?us-ascii?Q?o4ji6XegOBpk9tk4VB7VPGN9ooxYIglOoB/gmArW7MgP9yavSUJNtwhH5wVN?=
 =?us-ascii?Q?rYIhYl+6pc5+XV8UwxO/rxPzRk/0exaMu/vbGmC+a/MXFe9KcYb2N7yqegag?=
 =?us-ascii?Q?AK0ZjOpnf5Sai1iXqmQU5FRMUqnaTMEtgd/WPNxZYympL3lM+D2DWiWLTbKG?=
 =?us-ascii?Q?GbobX/2nq9xVPRUkSPqogZ2ATxGCqGBmDuxq/cR+hI/gPPn94yGZgp6macOw?=
 =?us-ascii?Q?wS7bqB+SP+gupOR/bU4Jh3RnxjMYLDPzAHe5WuITayy+L9pUtruRDkxg5o4v?=
 =?us-ascii?Q?BtitbEN/HU18+kkmvy0taIJY+xLQ4IpHQZUxE+FcYgmu1n/Si1Ocu8MGKSZH?=
 =?us-ascii?Q?QHBkTUnl+UUr9ppvQgKM64WyAxTFBd03O45NHqwJj4EQt/AL8MAOlWXMovUl?=
 =?us-ascii?Q?JFaqVPCbtRZuncid0ucxR3GybjM6yBuIABnSeCPOJDeiZ7BXZ824KHzGeK2w?=
 =?us-ascii?Q?kih7BbWSNjfwz4VltEvdtQEgFKUNPgInS3Nm3r2G1IvRtyouTaodbpUZe857?=
 =?us-ascii?Q?H9+OoQBQtz3uVXEL+byh5Gucrjm5d2LLI9YpHl9so1B5GH8kYjAyk3NFv5hz?=
 =?us-ascii?Q?GQJUkY8fFMsOifgF4HeFdS3waxcqJHhKGVomiS9e1THARjhWshqVDnWsctQW?=
 =?us-ascii?Q?j0YmcU7jfDhLrghY2Wvp8r93OSiI9UdxJOrYc4M2aw=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR12MB4367.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?3XoHd1ams0VhJMHmPRjDODCtaJxZ72ujCIQAa30/FjsV/d9x3bGGNfqQppW7?=
 =?us-ascii?Q?RCpYwW9ZTlLsJEPFbpIghrb+AA27UYWtHsAw4O4ZnS6johg+KiSD/4Pcdk2E?=
 =?us-ascii?Q?v07JCgpQbtrmFevcLVaIgpWcFxNpuvnUTMaIRHZs1U0U4ySGSg1AV7UA7POm?=
 =?us-ascii?Q?FsOcKHvMFqNm78Sts2X7/9qC5Uzf1UrwtFuT5+aPtHl705YjDdsRxF1grzi1?=
 =?us-ascii?Q?BltQR3B8RR+UTgxxJWaTLuRSWqS6f5lnoknA6GHs5jcsASGma2M+e4FjeHxI?=
 =?us-ascii?Q?1f5OclBWYav14v/3pAe4jXzhOlY8W9+dgpCA5XKjBN5GKwUzew65YEeGvQal?=
 =?us-ascii?Q?YMN0bwsUN3RUB1Z27XeuXz2HphpkaquacBRtDcNOe060/RtxyEk87odCnZQU?=
 =?us-ascii?Q?kpx507z7HqFo9ZwrSPfiMFMhuRhOOCz7JaXKxCBAPpZ/Ou8keEvL8cesPr4f?=
 =?us-ascii?Q?IaMgEFCLvlzbByUDiOirHdDFOTyYNaaa5wdPS/RC4zTIG2/y3R9Se+XTk+hJ?=
 =?us-ascii?Q?kgwjL3y/r/DegaTz11LpP9+x5NQewPH7cj3blJeaTAI6uxNSmoyQSHL6YkBK?=
 =?us-ascii?Q?wVv1u2hchuFSIo91e9DDmeC7itO/ZOd49t8Nu2KIuWgf+uCmWVUnLEy+16fq?=
 =?us-ascii?Q?dTrW5P6iifzEtEdomLBTYmUOOoedJdFlRoUdJC4bmniO08vln/lWLzGA2zEB?=
 =?us-ascii?Q?O6I5uCUaK/w8r2DlivvlUppbmaN8C6jx8hsPbmZRKa4jvpC4H8/wzZUDbiqQ?=
 =?us-ascii?Q?R2MLsFFENPq4w72kka8MftLcCF/qOQ2l74VKcBZnHB4GA1UDSEnGKB5kHNGG?=
 =?us-ascii?Q?8bvuTitrvCFLis+26/rruhPsR6GrwdW1YQQa8NiSzBt+s05uDfdpX4NuMHC5?=
 =?us-ascii?Q?7+ixj+oS598DE7xboGJxwWuxSCuBLzzf5iD/PSTWc73XFu+FB4OkBWnV12lN?=
 =?us-ascii?Q?eUQXMpcVCFuNyFn9Lr4M8j7SOP8/BmgnPMuPqjgH+1qg55mj57b1Mg0cP/Y7?=
 =?us-ascii?Q?vZgtcdNUHBE+BIFTjY16YNzR5TRrnBQzQLxWsHP7jc/UPUETKWp5CKkH8dRj?=
 =?us-ascii?Q?xs9e+2UQlz7l85dqAkio513sVjwmj1j0r8NVh5Hb9w4MtWuRv5S+DRo2ClUZ?=
 =?us-ascii?Q?o1ql8xO5rgpESYYy7NJfK7tV/ltAiLpdXOrA879KSYokJOPuhfuMQKlgFw8z?=
 =?us-ascii?Q?YiQZGpe7EqICu1I6yDY6PIZXv8YdmpNx53Ah9og7+nX1wi4x2l0bd4LyH1IA?=
 =?us-ascii?Q?TX6sxurBzuMd8QqM6WmNYii4+sugnPi+hQZvY7faHBSV6Np1cbTircRh5jOk?=
 =?us-ascii?Q?xdT+S4aXo5GvJpkYO5DZ2o+xc4yr3lFB1YMjDYHwA5o2fZuUDYHWngwlUP9e?=
 =?us-ascii?Q?/HNfFr/jqW2n6OmQvLvG48acgTpfbbbCR5H1DVJ6dzfmhU3maUg5FYuqnCE1?=
 =?us-ascii?Q?jv9MpTf27LD7h0tbpvZEPmeyqUsxm8e2Wb83hrD4vBRoH3kb+7yoICw/lkjK?=
 =?us-ascii?Q?h2dAIAk5MJb23Nq3k+OayUTFwkvSbqg9xTpxrZmkfgBWgxnvMR4p2bapjSzU?=
 =?us-ascii?Q?WrdmLMv1YPIpDSZUeVcOJhapXGOdxpA2wxxgwZIB?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1d1ff51-e3c2-4d43-58e6-08dce2f8320b
X-MS-Exchange-CrossTenant-AuthSource: SA0PR12MB4367.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2024 15:38:00.0204
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hi9Is5fOmUBBn1qzOeYDZbKn/xpTb9Nikid2LTOQk2bf3i/lZpoUiZVjWkCERTjJWuqa8deLFOXrPMfAVm8O7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6168
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 15:38:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63930

Hi All,

I'm using building a stock scarthgap=20
core-image-minimal-zcu111-zynqmp.rootfs.jffs2 image and when I try to=20
mount this on QSPI flash it fails to mount but I don't see this issue in=20
landgale. Is this a known issue in Scarthgap release? How jffs2 images=20
are tested in YP?

yocto-zcu111-zynqmp-2024:/home/petalinux# cat /proc/mtd
dev:=C2=A0=C2=A0=C2=A0 size=C2=A0=C2=A0 erasesize=C2=A0 name
mtd0: 01e00000 00020000 "qspi-boot"
mtd1: 00040000 00020000 "qspi-bootenv"
mtd2: 03e80000 00020000 "qspi-kernel"
mtd3: 00180000 00020000 "qspi-bootscr"
mtd4: 0c000000 00020000 "jffs2"
yocto-zcu111-zynqmp-2024:/home/petalinux#
yocto-zcu111-zynqmp-2024:/home/petalinux# mount -t=C2=A0 jffs2 /dev/mtdbloc=
k
mtdblock0=C2=A0 mtdblock1=C2=A0 mtdblock2=C2=A0 mtdblock3=C2=A0 mtdblock4
yocto-zcu111-zynqmp-2024:/home/petalinux# mount -t=C2=A0 jffs2 /dev/mtdbloc=
k4=20
/mnt
[=C2=A0 120.330795] jffs2: Magic bitmask is backwards at offset 0x00000000.=
=20
Wrong endian filesystem?
[=C2=A0 120.339266] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00000008: 0x423e instead
[=C2=A0 120.348757] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x0000001c: 0x0a03 instead
[=C2=A0 120.358301] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00000020: 0x38b1 instead
[=C2=A0 120.367797] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00000024: 0x6655 instead
[=C2=A0 120.377285] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00000028: 0x6962 instead
[=C2=A0 120.386768] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x0000002c: 0x8519 instead
[=C2=A0 120.396245] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00000034: 0x5034 instead
[=C2=A0 120.405725] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00000068: 0xc31d instead
[=C2=A0 120.415202] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x0000006c: 0x1443 instead
[=C2=A0 120.424680] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00000070: 0x7375 instead
[=C2=A0 120.434158] jffs2: Further such events for this erase block will no=
t=20
be printed
[=C2=A0 120.442136] jffs2: Empty flash at 0x00001ffc ends at 0x00002000
[=C2=A0 120.448594] jffs2: Empty flash at 0x00003ffc ends at 0x00004000
[=C2=A0 120.455191] jffs2: Empty flash at 0x00005ffc ends at 0x00006000
[=C2=A0 120.461644] jffs2: Empty flash at 0x00007fdc ends at 0x00008000
[=C2=A0 120.468237] jffs2: Empty flash at 0x00009ffc ends at 0x0000a000
[=C2=A0 120.474720] jffs2: Empty flash at 0x0000bffc ends at 0x0000c000
[=C2=A0 120.481305] jffs2: Empty flash at 0x0000dffc ends at 0x0000e000
[=C2=A0 120.487760] jffs2: Empty flash at 0x0000fffc ends at 0x00010000
[=C2=A0 120.494347] jffs2: Empty flash at 0x00011ffc ends at 0x00012000
[=C2=A0 120.500808] jffs2: Empty flash at 0x00013ffc ends at 0x00014000
[=C2=A0 120.507391] jffs2: Empty flash at 0x00015ffc ends at 0x00016000
[=C2=A0 120.513851] jffs2: Empty flash at 0x00017ffc ends at 0x00018000
[=C2=A0 120.520439] jffs2: Empty flash at 0x00019ffc ends at 0x0001a000
[=C2=A0 120.526915] jffs2: Empty flash at 0x0001bffc ends at 0x0001c000
[=C2=A0 120.533498] jffs2: Empty flash at 0x0001dffc ends at 0x0001e000
[=C2=A0 120.540062] jffs2: Magic bitmask is backwards at offset 0x00020000.=
=20
Wrong endian filesystem?
[=C2=A0 120.548507] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00020008: 0xe05b instead
[=C2=A0 120.557990] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x0002001c: 0x0201 instead
[=C2=A0 120.567469] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x0002002c: 0x0500 instead
[=C2=A0 120.576957] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00020038: 0x0006 instead
[=C2=A0 120.586435] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x0002003c: 0x10f3 instead
[=C2=A0 120.595912] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00020040: 0xd905 instead
[=C2=A0 120.605389] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00020044: 0x5e78 instead
[=C2=A0 120.614868] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00020048: 0x6050 instead
[=C2=A0 120.624351] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x0002004c: 0x6050 instead
[=C2=A0 120.633825] jffs2: jffs2_scan_eraseblock(): Magic bitmask 0x1985 no=
t=20
found at 0x00020050: 0x6030 instead
[=C2=A0 120.643303] jffs2: Further such events for this erase block will no=
t=20
be printed


Thanks,

Sandeep


