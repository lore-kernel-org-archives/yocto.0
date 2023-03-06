Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0392C6FA99
	for <webhook@archiver.kernel.org>; Mon,  6 Mar 2023 04:54:41 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.26583.1678078475615820984
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Mar 2023 20:54:36 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=dQ3sDjXX;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2429f2f17e=qi.chen@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3264rRxx022667
	for <yocto@lists.yoctoproject.org>; Mon, 6 Mar 2023 04:54:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=PqYUXNWwj2iL6iQ1f/8IX1ROjtjmeKs8Kk01aS53n40=;
 b=dQ3sDjXXuKgRf68eM+pU3csuZiYspecufxNlc+zuNk74YQEm0AwbMBJbWAy9153vLEJv
 09+P+F9O+YB/xlZJxxjTawrX04xv0fj/KY3zhXATdXdNBwlb+NRuU/HHiGZmFDv3OEef
 HnF+0UAQYX5uucqdy1YbDHS9mfzPmkyVLgEKFgi1ygvAc2Rvovz4yCe1GGlknm8mEwtc
 +UjMHJx9Az5OkvCCc+1piAOSbAz1k+i7+lOJh5oq4AizILe035PQ3f3V8yylDgtQj5Vn
 pPzBxonkefRRwEKHutZt0nL0TLnNnvqXSDPzMRd2jw2ezwoscOqYmhzc2QSsIPOh/Zxo eA== 
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02lp2047.outbound.protection.outlook.com [104.47.51.47])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p3vya9npt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 04:54:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dH8W2Ln663WWLhaSqI9edExAwtHgPTJIYYFmY8eEyz6eEMSx3xxnx9AgZkdUleCCR8N5ezcMh3GbnOPRveB30KjXQlVrFDRBYU/Ljs0+qsSJZS3LNhRWtjTYGlB7BySwdNklqZHcTMgWRzUwdWGt9n8/EiVxJXqZY1h9M+GO1kMPewm/yObup2dA9vyYEPD8QrC9fmTLLor8MVHI3no9F7fxOuWmCLziSeS83huyQqEPM1V+t33ChW9ln3UIM77/+xj5nfe7uPujE63L9Sgc3bN+hP4dwl79aC+NETvJ2qg+RHRv4M+lmJnL+ahK1LlX4nk4kWtxSIOZesWlQ2ND5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PqYUXNWwj2iL6iQ1f/8IX1ROjtjmeKs8Kk01aS53n40=;
 b=IcUVGzBlqTjNeQEWshUMBTYozqSaJivgtjH2Z7erSZYyTg9uBSpDR054EJkiPIylJV8PUEZ1l/sB6R0hDQ2KRGQOpdZF40sXIfHZNWyO39vYcfcviuEBoUMSeVZyCwcpLcU31rG+WCxHE2zRzMBV6aYiVKjCYXL+r77ab2X3aoZzZnEFlOoSO4myhthqU8PlHQk1wKqmN7+ghV8fTEYhsde4viySSVz7abSfcwaA5ZRxHLq1Fhf/e0iMEHfSIEZVEoOuz6zwo8BcaSdwctima0AgwJi2qzhi7Lgq6EnqDmHEkYAkGkNG1J2V5STe7mspEu2EVubxRWoS91PF4FEtIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by PH7PR11MB8250.namprd11.prod.outlook.com (2603:10b6:510:1a8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.21; Mon, 6 Mar
 2023 04:54:30 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::7785:8a09:29b7:44a3]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::7785:8a09:29b7:44a3%5]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 04:54:30 +0000
Message-ID: <1b81f570-b96d-ea82-6275-d962255d20ea@windriver.com>
Date: Mon, 6 Mar 2023 12:54:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] Question about psuedo abort errors
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <bbff00030abef49a53d877a67e739be43667de7b.camel@linuxfoundation.org>
 <2956.1677148028932653597@lists.yoctoproject.org>
 <246a0cb2f6feadf3ba02958a6c228add5f59aa45.camel@linuxfoundation.org>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <246a0cb2f6feadf3ba02958a6c228add5f59aa45.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: BYAPR05CA0097.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::38) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|PH7PR11MB8250:EE_
