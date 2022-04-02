Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5402AC5AC75
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:45 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.7798.1648866737705495059
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 19:32:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=fkDrVxEz;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=10916e8d2c=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 2322WEn4018924;
	Fri, 1 Apr 2022 19:32:14 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=JtBOW8whsh8vmVyiAv62MFJmKUthv+Swh+xPkHJAfS0=;
 b=fkDrVxEzLN/chggQWodzNHtpM8r8tBYRkm+1urxsYVShE7Jgn2ZFOGqPqGgmij6QplpK
 08Q0oXRCfgJFvhVojXX5xOVXByhLHXu8jPW5JS2/0fEltgE4asK6gjMPq7UvK6l8DimM
 tvLLRrIZDlBVdp9Pz+cLchlurDTQexoWmH7a/J/u5co8T5bEgjpdns6UxAqOZfamgmLX
 BvQU1xUeT/q7zvjN6ewSKPd5HOXJvBXAOH2pJ2SC2LoxxQnbpsIsu5VjAP2LfqRjTPta
 K/ee+T6MMI3+SY2bKTxGMq3Qwc2xOOfj8NuVTlgF1gErWAuQBFWYRhy3RYkiyiYjwwu4 4A==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2104.outbound.protection.outlook.com [104.47.55.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3f1x42p5cc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Apr 2022 19:32:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jXacBpypi7sC7zWwig239GgV3vEPTtbeYougCeOE1nyzN5NpbAx5/FFD6Xi3muvqmWjtP/VrkiIVcsduR8up+dyxaT+UOkwredyMMKFu7c+8tFdWUy8IJaUcghAlAWE2XeSc2rYjg0D8gVVRga7+8GRYIyoFd0ifQw6asfbGAroqAqq2mTW1M3Mw4r+/Co+ncZsAtdnHzsxD3NbEYdqy2JrUnZPig8tU+5Kr9sBj7mA37VRZU7wDSZgmI81HPP5U89pNeYLo2Rn1406ub9gyXz0blhQGR6OIMJskE5y0NY0XVAsyZdmcmTkgtsU7gtJXYinTBpJmdGN2e+Wwk17stg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JtBOW8whsh8vmVyiAv62MFJmKUthv+Swh+xPkHJAfS0=;
 b=eknd5YsMa4faQGxSC01O+2ydLAsFFY1DFWO70BgVvn5QJRg4LjeFft8PdFkszNePdo1WjX4tekWQldIXfoE1Y5Uq5xW0nqrWYJ9Hhk3jR9iC8YkBP5JXsd2TrVG2Hk5IDc4qTxqj/XqC0WUU35sxc2PCHU7eE9e1uajgwM9+HvAsj+3e22EbBXBnr5xurK96CPcasmFBv/CgyVZ2hYr5gyWWRkf/s7UYyzEWqKA+dOP5O3ZZjCBAWBC5EBwvVoHzZfu8eneleDLYQ35FCb8lvR81dWt5CSiipGGgGxYh4l7ZGbxbuTBNxORPJaPZixmg8t0znANN/8fdDe8TH9IWwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by SJ0PR11MB5896.namprd11.prod.outlook.com (2603:10b6:a03:42c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.21; Sat, 2 Apr
 2022 02:32:11 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::f0d0:2344:b876:db97]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::f0d0:2344:b876:db97%7]) with mapi id 15.20.5123.028; Sat, 2 Apr 2022
 02:32:11 +0000
Content-Type: multipart/alternative;
 boundary="------------E1VIu3rjRO7m8B1pVib0JfXs"
Message-ID: <c0f01c0d-275e-1d05-e5ea-4107623ed91e@windriver.com>
Date: Sat, 2 Apr 2022 10:32:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] [yocto 3.1] adding custom testsdk script in own layer
Content-Language: en-US
To: Karthik Poduval <karthik.poduval@gmail.com>, yocto@lists.yoctoproject.org
References: 
 <CAFP0Ok-2Gb7H8AE5WvK5VBn1U8KGfb5NS-hp7hcueHRu3OwT+Q@mail.gmail.com>
 <CAFP0Ok8AqLmoR+2vnUjbNOADjbRNhYwjYrWt0RV=_nTRx2W-zw@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: 
 <CAFP0Ok8AqLmoR+2vnUjbNOADjbRNhYwjYrWt0RV=_nTRx2W-zw@mail.gmail.com>
