Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44776C5479D
	for <webhook@archiver.kernel.org>; Tue, 10 Jan 2023 01:57:32 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.93457.1673315849240844250
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 17:57:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=WPWCmDIM;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=0374dfb017=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30A1g0Sx025943;
	Mon, 9 Jan 2023 17:57:24 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=jxVmWBWPiVq9XY3ZEZDdyxPZgSzR3ROCXgfoiLquzqM=;
 b=WPWCmDIMZuiC/Fd1IzLahLJ/8h2lEi96jE7uZzcom58Qe4jod7rXMkbgcV+4SZxh2Hjb
 z5xcdbR99v1F0RwdVfmnlcE7XUuCiXCbQ7CNJTq8GOvbXHaFxs68sC5GP9hR/e7tY6La
 Y3tT8G22AA5Dw3s95eh/a0pCUKqTr1sQJTDmyxPhrEhS2pr+H6IId4FvU2u6SCIlY5St
 EuMiwbuBk4G8dN3yxr2keU/FP4FBbYrlbrYdaaQyMimK43etnvuTXeDG75QIx8qkS1Ze
 qQh+S8tcmkr4yGFT5NPmSxJMNVwyaKRzuyxhvgV09wQNA3YK1Zrf9vib69kzK1aR5Q/T lg== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2176.outbound.protection.outlook.com [104.47.59.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3my4w8t728-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Jan 2023 17:57:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e2zqhxAzIqccpqOH4QaTehM6wBCaYsozpGjimWAtIkpowv5dnrhU2x5fNdWMRIXm8vx9PLihkznOxpo1z4FftY1M3i2CeK8rsBZ5dlBdnHOX03cMi10Ici2OdZL85KgrZrVlM3hghCj7NCajOOVFjVjyCr1Js027MUyfAjRmFzX77hK6FwGxIZtmP91jIXHR7HoVIW9EqB+7ldfrc1HcbT3gfedQ2FcRPRZkuEFHKqCtwrblED9GU31T4KUGupTPxCLbo95CjHprCcRnihVTFONczwGxOeEccuJo2vmFwnEZLKZJ2bppy1tn6tTFq6LesDPnunTsH+DgQYpmiEVebw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jxVmWBWPiVq9XY3ZEZDdyxPZgSzR3ROCXgfoiLquzqM=;
 b=YUlZuhtp1ArDw0NLYsEaueZHerWf3vMo5yoeJbStdo6z4CUutzBWzBuwaRJNHJrO/saLuzf+YJO4QHfscmBnuQ3qLpDGV4xCnBAVUcJmBl6l810K11fiWo+7qlvXEREFPDR0e2+QaqB7EINafO6fLsPrb/chvrLOJV8irr+vBPRZlQM4VjCSmxanAI5Jr8JRfMKF17D+H2oIr9rrHoM23Tec95Y0DPaRXVPzR0kpR+8jGEveTK5yuWY52OeMfwPoWhmapEGyFkDiXc6wY5VtAnungkWDgATIQaGH5v3g1u3yU8d7jiPwOf0Oajf/wmESz4TRGS0aeeWzLZyzdbrtDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by SA1PR11MB5873.namprd11.prod.outlook.com (2603:10b6:806:228::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 01:57:21 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e794:335f:5e0f:8d36]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e794:335f:5e0f:8d36%6]) with mapi id 15.20.5986.018; Tue, 10 Jan 2023
 01:57:21 +0000
Message-ID: <87492ec1-f053-90b4-f86a-70150dfc8b6a@windriver.com>
Date: Mon, 9 Jan 2023 20:57:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-CA
To: fntoth@gmail.com, Alexander Kanavin <alex.kanavin@gmail.com>,
        contrib@zhengqiu.net
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>,
        Quentin Schulz <quentin.schulz@theobroma-systems.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        richard.purdie@linuxfoundation.org, martin.jansa@gmail.com,
        Trevor Gamblin <tvgamblin@gmail.com>
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
 <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
 <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
 <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
 <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
 <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
 <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
 <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
 <4359a2c6-1e7d-3bc4-b1db-b8809a72adc6@gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <4359a2c6-1e7d-3bc4-b1db-b8809a72adc6@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0359.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::34) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|SA1PR11MB5873:EE_
