Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03CA3C433EF
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 23:15:50 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.889.1648595748818144129
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 16:15:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=DG8Is8CN;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=1087ca6f23=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22TN0gJt016111;
	Tue, 29 Mar 2022 16:15:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=okKCfbTW5gkE2Z+uTWd71k6qDQz+6i9rPgfizhXwakw=;
 b=DG8Is8CN+v6L0IrIWAwWdud5+cuntkGiOgPphfFxH4qVaIrlYiQQQ0AHMiDFA7MlNY21
 Stg5rq2pO8Oo4zTWyxXjGuu0JhQlgGVGdKdkXn2GF18os9yCAHAg7T39eONtfH9q/aKU
 n4isK3AZwXtVFoxh0TomSgKka42pt8tVdFcWYpVYKvD6c2pzBOyt0qJa3XkFbbgU9AqZ
 KE6PoqCPP5Lnf/YVvEh0gmEWVx6Es8xzsNRlvzGobkCEoLeEkRa2yqAqvgwi+vhuWAF3
 AWjsdKQZ+x51HVMIhdqROV2kOp/81ZtWA7O1qDkSPYb2Pf7usQ2W+fKooI+PJKOrh1sp aA==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3f22bjaq6h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Mar 2022 16:15:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z4fXWuvkbSDyqjTmDj4bWacZEgFriwiNmAvADWfKGdlosGQtfIBE9Zqhf/uzZ5uAnXN95tFmew0nhSHtibrjKeSqeMApQfaaH3hMneWv8/xWbMzfcg6Br34/LNv63AYgBHHLG+3A/DLNpKFoo2dN6cwwnhs1h5EA5ZUNNww7Jo+WBUZJxVMqr+UJxuwZE1L1hzAX862tI7gHzVBk72grbt6roUJnaZS3ul0utxaE+ohGNdGev8qNZX78i2Ee0o5WT3mDgRsmPbhy09+CVA2oSl2ydFNmcqQUDioeytcHsz0jMKiRzyb/VFEpw09u9ZUSl1wxY/ESRfX0ypkYqJp9CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=okKCfbTW5gkE2Z+uTWd71k6qDQz+6i9rPgfizhXwakw=;
 b=dXh9M/vTBy3UOUklq+u/gmNU78G9bC5m0EwfH+css8w/AUQ09AJ94tkiC3we6D0ER/O0iEzRmsGXvBXeWeOKWW/hexA6kcvRbHqFkskP3QiB2t+W7REYhDwVDng3o5OMM1zPGTiipPThI5TgwSy+BX8TgbpBPb2fgkcrQdzxFQO8MqV//Nr4kagSeqFgXhopIXNBqCXR1M9gWuyttvNlWiA5/faArTa1wWiDvV3tiFcG4xWVQRYnPBY8UCPTRa21AAoJSqWI8LN3M4KkMfJOwTIvsZA6GH2sojUuwTipTr0l1sZf03ymRoB9+FrC79JbwXbL1C4aEmpRuAUj2kMOJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by SA0PR11MB4559.namprd11.prod.outlook.com (2603:10b6:806:9a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Tue, 29 Mar
 2022 23:15:35 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::19c6:8fec:7ecd:a91]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::19c6:8fec:7ecd:a91%5]) with mapi id 15.20.5123.019; Tue, 29 Mar 2022
 23:15:34 +0000
Message-ID: <4eccd790-2fc3-2c5b-58da-abf6ae87eed2@windriver.com>
Date: Tue, 29 Mar 2022 19:15:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] firewalld isssue #yocto
Content-Language: en-CA
To: Nicolas Jeker <n.jeker@delisys.ch>, yocto@lists.yoctoproject.org,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: sateesh m <sateesh0457@gmail.com>
References: <iTgi.1648449596640581316.TvLE@lists.yoctoproject.org>
 <d168b6bb0a3262532c340c23b7a7cc495a78334a.camel@delisys.ch>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <d168b6bb0a3262532c340c23b7a7cc495a78334a.camel@delisys.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SJ0PR13CA0068.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::13) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cf495aed-46ec-465a-f268-08da11da06d6