X-ClientProxiedBy: HK2PR03CA0056.apcprd03.prod.outlook.com
 (2603:1096:202:17::26) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc0c1916-8222-4423-8c74-08da1450fdc8
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5896:EE_
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB589649C728E84756A2F8791CEDE39@SJ0PR11MB5896.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5vCu0RrRUq2nczumEBpZB6yQaKZo7eZ/M/h/InOUl6ttqs8NKKfGc3V8SaEPj3xI3s0S0a4DtGIJ1eT4FzBnrS61dGIRozHE5Ouwgn94Au6zlo4VTvFQH8JWpFZGoW7dX3w29NstkILx1H7H1bSIW6aT81VaM0kEoZZPVJtTVJkiV8tvcARSxr1zwPJ9XbWeP5cGkJyA/GEE6Au7eugAKSlLA5zA1xu/LcxJlH+TjaLiNakilWzc5DBoz9LU4ec+d8OZrUyb2HK35gKSR6O/T23P+A6tSaoYWBWuQHUP2sJBAGavMVqwRwcGdVnKV+1dRaaEv6mcCk1BqOqCdmxF7i05d0BDAbpauNgyDyhpYWEwVfMAYAC0dqdZ3fx9vUcyGTox0xrcEaxVi+LQx6/6sqSUe5Gp5nWDSmrdmnLGe5MSb0mQ6rcDsI1X9r/U4kuhcvJZW/PCG6huLevja3cDGO9gn14eff3IWqU2UqRWxGnj8ukqupm5mA3KAROYBLQOvY4dEv+fn/evQdOuu04aNL95es0NzRgW0hr3nidVwC6Jjz81EVms7sKhXHQkozO6GYKl0lE45h3Sgv9Ich+LMJShbtrgMaI/1IEX+7Btc4RoYlm4vQtTgcC57NUpdfYHN1jWVSZNhuN4t1+8WNxXdfkyy/0NbxRcVa8Do+TbodHQif/lliSkN2t0ZZoQ8/rtQ+DH8YHvLSRm9GPtzLYzk8jYhjfM36EaZFY/+sbUtcHxs8Oj1gLBM0o8lKwHAgRpfOe+6adcDm7CN48tlmmZ/2m3ZIMpp2ISfztMhiLh2ISQTJLbsyG7jLtIFiuPgyUF/l45mpbCkbO814noRu5f44kobVf7cWormufvcVeJoX540N7hUHM2O196dnfoc1jl5kYELVFCDix2GtwsSXvLmw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(2616005)(8676002)(66476007)(66556008)(31696002)(5660300002)(83380400001)(186003)(2906002)(66946007)(26005)(53546011)(8936002)(6486002)(52116002)(966005)(33964004)(31686004)(6512007)(166002)(36756003)(508600001)(6666004)(316002)(38100700002)(38350700002)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T3hGV3c3bXUyazM0RVZNMkh2U2dMeHRVM282eWM1Z013dEs4OXFZQm5GTG8z?=
 =?utf-8?B?bmR1dmxhUmlsTk1JWDdlU3dROEovY2FCeXFyVy93ZTN4QVBaV2hJbUpsQnB2?=
 =?utf-8?B?TWxRanM3QVBucjBmNXE4SGVrVXJ5T29QbTZsWWxPUVdKYmVzMG54Vi95Nm1O?=
 =?utf-8?B?ODZIMnFmS0R0R01QZ2ZoemtHSXVtaTZhOHJvZGhxOG1zWGU2WnZqbWRpRlFw?=
 =?utf-8?B?S2tQUS9wRDVQVFJyWWZQRk5wVi9aTWRlSzM1Yy9XMEhzRFBGN005TURKLzU2?=
 =?utf-8?B?ZlpsMHlPMFFSQ05PMUdlYWZiOW1pT0g4eUl2VktBWk1DMm15VnVENjdMd3Qy?=
 =?utf-8?B?U2o0U05iek5OSVNJNEJHZi85Tk1lOGxrc3lRdHUwOGtIK25pVlAvdDJPRDAr?=
 =?utf-8?B?dVg1alpUdEJZek14ZFhhYmt1Q1hmZEdmK0grUS80SnJqVHlSTDlkL3EycGxO?=
 =?utf-8?B?Q3VhemZVRTJmYkV6NDdQdVdVNzhWV1JhUStPRjMrTENQUDlMc3lvS0ZzclV5?=
 =?utf-8?B?Tm4xMjFUa0Q5RDM0dW1aK3NWVldBYjFFMnRqcXhWd096b3d1dVNhMHlRdzd1?=
 =?utf-8?B?UlpTelJPT0RCYlJzbXZqdW1hdTkyc1RtZFNpalpWcnEwbUhFbVIzVXlBNVBL?=
 =?utf-8?B?WEU4Y2swM0pUSkNibXJZOFJtdE9ZSU1oT1lNbEl0S3NRdjlHVE9DemFycVd3?=
 =?utf-8?B?YzF6UEtncXBVazBHM2dodm5yT29lRmhRcmhBeXhaYkpyNFNlY2ZlOUNBZzU2?=
 =?utf-8?B?Z1dSdkplc0UyUW5BYzFSdW0wMXJjNmdMRk9TZGxmcE1yZ0NQV0ZqcFhLMk1l?=
 =?utf-8?B?RW83YVg2RmduK2pjd0NSdUFxZmxyKzJGbzIrUERCWVJPMXNQbHoyQ1U3UjFB?=
 =?utf-8?B?QWJKRzJYS1hCWnlIbktKK2pkUXJWM2pVNERFamxqU0RQWmtvQXN1cVlvbHpT?=
 =?utf-8?B?YjFBN1JRdGk4a2VVcDRDeDFITExxeHJNWE9oUzFiQ2dqMlFwMnJ3bzQrVytV?=
 =?utf-8?B?S3hoUEV6MG1lT1ZhVGV6R3JFZEZSanU4OE85ZERnVmowYmdHVzJ4a05uQTli?=
 =?utf-8?B?bGZ2YlBwKzY2WkhNcmQyM0RQUy9SdjQyWkwvSzJBcHJvd1pUZmNMRUlkVDBi?=
 =?utf-8?B?LytCOFN6RVZlc2pYdHkvWm5lNnhnMjdKSFcwTXBidlZRaUw4bkFTR3B3cHNS?=
 =?utf-8?B?UlFObnNaQWVCZFlTb0JVcjFzQlY4eFduRSttRU1LVUQyQU9yZ3JVZ2hOTUIy?=
 =?utf-8?B?cWd3aDQ5a2kxbFVDbERnNUtCcEN5cUZGM2pBSEZMWk9UdW9nMEd6eWNwQmtT?=
 =?utf-8?B?anlEMVBnZTFHbFlKMVFGcnRQNG44WDNrcE0yOGZDMnhUYVBHVW9GT1JFREln?=
 =?utf-8?B?dXN5WDZvSUlDbFRsQ0lKNGtNWnYyN3g0WXJMRElGZ3dGNUdPcjc5WUpQWWhP?=
 =?utf-8?B?SVVGWnN0dmprdXlrMW9tVjBZZnpEM0drS0FCM2ZkZ2UzMUF3VlIwTUxWZUJO?=
 =?utf-8?B?VFpDOEdPKzl1eEpXZVhFL2ovcG00TWkxWkJBU2V3YldMQTBRa2ZsVGhtSEFV?=
 =?utf-8?B?bUVwMXlHNlFPTmIzamxHM0owSUphblg1dDQ0ZzRVZWtZUTNUbG1DcWZDbEdE?=
 =?utf-8?B?U2lxRzQyOE9qdVY5RHJEWVorNktsOHY4RVNCRllkbmRoL1k1dUpiaVQzMmpL?=
 =?utf-8?B?Y3NTQUlsbm9KNlNOUHg5SzI2NmZOdEpyN2FtS1BqTzBKNytTTFZPVEdneDhV?=
 =?utf-8?B?eUVwcHJjbjY4Y3ZrRmNsK1RqWlhHT3BVdVpLRFZOUkFQQlJHamxIaGhDSWh3?=
 =?utf-8?B?REg4d1pPWGoxZDhFSm9lRDhqTVB0VGJ3VnFPaWVZTGg1TURiTTRCYk83WnFZ?=
 =?utf-8?B?YlpVVnA4bVlRM0cxc0hSZ0xseE5IZGZmSDArc0dFN0ZndmlPdDh1Q3UxRHNu?=
 =?utf-8?B?bzVCNXpkM0FBS3NTeXRJSCs5akdNcFgxNTFFckp3TVVmSytTRlpBRy93L3BD?=
 =?utf-8?B?MGxCRnJ4aVhHMlhUWHoyMGMwa3BFRUNSTWUreHNEc3Rndkxoc0JkQkRnUnZl?=
 =?utf-8?B?amhnTWFPR21Eek5KbDdwUnJ3bXVFSytxRXoxWFYxVHhlQ29vVlgyOFViWitY?=
 =?utf-8?B?U0VJQjVOZ212eW5iSmh4OUJXdWQ5NGJxeDB6UUFTN3kwK1YxdnhOdTFkNUI0?=
 =?utf-8?B?TTZlRGR3NFJOY3FuTlB6dFhPT0pXeWF0aGx3RUJ3ZHVtYncyaWY1bjMzdk1O?=
 =?utf-8?B?Y1BGdHJSMlduV2EvU2tYdTBzY0tmdWFnVkVIRWtEZGh4WGp2WlBOUkI0a25F?=
 =?utf-8?B?c3NjUGZEeVBsSEQya2c5bXFYcDNMNHpsbkFIdzExUTdXb0NTQ3BTSHBqY1Y3?=
 =?utf-8?Q?ZU+vP2HzXZ7JyRNQ=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 bc0c1916-8222-4423-8c74-08da1450fdc8
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2022 02:32:11.5952
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 w8R51m7YSTdGApz/jCQt3+8CGyI5FCqtpjMuovviflMs0lPKyLcj0glom4VAdze8vEYlIshcKOGRSRPNoIUiyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5896
X-Proofpoint-GUID: gWnoHdhilKpZjNmxyCdIht6GXAq4g4YP
X-Proofpoint-ORIG-GUID: gWnoHdhilKpZjNmxyCdIht6GXAq4g4YP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-04-01_08,2022-03-31_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 clxscore=1011 suspectscore=0
 mlxlogscore=849 impostorscore=0 mlxscore=0 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2204020012
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56620