X-MS-Office365-Filtering-Correlation-Id: f397ff59-c22a-4c6a-7e19-08daf2ae0291
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sKbpE9LR7pq75rQpZQdZJ0CKkaYf6Xcr54HH7bc31b48zSjm/MyHuYNMXRXn9E4VrO80WGvjJuqXJ7rfC3CWwA6pWGlunkPJw/hQ3WtZa+OQkDxL088KgiDzmdHvVLiJ0AZ2EVmQclQ6ptl+M4GmIegk2jpxv32jW2xhN7wUTHeSwPlkfSCpdfQ5YZe4gbJZBlfXR2BzsDQc+hVKtb87P+ND8KSr8yzPntPdMFOj9tiL43dIA/IaKmdAO+1DX81fwJnIY1WlUCgY3GcFZ0/kwJcaCH7EcUZPvEDY60hDKAD+0/9WcOzvZ56znCnbLSEB0Ff+WhdHsyNXMmbtJdXOE8zLjRSd4t6Ar6R6Qk9kGLAzMoJ6PRvThOj30bbrMuiTPmsh0vkBv9T9jOTldq729JF6gISLbUNo+0PaGz8AuUbXmgmvUou0A5ykNNhBukrMgX2BaXlOp5Tq+6H0ZQNJwC84r7is0b6j1dzyHdAa8KrVWTDuThqcd694B9Snhx6SYoPnldaJCwgfddwC6rZg+W/nsR8enXmIcjwUpzRBW8Cce2aDgC1jB0su7c7CLfHLubXd2/yM8ArjyXpOGbyqqurqM+nch1r0N0nK4Ni3LFQ5+3c0/H2pidD/ZrZXkK2IY8BTk/Fl/LnrD9nLCUc2IF5cPU9EsoTZSQEDdYCUc54QaaAomNJY4tTrSZovhF93d2xfY+5GfRtzNcfjNXPYuLHSDN0n9QHDFiGgkBgiaQ40iJqUvBgn6gV+RyoAb/SJgUtXcMTSFcZ+h9uwpzMNv0cLDs0+CI3nEkDQgqSEe00=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(346002)(376002)(366004)(39850400004)(396003)(451199015)(66946007)(66899015)(31686004)(41300700001)(2906002)(8936002)(36756003)(5660300002)(8676002)(66476007)(6512007)(66556008)(316002)(54906003)(6666004)(6486002)(966005)(53546011)(478600001)(6506007)(186003)(4326008)(26005)(2616005)(31696002)(83380400001)(86362001)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QW4xV2RUUEhVb3dUMnpaaGlidzlvOUZvTFpDLzB1WGJDTUxGNmpEeG1ITkNv?=
 =?utf-8?B?ZFQyVEpTUkNTVmdnM0pvU2w0R1lFandTZmdYQ0ZRbEU5ZVYvNzAwOEVocVEw?=
 =?utf-8?B?RlBHOFNMT2dEQXd6bms1cC9oLzROb2Z5YS8wYmNwTU1mRWpOQ2NHQjJGRkF1?=
 =?utf-8?B?SXhQU01mTWJ2TDR5YmRnVSt1RXJKSlFFQ085b2x5dC9MaUdXUjV1aVhKMGQ0?=
 =?utf-8?B?R1dIeWpMTSt5dGZBb3F2TzBwMHRUS3FtQllBOE1Lbzk0ZXJGL3lQVVdLeTNE?=
 =?utf-8?B?N2xFRHpJZzFoZ0tGUTBodlZVSkt5azVETWh5cCt2OGhhMEVmU01GTVRpQmhP?=
 =?utf-8?B?WTJYTjJuWE9PTjJTR1pKU3lqQmx5MXp0cmVyK1dsTE9YTUFXN0J2dEt3L0Ry?=
 =?utf-8?B?VFpTaURRWi9NVXhPMTZKOE8zR1lTUTVGTnNPdzM5aWFQTmJLTGZyWS9ORkhz?=
 =?utf-8?B?NktnMEtEMlVzTmN3NkhQdEplanU1aXl4OE56eW92eFZUcXp3dk1hejZQWTB3?=
 =?utf-8?B?b2FvU3ZSWjV2UmlNWkZEcGdGTGZGZnppTFFmd3pnR0QyNElGNG5TOElsdTl4?=
 =?utf-8?B?Rm00YW91M2tDWHp1WnRhK1BBVTdjcnZqTGFJVlNBV2hZVi9IeTZidXZPQlpk?=
 =?utf-8?B?MVBPOVBhdmpZQms0dmx0NXU0TmIrQzhJNFN5VVpUZ2p2cUViekhXS3hNZng0?=
 =?utf-8?B?MG5lc01ReE9yR0VhcUlld2p0REZpSnBBM2oraWtpb01yY0czM2dxMlE2a2dT?=
 =?utf-8?B?N2xDczlxcVJWVytYYzNHK0s1QmlHdlg2VUlPTG5acjRXbkt6RFNOZ1JEdVF5?=
 =?utf-8?B?RUpnTVlCMCtOMWptSDdESTdUYUtXNHlqdFgrS3lGUENScnVlWlU0TGt5aWkx?=
 =?utf-8?B?YStiK0Ixc1dKMEdXWVlkSXgxM2tydkZvT2xRdUtoSG9QVVFBNVBwZzR5RUw0?=
 =?utf-8?B?TGJYdDdxWHFJWVpEWldPYkxpamh0RTZuczRjZjlaSTJHS1Y3VmozRnN0b0gr?=
 =?utf-8?B?Nm1HbFAyWFBrcUZPVlp5Ukk0c1FhZUVvRGpnYWkyYnpOd3FwUEFGRThtVU56?=
 =?utf-8?B?NlhMQ2g0RExhMlZpWC9EVXNrekFvM3BTdzhxVnk4M1QxT29VR296cnN4Sm1L?=
 =?utf-8?B?eFRXMk53c0FaRTB3bEcxeXIzUVJYMjJXanBZc3cwMGpFb1RGMFZ3eU91NHJX?=
 =?utf-8?B?MnBVSzQzeUNCU3F5VnZWUnJId1c4eWt3RDlDTWtGMitOZHpGeSszQkp1dFJJ?=
 =?utf-8?B?N0NJUG41SXVHR3dtV2xNMXFUN1NCb0RlbGpvWFkrd0wvb2Eya2tjWWxGOXB1?=
 =?utf-8?B?d1cxTDBFSkd1bVFoVHZDWjFsaU9qVittRmtoYlBBb2hRUVF3TkRoNnJRRFVJ?=
 =?utf-8?B?SEc3VHpwQWNCaWtEVmVKWTFVajZxbkpObFpLT0FHUDJiQnVmUG5HSUpXb01O?=
 =?utf-8?B?a2VEL1VvNXh5bkIyZkZ4OWlDdWhSUEt1R2s3UWtDQW9lNzI5MkFOTVZaLzV3?=
 =?utf-8?B?N0UyVmN0YVJ0ZjVWZW9xTlR1LzIxYm1OdzJORW1tN1RIMmgrUjQ5SUpiUkhh?=
 =?utf-8?B?b0VBYnZuS0RCd3RXVVh4Nmtkc1orVVVQZFFDRVR5VEYvRmVENDRTTVE5bUdz?=
 =?utf-8?B?NDdxa1ZnK3drdm9yNTlIMWNNTnRJa2wrNlVsOVFlTDRZK3R2aGl2STRkZExZ?=
 =?utf-8?B?SHN6TkFUMVhURG1oNW9rb0hLNUtOVnhqazRPU3YvUHBPMkJraTR4RnRNN0JN?=
 =?utf-8?B?STgxMmZFWmtXZCtmdzUvL1lHUVZJVStYL0ZiWGw0cXlROGxUUDM5V25LSzBp?=
 =?utf-8?B?RXUveVQxYU9jMW5GVWtTQnVleXdTd1BySmp4eVR3R2pLZU1QSHFsWGVBOHB1?=
 =?utf-8?B?SlhNSjYyYzF2Snh3MVg3YzltKy9HV3l2SHJicGRGQytGR3NDT3A3TlZrL2JB?=
 =?utf-8?B?Sjl4Qnh2RXh6UGNuMHZqU0xRcFNQdlUrTHBwNnpHK0VaV1NQNm9SREFGT1M3?=
 =?utf-8?B?eEtLZjBYSVorbitFV1ZCcVFrT1RKL2RqWlNtS3B4TUJCK0hsOFRDSGRPZE9Y?=
 =?utf-8?B?c0ZKcWhkVEQwcS9Qek12SzgxRExCb3ZEVDNKYzZkSzlrbmo1dnRaYUFZWUlm?=
 =?utf-8?B?YlpkV0lBTi9odElLWGRQVmN3alU0UW5wRlRMaDVaZ2NBc3Q5WlIrUnAybndp?=
 =?utf-8?B?M3c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f397ff59-c22a-4c6a-7e19-08daf2ae0291
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 01:57:21.0010
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kcsJPGVANck8FdPPwCFOAF8oJURdnCBdErWbDK1VSOGBkOi2cE5KaMEOQaMSmE935qhuRsGutz3WvwKWSgl+RAY0xVuL+fk96Yog/82tmR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5873
X-Proofpoint-ORIG-GUID: XUWapeG_8-sg7pEBYbnjk3nAmkeUplso
X-Proofpoint-GUID: XUWapeG_8-sg7pEBYbnjk3nAmkeUplso
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-09_16,2023-01-09_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1011
 lowpriorityscore=0 impostorscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301100010
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 01:57:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58954

