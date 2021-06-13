Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.12422.1623544697159460142
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Jun 2021 17:38:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=S9+un2iC;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1798f2ae94=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15D0cF3p002627;
	Sun, 13 Jun 2021 00:38:15 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2107.outbound.protection.outlook.com [104.47.70.107])
	by mx0a-0064b401.pphosted.com with ESMTP id 394j518h9d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 13 Jun 2021 00:38:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WK5e1LmqKAbB/vZsqa0JfnBSFipQlJtgsQRYi3ilvMEU/NTermyBvCHBAbLjBv5TXGrmefNIKDc2CbCppQdjun5/gEK8kq2wjwGW0CCsqkhMLoYCiCpBFUf759k3O8bM/e/CoERV39A0HOx2TvjeEDfvXepVR6qeJllW1DRB3M96I0213Lvs0Ul7eTirEA9hpKPO2W8t51G8yKRUrz05rnuE5ixXfobe2m7g633UGox6jnMIFRktqOgxykkcfRIejrDIKy7W7m4tG2jqRjkDpxKJmpZholXF5qftYQJ0YutidG6GWUVuUGY/1CqMKshtx3VUa/5/rcXsBMDMLy5CJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x3pINWNrrFu0MExqfFf3Ij9BonjmX2A+XT2eJWTy49I=;
 b=nSUQOc8YacTUiQmao8uR8RKs+n3wruT6+d/nDvvcs5yqeqzq0mXK8m99HkZQUoWbRUPoYeCAZB0V9uXJtZ+2hdIO3lHqj4FnLQmP0n1YOPD7nbEGAAjsJK27krNGx3hNlYq1ZMoAsYA7xlhxB4tb7S5d/Rx0WaoikyuuhwJ6FCxDL/mIBcLC6DrqJUQCleaw/xR+auzSi8URZ3K4jPfz7vKJKbSsx6wa0Dl01EfCzULuvz9TTxYJUZdCN3De1TLjtgXAK8o+19+p3BiLW6HJQWgEqiJGynVDqBXPwpRej764HFb7gOvH6CWXzRySbd2u8u+fbonQgi6VWtI1oOSStg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x3pINWNrrFu0MExqfFf3Ij9BonjmX2A+XT2eJWTy49I=;
 b=S9+un2iCTsW3tOeP/ywX6dltmn50QdF9u7Dj4I0b9HFCwPtDiK2XUKQyNQeD+VqwPobjvHhCHXEz2URs98FHioDgBPl3JnBeyLzOQBiLfgwTHKMcZT/Gml53ND/F6QGNPPiN4rMl5T94hMAZaki8XdT9nAwodLpzvG5htVfETGs=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3595.namprd11.prod.outlook.com (2603:10b6:5:142::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.24; Sun, 13 Jun
 2021 00:38:12 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4219.025; Sun, 13 Jun 2021
 00:38:12 +0000
Subject: Re: [yocto] bitbake controlling memory use
To: Ferry Toth <fntoth@gmail.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>,
        yocto@lists.yoctoproject.org
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
Date: Sat, 12 Jun 2021 20:38:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0267.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::32) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0267.namprd03.prod.outlook.com (2603:10b6:a03:3a0::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20 via Frontend Transport; Sun, 13 Jun 2021 00:38:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 89e2b161-38c9-43c3-c6e2-08d92e038627
X-MS-TrafficTypeDiagnostic: DM6PR11MB3595:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3595A6CF16F2321D10D8A9A3F8329@DM6PR11MB3595.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7r6TTQAdDQKanBS0DR4sYzpJTPA7LSdctvKUH1TUSdoLwYsyaUze7PCFPB7qiwBMIh7B2FcR9MDJX67WIThdNh6tjUIrYxz0ISESrlBjktlVTq3zqdEZAQF32pFzT4F1gybX+QmoImysDMbJ1gpw/RZsVpbNKMgG+neze6KgDryuSkF391eNIdcSoA7SkHaitlX9Upxn8QHF17DmSxFirKRn9yZHpY3O47iiFZs7gNWclztwN4DmjnxCOh4SiQCI0ckpkEpbhv95J9q+2KLJsmKSUN0XeRaHe6H+Qp4/tA77+Nmo7vwG47pUBDVYZQxMKWahG7LwRwIu10JFCjdS7hBtvddnYjGO0+j53p+fNTKNDGkCgC4OfWx0ghvsgK69At2GeWBkSSm6/tSSJAYINJT7pdMp1/JY7FjNJmI9se1p40BJCE019Ock3WrTmMTugZJC3BY+9Vb4sfO5DeAIyA7EEYp9aeKDcRg4IaL6sOnMSBTnAe/7+AcwIQGkR09LwG/9XnBhqp3yGNVBjlxrNVcQuKDScyMCMBC8Ml9e/V+VQWO4Ut8s4G1HN6Ua3Eq1wfGmNnRESNrp2zHNvBWewu+qe1IypVJvgyG7jWXQ483wXm639p9ksvbWEBdN++Tv1DLC4NYPch5AG3qrvj3GnUENUiakB0ukKcSVyLp6jItqa812HiDC/+pjeULEc4ea8g6AupG2Li2YwrfHwlavrUtvBfCkUUAa5Ji1zA1Xf7YkVbghwJpRv1Adfo345n1hrX8wxWBtjzmoW62FdCHcsRYFx+HwMlXugJdegq37MSQSWk8gje5prAVkDFZT+V8jl3F5nfKRGOauU0i75dqo2moiA6JCJDd/8vuvJbNuTX5HVg+arU1wwWQ72F2vjZP7
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(136003)(366004)(346002)(39830400003)(86362001)(66556008)(66476007)(38100700002)(38350700002)(2906002)(956004)(2616005)(16576012)(6486002)(316002)(186003)(6666004)(16526019)(66946007)(26005)(31686004)(5660300002)(53546011)(966005)(8936002)(478600001)(36756003)(31696002)(52116002)(8676002)(83380400001)(110136005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TWR3NXRYK1NJT1dwRExiK2E5RkhVWjJ4TU1yeE1sK2R6RHZab1ljbVVnNkdI?=
 =?utf-8?B?Z1ZBdUVtbHdQOTBpR0dkQWRyTjBZWGQ1Nzc5aW02MHBxblJnNkxCT21VM2VU?=
 =?utf-8?B?bVoyZHBIS2N2dDk2bHpHWWQwQVRzNFVZOUE4MnZFNSsvM3E2cGg1TnUyQngx?=
 =?utf-8?B?cG0zNksxS1U3ZlpYNTNHSFRWQTBlbW9pZVpTNFdvSFIyeEZPNlMwSFJmUmo0?=
 =?utf-8?B?QzIrVWVhWlFXK0x5bUptUEo2cGpSVE9rWkV5K0M2T1dYand2b043angyemNi?=
 =?utf-8?B?QmhPYWxNWVRaMGVmKytXTGdLVjZ3d29aT05wMWY3cU9UZWkra3FwOUU0T0tH?=
 =?utf-8?B?NmJLWHloQnVoYzZBOGJZdHZFZFNCVGJrSTgxMnNvZzNNNW5CZ3hXc1NUdmZG?=
 =?utf-8?B?TzV5RjJxM2syb2diMnRySnZOdkJWVXh0eHZYUTkrVjYvU2FHcnVFTkhtb1pE?=
 =?utf-8?B?bVlLb21xZWk4aE55ZkdjaWFBeFpuaFVBZWZvZjZTT3JCK25KZ28vVklDSTFw?=
 =?utf-8?B?Q0pvMjFHYmF3MTltME10TDJYbUJaejBwZFdrSkJCWFEzUzdReG5LSm9JM0py?=
 =?utf-8?B?cG9Tak0xajg3QzltK0hkYlpxUVRhOTNyR05NT1RYTXBlN0lOWGh1QUJuRGhW?=
 =?utf-8?B?RjRTRFAvbWlhK1dPS0YwQ3o3Qi9icXhMU1ErRlN1MGFBSmo0dGtCY09HSHRK?=
 =?utf-8?B?OUxObnBGNk9iT2Z5cFhRekZtZzREcDBsQnQ1dXUvY3pYZTBJN2t6QUFQR1hK?=
 =?utf-8?B?TUYrSU5rZGFoS25oWHV5dGNnYlVVTGMxSGIwMjJCSzRsL05La3czSjdxc1Ja?=
 =?utf-8?B?Qno3UDVuTXZqbmhQN0dIYXA5TTlkdEt1MkpsV2toa3ppZG50ejB4eWFHM0tG?=
 =?utf-8?B?bWtBMFpDeCtBUEhjQ3ErWXQ1YmlDL3J5cTlPOTROZkp2T3RQUm5qMmtqbEw2?=
 =?utf-8?B?ZXR3QjJaekJnS2xXZXNXRjdvRFdjZGUrL2plZWJaUG5uMjcxTHNEeWhKK3FP?=
 =?utf-8?B?UzJibnFvMjBhWEtKeVpLK0haSGFNZ3k1ZWNyODM3RHB0RUZIeDlDM2Q3bkxk?=
 =?utf-8?B?MUZjejdxY0h5S0VrUDRlV2FWYzRpbEtPbkxxeXBHd1dyVisyTGt5Y0hHOHdU?=
 =?utf-8?B?WjdrSTBGL1dWcXBXYUtJRTdRcE55d0FHSzVPNytEalJJR3ZPQTJCbFc3ZjhE?=
 =?utf-8?B?eVA1dytlcnBvZ1BTanZaSlcvNFprWEpMZnVLMGhmSGpOL3Vwa2ZIM3VVTlZy?=
 =?utf-8?B?ODhUWGZ1bGlvdnRzc1RJWE50dWNFcWxDVUpNdDRXbXFnV0I3bmtnZ0ZUL2lD?=
 =?utf-8?B?Vjhkb2dLbTZsZWZPNFhYeXFJcnhZTTVtbzkwK3BpbWU1SUxWTGJMZVVJSXlV?=
 =?utf-8?B?SXVGUEdiZTFaOGJYaGdtYkt6RGQzSlNhS2c1alZmUDFNUW5qTHJubVFDVWJq?=
 =?utf-8?B?Z3JCZzlNN3BqS1c1RlJlK3JLdG1Rb1R3Tld4ODUyNUNVSWxsQzNzeFdpeC9s?=
 =?utf-8?B?RnVaWDkwRHA5MEZleis2ZWtjS1g5NE9BckszYjJ0VGpjRW5Hc0xnOS94blU3?=
 =?utf-8?B?alRDbWZzb3FLdGV5Qyt2VjMwdE5DNEM3dEhmbWFLSk5CK1lzYnduY0tkNVF1?=
 =?utf-8?B?bjFQTjJrUU8zVnpCWnFoK1dDeGhHSVZ6WElJVDRtaDhZdThvS2lzYmlYcWEz?=
 =?utf-8?B?VXM1QTB4aHlWdGN1empPWDNLRnFDcnNjOHlvNmQ1WjhxMkFIT1k4dGtEc0VQ?=
 =?utf-8?Q?3Xnf9lTZFbOapOwHlsdyzbGcKjnQXiKQwL/Xjk0?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89e2b161-38c9-43c3-c6e2-08d92e038627
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2021 00:38:12.1768
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V+tFbNB+rJNcpSAT8/+qYHsmPCUVDO3UDWJfyhS/Hi9a0FRe97dBjPyBoDzxTC+gsWjedNgt+V9f1eZ2KhPJzdf/ahnBpkyrSDqkWwaShcA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3595
X-Proofpoint-GUID: -7O0-ZJKGeT35u-zEjuaEnkdDxwfdsjb
X-Proofpoint-ORIG-GUID: -7O0-ZJKGeT35u-zEjuaEnkdDxwfdsjb
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-12_16:2021-06-11,2021-06-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 mlxscore=0
 bulkscore=0 impostorscore=0 clxscore=1011 mlxlogscore=999 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106130001
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 15D0cF3p002627
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-06-12 12:31 p.m., Ferry Toth wrote:
> Hi
>=20
> Op 10-06-2021 om 22:35 schreef Ferry Toth:
>> Hi,
>>
>> Op 10-06-2021 om 21:06 schreef Trevor Gamblin:
>>>
>>>
>>> On 2021-06-10 5:22 a.m., Ferry Toth wrote:
>>>>
>>>> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>>>>
>>>> Hi Trevor,
>>>>
>>>> Gmane is really messing things up here, sorry about that. I need to=
=20
>>>> create a new thread I'm afraid.
>>>>
>>>> I'd like to your reworked patch.
>>>>
>>>> But note, I reworked it too (but maybe wrongly). I builds like 90%=20
>>>> of my image, but fails building cmake-native. Or more accurately it=
=20
>>>> fails do_configure while trying to build a small test program.
>>>
>>> Hi,
>>>
>>> I've pushed the patch onto my fork of the poky repo at=20
>>> https://github.com/threexc/poky
>>>
>>> Let me know how your testing turns out - I am still running tests as=
=20
>>> well, but it would be good to know how others' attempts turn out, and=
=20
>>> more changes could still end up being necessary.
>>>
>> Your patch didn't apply clean on Gatesgarth, but fix seemd trivial.=20
>> With this it builds cmake-native fine, thanks!
>>
>> You can find it here:=20
>> https://github.com/htot/meta-intel-edison/commit/8abce2f6f752407c7b2831=
dabf37cc358ce55bc7=20
>>
>>
>> I will check if any other build errors occurs, and if not will try to=
=20
>> time image build with and without the patch to compare performance and=
=20
>> see if it worth the effort.
>=20
> It works fine. To measure time I first built=20
> https://github.com/htot/meta-intel-edison (gatesgarth), so everything=20
> needed is downloaded and cached. Then prior to each run I `rm -rf out`=
=20
> and `rm -rf bbcache/sstate-cache/*` to force everything to rebuild. And=
=20
> then `time bitbake -k edison-image`
>=20
> With patch:
> real=C2=A0=C2=A0=C2=A0 218m12,686s
> user=C2=A0=C2=A0=C2=A0 0m24,058s
> sys=C2=A0=C2=A0=C2=A0=C2=A0 0m4,379s
>=20
> Without:
> real=C2=A0=C2=A0=C2=A0 219m36,944s
> user=C2=A0=C2=A0=C2=A0 0m24,770s
> sys=C2=A0=C2=A0=C2=A0=C2=A0 0m4,266s
>=20
> Strange, I expected more.

Hi Ferry,

Thanks for the update.

Trevor and I saw similar (lack of ) results.

Trevor even trying getting kea, which uses 'make' to be done the
'configure' stage, for two builds in differect dirs. Then to run the two
    'bitbake -c compile kea'
with and with out the patch with the expectation that with the
job server patch and the right number of jobs, the two builds would
take longer. I don't know the exact timing but there was no
noticeable difference.

We did strace things to confirm that the make wrapper was being called
and the actual make was being called by the wrapper. I suspect that
the next thing we try will be to patch 'make' to log when the jobserver
kicks in or to play with some make jobserver demo such as:
    https://github.com/olsner/jobclient
to get some experience with how things are supposed to work and
to be able to strace a successful use of the job server feature.

A little RTFM / UTSL may also be required.

../Randy


>=20
> This is on 4 core/8ht i7-3770 CPU @ 3.40GHz with 16Gb RAM and nodejs=20
> restricted to -j 2 (so that alone takes ~ 60min to build).
>=20
>>> - Trevor
>>>
>>>>
>>>> Ferry
>>>>
>>>>
>>>>
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