X-MS-TrafficTypeDiagnostic: SA0PR11MB4559:EE_
X-Microsoft-Antispam-PRVS: 
	<SA0PR11MB4559D3C74DD5A0941C225CEEF81E9@SA0PR11MB4559.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lIsbhxCasuTURIGfVFSGe54J9S7Zns+SJ7z5wZgvq0YPW7dwDgdSEfE+oOZ7QLBSNKeT0X+sGsURZtC2OG5I21aFSgd51NGJsS/iq3LR2lQD1Kg1yeL0nSzb/xRNyotSbJvIR8cGHZNQXNUCsKPzLPRdenAbs2+O21qq2sHPbzV/b3eFI0QBpRsRKpK4siSERmhwPxCrrGkqOHomzGioZKAxaXcgB3ZPmbGx8xPRbizr2OxhvgT52sq54gofLzL6qIR6IXjhjFmYGWbrs/NIaWPGjn7rDix4tLOZ3mjpxV1A0qebJWenxiy9HuEgOwPxrMTpfEvM0B7fyTzioiNwRzgmnBcXSiRxYnUDqQ0bnsbeZvmvE+++RKf889NGmy5djbdxxswsUuggtoL21CyWreAv3y3X3ULkW4ykurKnD9yu9rocmwHY+GiXXLj6+ZckEAoaD1Xg1z/A4OAPtV8PgEFY7Q3g7XO5RYE7aa3bVTor1Amos8y+Sb30KJf5qTfwlCDhBIzKFDlfWW/k+k8rUr0rgIBNpNoX3GbTB1qRGG98V+9XCsxDTR4VfTJFQD6h+lsrFun3VWcBEDMdLAaVOfrs1a4i1Jjo2KIw3bJGKIj2XFhAdKXPK4SsRe+Qas14WH7sihgzvo5ez6N9/CfVgSf9AGaCe8G4j04gVfcqDxqTkp3hKHgja/IuRQflh9OokgyUZzf0hoiM16IzYDAScCS/zfWdkU6S3U1KInyoMW++cJkeuwp0CcBqzNGlFnF3hM4GvkFMyxbrqzn467G5pHPkUjBt3SPnr6wcRjNWw+VYZzerVD+WwtOmiq9rRJg5pTpdsQIMLrDvQdFIWkJ5mUzKdYw0wGicfvlP0q24pbm5o/VllCdxlOikg+Rw1iVuTqriA+d/VrR0bzbRJtnQHQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(31686004)(508600001)(186003)(110136005)(36756003)(2906002)(316002)(6636002)(66574015)(2616005)(26005)(83380400001)(66556008)(31696002)(6486002)(86362001)(5660300002)(53546011)(52116002)(6666004)(6512007)(6506007)(8936002)(30864003)(66476007)(38100700002)(66946007)(8676002)(4326008)(966005)(38350700002)(49343001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SE5WNFNqQ2wyU0lyY01ocVZnemhhQ25ScU1MYjN3b0NrZHJwa05mdkt3VmhB?=
 =?utf-8?B?WmhYUXFQT3N3dVVadnRSY0pWWGowWVhlNitNQS9LOTN2cHVlUE5hVzgwNk1Z?=
 =?utf-8?B?b3FtYm81ZXNPTzMwUlpFUFVaODBHSEw3TW5aSHUvZkJnZHVCVUh0U2YyTVU1?=
 =?utf-8?B?ZGRUdzhGSElJeHFXUHh4bFFvcS91aUJmcFJweFprQW11MWZSZUU2cVAzYmJi?=
 =?utf-8?B?SEVXUU1pSDJNNWgwTGtMYVpzZlNRWmVmUzFwK2JwS1UrM1ZUWGtaR1RXbjc2?=
 =?utf-8?B?VlJOaVJjTGRhb1l5YWovKzh2SWpEcExuUnVoUjR0enMwUXpHL3RhYWtwd0pr?=
 =?utf-8?B?d2d1QlF6NEdIN0FZaytVOHhGeFg4UDRTcCsxU1hjd2ZoR0srYmEvaWFzOEI1?=
 =?utf-8?B?T250ZDdLeXo5OTR6dDh0UXBjWTYrcHhQcnROc05QWGVpNVhTa011Yzg2WTQ1?=
 =?utf-8?B?Um80azBSZU84QXBSdjdQK0dWeTlhenNGM0IvRTJNZU5TRXRVTDNobm9zT2Vu?=
 =?utf-8?B?aXFuMVBJK0xwak82ZFJkdldvYnhnQjN2VFBzL2dqUVNjUm05OHd1d1VQNURm?=
 =?utf-8?B?REphNTJ1dkF3aElPcUh5MGlhYzVaWFFRQ2JtSU9CS3MzRktETmNvN2FKTGN1?=
 =?utf-8?B?aTBFanl0QlVDN1pFSE43QU5rWktDcnh5V0g2bW9TQlBmRW83Y0xCbFgrWFgz?=
 =?utf-8?B?cmxwc2k0SFdzQWdzZDJVQkRZTGhUVCtJOHpPQW1vczd4RmVKcFV2RUhOSzVa?=
 =?utf-8?B?c05nOUphc05BRGxabVdYWkNuUmFJTTZjVlN3Um96L3dSTUs5R1IyQkFCOW50?=
 =?utf-8?B?dUxXOFpqaFhTUkVvT1NrMHlOa1czRG9kU3BFamo3NGJUNXBybnlLdWJJSjFj?=
 =?utf-8?B?d1FUc3czSnF6Y0E1OXgrMzRwblBJci9ZcXUwcWFvSGZXeXRaQ1pPNnBYRHRD?=
 =?utf-8?B?VTdJa3JQNWxGWlNoL1c2cWJTTW5oQmVjalBWZjczb0c1OUdxOXBOUWtneXFE?=
 =?utf-8?B?YUt5bUtqd1BtVXJBMnV1MXR4V0xWR0diN0tBWnpCb290bkdaOVF2N293UTcy?=
 =?utf-8?B?SGo3Z2dQeUxkaHBubVIwNXU4WGlhQTlEZDBqQTQxQXZZRW5zS2x3aXhPTklu?=
 =?utf-8?B?QzdIdXlIb3lMSXVIYnhSMmcxdjZMOXU0M3BzZWNueWFRSTdhSGRpL09RQmsx?=
 =?utf-8?B?Z3o2b1RRVFZFVzltbC9RTm5BcTJqVjNmajJtVXRxWjV4SjYwSFVSSkljekk5?=
 =?utf-8?B?bkNpV3AvTlliNGgwRGg0NkFCM2pMUTVVSUZKOEhYYUhjczhrSk12QVJjaHlo?=
 =?utf-8?B?VVhYQzlFM2dtOFZ2Y3gzaGNLaWV4YXJPOE02YU9RaXMyVW8zNTd6b1I3M0Ji?=
 =?utf-8?B?TGRHLzZ1NHRVV1ZjeVhzUG11MEJ4T2ZRTHU3WVdKZm16ZzYxOU0zUjRxSXZ4?=
 =?utf-8?B?S1F5YXJpQW5ZSlhyM3REcG9McnRyTFlHUDBLRlB5ZXQ1czRYOFdoaGRYVGFV?=
 =?utf-8?B?M3VXU3NWTEg3MFpIUUhhb0hBRmNBeUNQK090dWR1T016V2IrWUVoNEZCNDdV?=
 =?utf-8?B?ZzBHNjNhaVBJeGZoQVZMTVFHbFdhOVBLT3BpeFpyTVRCYlRDcTdpQUcvMmgy?=
 =?utf-8?B?SDJOU2t5ekMyL0Z1c0EyWno3QSsyYmttamw2UTJ5aXhaWkpxR0M1RnMzMWxi?=
 =?utf-8?B?ZzhmVDVrZTFnMExVaXpFbDYvUmVlVEx6RW5tUlFyZmRuajJWZ3lhQm9NaG5Q?=
 =?utf-8?B?Z1NoT1R3Y2JMRXFuMWVNZmtyNEFGK2xLUUZYWkRUcjRHenhHYjdaYlBSdnhl?=
 =?utf-8?B?ZUFUTXg1TGVHa1gwbEJZRFlpVTVoaWk3VEFoUmdvMkpuTFhPb3Z6M20vb2Vw?=
 =?utf-8?B?YktabzZuR2RTSE1LSnZqcTZyNVFWVllpK3huZ2w5U2QxU1JEaTdKTU0wMmFR?=
 =?utf-8?B?TGZtdk15MW5SZzZJRjA0ZEg4ckR6TXVoaFd6RU0yb2duSDRwRW96d0J6b3Iy?=
 =?utf-8?B?cVYzZ1lBS1JaTUNQV21WL1J0eTloTVNwRlpGUEhUNWZhcGNGMlZLSXA2ektw?=
 =?utf-8?B?ME04UVY2Z3IzNndHbEEyNUJmZ3Vuckp3VDh3RnIzNExLZW9GNDlqZ2daWExs?=
 =?utf-8?B?NWZCNk1iZ0dGTUQraEVhUDJpVFQ3SVBlNUUyRVcwK2YxbUFlVFcyQ2xNZ1lN?=
 =?utf-8?B?T0E1UVIrVkdYZ05sZHhhUUhmam1QMDZiZW9QVHh3c21RalJTSnFxY3ZURzJG?=
 =?utf-8?B?TnBPQmVRamlPYUthOUE3WUgrN1NQOWZlV0J4LzRDcTVwT1c5S3FXaWMxck1Z?=
 =?utf-8?B?dm1XeExqZ282TStkclVrcjhvRmZoVHNOUUtHS2svRDBNQnEzUUFuNEVNME4r?=
 =?utf-8?Q?e6ytnGKCQ89C0OEU=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 cf495aed-46ec-465a-f268-08da11da06d6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 23:15:34.6951
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 oBu0sJArglnL8/le05PZUXHZupomovdBg/e+5vHVyMbVUX8WRgtRqlilZkYbMcfDwfRZ+an86SRmHs9gCsq4PA0L4oF5SQk8eQLY3DVEUKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4559
X-Proofpoint-ORIG-GUID: uXX6uGyW-yOSIS6m22CGMo53hBzsukCY
X-Proofpoint-GUID: uXX6uGyW-yOSIS6m22CGMo53hBzsukCY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-29_10,2022-03-29_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 impostorscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 mlxscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203290127
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 22TN0gJt016111
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 23:15:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56587



On 2022-03-28 03:18, Nicolas Jeker wrote:
> On Sun, 2022-03-27 at 23:39 -0700, sateesh m wrote:
>> Hi Team,
>>
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I have built =
a custom image core-image-base on riscv
>> target machine installed nftables,firewalld,JSON packages support. I
>> am using firewalld_0.9.3 sources depends nftables-python is present.
>> But I am getting error python-nftables. Can you please guide me on
>> what dependent I missed here? If suppose firewalld should work means,
>> What packages should=C2=A0 I install?
>>
>> But while running firewalld status is always failed mode.
>> Using $firewall-cmd --reload=C2=A0 I am facing a=C2=A0 problem
>>
>> Error: COMMAND_FAILED: 'python-nftables' failed: internal:0:0-0:
>> Error: Could not process rule: No such file or directory
>>  =20
> Judging by this stack exchange thread[1] from a quick search, you might
> be missing the appropriate kernel configs[2].
>
> [1]: https://unix.stackexchange.com/questions/632113
> [2]: https://wiki.gentoo.org/wiki/Nftables#Kernel
Trevor was looking into this as well so I've CCed him.

../Randy

>
>>  =20
>> JSON blob:
>> {"nftables": [{"metainfo": {"json_schema_version": 1}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "raw_PREROUTING", "type": "filter", "hook": "prerouting", "prio": -
>> 290}}}, {"add": {"chain": {"family": "inet", "table": "firewalld",
>> "name": "mangle_PREROUTING", "type": "filter", "hook": "prerouting",
>> "prio": -140}}}, {"add": {"chain": {"family": "inet", "table":
>> "firewalld", "name": "mangle_PREROUTING_POLICIES_pre"}}}, {"add":
>> {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PREROUTING", "expr": [{"jump": {"target":
>> "mangle_PREROUTING_POLICIES_pre"}}]}}}, {"add": {"chain": {"family":
>> "inet", "table": "firewalld", "name": "mangle_PREROUTING_ZONES"}}},
>> {"add": {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PREROUTING", "expr": [{"jump": {"target":
>> "mangle_PREROUTING_ZONES"}}]}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "mangle_PREROUTING_POLICIES_post"}}},
>> {"add": {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PREROUTING", "expr": [{"jump": {"target":
>> "mangle_PREROUTING_POLICIES_post"}}]}}}, {"add": {"chain": {"family":
>> "ip", "table": "firewalld", "name": "nat_PREROUTING", "type": "nat",
>> "hook": "prerouting", "prio": -90}}}, {"add": {"chain": {"family":
>> "ip", "table": "firewalld", "name": "nat_PREROUTING_POLICIES_pre"}}},
>> {"add": {"rule": {"family": "ip", "table": "firewalld", "chain":
>> "nat_PREROUTING", "expr": [{"jump": {"target":
>> "nat_PREROUTING_POLICIES_pre"}}]}}}, {"add": {"chain": {"family":
>> "ip", "table": "firewalld", "name": "nat_PREROUTING_ZONES"}}},
>> {"add": {"rule": {"family": "ip", "table": "firewalld", "chain":
>> "nat_PREROUTING", "expr": [{"jump": {"target":
>> "nat_PREROUTING_ZONES"}}]}}}, {"add": {"chain": {"family": "ip",
>> "table": "firewalld", "name": "nat_PREROUTING_POLICIES_post"}}},
>> {"add": {"rule": {"family": "ip", "table": "firewalld", "chain":
>> "nat_PREROUTING", "expr": [{"jump": {"target":
>> "nat_PREROUTING_POLICIES_post"}}]}}}, {"add": {"chain": {"family":
>> "ip", "table": "firewalld", "name": "nat_POSTROUTING", "type": "nat",
>> "hook": "postrouting", "prio": 110}}}, {"add": {"chain": {"family":
>> "ip", "table": "firewalld", "name":
>> "nat_POSTROUTING_POLICIES_pre"}}}, {"add": {"rule": {"family": "ip",
>> "table": "firewalld", "chain": "nat_POSTROUTING", "expr": [{"jump":
>> {"target": "nat_POSTROUTING_POLICIES_pre"}}]}}}, {"add": {"chain":
>> {"family": "ip", "table": "firewalld", "name":
>> "nat_POSTROUTING_ZONES"}}}, {"add": {"rule": {"family": "ip",
>> "table": "firewalld", "chain": "nat_POSTROUTING", "expr": [{"jump":
>> {"target": "nat_POSTROUTING_ZONES"}}]}}}, {"add": {"chain":
>> {"family": "ip", "table": "firewalld", "name":
>> "nat_POSTROUTING_POLICIES_post"}}}, {"add": {"rule": {"family": "ip",
>> "table": "firewalld", "chain": "nat_POSTROUTING", "expr": [{"jump":
>> {"target": "nat_POSTROUTING_POLICIES_post"}}]}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name": "nat_PREROUTING",
>> "type": "nat", "hook": "prerouting", "prio": -90}}}, {"add":
>> {"chain": {"family": "ip6", "table": "firewalld", "name":
>> "nat_PREROUTING_POLICIES_pre"}}}, {"add": {"rule": {"family": "ip6",
>> "table": "firewalld", "chain": "nat_PREROUTING", "expr": [{"jump":
>> {"target": "nat_PREROUTING_POLICIES_pre"}}]}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name":
>> "nat_PREROUTING_ZONES"}}}, {"add": {"rule": {"family": "ip6",
>> "table": "firewalld", "chain": "nat_PREROUTING", "expr": [{"jump":
>> {"target": "nat_PREROUTING_ZONES"}}]}}}, {"add": {"chain": {"family":
>> "ip6", "table": "firewalld", "name":
>> "nat_PREROUTING_POLICIES_post"}}}, {"add": {"rule": {"family": "ip6",
>> "table": "firewalld", "chain": "nat_PREROUTING", "expr": [{"jump":
>> {"target": "nat_PREROUTING_POLICIES_post"}}]}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name": "nat_POSTROUTING",
>> "type": "nat", "hook": "postrouting", "prio": 110}}}, {"add":
>> {"chain": {"family": "ip6", "table": "firewalld", "name":
>> "nat_POSTROUTING_POLICIES_pre"}}}, {"add": {"rule": {"family": "ip6",
>> "table": "firewalld", "chain": "nat_POSTROUTING", "expr": [{"jump":
>> {"target": "nat_POSTROUTING_POLICIES_pre"}}]}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name":
>> "nat_POSTROUTING_ZONES"}}}, {"add": {"rule": {"family": "ip6",
>> "table": "firewalld", "chain": "nat_POSTROUTING", "expr": [{"jump":
>> {"target": "nat_POSTROUTING_ZONES"}}]}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name":
>> "nat_POSTROUTING_POLICIES_post"}}}, {"add": {"rule": {"family":
>> "ip6", "table": "firewalld", "chain": "nat_POSTROUTING", "expr":
>> [{"jump": {"target": "nat_POSTROUTING_POLICIES_post"}}]}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_INPUT", "type": "filter", "hook": "input", "prio": 10}}},
>> {"add": {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_FORWARD", "type": "filter", "hook": "forward", "prio": 10}}},
>> {"add": {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_OUTPUT", "type": "filter", "hook": "output", "prio": 10}}},
>> {"add": {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "filter_INPUT", "expr": [{"match": {"left": {"ct": {"key": "state"}},
>> "op": "in", "right": {"set": ["established", "related"]}}},
>> {"accept": null}]}}}, {"add": {"rule": {"family": "inet", "table":
>> "firewalld", "chain": "filter_INPUT", "expr": [{"match": {"left":
>> {"ct": {"key": "status"}}, "op": "in", "right": "dnat"}}, {"accept":
>> null}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld",
>> "chain": "filter_INPUT", "expr": [{"match": {"left": {"meta": {"key":
>> "iifname"}}, "op": "=3D=3D", "right": "lo"}}, {"accept": null}]}}},
>> {"add": {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_INPUT_POLICIES_pre"}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_INPUT", "expr": [{"jump":
>> {"target": "filter_INPUT_POLICIES_pre"}}]}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "filter_INPUT_ZONES"}}}, {"add": {"rule": {"family": "inet", "table":
>> "firewalld", "chain": "filter_INPUT", "expr": [{"jump": {"target":
>> "filter_INPUT_ZONES"}}]}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "filter_INPUT_POLICIES_post"}}},
>> {"add": {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "filter_INPUT", "expr": [{"jump": {"target":
>> "filter_INPUT_POLICIES_post"}}]}}}, {"add": {"rule": {"family":
>> "inet", "table": "firewalld", "chain": "filter_INPUT", "expr":
>> [{"match": {"left": {"ct": {"key": "state"}}, "op": "in", "right":
>> {"set": ["invalid"]}}}, {"drop": null}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain": "filter_INPUT",
>> "expr": [{"reject": {"type": "icmpx", "expr": "admin-
>> prohibited"}}]}}}, {"add": {"rule": {"family": "inet", "table":
>> "firewalld", "chain": "filter_FORWARD", "expr": [{"match": {"left":
>> {"ct": {"key": "state"}}, "op": "in", "right": {"set":
>> ["established", "related"]}}}, {"accept": null}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain": "filter_FORWARD",
>> "expr": [{"match": {"left": {"ct": {"key": "status"}}, "op": "in",
>> "right": "dnat"}}, {"accept": null}]}}}, {"add": {"rule": {"family":
>> "inet", "table": "firewalld", "chain": "filter_FORWARD", "expr":
>> [{"match": {"left": {"meta": {"key": "iifname"}}, "op": "=3D=3D",
>> "right": "lo"}}, {"accept": null}]}}}, {"add": {"chain": {"family":
>> "inet", "table": "firewalld", "name":
>> "filter_FORWARD_POLICIES_pre"}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_FORWARD", "expr": [{"jump":
>> {"target": "filter_FORWARD_POLICIES_pre"}}]}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "filter_FORWARD_IN_ZONES"}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_FORWARD", "expr": [{"jump":
>> {"target": "filter_FORWARD_IN_ZONES"}}]}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "filter_FORWARD_OUT_ZONES"}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_FORWARD", "expr": [{"jump":
>> {"target": "filter_FORWARD_OUT_ZONES"}}]}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "filter_FORWARD_POLICIES_post"}}}, {"add": {"rule": {"family":
>> "inet", "table": "firewalld", "chain": "filter_FORWARD", "expr":
>> [{"jump": {"target": "filter_FORWARD_POLICIES_post"}}]}}}, {"add":
>> {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "filter_FORWARD", "expr": [{"match": {"left": {"ct": {"key":
>> "state"}}, "op": "in", "right": {"set": ["invalid"]}}}, {"drop":
>> null}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld",
>> "chain": "filter_FORWARD", "expr": [{"reject": {"type": "icmpx",
>> "expr": "admin-prohibited"}}]}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_OUTPUT", "expr": [{"match":
>> {"left": {"meta": {"key": "oifname"}}, "op": "=3D=3D", "right": "lo"}}=
,
>> {"accept": null}]}}}, {"add": {"chain": {"family": "inet", "table":
>> "firewalld", "name": "filter_OUTPUT_POLICIES_pre"}}}, {"add":
>> {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "filter_OUTPUT", "expr": [{"jump": {"target":
>> "filter_OUTPUT_POLICIES_pre"}}]}}}, {"add": {"chain": {"family":
>> "inet", "table": "firewalld", "name":
>> "filter_OUTPUT_POLICIES_post"}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_OUTPUT", "expr": [{"jump":
>> {"target": "filter_OUTPUT_POLICIES_post"}}]}}}, {"insert": {"rule":
>> {"family": "inet", "table": "firewalld", "chain": "raw_PREROUTING",
>> "expr": [{"match": {"left": {"meta": {"key": "nfproto"}}, "op": "=3D=3D=
",
>> "right": "ipv6"}}, {"match": {"left": {"fib": {"flags": ["saddr",
>> "iif"], "result": "oif"}}, "op": "=3D=3D", "right": false}}, {"drop":
>> null}]}}}, {"insert": {"rule": {"family": "inet", "table":
>> "firewalld", "chain": "raw_PREROUTING", "expr": [{"match": {"left":
>> {"payload": {"protocol": "icmpv6", "field": "type"}}, "op": "=3D=3D",
>> "right": {"set": ["nd-router-advert", "nd-neighbor-solicit"]}}},
>> {"accept": null}]}}}, {"add": {"rule": {"family": "inet", "table":
>> "firewalld", "chain": "filter_OUTPUT", "index": 0, "expr": [{"match":
>> {"left": {"payload": {"protocol": "ip6", "field": "daddr"}}, "op":
>> "=3D=3D", "right": {"set": [{"prefix": {"addr": "::0.0.0.0", "len": 96=
}},
>> {"prefix": {"addr": "::ffff:0.0.0.0", "len": 96}}, {"prefix":
>> {"addr": "2002:0000::", "len": 24}}, {"prefix": {"addr":
>> "2002:0a00::", "len": 24}}, {"prefix": {"addr": "2002:7f00::", "len":
>> 24}}, {"prefix": {"addr": "2002:ac10::", "len": 28}}, {"prefix":
>> {"addr": "2002:c0a8::", "len": 32}}, {"prefix": {"addr":
>> "2002:a9fe::", "len": 32}}, {"prefix": {"addr": "2002:e000::", "len":
>> 19}}]}}}, {"reject": {"type": "icmpv6", "expr": "addr-
>> unreachable"}}]}}}, {"add": {"rule": {"family": "inet", "table":
>> "firewalld", "chain": "filter_FORWARD", "index": 2, "expr":
>> [{"match": {"left": {"payload": {"protocol": "ip6", "field":
>> "daddr"}}, "op": "=3D=3D", "right": {"set": [{"prefix": {"addr":
>> "::0.0.0.0", "len": 96}}, {"prefix": {"addr": "::ffff:0.0.0.0",
>> "len": 96}}, {"prefix": {"addr": "2002:0000::", "len": 24}},
>> {"prefix": {"addr": "2002:0a00::", "len": 24}}, {"prefix": {"addr":
>> "2002:7f00::", "len": 24}}, {"prefix": {"addr": "2002:ac10::", "len":
>> 28}}, {"prefix": {"addr": "2002:c0a8::", "len": 32}}, {"prefix":
>> {"addr": "2002:a9fe::", "len": 32}}, {"prefix": {"addr":
>> "2002:e000::", "len": 19}}]}}}, {"reject": {"type": "icmpv6", "expr":
>> "addr-unreachable"}}]}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "filter_IN_public"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_IN_public_pre"}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "filter_IN_public_log"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_IN_public_deny"}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "filter_IN_public_allow"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_IN_public_post"}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_IN_public", "expr": [{"jump":
>> {"target": "filter_IN_public_pre"}}]}}}, {"add": {"rule": {"family":
>> "inet", "table": "firewalld", "chain": "filter_IN_public", "expr":
>> [{"jump": {"target": "filter_IN_public_log"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain": "filter_IN_public",
>> "expr": [{"jump": {"target": "filter_IN_public_deny"}}]}}}, {"add":
>> {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "filter_IN_public", "expr": [{"jump": {"target":
>> "filter_IN_public_allow"}}]}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_IN_public", "expr": [{"jump":
>> {"target": "filter_IN_public_post"}}]}}}, {"add": {"rule": {"family":
>> "inet", "table": "firewalld", "chain": "filter_IN_public_allow",
>> "expr": [{"match": {"left": {"payload": {"protocol": "tcp", "field":
>> "dport"}}, "op": "=3D=3D", "right": 22}}, {"match": {"left": {"ct":
>> {"key": "state"}}, "op": "in", "right": {"set": ["new",
>> "untracked"]}}}, {"accept": null}]}}}, {"add": {"rule": {"family":
>> "inet", "table": "firewalld", "chain": "filter_IN_public_allow",
>> "expr": [{"match": {"left": {"payload": {"protocol": "ip6", "field":
>> "daddr"}}, "op": "=3D=3D", "right": {"prefix": {"addr": "fe80::", "len=
":
>> 64}}}}, {"match": {"left": {"payload": {"protocol": "udp", "field":
>> "dport"}}, "op": "=3D=3D", "right": 546}}, {"match": {"left": {"ct":
>> {"key": "state"}}, "op": "in", "right": {"set": ["new",
>> "untracked"]}}}, {"accept": null}]}}}, {"add": {"chain": {"family":
>> "inet", "table": "firewalld", "name": "filter_FWDO_public"}}},
>> {"add": {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_FWDO_public_pre"}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "filter_FWDO_public_log"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_FWDO_public_deny"}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "filter_FWDO_public_allow"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_FWDO_public_post"}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_FWDO_public", "expr":
>> [{"jump": {"target": "filter_FWDO_public_pre"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_FWDO_public", "expr": [{"jump": {"target":
>> "filter_FWDO_public_log"}}]}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_FWDO_public", "expr":
>> [{"jump": {"target": "filter_FWDO_public_deny"}}]}}}, {"add":
>> {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "filter_FWDO_public", "expr": [{"jump": {"target":
>> "filter_FWDO_public_allow"}}]}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_FWDO_public", "expr":
>> [{"jump": {"target": "filter_FWDO_public_post"}}]}}}, {"add":
>> {"chain": {"family": "ip", "table": "firewalld", "name":
>> "nat_POST_public"}}}, {"add": {"chain": {"family": "ip", "table":
>> "firewalld", "name": "nat_POST_public_pre"}}}, {"add": {"chain":
>> {"family": "ip", "table": "firewalld", "name":
>> "nat_POST_public_log"}}}, {"add": {"chain": {"family": "ip", "table":
>> "firewalld", "name": "nat_POST_public_deny"}}}, {"add": {"chain":
>> {"family": "ip", "table": "firewalld", "name":
>> "nat_POST_public_allow"}}}, {"add": {"chain": {"family": "ip",
>> "table": "firewalld", "name": "nat_POST_public_post"}}}, {"add":
>> {"rule": {"family": "ip", "table": "firewalld", "chain":
>> "nat_POST_public", "expr": [{"jump": {"target":
>> "nat_POST_public_pre"}}]}}}, {"add": {"rule": {"family": "ip",
>> "table": "firewalld", "chain": "nat_POST_public", "expr": [{"jump":
>> {"target": "nat_POST_public_log"}}]}}}, {"add": {"rule": {"family":
>> "ip", "table": "firewalld", "chain": "nat_POST_public", "expr":
>> [{"jump": {"target": "nat_POST_public_deny"}}]}}}, {"add": {"rule":
>> {"family": "ip", "table": "firewalld", "chain": "nat_POST_public",
>> "expr": [{"jump": {"target": "nat_POST_public_allow"}}]}}}, {"add":
>> {"rule": {"family": "ip", "table": "firewalld", "chain":
>> "nat_POST_public", "expr": [{"jump": {"target":
>> "nat_POST_public_post"}}]}}}, {"add": {"chain": {"family": "ip6",
>> "table": "firewalld", "name": "nat_POST_public"}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name":
>> "nat_POST_public_pre"}}}, {"add": {"chain": {"family": "ip6",
>> "table": "firewalld", "name": "nat_POST_public_log"}}}, {"add":
>> {"chain": {"family": "ip6", "table": "firewalld", "name":
>> "nat_POST_public_deny"}}}, {"add": {"chain": {"family": "ip6",
>> "table": "firewalld", "name": "nat_POST_public_allow"}}}, {"add":
>> {"chain": {"family": "ip6", "table": "firewalld", "name":
>> "nat_POST_public_post"}}}, {"add": {"rule": {"family": "ip6",
>> "table": "firewalld", "chain": "nat_POST_public", "expr": [{"jump":
>> {"target": "nat_POST_public_pre"}}]}}}, {"add": {"rule": {"family":
>> "ip6", "table": "firewalld", "chain": "nat_POST_public", "expr":
>> [{"jump": {"target": "nat_POST_public_log"}}]}}}, {"add": {"rule":
>> {"family": "ip6", "table": "firewalld", "chain": "nat_POST_public",
>> "expr": [{"jump": {"target": "nat_POST_public_deny"}}]}}}, {"add":
>> {"rule": {"family": "ip6", "table": "firewalld", "chain":
>> "nat_POST_public", "expr": [{"jump": {"target":
>> "nat_POST_public_allow"}}]}}}, {"add": {"rule": {"family": "ip6",
>> "table": "firewalld", "chain": "nat_POST_public", "expr": [{"jump":
>> {"target": "nat_POST_public_post"}}]}}}, {"add": {"chain": {"family":
>> "inet", "table": "firewalld", "name": "filter_FWDI_public"}}},
>> {"add": {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_FWDI_public_pre"}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "filter_FWDI_public_log"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_FWDI_public_deny"}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "filter_FWDI_public_allow"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "filter_FWDI_public_post"}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_FWDI_public", "expr":
>> [{"jump": {"target": "filter_FWDI_public_pre"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_FWDI_public", "expr": [{"jump": {"target":
>> "filter_FWDI_public_log"}}]}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_FWDI_public", "expr":
>> [{"jump": {"target": "filter_FWDI_public_deny"}}]}}}, {"add":
>> {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "filter_FWDI_public", "expr": [{"jump": {"target":
>> "filter_FWDI_public_allow"}}]}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_FWDI_public", "expr":
>> [{"jump": {"target": "filter_FWDI_public_post"}}]}}}, {"add":
>> {"chain": {"family": "ip", "table": "firewalld", "name":
>> "nat_PRE_public"}}}, {"add": {"chain": {"family": "ip", "table":
>> "firewalld", "name": "nat_PRE_public_pre"}}}, {"add": {"chain":
>> {"family": "ip", "table": "firewalld", "name":
>> "nat_PRE_public_log"}}}, {"add": {"chain": {"family": "ip", "table":
>> "firewalld", "name": "nat_PRE_public_deny"}}}, {"add": {"chain":
>> {"family": "ip", "table": "firewalld", "name":
>> "nat_PRE_public_allow"}}}, {"add": {"chain": {"family": "ip",
>> "table": "firewalld", "name": "nat_PRE_public_post"}}}, {"add":
>> {"rule": {"family": "ip", "table": "firewalld", "chain":
>> "nat_PRE_public", "expr": [{"jump": {"target":
>> "nat_PRE_public_pre"}}]}}}, {"add": {"rule": {"family": "ip",
>> "table": "firewalld", "chain": "nat_PRE_public", "expr": [{"jump":
>> {"target": "nat_PRE_public_log"}}]}}}, {"add": {"rule": {"family":
>> "ip", "table": "firewalld", "chain": "nat_PRE_public", "expr":
>> [{"jump": {"target": "nat_PRE_public_deny"}}]}}}, {"add": {"rule":
>> {"family": "ip", "table": "firewalld", "chain": "nat_PRE_public",
>> "expr": [{"jump": {"target": "nat_PRE_public_allow"}}]}}}, {"add":
>> {"rule": {"family": "ip", "table": "firewalld", "chain":
>> "nat_PRE_public", "expr": [{"jump": {"target":
>> "nat_PRE_public_post"}}]}}}, {"add": {"chain": {"family": "ip6",
>> "table": "firewalld", "name": "nat_PRE_public"}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name":
>> "nat_PRE_public_pre"}}}, {"add": {"chain": {"family": "ip6", "table":
>> "firewalld", "name": "nat_PRE_public_log"}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name":
>> "nat_PRE_public_deny"}}}, {"add": {"chain": {"family": "ip6",
>> "table": "firewalld", "name": "nat_PRE_public_allow"}}}, {"add":
>> {"chain": {"family": "ip6", "table": "firewalld", "name":
>> "nat_PRE_public_post"}}}, {"add": {"rule": {"family": "ip6", "table":
>> "firewalld", "chain": "nat_PRE_public", "expr": [{"jump": {"target":
>> "nat_PRE_public_pre"}}]}}}, {"add": {"rule": {"family": "ip6",
>> "table": "firewalld", "chain": "nat_PRE_public", "expr": [{"jump":
>> {"target": "nat_PRE_public_log"}}]}}}, {"add": {"rule": {"family":
>> "ip6", "table": "firewalld", "chain": "nat_PRE_public", "expr":
>> [{"jump": {"target": "nat_PRE_public_deny"}}]}}}, {"add": {"rule":
>> {"family": "ip6", "table": "firewalld", "chain": "nat_PRE_public",
>> "expr": [{"jump": {"target": "nat_PRE_public_allow"}}]}}}, {"add":
>> {"rule": {"family": "ip6", "table": "firewalld", "chain":
>> "nat_PRE_public", "expr": [{"jump": {"target":
>> "nat_PRE_public_post"}}]}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "mangle_PRE_public"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "mangle_PRE_public_pre"}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "mangle_PRE_public_log"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "mangle_PRE_public_deny"}}}, {"add": {"chain": {"family": "inet",
>> "table": "firewalld", "name": "mangle_PRE_public_allow"}}}, {"add":
>> {"chain": {"family": "inet", "table": "firewalld", "name":
>> "mangle_PRE_public_post"}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "mangle_PRE_public", "expr": [{"jump":
>> {"target": "mangle_PRE_public_pre"}}]}}}, {"add": {"rule": {"family":
>> "inet", "table": "firewalld", "chain": "mangle_PRE_public", "expr":
>> [{"jump": {"target": "mangle_PRE_public_log"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PRE_public", "expr": [{"jump": {"target":
>> "mangle_PRE_public_deny"}}]}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "mangle_PRE_public", "expr": [{"jump":
>> {"target": "mangle_PRE_public_allow"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PRE_public", "expr": [{"jump": {"target":
>> "mangle_PRE_public_post"}}]}}}, {"add": {"rule": {"family": "inet",
>> "table": "firewalld", "chain": "filter_IN_public", "index": 4,
>> "expr": [{"match": {"left": {"meta": {"key": "l4proto"}}, "op": "=3D=3D=
",
>> "right": {"set": ["icmp", "icmpv6"]}}}, {"accept": null}]}}}, {"add":
>> {"rule": {"family": "inet", "table": "firewalld", "chain":
>> "filter_FWDI_public", "index": 4, "expr": [{"match": {"left":
>> {"meta": {"key": "l4proto"}}, "op": "=3D=3D", "right": {"set": ["icmp"=
,
>> "icmpv6"]}}}, {"accept": null}]}}}, {"add": {"rule": {"family":
>> "inet", "table": "firewalld", "chain": "filter_INPUT_ZONES", "expr":
>> [{"goto": {"target": "filter_IN_public"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_FORWARD_OUT_ZONES", "expr": [{"goto": {"target":
>> "filter_FWDO_public"}}]}}}, {"add": {"rule": {"family": "ip",
>> "table": "firewalld", "chain": "nat_POSTROUTING_ZONES", "expr":
>> [{"goto": {"target": "nat_POST_public"}}]}}}, {"add": {"rule":
>> {"family": "ip6", "table": "firewalld", "chain":
>> "nat_POSTROUTING_ZONES", "expr": [{"goto": {"target":
>> "nat_POST_public"}}]}}}, {"add": {"rule": {"family": "inet", "table":
>> "firewalld", "chain": "filter_FORWARD_IN_ZONES", "expr": [{"goto":
>> {"target": "filter_FWDI_public"}}]}}}, {"add": {"rule": {"family":
>> "ip", "table": "firewalld", "chain": "nat_PREROUTING_ZONES", "expr":
>> [{"goto": {"target": "nat_PRE_public"}}]}}}, {"add": {"rule":
>> {"family": "ip6", "table": "firewalld", "chain":
>> "nat_PREROUTING_ZONES", "expr": [{"goto": {"target":
>> "nat_PRE_public"}}]}}}, {"add": {"rule": {"family": "inet", "table":
>> "firewalld", "chain": "mangle_PREROUTING_ZONES", "expr": [{"goto":
>> {"target": "mangle_PRE_public"}}]}}}, {"add": {"chain": {"family":
>> "inet", "table": "firewalld", "name": "filter_IN_policy_allow-host-
>> ipv6"}}}, {"add": {"chain": {"family": "inet", "table": "firewalld",
>> "name": "filter_IN_policy_allow-host-ipv6_pre"}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "filter_IN_policy_allow-host-ipv6_log"}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "filter_IN_policy_allow-host-ipv6_deny"}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "filter_IN_policy_allow-host-ipv6_allow"}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "filter_IN_policy_allow-host-ipv6_post"}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_IN_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "filter_IN_policy_allow-host-ipv6_pre"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_IN_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "filter_IN_policy_allow-host-ipv6_log"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_IN_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "filter_IN_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_IN_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "filter_IN_policy_allow-host-ipv6_allow"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_IN_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "filter_IN_policy_allow-host-ipv6_post"}}]}}}, {"add": {"chain":
>> {"family": "ip", "table": "firewalld", "name": "nat_PRE_policy_allow-
>> host-ipv6"}}}, {"add": {"chain": {"family": "ip", "table":
>> "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_pre"}}}, {"add":
>> {"chain": {"family": "ip", "table": "firewalld", "name":
>> "nat_PRE_policy_allow-host-ipv6_log"}}}, {"add": {"chain": {"family":
>> "ip", "table": "firewalld", "name": "nat_PRE_policy_allow-host-
>> ipv6_deny"}}}, {"add": {"chain": {"family": "ip", "table":
>> "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_allow"}}},
>> {"add": {"chain": {"family": "ip", "table": "firewalld", "name":
>> "nat_PRE_policy_allow-host-ipv6_post"}}}, {"add": {"rule": {"family":
>> "ip", "table": "firewalld", "chain": "nat_PRE_policy_allow-host-
>> ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_allow-host-
>> ipv6_pre"}}]}}}, {"add": {"rule": {"family": "ip", "table":
>> "firewalld", "chain": "nat_PRE_policy_allow-host-ipv6", "expr":
>> [{"jump": {"target": "nat_PRE_policy_allow-host-ipv6_log"}}]}}},
>> {"add": {"rule": {"family": "ip", "table": "firewalld", "chain":
>> "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "nat_PRE_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"rule":
>> {"family": "ip", "table": "firewalld", "chain":
>> "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "nat_PRE_policy_allow-host-ipv6_allow"}}]}}}, {"add": {"rule":
>> {"family": "ip", "table": "firewalld", "chain":
>> "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "nat_PRE_policy_allow-host-ipv6_post"}}]}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name":
>> "nat_PRE_policy_allow-host-ipv6"}}}, {"add": {"chain": {"family":
>> "ip6", "table": "firewalld", "name": "nat_PRE_policy_allow-host-
>> ipv6_pre"}}}, {"add": {"chain": {"family": "ip6", "table":
>> "firewalld", "name": "nat_PRE_policy_allow-host-ipv6_log"}}}, {"add":
>> {"chain": {"family": "ip6", "table": "firewalld", "name":
>> "nat_PRE_policy_allow-host-ipv6_deny"}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name":
>> "nat_PRE_policy_allow-host-ipv6_allow"}}}, {"add": {"chain":
>> {"family": "ip6", "table": "firewalld", "name":
>> "nat_PRE_policy_allow-host-ipv6_post"}}}, {"add": {"rule": {"family":
>> "ip6", "table": "firewalld", "chain": "nat_PRE_policy_allow-host-
>> ipv6", "expr": [{"jump": {"target": "nat_PRE_policy_allow-host-
>> ipv6_pre"}}]}}}, {"add": {"rule": {"family": "ip6", "table":
>> "firewalld", "chain": "nat_PRE_policy_allow-host-ipv6", "expr":
>> [{"jump": {"target": "nat_PRE_policy_allow-host-ipv6_log"}}]}}},
>> {"add": {"rule": {"family": "ip6", "table": "firewalld", "chain":
>> "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "nat_PRE_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"rule":
>> {"family": "ip6", "table": "firewalld", "chain":
>> "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "nat_PRE_policy_allow-host-ipv6_allow"}}]}}}, {"add": {"rule":
>> {"family": "ip6", "table": "firewalld", "chain":
>> "nat_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "nat_PRE_policy_allow-host-ipv6_post"}}]}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "mangle_PRE_policy_allow-host-ipv6"}}}, {"add": {"chain": {"family":
>> "inet", "table": "firewalld", "name": "mangle_PRE_policy_allow-host-
>> ipv6_pre"}}}, {"add": {"chain": {"family": "inet", "table":
>> "firewalld", "name": "mangle_PRE_policy_allow-host-ipv6_log"}}},
>> {"add": {"chain": {"family": "inet", "table": "firewalld", "name":
>> "mangle_PRE_policy_allow-host-ipv6_deny"}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "mangle_PRE_policy_allow-host-ipv6_allow"}}}, {"add": {"chain":
>> {"family": "inet", "table": "firewalld", "name":
>> "mangle_PRE_policy_allow-host-ipv6_post"}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "mangle_PRE_policy_allow-host-ipv6_pre"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "mangle_PRE_policy_allow-host-ipv6_log"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "mangle_PRE_policy_allow-host-ipv6_deny"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "mangle_PRE_policy_allow-host-ipv6_allow"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PRE_policy_allow-host-ipv6", "expr": [{"jump": {"target":
>> "mangle_PRE_policy_allow-host-ipv6_post"}}]}}}, {"insert": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_INPUT_POLICIES_pre", "expr": [{"jump": {"target":
>> "filter_IN_policy_allow-host-ipv6"}}]}}}, {"insert": {"rule":
>> {"family": "ip", "table": "firewalld", "chain":
>> "nat_PREROUTING_POLICIES_pre", "expr": [{"jump": {"target":
>> "nat_PRE_policy_allow-host-ipv6"}}]}}}, {"insert": {"rule":
>> {"family": "ip6", "table": "firewalld", "chain":
>> "nat_PREROUTING_POLICIES_pre", "expr": [{"jump": {"target":
>> "nat_PRE_policy_allow-host-ipv6"}}]}}}, {"insert": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "mangle_PREROUTING_POLICIES_pre", "expr": [{"jump": {"target":
>> "mangle_PRE_policy_allow-host-ipv6"}}]}}}, {"add": {"rule":
>> {"family": "inet", "table": "firewalld", "chain":
>> "filter_IN_policy_allow-host-ipv6_allow", "expr": [{"match": {"left":
>> {"meta": {"key": "nfproto"}}, "op": "=3D=3D", "right": "ipv6"}},
>> {"match": {"left": {"payload": {"protocol": "icmpv6", "field":
>> "type"}}, "op": "=3D=3D", "right": "nd-neighbor-advert"}}, {"accept":
>> null}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld",
>> "chain": "filter_IN_policy_allow-host-ipv6_allow", "expr": [{"match":
>> {"left": {"meta": {"key": "nfproto"}}, "op": "=3D=3D", "right": "ipv6"=
}},
>> {"match": {"left": {"payload": {"protocol": "icmpv6", "field":
>> "type"}}, "op": "=3D=3D", "right": "nd-neighbor-solicit"}}, {"accept":
>> null}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld",
>> "chain": "filter_IN_policy_allow-host-ipv6_allow", "expr": [{"match":
>> {"left": {"meta": {"key": "nfproto"}}, "op": "=3D=3D", "right": "ipv6"=
}},
>> {"match": {"left": {"payload": {"protocol": "icmpv6", "field":
>> "type"}}, "op": "=3D=3D", "right": "nd-router-advert"}}, {"accept":
>> null}]}}}, {"add": {"rule": {"family": "inet", "table": "firewalld",
>> "chain": "filter_IN_policy_allow-host-ipv6_allow", "expr": [{"match":
>> {"left": {"meta": {"key": "nfproto"}}, "op": "=3D=3D", "right": "ipv6"=
}},
>> {"match": {"left": {"payload": {"protocol": "icmpv6", "field":
>> "type"}}, "op": "=3D=3D", "right": "nd-redirect"}}, {"accept":
>> null}]}}}]}
>>  =20
>>
>> --=20
>> Regards,
>> Sateesh
>>
>>
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56567): https://lists.yoctoproject.org/g/yocto/mess=
age/56567
> Mute This Topic: https://lists.yoctoproject.org/mt/90079295/3616765
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux


