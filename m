Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E66AC433EF
	for <webhook@archiver.kernel.org>; Sat, 20 Nov 2021 17:04:11 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.394.1637427850389731582
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Nov 2021 09:04:10 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=B2qcCDZC;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=6958589b75=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1AKGuEJX032615;
	Sat, 20 Nov 2021 09:04:09 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=FxVvxmVv3rMmYDTXFXo5zihtQ37dZhi83HF1UujUo5A=;
 b=B2qcCDZC6hG1WPdGKnntMF4elAqWzqgzUDg8Bqq+ux2eowQqn4JuYwWwUULa92sCIhoG
 fZhE5YoWS8DG97WGmQimzz/CN3CVpL8UgOKM8kMa330kJTOqiiXn2U3/ZFuAV2JSBekp
 saEuJNb4y6+QYNOOtpbXXc5xjxj6PH1hFLWU30D/ycEHkog6/dkbezK3Kt0trRmqnbdr
 pvlt7p7t0ChxTnmYX2NdFUhBY919KeZh5u/v0Q9ZhGH9v4wnpADk5bkR96e/hnbRl5tN
 t2ZdEfGnorW0dKNS96C9KwEeSnX8KqVqo2o2sEdW0skuLxEyLgZci1QSMT2VApvosKRA Gg==
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam08lp2175.outbound.protection.outlook.com [104.47.73.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3cew67r7u7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 20 Nov 2021 09:04:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ri4yDGrYwfBdF1MvBWcqoT265XwfHn86PtduoEffPWmaGIeuLV7Lfrg1u3NLPpMz2TqqlPCosUpIUbvMTihRI0a3vriiuGkWS7jFwdpLezq0Qh+L6wv0wBau1dss1F4FHl+h6nHbmlQJY4y5S3gUv8vs2SkOg8dFC79mdwAzGq+KyRNX/EsXzMP0liUNKNz+1F6/UMSWoCMu/txSUmuXXswQvZvgR/s0O7+fLDbZ+tKvyqh2jQg84lvF0me6EN8+rImVPDNgrH2M+uBUsp+pgqbY0kMhAo/5Wef3bsWr86/A+o13ZAZG1kIq0zCgbBjSCzMGbY9LZ/D0V5UGiX/y/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FxVvxmVv3rMmYDTXFXo5zihtQ37dZhi83HF1UujUo5A=;
 b=CpEEOwb7FrKfsogRN0jvBAZyMm0TmK0z0NBRZJXX4zDze9K2CWsTItcmc+30QjRqvbkeH6x+9xLkt5/gDaKZRH4RxwCPZqviW7UL0k+oPWtCecbQI6RA+d49/UiPi+xFisvNQzJqU8JKtzHRHXQBU6TtYD8pexOV6JnY5c2NFH502mApaQTelENK/cSNswk09FcSEUgKCSuUN+Ejl+VPFMpT35shvhPb9lQuPv5udIEg4mlmfRGdwUQgCAcXBdagv2mu+fnoF2ssovueJfAIuMoRYq65tbrEO9zKyLm+K+ZGxqTEFcKJjrrf+z1/oGYnQBhUmAe3K2UGJMUYXoxakQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2186.namprd11.prod.outlook.com (2603:10b6:4:52::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Sat, 20 Nov
 2021 17:04:07 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f1b5:133d:c04b:46a3]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f1b5:133d:c04b:46a3%4]) with mapi id 15.20.4690.027; Sat, 20 Nov 2021
 17:04:07 +0000
Subject: Re: [yocto] #yocto Remove hexdump from image
To: lucapirozzi@protonmail.com, yocto@lists.yoctoproject.org
References: <e6e4d436-cdbc-6d45-1cf3-4c0587e162a8@theyoctojester.info>
 <32256.1637313163129550695@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <c40518ac-68a1-3d56-db15-e7451553502c@windriver.com>
