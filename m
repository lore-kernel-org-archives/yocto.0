Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BB7BC433F5
	for <webhook@archiver.kernel.org>; Mon, 10 Jan 2022 02:00:18 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.26525.1641780016269354187
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Jan 2022 18:00:17 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=XJXNcvPm;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=8009995c40=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20A1p78C024729;
	Sun, 9 Jan 2022 18:00:12 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : subject : from : to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=VQ1Yt8M1Q+2MqvVTKksGbU6tPAo+U4/9zIeV8vgO/LU=;
 b=XJXNcvPmWrFKKa21MVPc5Q8cRFt/w813vZzzVvdPVdNq0UxsisPv0/B1MYUrqcGcNVdv
 l9dPu9HsDXq66I3w07+3/PnMBdTbAuDy3D/l5NcFVWo1FerbpWEjRZK02VescIUyIkKk
 eB6f6PNhwNE2WYsFdPT9PTFFrsTHUcefE3mv18QiikttJLItegWkdXX88rWM6BSpm8fE
 jJmKQxtl0m5Upp7DqEk6PskxGwKkzcVjKL8ym20MJOXrse7FJlv/VTiibKskZhEMSmI0
 UcNFiWjshXGVAvPKF10Pd4OqLCKpVBJZZWr9K4u58bRYqxXLf2B9mGHMKxSOaebmjf+8 7w==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3df6s9rvkb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 09 Jan 2022 18:00:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lBmroo6MPhXea55eozH7fNmzRs223hNLGnW7TesZvMDDBrCjlUVZ3ATjLe7dV0eqmenZJ/Fw+7v7JTP7HjPGXoXuVlJkS9QTtR8GLxaTCyNYWGv4d6O3bFqdfW1VvurD9lX0mqWYCmP+p2Cu8EYm0G1XNZqMn9+tLtP25yMh7OHZdxbb/O1TOGlInKRYqDjA96b6bRpGWw9ga/Uw8BmqzmZjBplqOUOeH7Ruc7U5y+gr2L+RTMRbshm0F3wSIyad0ZwWpLav72lAt47Ak5uXNa0tzzhj2TD+JYFrxpogHBlYNwW0VfSyLYKLVTXcDvTE6uvx7gBFrriAAXNhn8R8Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VQ1Yt8M1Q+2MqvVTKksGbU6tPAo+U4/9zIeV8vgO/LU=;
 b=bfiaWpVrJ5XpdpgpfiAhDCcUQ2WfEWUyBuaUZ6+0tYyomGNi9IZX/jUCSW8L0N3xq+DjeI0fjmHwCCAT7VDTmLGzYxWQj9+PYqQT+fCRJ1KeYdaFXNlc249iD+V6jYNYfAcE3KR3mtXQfJn+FLDv8P4LKvZrikXwiKahXhXPo7gA+vXsM7i5TfNahMi7k4c2x75gcyrcKtSL+SXXYFEk5VxhRFQRKlHJ/LS2+FJGQ5WzcRoRcoPnh1r3P6+6hgAHBn6ymFc1gXdHyMiapX7RNjJQWkb6ZFqApRTIYS5qlRcPEDBv1UwstAyigSNhkBU+4pp9yqDKjhKeXIUrbcWQYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3196.namprd11.prod.outlook.com (2603:10b6:5:5b::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9; Mon, 10 Jan
 2022 02:00:08 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::2df5:9c7b:a045:37d8]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::2df5:9c7b:a045:37d8%5]) with mapi id 15.20.4867.011; Mon, 10 Jan 2022
 02:00:08 +0000
Message-ID: <afe4862e-cbc0-0ada-3ecd-5ec232a5d142@windriver.com>
Date: Sun, 9 Jan 2022 21:00:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [linux-yocto] how can be improved the yocto build speed using
 network computer resources ?
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
To: "Weingart, Mircea" <mircea.weingart@continental-corporation.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <4ZYi.1641559493703736449.1JlP@lists.yoctoproject.org>
 <4c098186-b094-d6dd-f009-1dded5a680c1@windriver.com>
