Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3832.1614118717690059345
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 14:18:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=oMq0H1bn;
 spf=softfail (domain: ni.com, ip: 198.145.29.25, mailfrom: prvs=76881d959b=alex.stewart@ni.com)
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C200238C06A1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 22:18:36 +0000 (UTC)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 11NM8jju008462;
	Tue, 23 Feb 2021 16:18:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=to : cc : references :
 from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version : subject; s=PPS11062020;
 bh=vNNEqErlGo4vFfjz0IcT+iBfGmGPbsolzaAJ/EraOFc=;
 b=oMq0H1bn7wRpvzajBRLQiHkvaUl721qBOD9Mr818e40fTuWWCxt1uOvyLP7lCYOZz9zc
 MKN6QBo3T4a2hPdto823rGseIlBslAe76v+YHL8k1RcO/oirjshdkHR62fwKX3DQU9FS
 vjKEvUbuQzIqDX1oT59nn+T3PE3oPucSlV7UaKWnu94zdwj0n9UtbMBkN6ksfpcJTuLh
 XuzxSFqvvdJjbCGJsrJbuEIrEX0B9EyjvNyBiyPDd2sEf2SVCPQjUBAmHlkI24ZoeMYI
 Vhwf6ZZBBxmk0hQefvSpCHfhsVusx4xcUFCdAO0qIeykJp83obN0umwBVBiFkyOkqXrc qA== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0a-00010702.pphosted.com with ESMTP id 36u0u0x0c2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Feb 2021 16:18:30 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fl+39OvFiEt6Fr4pIVDlZ1ifvx3SihJ9OABJHYKcl/ps6LMZcTc/+jSTJpyA7NkTXDcz70/xtOC9VNje980xfwlkLYr6qKeJCPhB9mXuUhEIq6u3gPsRS4O+9ncHtTGt7g+X5S+5cF/vXVTwZbS1pnV/i5I1uzfouugrmnrxnI5vhfuGmHmByFu+T6TyEsJZcumhZXhcwlvbEaBr+RhdN7LNiNWZEJ2kwMjgXir/5X9L8H97Mx6FyMXManDmSqGeI6Ba/sp7y+x43h2HixW6CMjPDutCR5X3TLIcHv+JwLjYFAmko1NvuJaS2hB5HehYmCyYqD6Gv1tf8t4wc+iJAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vNNEqErlGo4vFfjz0IcT+iBfGmGPbsolzaAJ/EraOFc=;
 b=MipL6YqbPWlFBh4IA9wleMGv5BiNgJ7GtHnP9/7yfaSsbzr8T7wDjj1pB7aufV3ydcKsr+I2jiQWFeYq3Bldk11jd0iOJ4OMQML3vcaxKo+4ej9uOTPVNPl8WnzxFs/TpFqh4dlujiVQf9pdna5PGUiNutFV2ZIMnzPVerRa9yRaCa1bPOkhj5jB9elGf0eYySNIToFRhr+9bvtoHq9epmTbiGAKnfSWodE3YJM5aPgpxOLKxiEqdNFQCu7lipvkSchZGUnmjYzSUXAwRxXyD+vxIwL1iptR5FZWq3PZOWsoQ83I2izc8+acI/8Q4yrW4HLbMSB70Ydx/F3yaGPEjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vNNEqErlGo4vFfjz0IcT+iBfGmGPbsolzaAJ/EraOFc=;
 b=jo7jlpivr8EmPTDfOeTbvEAwpCFNatyalOV1Dc0bVsFGxCsNr2dBVj/UhEkDW95VQpYyOabSI8KFfbTgeWaA0he86uV3Jr28AsvDK52PVrr8RjIL6gYjc9n54oU98aVCoj5SjgVwN5jFuCMRejjQxRiK2gtA6aiGKBAr7D2gD8Q=
Authentication-Results: hermannch.dev; dkim=none (message not signed)
 header.d=none;hermannch.dev; dmarc=none action=none header.from=ni.com;