X-MS-Office365-Filtering-Correlation-Id: cbd09b9e-884b-4064-4d4f-08db1dfedf11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NNrlMYvz0fqDCac0/ezCqbtsfFc2P/31x5LNt7H0hj9w3JTAzdBC4VU0brGCmQ+6hEKWX2YjBEEqxDh7HxlC14QMPr+TXpvkhL6r7BjgfpGarXkY4Gwi8HtWFeh2DxM0ssqEBM7gdcczeoZrf7CK2eNbEqaoVqwZJjobOyIMRq/4Qoe1JcHJYDDLDhmHf1wTskb207wroVxs14rfcQLskwFxJTRxGCiuaAWcT0rvnD9ojUTd/ehstfeYX6v23HKL2ypUQzQc1hK8vNrwUD18GfyKG72RDpBzF0E2E87/xN2D0XAiEMTySNq675bsn0Ywa8rP3L7dWXFVswlDI9x3GeJ8ajv8ETxSKcES7OQil9YrbnAX6hcojkMGdSRZDsgC8KoLVhon6ubMCBoScIzbY5ZM0FdZdtjMgT6doWiOTA6DtWrGtmap87lNZTAm4vTmBpqXsFcfQRvkYRZMY7Sm8flk9K4U1pM935UgIxQtjh/FBkTTj8Uv8VVo3mcV4We2LEMtvPVCxlCT6qx62bAdXt1rMkVoheJ/1Eh+wzXbG5DI0s0qCuTUH6SUkJYEZaKV3RtUr+GG5bZ5R84b4K6v8lAfgtjWxcBEsDzysd7oCUH2047emWKhDUQaGF41ESE9tKfWWa2QdKwR72cQh6zhyLhj+VEIE+MsIAmGzN9Sn+YR6CdJ3Z8A8Ersn8tKSBtMzba7GrA7qsSJntkwm5TRrW7UvOUwdcLzDJFz2LilsMSPM6odJV102VqLVkHmZfyU
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(39850400004)(346002)(396003)(366004)(376002)(451199018)(36756003)(966005)(6666004)(6486002)(6506007)(83380400001)(186003)(26005)(6512007)(53546011)(41300700001)(8936002)(66556008)(66946007)(6916009)(66476007)(8676002)(2906002)(5660300002)(38100700002)(31696002)(478600001)(316002)(86362001)(31686004)(66899018)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bEtZdlo5TVBxZXdFT0xqSjZTdWRpc3QwTUFoN0c5S0FRTUphbDVXaTA3b3hx?=
 =?utf-8?B?NWdaUWRXQXRtaGw3UHo5RkxyV0Rhd29xRVp4KzFuN3J0R3VBL0dSMmhQMU10?=
 =?utf-8?B?QlRWY1lnUVJDNGF5dmRjYUtaamZzUTRMMEovelU3WTEzYU9HNzVseUJqRU4v?=
 =?utf-8?B?aUFiUXJkYThOOWQvbkF0Rk55YjFnMzdZZTdDQ2tkdVNUcFRBSEoxTVF6NnFa?=
 =?utf-8?B?dnNBVnVuOWJ0OFFTMVVmOXdTczIzQXVIL3pPZmg5WnhzZHk4QXkvdUdxMFB5?=
 =?utf-8?B?dDEvMGdOOWp2cXJpMG0rb3piUnYrbVR5M3A4azl6WW5nNEM3WlBwUkV1N21C?=
 =?utf-8?B?TTEvM3hBV3dWMlVvOTlDNTNCOUx0SFB5b1hkVUhTcjYrRTNmamdWNXd0ckVF?=
 =?utf-8?B?Ri9ydTRZL1NxNHQyZ1cveUFYM1FvekQzUDAwRXcxd2FMeVJ5VFlQUktPc2ov?=
 =?utf-8?B?a3lmdVdoSGRmdkcwL3VCeWd3bWYvd2VMR3VrSzRjSXNySkl2bUY2QXNwNFdU?=
 =?utf-8?B?dTNjTVFLS2RoZUdKcUdFR1Jock9nZ2dVTFhCenJYN08zQ043dEZrYWJMdlB1?=
 =?utf-8?B?S2N2dzhHTDNUQ1E4cDZLT092ZHdLSExtWlV0dnYwd0tVTFlzcGhSQldJZHF6?=
 =?utf-8?B?QUVFYmxreTdWWExKMTZmM1N2QTl4bTdXRXoxcHFUcVNtSjNuTFA0Szh5YkVt?=
 =?utf-8?B?T2hFcitpMHc5dldzREpYZjlGYXh2SXNCT0RFbnI4MW5IWUtPaWpGRUFwMU5Y?=
 =?utf-8?B?TGZyNlJQWm5XbTlUa1F5VEU4T3pkdVVvVVV3RWMzU1V5SlB1VVJqLzZpRUpZ?=
 =?utf-8?B?N3lFVWswYmZQQ0cyV3dndEd6MWNUSnRDVG1td0tFQVl5d2g0T3c4TEM0Zita?=
 =?utf-8?B?TDNMOFlLUk82R0xEZ2hPN0xpdFFpM0g5OHRQUTlPbkJKaXRKS1Y5WjNHMm1w?=
 =?utf-8?B?MGNrSEM3RVBMV1gzdXo5VXV6ejcrQ2hKb1FKMzRwMHJPZk5kMklnb1BmOWRj?=
 =?utf-8?B?c3l0NUp3aEFZZWFGWlN4RS9SM2Y4MWZ4ZHEvVWVabFNKeVhMb204dkRiUEZI?=
 =?utf-8?B?UExHa2hPQTdyYzZzUzg0WThvNE1aSmx6UXFkZ3poSlZCL3JrbldaSDhXTzJz?=
 =?utf-8?B?dUVyREdnWVBVQ1Ztd3kwUnMzc0pFL0JaTEpyOGE5TEF6bGlKR1FWazFlaE10?=
 =?utf-8?B?bG56ZkkyRlg1cFhEeXNkcDViSkRFRFpzdEZmS1JSZWVRdi9OOEwrSTdFaWRY?=
 =?utf-8?B?NmxVcUVtOWJpNS9TWVp3d241aDBHWHZxSlkrUE1DOUhDZVhYL0NBalVuVXBH?=
 =?utf-8?B?SzRXTTV5UkJWeVh6eC9YdGMxRGtKS3FJOUNlMUZhUENPT2IvNGo4MUJ1T1Ni?=
 =?utf-8?B?K3BQd3FQWm5lMWN0ZXc2RTVjUHhrVzhZa04xVmgyVEYycmFYck9QTDRENVhG?=
 =?utf-8?B?enJpV2pOODFKVHRJM2tueGRPQmVJL1A5d21kemZXR0czcjhNVGp3QUdBMVV5?=
 =?utf-8?B?NGVPTU5kYzlPZkEwRUdhRWg5YnN3K21KZldhY0drSGR5OXdSK0UyN2xXNUhW?=
 =?utf-8?B?RHBmTXMrSm9yZXN3aDFwRFRVeHQzbTdiY3ZqcU5Dc2NHWDZUNkRYTm5xeE1E?=
 =?utf-8?B?K21QTmVKUDdlT2xnTVIzcUw0UGlsL3JPMHdBMFIxTlI0NTVIWVdodE5zbzZo?=
 =?utf-8?B?djZhc2pmYmorYUNoQUQ0TDJZV09HM3YxY1Z6ZTRjL2k4V1A3b25KMmFsZFZq?=
 =?utf-8?B?cXpnK3VwRHRrYVNBRGh1MXZPOU94czRYZ2JIZUdHa1ZoQTBKNi9SZUhocElK?=
 =?utf-8?B?bEVjdjZkMERvVmh3VWcwUW42bWNvTkFCS0xyOGtITzFpODBFTzIwb0gvZzdW?=
 =?utf-8?B?bHNSajNOUXJOSE1oVmgrKzZCaGt3dDlNcEZZR0doRFdDeHQ2OHd3aWRsMlBx?=
 =?utf-8?B?MUNPMEtVN2Q0M096ZnZ0dUdjWE54NnJkL0tIN1prUnE4WCtGb3g0U2ZhMlgr?=
 =?utf-8?B?cFB6dG1jWjI0dHJlNmZIakRCWjl4ZjJuUGEwa2w1N0NWMkNlcHcvVi95Qmh2?=
 =?utf-8?B?NkdrWGpHb1NJUGJ6OUFuUzI0MXphNGhxUVJLY2NuVWlURmZqcVlLZ3IzNE44?=
 =?utf-8?Q?R/EG3ivT33RMYBCxOgloZ7MaN?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbd09b9e-884b-4064-4d4f-08db1dfedf11
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2023 04:54:30.6752
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dVgI1suhEYjxZ0PilTmfZaHjGX5oPP/nrS+DLeM/kZZLhzJPgQ0GJugy9+szCERJ+t5EIcgBGlyETiaKZeLciQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8250
X-Proofpoint-GUID: zCCVap3d8JyZG3CUDOXPKEQMDMiC9wj1
X-Proofpoint-ORIG-GUID: zCCVap3d8JyZG3CUDOXPKEQMDMiC9wj1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-05_12,2023-03-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 clxscore=1015 adultscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303060040
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 3264rRxx022667
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 04:54:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59344