In-Reply-To: <4c098186-b094-d6dd-f009-1dded5a680c1@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SJ0PR13CA0076.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::21) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 387048e9-1af2-4ba4-4f25-08d9d3dceda5
X-MS-TrafficTypeDiagnostic: DM6PR11MB3196:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3196396E58C7D42037D2FA6DF8509@DM6PR11MB3196.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	goVc4dvIWADFfL9qM5q1dS9Hjs8+AxrIAoGEisxeF6oZygvukWohvLVKt4pXjsndl0GqdkrvdSXPhzbhYNst+BxitFv7i417FzwsDfdI6FIY593pxEc/VHPPRRGPk66DUe+gDAeQ6X+yvA/vJF8bCldeMVjZpcgdY+vOBgvQAZNCtxEpaT2ursxENs7S18obe8ycp+f28f6LuKHvuL6bx9A60gCAh39uSPeUxITJHwUH/+nWccnde9vJgiwnmtNp/ulI+3zEhynx9bHjJfFCw+MdHJuDDtg7uZUKdAKfl/k+8u7WVGJ54Zzmwr5kg7nUVWD5g/AYdotkxvzvPwe8g+jk1rZcZlCn+oAXsRtUoujW2rnEZuqvDRJb4GIHXLAGJFB9T8I4LuJu2R+pv17zEeAcwHyE1WunhjXdBPIYSTZCuJoj0AGksKXM/suD4MtiRYmpu+j8qJZAJ/0rQXfSmF+oPD523rQEgdS43ewiT0DS2FDMwirW2dSkmnA2jBux3aruu4lzyJpRX6UG9EGefCDtkPj8pt4CL9MrAJRMGuExLDbwUYNZN0g82+Vy6s36+tgyyQqxL+FwcyD/ESA6IObdj9PcRuNyArJuhfoxtsIaX/Rl2ja2cGY0SAyPcr7LyeapflJtzh87+qQYZur8jjdhJrQOXwn6/gyVeNq3erpJHB2LE8vkHIR4snhLrg17LaFGKpQkgJhToRM3OdrpFjBK4xriancIxcra9tz06ODlnCAs03oci1fwI7syjfPcJkyRNj7EerjtoPgm6X4EpyBUN7pbO4AHhhSLG2Hj+PrxTlu6ojjFrRwBZ73V9nwDlWiiVlEzbn/N7uZnylVoX/J9uva7hu2kUxwOzX0f9ayN29BDm8px+qrtJnZCXDtlRq+Kwyf1aAxKVw+e0PnAQ7oAaTwV5O8GQMeYn6+A1Z4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(31696002)(110136005)(8936002)(83380400001)(2906002)(36756003)(38350700002)(6486002)(2616005)(186003)(6666004)(508600001)(6512007)(38100700002)(66556008)(66476007)(31686004)(966005)(66946007)(26005)(316002)(52116002)(5660300002)(8676002)(53546011)(6506007)(86362001)(27403002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QXVGYWdCWEFqckZ3aE5Cc3pvdWdPT243a05uY1YzK1UwUVNrSGt1K3Bhd3RR?=
 =?utf-8?B?MGpiVjF1Q3U1UXVuZmhMcExWTmdzYXpLR3N6d2FXQ2tvNkpDUGNEVjNPS1Ry?=
 =?utf-8?B?VS93V1VxNHlzY21ERnl1RWZzKzVqNXZmOUFTVHdES2RFSExjNWJKS3J2QW82?=
 =?utf-8?B?U1EzaUxmMHl5aHZ3anFoZUg2TXhIdStmZzNGd25qbEh2SG43a2ZCNDRQeGZl?=
 =?utf-8?B?RGE3OXEwclovNUFFUG1jbGNjWU0zY01ucytBTUNYQkdMM3h3Zkp0TjFNdzd3?=
 =?utf-8?B?dHFSWURaM1E0OCtQMGNaM2hTNEZ2NCthdnhSdm1SMnc3LytMZGdKUHU2Qk9M?=
 =?utf-8?B?Yk51Yjc2aFllaW5xWnd2WVE5RTBhOUwwWGpXTFRWSmM2Mythd0tLczdib29J?=
 =?utf-8?B?ajZkTzd2Vm1GMEFRYzBKMXl5WlNxVUw0OVZKTHBtRU03Rk9BRklYdDZtZVY5?=
 =?utf-8?B?Si9KVjk4UThnRVVoNXZaWFNXOVJ4TkVaTlhIanlVWC8zRXNrSW8xYU5WNlY5?=
 =?utf-8?B?TzhEQTNHK2tQV2U0Z1dXd3d2ekJhTXphS3lLazNaV0plQnF2aWpEVUt4emVH?=
 =?utf-8?B?bjBJell6WW1LQkpmenBmVG9zbXdjOEhLZEZzMkw4Yjl5YVgzdnJsa09wS2ln?=
 =?utf-8?B?T2YxL2gwbGZvcW82dGRlT2xGMkRJSitDTEJPM2doQ0p0YzVsOFRBaTBnTk5M?=
 =?utf-8?B?RXdma3VrZUNNaDRSb0d3UWRHR0FBSXoycE5XbzFrbHQwTHBVNjdqendLTXpR?=
 =?utf-8?B?cjNyVDNvYW9DRXl0a0UyMkJKRTJidTUxQ2FWaUdIZzRtSXY0SUxkZ1d3ZjZh?=
 =?utf-8?B?ZDlab2c1MzRsUmlNQS9EL3lrS2kyVjFvakx2RTBUSzRIT0V0SzlUb09NWHRo?=
 =?utf-8?B?VFE5YWlTVld2NnQ5WEF6UUx3QldGNXZTYSs1TjU1d0NPdlZHcDFCNWp0RDF4?=
 =?utf-8?B?aVFWcEh2eTh2TFNNck0rc0J1RU4yeCs5RndaSGZPRTB3MnF6RHhzN1ZLZzkz?=
 =?utf-8?B?ZXFUVU91Ky9YT2hZOTlZSXZRRVV1bTdROUJGRGFQMVlnT3FkL2NWRnhqcTA1?=
 =?utf-8?B?bThYbHl0VnRkY2pwdDRWWWVSNUU3OGJpYnJtZThsUkN5OXFhOUZESHE4dFFt?=
 =?utf-8?B?bmVyczJFempwQ1ZWQVdQWG5MWVMyUnU5RS96VVVkTGdYWWt6VmdqaTUrWFdi?=
 =?utf-8?B?bW9TdEhDaU5MVjlKNkpvRXRCaXUwSWFHZGQwVUZZdU1tRjlML21GSFFVT0sr?=
 =?utf-8?B?WHRDdkJNTUdjY0RHZmY2MkFJTFRYNlNFeHEyVW96Ym93NzJJTmoveFRwL3dY?=
 =?utf-8?B?QzNvTzF1aHIycm9SQndEcHBTZG5PR0g1clZDcDJuMFlKNm5HZk44TmdmWU05?=
 =?utf-8?B?T2x1bHhPTC9LRTJ0alpDK05HTGVXK3FHS2EzWitNMStNSHZZeUFIc0lwS0do?=
 =?utf-8?B?ekU2cUlvOXJKVzRHclhDWjJ2NzdZL0tKTDJaQWllOUpLS2liZVJ4OCtZMXJE?=
 =?utf-8?B?dU8vcysyVEd0a3JtT3pDbEkwNGcyRlQrUWxOQ1lUUFpIVG9ZWk9QQVpZR2ZB?=
 =?utf-8?B?S2IwckJKWnp2OUpQUUk4UC9EbUR1cGhnRnhRZ0FGb003dkNQdDNKeEhCMU5X?=
 =?utf-8?B?LzI1ZXhPaEluSk5ZeWJwZU1yM1hZY1pIVnZlSWprVThHeU1iY3NRMDVlY0U3?=
 =?utf-8?B?SFRRb3FKcDR1Z2k2b2diRkNnM21mRWpRQnFXRDhXdWRXeVVlTmdSZ1FRWWRs?=
 =?utf-8?B?dlNDWFlXSDdNZkV0YjZNYkJXbGZYcWE3Z0xwNUo5Skw4VUZYK0FhZGM1VkdI?=
 =?utf-8?B?cTR1QXlFTC92UXNhUTh4OFZBOExxR1FsRkRkckhOaXJWU0FsbUt2N2xWc2Zr?=
 =?utf-8?B?bUQxZEZYRjFLYWRtaGh1T3ZqNmRYWVJ5cHRVb3NNVzNXc2I0RUw3UFpxSnN3?=
 =?utf-8?B?QXdqRm1kNDkwTDJoaUlVbEFtOXQwU2RZKzlCKy92M3dyd1BYTUw2WHhaU0Er?=
 =?utf-8?B?Z1NxMFc2bWYwQkpaNVhlS3dDVmJpSEpKYVdpZmJUeURidDNGV0RaVG5xMkVO?=
 =?utf-8?B?bFk5ZVN6TjRnUmd0QldpQm1mZnJaK1ZUUEZGRWpJVzJQaVlYQnNjLzRNK0VP?=
 =?utf-8?B?cm16cGVSRklubEIwUU16RXJYNkNFNmcrckpKUFJza0xWaGJYSlMwRHZxQXlI?=
 =?utf-8?B?S2NBRE9mYTNhdU90cmMvbmphMnJ3NnBKOWI0Z1NjbktNQnBLM1AvUVIyMW12?=
 =?utf-8?B?Ti9QR281VVljNzkxckI1UEljbkF3PT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 387048e9-1af2-4ba4-4f25-08d9d3dceda5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2022 02:00:08.5591
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 uBtiSGM8ZCbZTw9hGQocrFzz0vjUrD3OVna94QWHT6FYkCuT2c35G1E1Xf9Xmc8ziab0o4y8VhYGSNDSY9zWQQGL9EBXheAP/WrE3XUuci8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3196
X-Proofpoint-ORIG-GUID: eVhVbTytsX9whv4xSqqV_J_h4DpmOru0
X-Proofpoint-GUID: eVhVbTytsX9whv4xSqqV_J_h4DpmOru0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-09_10,2022-01-07_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 adultscore=0 suspectscore=0 spamscore=0 mlxlogscore=999
 lowpriorityscore=0 mlxscore=0 phishscore=0 impostorscore=0 clxscore=1011
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2201100012
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 20A1p78C024729
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jan 2022 02:00:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55767

Oops, I just noticed that this was posted to the linux-yocto not
the yocto list. I'm BCCing linux-yocto and redirecting the
discussion to the yocto list where it's more appropriate.

See:
   https://www.yoctoproject.org/community/mailing-lists/
for the scope of each list.

Thanks,
../Randy



On 2022-01-09 16:10, Randy MacLeod wrote:
> On 2022-01-07 07:44, Weingart, Mircea wrote:
>> Hello ,
>>
>> How can be improved the yocto build =C2=A0speed using network computer=
=20
>> resources ?
>>
>> Suppose that the virtual linux machine where the yocto build is run ,=20
>> is in a network with other computers that may share their resources
>>
>> with the yocto build virtual machine , what solution may work to=20
>> improve significantly the speed of the yocto build run.
>>
>> Thanks,
>>
>> Mircea
>=20
> Hi Mircea,
>=20
> Building images using bitbake (or any source-based build system), does =
take
> significant computational resources. If you're using a VM, you'd best b=
e=20
> sure
> that it is well-tuned and doesn't have a significant overhead compared =
to a
> bare metal distro. Containers tend to be somewhat better here but can a=
lso
> introduce IO overhead.
>=20
>=20
> Have you tried using icecream?
>=20
> https://stackoverflow.com/questions/14472175/distributed-compile-with-b=
itbake=20
>=20
>=20
> https://elinux.org/images/c/cc/Sweeten_Your_Yocto_Build_Times_with_Icec=
ream.pdf=20
>=20
>=20
> Are you sharing sstate-cache across the nodes on the network?
>=20
> https://stackoverflow.com/questions/31748577/how-does-shared-state-cach=
e-in-yocto-work=20
>=20
>  =C2=A0=C2=A0 https://docs.yoctoproject.org/singleindex.html#shared-sta=
te-cache
>  =C2=A0=C2=A0 https://wiki.yoctoproject.org/wiki/Enable_sstate_cache
>=20
> Are you caching and sharing the downloads directory?
>=20
> You could also buy a system with > ~100 cores and lots of RAM, SSDs but=
=20
> that does cost
> quite a bit. Depending on your environment it may be a good decision.
>=20
> At work, I almost never build on my laptop but rather use a hefty serve=
r=20
> with 192 cores!
> $ time bitbake core-image-minimal
> ...
> NOTE: Tasks Summary: Attempted 3104 tasks of which 0 didn't need to be=20
> rerun and all succeeded.
>=20
>=20
>=20
> real=C2=A0=C2=A0=C2=A0 20m8.536s
>=20
> user=C2=A0=C2=A0=C2=A0 0m20.574s
>=20
> sys=C2=A0=C2=A0=C2=A0=C2=A0 0m3.759s
>=20
>=20
> --------------------------
>=20
> You can see that even on a large machine the build takes ~20 minutes du=
e=20
> ot Amhahl's law,
> i.e. there are some serialization points that prevent bitbake from=20
> continuously using
> all of the resources on a machine.
>=20
>=20
> Shameless plug:
>=20
> There are some vendors, such as Wind River, who provide a cloud-based=20
> build environment to
> try to help people who face this problem.
>=20
>=20
> Good luck,
>=20


--=20
# Randy MacLeod
# Wind River Linux