Received: from DM6PR04MB5306.namprd04.prod.outlook.com (2603:10b6:5:10f::25)
 by DM6PR04MB3833.namprd04.prod.outlook.com (2603:10b6:5:b5::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Tue, 23 Feb
 2021 22:18:28 +0000
Received: from DM6PR04MB5306.namprd04.prod.outlook.com
 ([fe80::85b8:7cc:802e:d31]) by DM6PR04MB5306.namprd04.prod.outlook.com
 ([fe80::85b8:7cc:802e:d31%4]) with mapi id 15.20.3846.047; Tue, 23 Feb 2021
 22:18:28 +0000
To: opkg-devel@googlegroups.com, Ryan Barnett <ryanbarnett3@gmail.com>,
        yocto@yoctoproject.org
Cc: Christian Hermann <mail@hermannch.dev>
References: <20210222130934.9213-1-ryanbarnett3@gmail.com>
From: "Alex Stewart" <alex.stewart@ni.com>
Organization: National Instruments Corp.
Message-ID: <87d46e51-cc81-ef1d-c217-6b424ddebeb8@ni.com>
Date: Tue, 23 Feb 2021 16:18:26 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210222130934.9213-1-ryanbarnett3@gmail.com>
X-Originating-IP: [65.36.69.14]
X-ClientProxiedBy: SN6PR16CA0049.namprd16.prod.outlook.com
 (2603:10b6:805:ca::26) To DM6PR04MB5306.namprd04.prod.outlook.com
 (2603:10b6:5:10f::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.3] (65.36.69.14) by SN6PR16CA0049.namprd16.prod.outlook.com (2603:10b6:805:ca::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend Transport; Tue, 23 Feb 2021 22:18:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a57cf97f-3b41-406a-e21c-08d8d848f1fe
X-MS-TrafficTypeDiagnostic: DM6PR04MB3833:
X-Microsoft-Antispam-PRVS: 
	<DM6PR04MB3833A0361E4655E9BADB1E5BFE809@DM6PR04MB3833.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pHHG2LO4GbLTTO2+KGwwalv7mufYWCEukZBshfcDU+rcHABtUhvvIEW01EHhCCRq98A73hnmECR4qd01oZxngUylp62Y9forynXeSGvAXDtl1xtAs81uBeP3BFeoqKcjDUTciuGeUsg8CSvE5uVyCEaJ/VZAH5gGofs+rN2ksivl9E9hK1YNz0vdJ4nQKzm3ZKTFk5+z8tdzcz2jLSZR6rRnsr2E15You5GiBzSMZutGmCwxMjnxe7bYpR2OTgEoMJPCl3qovL0gpdo2hzedFILKDEs6RPGbT3DVLhVYEuSKU4YdWsmwN9Mkj+pSSJVDuLi6Q+rFQWUyEMNTjURSACgO0CW5VxI0IkTODEsw6hBKvQ5pbPJepA1RHCBrywq3ixRO8TWBcECPYIBEi3cfzz8q+wAtP9Jm/eXk/z+39T7+wMIIPtVw405jssw6rWS2i+AEopXcMDT6fvVu/k7KYeQvswIYTqUDiqXestVF2son8mem8D7OMa37las/2w70oCn9MZqKxZddGOxrVNNvPSLHmClcWmAAHNK1lxOMhBlQAuibX89m0rkJ1U/3m8HEnJwO8Zq6dj+BmXlHc38VcwrTzfeHS6z/o2SM47tYZxx6GMbLwzSY9vOvka7EQBO925wpGN2Jxl2XHCTpwHg9zQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB5306.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(136003)(396003)(366004)(346002)(39860400002)(4326008)(2906002)(8676002)(478600001)(558084003)(44832011)(8936002)(26005)(186003)(52116002)(16526019)(16576012)(36756003)(31686004)(6486002)(316002)(956004)(66946007)(2616005)(36916002)(86362001)(66556008)(31696002)(66476007)(5660300002)(45980500001)(43740500002)(15477505002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?b2RvNzNkdEc3a1hZakMybkliRElIN1Rrd21oekloWEl3dUlTVHhDeVVBRjhl?=
 =?utf-8?B?S3NMbS9oZjJ6c05lTjczR2JEd0gzTENCNzc5QTY3bVJleFA1Q2duU2x5Y2Y2?=
 =?utf-8?B?Z0tKSWZsZkdsaXpJTXpENVdjRUE3L25vUmhYczZPVGJzZXd5OVpVNnF6UGRq?=
 =?utf-8?B?TTg4T1hEdFlNK0k2ZUE0Z3RQcWNqaTlITUFHZlRWVE1rRUhOazFhTnNOSHJT?=
 =?utf-8?B?QVRiWjBXdTNnaFlHK1BGQXJPUXo1RWttTVJrRUJZMUxGRWlCanYvdENHZ2Fm?=
 =?utf-8?B?L1dZTlF6R3Uxd2t0UVkwWUxpOGpFdVdMZTBvZ2Q3NUwvemVmUVY0d0Y2Nk9G?=
 =?utf-8?B?cHQwSXhuazRMMjNQOWdVSUZydFVJb041Tnk3Q3J5WC9mVWtlck5wbFlYVUFn?=
 =?utf-8?B?UW1BYXJIMkwyUEg3dXhXa1lsSFkwZ1NtZms1S29CeDZQZGNqTFV1U1hLSkNO?=
 =?utf-8?B?MHRROWcrNVQyL1J4V0hjVmZVckpkME9oUGc3UmE2MjViZ3BualJ1cDV6LzRB?=
 =?utf-8?B?dzZQeUtKSFJJVzVTZ0xvRmNEQlM0VFUwZ1lRVEt3cW96aVM2dTN4QzJ4aGhn?=
 =?utf-8?B?UHdRNnU5WENlWFZjRUozaklZYmk4MjBsUGdoc2UrMDBlTE11bkhpNE5COUl3?=
 =?utf-8?B?VzZyaEZSYkxPKzhHbC8yVE95SW1vUit0NFFrLzVYVTI1NXozZWZLYVVGQ2N6?=
 =?utf-8?B?VThuY3IrWjYrUWxpYkhwMXhJdTM0b1RKZGJPMEZEL2RmWGJuQW5kVkFudnVk?=
 =?utf-8?B?WS9HQUtGcWZpQ2hiRnNjenlHNXdwaGZKejBiR0loZTdORzRqbWx1cllibTVo?=
 =?utf-8?B?UFYrU2dmdmZqdlFRaTYvQWxEWENoUkV5Wkh4MnJmcDQ4K09EY05DNWwrc2RO?=
 =?utf-8?B?TkZoeTl6UWhETHAyL1pJMTVDdk40SmMxV0RIcUttR0lndzVURlNDRGdxeGt3?=
 =?utf-8?B?Wng2bnNuUXlneU03eWxnem1QS0NTU2tvL2pvdUNRSWNhbWpOYUFhN0dqV1VF?=
 =?utf-8?B?R1NwNHJHZTJsM2I2TitUOU1KV1VvcmVXNkNYUUtQZ0JaU2JqUE1FcTNxQkky?=
 =?utf-8?B?eWZieHRUeHlhK2ljMzhib1lZbGV3eEpKTzBCNW1lWFVnLzZ6UkNhYXpqRVFS?=
 =?utf-8?B?SkN2NnQyMUl2S2JrTHBjUEsvNUlrdlRYR1c4Rng2WVF0RUV1Q1hkNnBtQTc2?=
 =?utf-8?B?VWYyQ3ljY3JSK0hyTzJ1Rm0rNjM3NFRnYzUvUGxSL3hpV2ZCbzQwdDZ4K0Fp?=
 =?utf-8?B?QlZxWmVGUlpoWWR2UU1aNnBoSjUzN0tyQVQ4SWdNVTZUUiswQWtPeUNCZGdS?=
 =?utf-8?B?S2lxQzdXdm9nb2w5b29JWllQWlZCT2FrbVVJcVVXNmlvZE1sTHZRRmVMaXNL?=
 =?utf-8?B?d3g3Q0RKU2ZCYTd4QTdDL2lrSkV6Yitpb3NRSzRtdUc3cjhoVE5uVG9paHNp?=
 =?utf-8?B?Y0J0bnVTQXFmZkl2RDIyUk51RzJCdVpjc2RkS2NBa2RZZHFsVE1xVE9SWmdn?=
 =?utf-8?B?VnVrakQ3Mkk1eXR1STByY2dxbXlrZk1MNDUxZFgrZWYzcXFDQW9VS2VQTy8z?=
 =?utf-8?B?ZXpUNmkyTCtNUmcvaVluM05EaldzdFhDeE92ckVObVBXc0NBQWpIRkQ1Ymhx?=
 =?utf-8?B?UXZCZDVmYm1ZbnpDcVNraVdEUkQ4TG5UYlpOOFNkVWNoTlROZFE4Z0pER0I1?=
 =?utf-8?B?YVJib1NxUVljd3hETFlFV2xubXJjbWVEbWxMU1A5SFJjSWk3cHlHK2F5ZTBH?=
 =?utf-8?Q?2AJt8TjesAUvP0O1gGr6BAcuTLgvZzLcHHelT+S?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a57cf97f-3b41-406a-e21c-08d8d848f1fe
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB5306.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2021 22:18:28.4122
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9nwOckfzw55OF/xeUL6NJ5MWl83DWlV51InlUGdpM15rP1PDRIkvm8Yis+1wxK8WzsOQ3LzN4Kc642ivQth0Rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB3833
Subject: Re: [opkg-devel] [opkg-utils PATCH v2] Makefile: separate manpages and utils install
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-02-23_11:2021-02-23,2021-02-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30
 lowpriorityscore=0 malwarescore=0 adultscore=0 mlxlogscore=999 spamscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 phishscore=0 classifier=spam adjust=30
 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102230186
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Merged 1 commit to opkg-utils:master.

74ccbee0f798822041dba5c6564df62a0c60d86b

Thanks,

-- 
Alex Stewart
Software Engineer - NI Real-Time OS
NI (National Instruments)

alex.stewart@ni.com

