Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 462E5C433F5
	for <webhook@archiver.kernel.org>; Fri,  3 Dec 2021 02:02:57 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.6590.1638496976516470752
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Dec 2021 18:02:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=lAQDY3Yy;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=79719c7a04=kai.kang@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1B31RcY8016823;
	Fri, 3 Dec 2021 02:02:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=CfzNZ0UuQ+ZaGIuF8YU9gD8NnsQf762hoGQ6Ypbvkvw=;
 b=lAQDY3YyXWyqNII1HnzRJz1dzHTDmfzst9TJv0UljW/tLDeLqRkVmr5e+qFktqeTh2mE
 H2M+dEVKcdWbXeMUUnimSfJ9L5CgQCIcdKNkg6jDsnx893inO5rZgSNlyorch2i9+tlb
 QNPFtrNVD7YWpW1yfUjYqYCLtJosduSW4/+cHEoVLM1BprWiBnnMOkRHaCAxPrkSn/j0
 NZCvDbCYo0+psQJCvqpEDDNUknA8zBeahPrWKgeGAGnY7Ff+3W+0kNx5cabshY3cotmV
 b4UMxbUOxNQ7P7NImsWWD26DicTwEctnVGacDr5wTqhgV/Z7aLZ6nN9JMc27p3BYhtx2 zA==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2174.outbound.protection.outlook.com [104.47.58.174])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3cp4pnssta-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Dec 2021 02:02:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nErxm4Y0J4qapVb6p8YXMDkERp1AFlqYfhY6XQcwP9uf8I7ElqdqDBlHh5/5ihmg/FJ1ktybc1j7k0z0FAQHZ4M3msFCs5+sbdWBocBEFIC/RI4S+ZgyWYKwZZEZeJuj7QfmPupfJIi38uNvrFPOKd8Zfpi4jJHqurqxm4cNAtbnSb+w2Oac4t50H0YCbXXGY/wchtwwkUJgHrzG20S0hA5RFk5ixbu3WvTnE4R7751TOo7fxSJW7R/BjSO+Z4LLOhWHjBfMe84E7GT5bUr3dZ1Jvqtuo3JPp27bw5R38DB/nOHNI+ltedhajIpBwCNjr8Qb33+khgGFU1NFcGDHdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CfzNZ0UuQ+ZaGIuF8YU9gD8NnsQf762hoGQ6Ypbvkvw=;
 b=EOTS8w/oNchkfTfIzyN4+jxuVuL+x4wPmN5evmqoxczXGKgkxzV3+0wIfI6lASb8IV329Dh6tNeojGWvfStK79fSasR7wMomCy1x54HJltKadfXb8hIEsvO1IvNmsPFpVWXdkU9Vkb74QtayVMeJtMy2gPwnNKgiRc5LQPAV/OnWldkltn+X195OW4EIQuXohVAeZhZuwaxvAt7RTuTm8fAsNYAN59zKqJCEWS8OqBz2PhZhpeUydiK5gQoC/jgSxR+hvyg3NvUbC0ceEJBYjmWHf6S/Cv2jIDu3bj+Fr3tL+VzCd1rJbrYSOEOUiduCrFI5tXnDCwBn+4gIHD5pSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5618.namprd11.prod.outlook.com (2603:10b6:303:13f::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Fri, 3 Dec
 2021 02:02:53 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::4c98:111b:1f1e:898f]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::4c98:111b:1f1e:898f%5]) with mapi id 15.20.4649.015; Fri, 3 Dec 2021
 02:02:53 +0000
Subject: Re: [meta-security][hardknott][PATCH v2] sssd: re-package to fix QA
 issues
To: akuster808 <akuster808@gmail.com>,
        "Jeremy A. Puhlman"
 <jpuhlman@mvista.com>,
        yocto@lists.yoctoproject.org
References: <20211116182829.24177-1-jpuhlman@mvista.com>
 <1de53270-8a8f-8a8e-2ada-2ae0a6211cdc@gmail.com>
From: Kai <kai.kang@windriver.com>
Message-ID: <09090294-f22f-183b-f0e9-ac0c8af53262@windriver.com>
Date: Fri, 3 Dec 2021 10:02:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <1de53270-8a8f-8a8e-2ada-2ae0a6211cdc@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0145.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2f::24) To CO6PR11MB5651.namprd11.prod.outlook.com
 (2603:10b6:5:356::20)