Date: Sat, 20 Nov 2021 12:04:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <32256.1637313163129550695@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
X-ClientProxiedBy: SJ0PR13CA0053.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::28) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
Received: from [172.25.44.7] (198.48.226.187) by
 SJ0PR13CA0053.namprd13.prod.outlook.com (2603:10b6:a03:2c2::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.7 via Frontend
 Transport; Sat, 20 Nov 2021 17:04:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e14c2db4-ea1a-4ee4-00b6-08d9ac47c325
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2186:
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB21861DA2D3105FAB3F4A658DF89D9@DM5PR1101MB2186.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Plth2Dx60POSkawsSJWB2Akl3kXvUVm1rjWaTcH8ZokJn1lP3jwenmU457TnQAgo4wvJjJDZF3RUgi2kIAAhF5DlfnBc48xbvcOm4TuUckjwEqLU2TGg1DaxKwuIYdPq4Db+yNWm4YC3w4G+E5mq+QlQ2SkCochXtHYvyqabmLlBsRyqIQ7wXMOgMD1yNbrjQvcUJLm5CcZxGHuLssIQwXxihz102NWqeSWXi1wcc1at2aKLnu4shW+qZWBJkfBsfvTF4dZQZc9ZZ2sLwZI/nQJdWwyHRaHAK8rT8V8HfG1bgeq7nC2tABvMlfUMhVJ+rC1Wg/cSs0+L0c+RPro1e/AfLEdXrtyalbNmcEju5dJzRd4qpUQUIF6v7D9lMa5yJJ4U5kqUcxe7HQOfOTROMjwhOfhqv2j4ZVAZnoKIbvHjmUHIc0mB0UicbtsYfz12/hvOjxnWMjXo8QTEJzi54wdUWJ4JT5rj+n+CQzDGr4mlbd10GtnYiXawXx2pXfKpbkb3gehL5zehQRxGT9e+7ulK4Dzcu/oH1+7cOHN/F2fOdkTaTbPwUTi+eh6uL7WwkF/Q01HYUTuGZeND7J5QFwRWnPtjCbFnH0qcgBg6r+ZqFiJmeVnxoNpeh0BnwUAiiEyYJ1DnSE29n3y502X46C5Ro7axNBjkS8qfHvrEabg8vHzD3pJgRVssOWqMdnP2wGVPMQ/EKT4UopYpcr3RYO2UBi2GKgO9ZiN6q3iRsCLcAzk0d3Ks9bKUTKNMvereFloMaXk7ThUaAbfSms+OCg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8676002)(956004)(86362001)(16576012)(66476007)(36756003)(31686004)(38100700002)(4001150100001)(31696002)(2616005)(53546011)(6666004)(5660300002)(38350700002)(508600001)(66946007)(52116002)(8936002)(26005)(186003)(2906002)(66556008)(83380400001)(6486002)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cnBPaWMxNCt6T0RSMFkyM3IyM0orUWFLK2JicHVnYzBmaVNMaldZWWxLbnlR?=
 =?utf-8?B?K3ZReGp4ZDhNd0JkZzNKM1NUM0J5WU9XdjF5QWpIdzUwNW1YQU4zcThqKzQ4?=
 =?utf-8?B?bU01NDl0ZStTV29xUVlMSXR5NHloVDVZUVJNU0tKSk0xV3pIQklNWHY3Nms4?=
 =?utf-8?B?YTVvNkwyN2JmQkdQZ2VZTXNlSk5HY0U2dE83ZiszTW9MMGVOV2J5L3hvTEZ0?=
 =?utf-8?B?UG1BZkV6RGtuandmNExkQ1ZuQWJmOENBZ1MzRnYwa1Q3SEtBa29MTmExYmZt?=
 =?utf-8?B?eFpJdm5wdFd3VkVWekNudTJZME42bzRiMTEwN1pIUHdDVmxJdlNFSzNJQ1ZQ?=
 =?utf-8?B?WkdxTHgrSnJjcUpBaUh1Q3NYZS95dEZydTM4VkxCZERrWkdaUEF1N05JakJk?=
 =?utf-8?B?RW5RS3d1T0Rza1lTZmFhK1luZEtvWG9pODZ2MTZ5Y3RRSWM2dEVFcFBUMWFi?=
 =?utf-8?B?b3NJNlJWR0RhY1F0dlZaWTRxbnllcTVBaHkraWRwRjNsVGV1bWNBcWhnVW4v?=
 =?utf-8?B?NnNzcjQ0UUI5NmVvWmNkRVZhNG9HZ1lWcERrajc0emlWRFg3YURneUI5Ym9H?=
 =?utf-8?B?S1lvT1g0OU1mNC9rS0VVZG5jWU80Z1JPRFczQ2s2a0F5a1F0em1SUWlnSTdJ?=
 =?utf-8?B?TjQ4UEllYlJXYVNiT3ZhQWFRKzZRQ3NnZk96a0dXNWJmMzJNTy9pVWJ1Q1NS?=
 =?utf-8?B?TXZIUTJKMkNkanVjZFJzVWJhb0h6NWwyeDRXYUpNZGxaQzJSN08vcDRXTlNa?=
 =?utf-8?B?L1Jya0REbElETjlDZUZrbTZSUFZsTUJ0cEp5SmhoeHpxa0JubC9PdlRDM0ly?=
 =?utf-8?B?Y1dmaEZWRUhhY2ozU0w5WktkNEZyY21DUDRuL003YkRNeXR0WExWRzdRZGlE?=
 =?utf-8?B?cEJEVGk4a0dQanlFM0dvVlNsTXRqdm5nMEJYVCt6bm44MHNRTHVwZVhzSlVO?=
 =?utf-8?B?MTU5em5GcUpIbFVNYXpNUHBKeVpSN2ltbkl2enlMeXZOVmdGQjd3MGdGL216?=
 =?utf-8?B?TndZUnREV2ZCMlNrbkNGQmVXMnBzSHNOOW0xdDNsYW9wak9jWWV2VDZHSlE2?=
 =?utf-8?B?SDhMOFZBK1pHVDdhTEJqbGpOMTU1cG9xSDlmaDByeStXeUN6TlZYYSthcG1v?=
 =?utf-8?B?OXR1SFZSMCtDV0REWmY5OUo2SGlWSG45alRtWDRBSU5HYVQ3TTIxRDVFL1pF?=
 =?utf-8?B?RjF6REdVR0srL04zNWpCRFBBU0hISW55TlZPZnBEVjJwcDgyYkdZMlNwMWRI?=
 =?utf-8?B?Uzk4VitJQWVqVU5kakhUUk5VMnRFYU4xTS92Z3lNelkrcUtDTUtPa2tod0Y5?=
 =?utf-8?B?RkVWdGdGaEUrTk52R2xCMG1rZjlpV25QbzBOS0l6UDRRSDlIakxuK3ppY3hH?=
 =?utf-8?B?WHRqb3hKTWVuODRqL2NvRGRJVUpsTk5tZEcxYmlTbm5Td3UyenNIWGd3dU1G?=
 =?utf-8?B?dGMrZGJIMEpCNTg5STd5TlBobHEyK2FMUFcyZkVoRmMwRFhKZXJoWk5TLzFo?=
 =?utf-8?B?ak52YjRSbE1XSGhTSjg1bmtacUR4eE80U1RuMFBrTlRwdXJ1NjgwSkRlU2xC?=
 =?utf-8?B?OXFnSDAwYkVJZDBncUF3NnI3RFBwcW4wMWh5ZWJIR3lyZ05BK0RXMnpFSmU2?=
 =?utf-8?B?c3ZtbFN3MkFJcUJ3cTkzdUdxNGNYZnd1ZysxRVV3WTVrSWRBVnNtblpyS1hK?=
 =?utf-8?B?Wmw2RXRUZFd5aW5zRHNyOU1DZmNXeGpBZ2RSYnRiMEF4SVFNSEF1OURtY203?=
 =?utf-8?B?VG55elVIYXlMdzNkZ1dXK1l0VVBxRjVMclJOQVE5M0tPVERncHZjYk5ueDhk?=
 =?utf-8?B?WjVEbldSNjZOdERqYkVVMlAyUSsvNlVubE9XellodGlKa3ZISWs1OTZvVVV5?=
 =?utf-8?B?Z09IcTdEQ2FhTm9SQUQwT0pURWJlNW1MSW41YW9tZnB1b2t0YWJCTXlXME9h?=
 =?utf-8?B?M0x1bW1ZZEtCSXpXd0hUamEzamFLVGFsa1psai9VVTFMVjhySm1UYk9PWDJ6?=
 =?utf-8?B?aDAzVmpSbjBLSjZwSHg2a0p1eHZCUFBQVVF5SmQxWmZvUHJLUlhZNkVYL25m?=
 =?utf-8?B?MU5IZ0lvckFUZXE0VVFzSGtQUHVKUHRRbnluYXpIY3U4a042RGVhejhVMDAv?=
 =?utf-8?B?RUFlUklvZ3FuOEo4WDJkckMxWU5aaDFjaDZ0SzJ1MVVtTG9tekprTDRFTEFw?=
 =?utf-8?B?Y2pMSnJvSC9yakpOa2tLbTJwQXhUdWQ0TzNmTnordmluVmFQSVRkdnVSTndM?=
 =?utf-8?B?MXphZ2VjN3Z3OC9vNXo4TkRJczhBPT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e14c2db4-ea1a-4ee4-00b6-08d9ac47c325
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2021 17:04:06.9051
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Zb1pLHNyueGe02y4TpONfsnciM+LXnDJ37FyHcRmwN4W2C+5fpoG4EiFzmft57/v9Yt16s6aGqcd2QXiaJsxN+CSkqWGY/4LEeh1GbYr3QE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2186
X-Proofpoint-GUID: fPnjaw2j_odZ7e1xd0-jaXZYMNkWQofB
X-Proofpoint-ORIG-GUID: fPnjaw2j_odZ7e1xd0-jaXZYMNkWQofB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-20_05,2021-11-17_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 mlxscore=0 bulkscore=0 clxscore=1011
 impostorscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=994
 spamscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111200110
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 1AKGuEJX032615
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Nov 2021 17:04:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55379