This is weird since ${S} is usually in PSEUDO_IGNORE_PATHS.
And if I understand it correctly, if ${S} is in PSEUDO_IGNORE_PATHS,=20
pseudo should not complain about any file under ${S}.
Could you please check if your recipe's PSEUDO_INGORE_PATHS contains=20
"WORKDIR/lib32-las/M-WBS0.1-r0/git"?

Regards,
Qi


On 3/6/23 02:08, Richard Purdie wrote:
> I saw you're still having problems even with the latest pseudo
> revisions. I'll make some comments below.
>
> On Thu, 2023-02-23 at 02:27 -0800, Tamis wrote:
>> Install error:
>> --------------------------------------------
>> + install -m 0644 WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/l=
asif_list.h WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_pdin=
c.h WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_util.h WORKD=
IR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_varmsg.h WORKDIR/lib3=
2-las/M-WBS0.1-r0/image/usr/include
>>  =20
>> abort()ing pseudo client by server request. See https://wiki.yoctoproj=
ect.org/wiki/Pseudo_Abort for more details on this.
>> Check logfile: WORDIR/lib32-las/M-WBS0.1-r0/pseudo//pseudo.log
>>  =20
>> Aborted (core dumped)
>> + bb_exit_handler
>> + ret=3D134
>> + echo WARNING: exit code 134 from a shell command.
>> WARNING: exit code 134 from a shell command.
>> + exit 134
>> ----------------------------------------------------------------------=
-----------
>> And pseudo log error output:
>> ------------------------------------------------------------------
>> pid 26345 [parent 26344], doing new pid setup and server start
>> Setup complete, sending SIGUSR1 to pid 26344.
>> path mismatch [3 links]: ino 7868999 db 'WORKDIR/lib32-las/M-WBS0.1-r0=
/package/usr/src/debug/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_l=
ist.h' req 'WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list=
.h'.
> This is saying the file on disk with inode 7868999 is:
> WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h
>
> but the pseudo database thinks this is:
>
> WORKDIR/lib32-las/M-WBS0.1-r0/package/usr/src/debug/lib32-las/M-WBS0.1-=
r0/git/lasiflib/include/lasif_list.h
>
> so the question is when was this file created? It would be created by
> do_package since it is in the /package/ directory. It would seem to be
> being deleted outside of pseudo context.
>
>> db cleanup for server shutdown, 08:38:52.482
>> memory-to-file backup complete, 08:38:52.482.
>> db cleanup finished, 08:38:52.482
>> debug_logfile: fd 2
>> pid 6423 [parent 6422], doing new pid setup and server start
>> Setup complete, sending SIGUSR1 to pid 6422.
>> path mismatch [3 links]: ino 7868999 db 'WORKDIR/lib32-las/M-WBS0.1-r0=
/package/usr/src/debug/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_l=
ist.h' req 'WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list=
.h'.
>> db cleanup for server shutdown, 09:13:45.899
>> memory-to-file backup complete, 09:13:45.899.
>> db cleanup finished, 09:13:45.899
>> ----------------------------------------------------------------------=
-------------------------------------------------------------
>>
>> I added the=C2=A0export PSEUDO_DEBUG =3D "nfoPcvdDyerpswikVx"=C2=A0in =
the recipe but I couldn't understand much.
>> In the whole build we have the RM_WORK enabled but for that current re=
cipe we have excluded it.
> How are you excluding it? I have to wonder if that is somehow breaking
> things due to dependency changes.
>
>> Also the task order is the following:
>> do_cleansstate (20698): log.do_cleansstate.20698
>> do_cleanall (22404): log.do_cleanall.22404
>> do_rm_work (24346): log.do_rm_work.24346
>> do_fetch (24434): log.do_fetch.24434
>> do_prepare_recipe_sysroot (24465): log.do_prepare_recipe_sysroot.24465
>> do_unpack (24466): log.do_unpack.24466
>> do_patch (24493): log.do_patch.24493
>> do_populate_lic (24665): log.do_populate_lic.24665
>> do_deploy_source_date_epoch (24666): log.do_deploy_source_date_epoch.2=
4666
>> do_configure (24765): log.do_configure.24765
>> do_compile (24809): log.do_compile.24809
>> do_install (27477): log.do_install.27477
>> do_populate_sysroot (27510): log.do_populate_sysroot.27510
>> do_package (27509): log.do_package.27509
>> do_packagedata (29544): log.do_packagedata.29544
>> do_package_qa (29592): log.do_package_qa.2959
>> do_package_write_ipk (29593): log.do_package_write_ipk.29593
>>
>> Ok build till now.
>> Next invocation
>> do_prepare_recipe_sysroot (23311): log.do_prepare_recipe_sysroot.23311
>> do_configure (23769): log.do_configure.23769
>> do_compile (24132): log.do_compile.24132
>> do_install (26628): log.do_install.26628
> Are you saying the first failure is here in the do_install above?
>
>> do_install (32535): log.do_install.32535
>> do_install (4454): log.do_install.4454
>> do_install (26343): log.do_install.26343
>> do_rm_work (4905): log.do_rm_work.4905
> This is odd. Why would an rm_work run here?
>
>> do_deploy_source_date_epoch (4919): log.do_deploy_source_date_epoch.49=
19
>> do_configure (4954): log.do_configure.4954
>> do_compile (5003): log.do_compile.5003
>> do_install (6421): log.do_install.6421
> This is also odd since if rm_work did run, shouldn't the unpack/patch
> need to run again? Didn't you say you'd disabled rm_work for this
> recipe?
>
>> All above are failures in do_install phase. You see multiple
>> invocations trying to fix the error and adding more debug.
>> If I don't do a cleansstate or cleanall the recipe is not building.
>> We do not delete or manipulate any files in the WORKDIR folder. We
>> might only copy some files after the end of the build in some folders
>> outside of yocto. So the WORKDIR structure remains untouched from our
>> actions.
> Something is deleting the files in /package/ which is confusing pseudo.
> The question is what/when. Stepping through this and seeing when the
> files there disappear would be the next step to debug it, narrow down
> when something is deleting them.
>
> Cheers,
>
> Richard
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59343): https://lists.yoctoproject.org/g/yocto/mess=
age/59343
> Mute This Topic: https://lists.yoctoproject.org/mt/91650136/7304865
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/11829621/7304=
865/1274523309/xyzzy [Qi.Chen@eng.windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