MIME-Version: 1.0
Received: from [128.224.162.156] (60.247.85.82) by
 YT1PR01CA0145.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2f::24) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.16 via Frontend
 Transport; Fri, 3 Dec 2021 02:02:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4b0c1bfd-c1fc-446e-c5db-08d9b6010405
X-MS-TrafficTypeDiagnostic: CO6PR11MB5618:
X-Microsoft-Antispam-PRVS: 
	<CO6PR11MB5618F47A6B5AC692FA61493D956A9@CO6PR11MB5618.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:751;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wKeCqBk9mTIbJ5Q6wIfYqxNNlHQlK9jyzSm5xiFIWiBgsLQuzL132dod5oRT3Ye1XAR5hctW5GY4+7WXjDYiFvpxt9t+pGUGSxEV+KqzD36E7xdZt48j1RDzpRvIAab/kXpgQ76JMR01xtDnLeduqyeSFbPIpBXwSaULXvCXe3hvoQKHIFU3GZFY0L3lw4LnWLxso5eSeDFF3K0RkQ5igs/AeSONMmIxqApzFJuwNDuu8j+gy20mlURcaWzTzm9nWMK57qjpHvXiDhFhCuUVtmviQxMG9R0vrs/Q1LDIrbmbqhnOR1HqiABFj6xUEMKx7NCUy6fHabcV2t55lTGgtswbxe67ngOdvBFz4MhXXQ9JKabravinh05nKkcj0foAyGTFI1Tgm2msnHhcxCZAGxJ7F45WA7x/S47yJRxYaAe0cmJoWWRhX10SDiwTsxJuL1Zn8L2JEGcjxC3s606y1PJWJ3l1gt3Sjba8ILkalQuyaM2yP0P4aTeaHYTIH0bsC2kcCRHY+mAm4ozjGYzMUJ7m+ro16PVzoUz80EVL1qzu910VRDV+sjW6q/8k52DZUWweHBoRaft17UizdUHgv3vzkrqzXUwAhcYJHQyIkgC8+mIFKtmZVy7+oIvUnDEzP6e0/X5ur+NPRUUBq0CdwM69TllOPdaah6eeImxu0FmBJw7Bm9UyJBeFVu1/eXj5jJCB7/r4KvKy73RwQa2pQUMpoimjD0FCC7fSEt+/soBl4fzWN84Pgnqb73qdyMG6Hva6ljLfb7+gFvX84pdt+I7+Y35TTQpHbUrVGWyqKcg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5651.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38100700002)(66556008)(6706004)(83380400001)(15650500001)(16576012)(2616005)(38350700002)(66476007)(316002)(956004)(31696002)(66946007)(6486002)(508600001)(6666004)(86362001)(186003)(8936002)(31686004)(5660300002)(36756003)(52116002)(53546011)(2906002)(8676002)(110136005)(26005)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UFdaNXRHbHFkQ3o2OWVYS3MrMXhKcFlVcDdWM0pkQXhtWmUrWUN3czc2QnNH?=
 =?utf-8?B?VlZYb1drcWhaNnV4c3ZhcUNGVjgvZ3ZLdVlCQTdScDJhZ3MyQzllMnUvakN2?=
 =?utf-8?B?RlhYR0x3ZlIwZnhTUWpVYklLTHlTOFR1Y2NKcFpyUFRuTFNVK1JrTHdEeUxW?=
 =?utf-8?B?RjM3ZmFQWVhaVC9Pczd0VGxwVml3Slk5eDExTGNSd0V4ZGwrNUkrV25LQXFy?=
 =?utf-8?B?QzdZREw0bHpnVlE4WEs3TS8yWHQxbTNLcitIMmxXbmZVRUhUeHlVT3F1S1RX?=
 =?utf-8?B?UjMrWDVOYUVtTlJ6ZzFoYlJyOVB6dGtOWW9QQXJiSUN4U1dlWXBKSzNTa0NL?=
 =?utf-8?B?VW5UdDViY0VZa20xU1pFUFphdE80QzJCWmlaa1kvdkozY1RKcHpTNU1mdUlV?=
 =?utf-8?B?MHFQTG9MS0t6WHliMDlvejV2MndDQUJxWGdrcTlJaEd4QUZJckhUTHU4Rk45?=
 =?utf-8?B?blZUWmozYTVIQVFHekEvMVh1RkkxYUMrUWtYWk0yeWpsN01pMzd4ZlRMWURO?=
 =?utf-8?B?eXVpSkRXWU1wZnN5QmJNTjdqSitCdXRkbU5PN1RuaG1ZWU13SjFxU0g4dU8x?=
 =?utf-8?B?OTlVWmdxUVNRaUtZaFNzcEZNdlJ6M3VNQ0ZzVzlLKzJkU0I1bFQ0VzJhMzF6?=
 =?utf-8?B?OE0wNTcyZHJyby8wcjA0L0hETjBIVjlVcEFWRW8xL0dKYmxJMkV5QVNFbGs1?=
 =?utf-8?B?UW1idkw3WmZ5c0NuNThlNi8xQUwvU29IcHNGVnJRMVEyMi8zQ1lRbGEzZWIy?=
 =?utf-8?B?RFE2YjZyRVQxbE1PWDBVMzdFMVVXVnhqT0ljK1B4VzVHWXRKcmRsRjA2am1L?=
 =?utf-8?B?VkQ3ZjFRTzlsc2hmanFPd29WSWFsTU8zT3dockVxRVVVNC9qRS9zY2xvd0d2?=
 =?utf-8?B?dnNTRGN4QWFjZU04bGZBMmZzZTNYOVljRW1sNTh0OGd3R1M2Vk85azJsclFI?=
 =?utf-8?B?eTAzcUh0SXdYL0l0SlhJNUN3TEFheVlaUVk4SFZUMlpuSGlSNS9ER2pvTzJy?=
 =?utf-8?B?VVc2SzZ2WlU0eHB1YUxpcWgvRmM0OUhucWlmeUFtZ2Q4TmROelVHY0x5aWwx?=
 =?utf-8?B?SE5OUWJzZjhFWElITlN5ZTVyNC9tSXd6N1ZZS0FFTjllTGppNjFQT2Z1NVR3?=
 =?utf-8?B?bmYyMzIrd2hKWC9reFBEWEdBWWsrZHB4Wm5ua1hNZUNSUVNGcjJSN21mUDhL?=
 =?utf-8?B?ZzNrV1JkMW9wWDA0YmVmc2dPcmRjWmFnTnczeXhaZ2Y1cmpVRC9uN3pRY3cy?=
 =?utf-8?B?aGJQdmhtWmtQYnBmOFg4U2p3RHdCWW9VOEpPUWdMNnFYSlFYTnpBMnBGMWJH?=
 =?utf-8?B?d0JXeEhpelpjU2FKVmw4Lzk3UWtUSG5MRERDV09DNkxPWUkxWFFnMERGR1Vy?=
 =?utf-8?B?eEhUTFFJRURvNnZVOTk5Q3ZqbmR2eWViWEJGSzhtWnh0cU5PeFNBRndvUWVN?=
 =?utf-8?B?Nm8vTDVZU3FiUzB1ZEhUZzU4T0p3eGNPajN4S0NsMDZGbVdEQmI5WmpQYk1T?=
 =?utf-8?B?bU1sQ3V0eFlTZ1dwY01rQnFlS3huV3M0SDhJeGovVEZpQlZmTHFrOVVEUjZR?=
 =?utf-8?B?RkowMUlYV3EzWmlGV3VXZGdRRDFKRlV5a3BqdlNucDFDWHh2WmZSc1ZvY0RD?=
 =?utf-8?B?RkRPYVVpUEszUThXZUtCTW9sdkxnRWZ5K01JU1VSc0hhY20wVHY4S3haUXBR?=
 =?utf-8?B?alNqQmxHQUFFME1jYTY5NHIzbXIvQWFvMVFMbUJtVHJ0dUFPbkNYVWNYTmF1?=
 =?utf-8?B?MEJxVUpaUkx2QWgwWWM0RVpZU3c3ang1UmdBbllsbUdpNW41Z09idmk5cGhr?=
 =?utf-8?B?V3JiWjc3SUNXdDRRc21pMmduSzhIYWVhSG5yVTlsWTJrTkdmZm5yc0JsTWtT?=
 =?utf-8?B?Z2lDTEFldlhzTFdrOUViNkI0amI0RVBDdUg5dGRLOGRpZE5uR1B3a2duZzNM?=
 =?utf-8?B?NjFPR3lFSFk3VWRiNHRGaWhoNlJCdWxyYmVtVENXK2JEc2ZxaTdpaitpM1BX?=
 =?utf-8?B?N3pOc3RGSk1aOWozY0NiZE43bGw1cnlWVjRFaWRSWXIvdlZoQ2NYeEluUWUv?=
 =?utf-8?B?MklwOTVCNnZDWWFIUXlFV1hYSEZJVFJlaDhuZHRtSTN4NHpSeStEMG02ZGV2?=
 =?utf-8?B?RmttL0JEeUMwUk9FQ1daS3oxQS9QRnJuY2NoM1Vzc05DWHFmSXUxV2w5andv?=
 =?utf-8?Q?CZlYanGM9kqyXgVfxRcBhFA=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4b0c1bfd-c1fc-446e-c5db-08d9b6010405
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2021 02:02:52.9440
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 WA6SHPcIebkwbrZVncx7PJbxHXnBR9nIazhSF14sSTGqiVO8bh7abzyXXxU2TeNzaeTMCdX6pbqKO4tlkQB5cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5618
X-Proofpoint-GUID: bN-B6eoUa4L2x74pTgvF7AdO1bPGNA0d
X-Proofpoint-ORIG-GUID: bN-B6eoUa4L2x74pTgvF7AdO1bPGNA0d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-02_16,2021-12-02_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 mlxlogscore=999
 phishscore=0 malwarescore=0 spamscore=0 adultscore=0 bulkscore=0
 impostorscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112030012
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Dec 2021 02:02:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55469