--------------E1VIu3rjRO7m8B1pVib0JfXs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 2322WEn4018924

Hi Karthik,

Looking at the codes briefly, I would say the reason is that testimage=20
considers all BBLAYERS while testsdk does not.

The key codes for testimage are:
testimage.bbclass:get_runtime_paths:
for layer in d.getVar('BBLAYERS').split():
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 path =3D os.path.join(layer, =
'lib/oeqa/runtime/cases')
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.isdir(path):
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 paths=
.append(path)
 =C2=A0=C2=A0=C2=A0 return paths

The key codes for testsdk are:
meta/lib/oeqa/sdk/context.py:OESDKTestContextExecutor:
default_cases =3D=20
[os.path.join(os.path.abspath(os.path.dirname(__file__)), 'cases')]

I think you can fix the codes in sdk/context.py to make it consider=20
BBLAYERS just as testimage.bbclass does.

P.S.
I'm not 100% sure, as I did not do any tests.

Regards,
Qi


On 4/2/22 09:44, Karthik Poduval wrote:
> Ping. Still need help on this one, experts kindly advise.
>
> On Tue, Mar 29, 2022, 4:34 PM Karthik Poduval=20
> <karthik.poduval@gmail.com> wrote:
>
>     Hi All,
>
>     We were trying to add a custom sdktest script as shown in example
>     https://docs.yoctoproject.org/test-manual/intro.html#testsdk
>     <https://urldefense.com/v3/__https://docs.yoctoproject.org/test-man=
ual/intro.html*testsdk__;Iw!!AjveYdw8EvQ!JtBicjGMMHASyKUPwtEZhlYlVAqH5TLs=
Ra5hAQxWy9bq5OdzOqUnRgpfPH_zu_iqfw$>.
>
>     The script gets invoked when placed in
>     meta/lib/oeqa/sdk/cases/mysdktest.py
>     <https://urldefense.com/v3/__http://mysdktest.py__;!!AjveYdw8EvQ!Jt=
BicjGMMHASyKUPwtEZhlYlVAqH5TLsRa5hAQxWy9bq5OdzOqUnRgpfPH8nH-l2cA$>
>
>     However when placed under.
>     <my layer>/lib/oeqa/sdk/cases/mysdktest.py
>     <https://urldefense.com/v3/__http://mysdktest.py__;!!AjveYdw8EvQ!Jt=
BicjGMMHASyKUPwtEZhlYlVAqH5TLsRa5hAQxWy9bq5OdzOqUnRgpfPH8nH-l2cA$>
>     It does not get invoked when running
>     bitbake <my image> -c testsdk
>
>     The testimage scripts do work when placed under
>     <my layer>/lib/oeqa/runtime/cases/
>     as they are controlled by the TEST_SUITES variable.
>
>     Kindly advise on how to=C2=A0proceed.
>
>     --=20
>     Regards,
>     Karthik Poduval
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56619):https://lists.yoctoproject.org/g/yocto/messa=
ge/56619
> Mute This Topic:https://lists.yoctoproject.org/mt/90121010/3618072
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [Qi.Chen@wind=
river.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--------------E1VIu3rjRO7m8B1pVib0JfXs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Hi Karthik,</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Looking at the codes briefly, I would
      say the reason is that testimage considers all BBLAYERS while
      testsdk does not.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">The key codes for testimage are:<br>
    </div>
    <div class="moz-cite-prefix">testimage.bbclass:get_runtime_paths:</div>
    <div class="moz-cite-prefix">for layer in
      d.getVar('BBLAYERS').split():<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; path = os.path.join(layer, 'lib/oeqa/runtime/cases')<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if os.path.isdir(path):<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; paths.append(path)<br>
      &nbsp;&nbsp;&nbsp; return paths<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">The key codes for testsdk are:</div>
    <div class="moz-cite-prefix">meta/lib/oeqa/sdk/context.py:OESDKTestContextExecutor:</div>
    <div class="moz-cite-prefix">default_cases =
      [os.path.join(os.path.abspath(os.path.dirname(__file__)),
      'cases')]</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">I think you can fix the codes in
      sdk/context.py to make it consider BBLAYERS just as
      testimage.bbclass does.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">P.S.</div>
    <div class="moz-cite-prefix">I'm not 100% sure, as I did not do any
      tests.<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Regards,</div>
    <div class="moz-cite-prefix">Qi<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 4/2/22 09:44, Karthik Poduval wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CAFP0Ok8AqLmoR+2vnUjbNOADjbRNhYwjYrWt0RV=_nTRx2W-zw@mail.gmail.com">
      
      <div dir="auto">Ping. Still need help on this one, experts kindly
        advise.</div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Mar 29, 2022, 4:34 PM
          Karthik Poduval &lt;<a href="mailto:karthik.poduval@gmail.com" moz-do-not-send="true" class="moz-txt-link-freetext">karthik.poduval@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div dir="ltr">Hi All,<br>
            <br>
            We were trying to add a custom sdktest script as shown in
            example <a href="https://urldefense.com/v3/__https://docs.yoctoproject.org/test-manual/intro.html*testsdk__;Iw!!AjveYdw8EvQ!JtBicjGMMHASyKUPwtEZhlYlVAqH5TLsRa5hAQxWy9bq5OdzOqUnRgpfPH_zu_iqfw$" target="_blank" rel="noreferrer" moz-do-not-send="true">https://docs.yoctoproject.org/test-manual/intro.html#testsdk</a>.<br>
            <br>
            The script gets invoked when placed in
            meta/lib/oeqa/sdk/cases/<a href="https://urldefense.com/v3/__http://mysdktest.py__;!!AjveYdw8EvQ!JtBicjGMMHASyKUPwtEZhlYlVAqH5TLsRa5hAQxWy9bq5OdzOqUnRgpfPH8nH-l2cA$" moz-do-not-send="true">mysdktest.py</a><br>
            <br>
            However when placed under.<br>
            &lt;my layer&gt;/lib/oeqa/sdk/cases/<a href="https://urldefense.com/v3/__http://mysdktest.py__;!!AjveYdw8EvQ!JtBicjGMMHASyKUPwtEZhlYlVAqH5TLsRa5hAQxWy9bq5OdzOqUnRgpfPH8nH-l2cA$" moz-do-not-send="true">mysdktest.py</a><br>
            It does not get invoked when running&nbsp;
            <div>bitbake &lt;my image&gt; -c testsdk<br>
              <div><br>
              </div>
              <div>The testimage scripts do work when placed under&nbsp;
                <div>&lt;my layer&gt;/lib/oeqa/runtime/cases/&nbsp;</div>
                <div>as they are controlled by the TEST_SUITES variable.
                  <div><br>
                  </div>
                  <div>Kindly advise on how to&nbsp;proceed.<br>
                    <br>
                    -- <br>
                    Regards,<br>
                    Karthik Poduval</div>
                </div>
              </div>
            </div>
            <div><br>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#56619): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/56619">https://lists.yoctoproject.org/g/yocto/message/56619</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/90121010/3618072">https://lists.yoctoproject.org/mt/90121010/3618072</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------E1VIu3rjRO7m8B1pVib0JfXs--