On 2021-11-19 4:12 a.m., lucapirozzi via lists.yoctoproject.org wrote:
> Hi Joseph,
>=20
> thank you for replying.
>=20
> Shall I use the oe-pkgdata-util find-path this way?
>=20
> oe-pkgdata-util=C2=A0 find-path /usr/bin/hexdump
>=20
> Because I'm encountering an error
> ERROR: Unable to find any package producing path /usr/bin/hexdump
>=20
> So I think I am doing something wrong


Hi Luca,

I think you either need the right key/string:

$ oe-pkgdata-util  find-path /bin/ls.coreutils

coreutils: /bin/ls.coreutils


or to use a wildcard and quotes:

$ oe-pkgdata-util  find-path "/bin/ls*"

coreutils: /bin/ls.coreutils

kmod: /bin/lsmod.kmod



For help:

$ oe-pkgdata-util

oe-pkgdata-util: error: the following arguments are required: <subcommand=
>

usage: oe-pkgdata-util [-h] [-d] [-p PKGDATA_DIR] <subcommand> ...



OpenEmbedded pkgdata tool - queries the pkgdata files written out during

do_package



options:

   -h, --help            show this help message and exit

   -d, --debug           Enable debug output

   -p PKGDATA_DIR, --pkgdata-dir PKGDATA_DIR

                         Path to pkgdata directory (determined=20
automatically if

                         not specified)



subcommands:

   lookup-pkg            Translate between recipe-space package names and

                         runtime package names

   list-pkgs             List packages

   list-pkg-files        List files within a package

   lookup-recipe         Find recipe producing one or more packages

   package-info          Show version, recipe and size information for=20
one or

                         more packages

   find-path             Find package providing a target path

   read-value            Read any pkgdata value for one or more packages

   glob                  Expand package name glob expression

Use oe-pkgdata-util <subcommand> --help to get help on a specific command



--=20
# Randy MacLeod
# Wind River Linux