Add Zheng.
Switch to Trevor's gmail since he might still be interested in this.

On 2023-01-09 05:49, Ferry Toth via lists.yoctoproject.org wrote:
> Hi
> 
> On 09-01-2023 11:39, Alexander Kanavin wrote:
>> On Sun, 8 Jan 2023 at 23:13, Ferry Toth <fntoth@gmail.com> wrote:
>>
>>> Now it works I'm not sure what to do. Richard marked the original patch
>>> as WIP. Maybe it's not appropriate for including into poky? If so I
>>> wouldn't mind carrying it in meta-intel-edison.
>>>
>>> Or may be with a little work (from me) and a run on the CI servers we
>>> could make it go in?
>> I'd rather teach make/ninja upstream to watch memory consumption
>> and/or host pressure directly (e.g. similar to how it handles -l). And
>> offer any resulting patches to upstream first.

Zheng and I *started* on that for make over the Xmas holiday.
See the (poorly formatted) thread:
   Add support for limiting CPU pressure, contrib, 2022/12/20
in:
    https://lists.gnu.org/archive/html/bug-make/2022-12/threads.html

There were mixed reviews upstream with the maintainer, Paul Smith,
seeming to prefer that we investigate the job server approach and the 
current
load averaging. I'll happily try to find time to play with Ferry's job 
server work.