On 11/27/21 2:41 AM, akuster808 wrote:
> merged.

Hi Armin,

Would you like to double check the commit, please? I don't see it in 
branch hardknott.

Regards,
Kai

>
> On 11/16/21 10:28 AM, Jeremy A. Puhlman wrote:
>> It packages all file in ${libdir} to package sssd, including the .so
>> symlink files. Then it causes QA issues:
>>
>> | ERROR: QA Issue: sssd rdepends on dbus-dev [dev-deps]
>> | ERROR: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]
>>
>> So re-package sssd then the .so symlink files and .pc files are packaged
>> to sssd-dev which should be.
>>
>> File ${libdir}/libsss_sudo.so is not a symlink file but packaged to
>> sssd-dev too. Then causes another QA issue:
>>
>> | ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue:
>>      -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]
>>
>> So create a new sub-package libsss-sudo to package file libsss_sudo.so
>> and make sssd rdepends on it.
>>
>> JP: Updated for version differences.
>>
>> Signed-off-by: Kai Kang <kai.kang@windriver.com>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> (cherry picked from commit e81c15f851ca5396c78c8737967ee38db0ebe0cd)
>> Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
>> ---
>>   recipes-security/sssd/sssd_1.16.5.bb | 21 ++++++++++++++-------
>>   1 file changed, 14 insertions(+), 7 deletions(-)
>>
>> diff --git a/recipes-security/sssd/sssd_1.16.5.bb b/recipes-security/sssd/sssd_1.16.5.bb
>> index 02d0837..f13fc49 100644
>> --- a/recipes-security/sssd/sssd_1.16.5.bb
>> +++ b/recipes-security/sssd/sssd_1.16.5.bb
>> @@ -120,10 +120,17 @@ SYSTEMD_SERVICE_${PN} = " \
>>   "
>>   SYSTEMD_AUTO_ENABLE = "disable"
>>   
>> -FILES_${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss.so"
>> -FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
>> -
>> -# The package contains symlinks that trip up insane
>> -INSANE_SKIP_${PN} = "dev-so"
>> -
>> -RDEPENDS_${PN} = "bind dbus libldb libpam"
>> +PACKAGES =+ "libsss-sudo libsss-autofs"
>> +ALLOW_EMPTY_libsss-sudo = "1"
>> +ALLOW_EMPTY_libsss-autofs = "1"
>> +
>> +FILES_${PN}-dev += "${libdir}/sssd/modules/lib*.so"
>> +FILES_${PN} += "${base_libdir}/security/pam_sss*.so  \
>> +                ${datadir}/dbus-1/system-services/*.service \
>> +                ${libdir}/krb5/* \
>> +                ${libdir}/ldb/* \
>> +                "
>> +FILES_libsss-autofs = "${libdir}/sssd/modules/libsss_autofs.so"
>> +FILES_libsss-sudo = "${libdir}/libsss_sudo.so"
>> +
>> +RDEPENDS_${PN} = "bind dbus libldb libpam libsss-sudo libsss-autofs"


-- 
Kai Kang
Wind River Linux