I've been thinking about the various workflows and as Richard said, it seems
that for many people who only do one build at a time, the job server and 
maybe
a little linker restraint, would be all that's needed. For activities such
as YP AB, we could teach the main job server to also look at /proc/pressure
as a way to limit the pool size we could make a meta-jobserver for those 
who don't
want/need to worry about non-compile tasks such as tests and build clean-up.


Note that cargo has the notion of a job server:
    https://github.com/rust-lang/cargo/issues/1744
    https://github.com/rust-lang/cargo/pull/4110


and ninja has an open issue:
    https://github.com/ninja-build/ninja/issues/1139
and an initial implementation:
    https://github.com/stefanb2/ninja/tree/topic-jobserver-fifo

What other build tools are in need of regulation and/or job server patches?

../Randy


>>
>> Alex
> 
> Yeah, I'd rather teach the kernel to consider thrashing when scheduling 
> jobs. As is now any user process can slow down any other users process 
> and even the kernel itself to a standstill.
> 
> But kernel developers consider those issues "orthogonal" (i.e. they 
> don't want to make the scheduler aware of io).
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58943): https://lists.yoctoproject.org/g/yocto/message/58943
> Mute This Topic: https://lists.yoctoproject.org/mt/82015730/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
# Randy MacLeod
# Wind River Linux


