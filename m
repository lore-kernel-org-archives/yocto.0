Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3866.1622777727688025489
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jun 2021 20:35:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ngdyASCO;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=17897079a3=kai.kang@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5A74838C0872
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 03:35:26 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1543YInd019726;
	Thu, 3 Jun 2021 20:35:24 -0700
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	by mx0a-0064b401.pphosted.com with ESMTP id 38ya82g2fs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jun 2021 20:35:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BsIvVN8sZYwnz0VAi827Vmcay9eTnFznWJ6Kx5cIREm/DKk32HEWF9YIJd7pYOmguNKVIt86NwWn7MxF61a9VbFUxp4WE2UZlfWbbrU/Za/DSXb9ZJ1tvL3RbtnU6ZEv+CTzzUYK5YrEXW2aKH15z6d9K+o7fqh1/SOCew1NHkfGVGSemQ6u8Yq1Wlp18X1ed0+xID/0O+woqCrc4T67qV4RXsVwweEKsIzFicil3+c2UXeaAp3EFH63qf8gsTQYS1VUz09pu6d+hRj9fy5FCpf6+fADHGIdVio+bZKYZ++eQgFx5e+PIXvqqaila52VZg4U90/BjuxfF9Qquv9m3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hUabMexbXERRrgqQj2T891ee5vgvddlCu+cfORQASWo=;
 b=dVX3J/83gMIDkR+6DVT9MQFdHpDBOVn8pvLTEUQ9tcQt+RVon1He9MNQzTzMxGkvPXDZo4csnjAr+dEcCSpONpZlxZytqzRsI76KE7iAFh1ug1VkuuZCxV11whcQDlW7rqQqnL7HEqxNMnsLgb+FcXfgzhhS5onMGRJuxMgKakaT8EImHtOQgEzygJhX5UpOGlyhe1xxDZ6dHpvEOIR2ba9D3Wz9LOf+EWMVs8PB+DAWZk6Srg9mEWHE1EK2M1t2oTDlTNVb2tnEak+zX2RvcPUD+4mGB9Eto9Su7F8sA28uf0BME4WFSoKQQMO/Nm2jB41vo63k53QlaHcm/0DVng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hUabMexbXERRrgqQj2T891ee5vgvddlCu+cfORQASWo=;
 b=ngdyASCO5Q5GhbeaFttNf3yDesF8Lart4CMqz+lp2pJyCVKMStAsfYPoKjeGtsfAHzBX8iqNJmtHUrLKDFxHMHK6CDCMjXdZ+ttcxXZmquUzcf6a5vaRshoWiqnv2/CSHtSCpdGvBGzw/dR7aLWs1rkLNn1YeccpD5PpiWQ1yqI=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from CY4PR11MB1432.namprd11.prod.outlook.com (2603:10b6:910:5::22)
 by CY4PR11MB1432.namprd11.prod.outlook.com (2603:10b6:910:5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.27; Fri, 4 Jun
 2021 03:35:21 +0000
Received: from CY4PR11MB1432.namprd11.prod.outlook.com
 ([fe80::7943:e41c:5fd7:a130]) by CY4PR11MB1432.namprd11.prod.outlook.com
 ([fe80::7943:e41c:5fd7:a130%11]) with mapi id 15.20.4173.030; Fri, 4 Jun 2021
 03:35:21 +0000
Subject: Re: [meta-realtime][PATCH] layer.conf: set LAYERSERIES_COMPAT with honister
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
References: <20210604030619.35679-1-kai.kang@windriver.com>
 <CADkTA4MrxoynTeBfnXsyH+YSX+c2MDo9PtdcgYDJqDS1cQ2u=g@mail.gmail.com>
From: "kai" <kai.kang@windriver.com>
Message-ID: <8a264bd7-49f4-1672-55b6-e97be9556ccd@windriver.com>
Date: Fri, 4 Jun 2021 11:35:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <CADkTA4MrxoynTeBfnXsyH+YSX+c2MDo9PtdcgYDJqDS1cQ2u=g@mail.gmail.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0133.apcprd02.prod.outlook.com
 (2603:1096:202:16::17) To CY4PR11MB1432.namprd11.prod.outlook.com
 (2603:10b6:910:5::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.151] (60.247.85.82) by HK2PR02CA0133.apcprd02.prod.outlook.com (2603:1096:202:16::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22 via Frontend Transport; Fri, 4 Jun 2021 03:35:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8179011f-9c1e-4949-aac2-08d92709c7f2
X-MS-TrafficTypeDiagnostic: CY4PR11MB1432:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<CY4PR11MB1432F0B491F9FAD82962F771953B9@CY4PR11MB1432.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0BWKDAfJZjalybDXEzlQFIjHLzow8crU8aU7KOCM8honLb/MhNLSuxhdOQCV1Iq06u4PzskYB9/YMIuT3JoV/+iJH4KVli++cZoCT/Rfx/rCtRJ+2GdMehxiBCCcPVK4pob6sJbPs87tfR5HmuSa+Vwft3GkK3RB3AMQG4vT/00H+amuBSM7SN7aTua/0iQalsOTghGg3lT1+Qoi9uwicS6psKzVypN9Ktmlq0S4IYsaLS3K/JWm6pQfQiFdA6KrxTUQfWrVHHblGniV5TfjyMKNV8hEHjUkEF/htmg/bqaj4cJ7MhhPlwPrvTGj4FrtQeT7NhiCDgTk6OLTbVRFIujt3Jg73Je6wQccp6JQ9Mof8D3wdeL/C0oy4cYOkyMeYYnJhFjX+fD1HUnMIZy8bxLS/nZTQAIs5FeXpQxQ4FecH8hPG8hmIqHrvuk6KoHsZ09PVuhSasOs/XneE04HwtW1niz/NO6FgGgrNWaggH0ljhA4cCW/c1QvlyTsET7T0neu6d6ywl1GP0f/p6YzSSi8JtkUIgRNp63wHKeNjYMmfZpIzgARlBA33ndhyGDVPmKQah6yfkSHtl4g357d0m++l9iipzdahcA2bjyurx+LZfMG90bXUFxwBLKECygCQEhFbLDaKXHaIPg5CRxrMGUVQXCmNnocGnd1CVXOgYTECe4c90FGEZik8LMbXYgkhwDQKVQaDFWWALFnljzVKD0mKGZo5elG5G9fHwlZhso=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR11MB1432.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(366004)(396003)(346002)(376002)(53546011)(66556008)(5660300002)(66946007)(2906002)(6486002)(36756003)(2616005)(956004)(4326008)(478600001)(86362001)(52116002)(6706004)(8936002)(16576012)(316002)(8676002)(6916009)(31686004)(6666004)(66476007)(31696002)(26005)(16526019)(186003)(38100700002)(38350700002)(83380400001)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?QWRrc0l0ek54QUp4aG5vK0RhS0p0S1lOa2xtOWlENk1Cb0VzOHRjRURMQmYx?=
 =?utf-8?B?c3YyK2hCYkJpd2svWDVDaGRwdnQzNGpFVUR5Sktyckh4dVh4TjJsbFcyOVlK?=
 =?utf-8?B?N3RmWVVsYmdFTVlNRHlpeXBnUk5PNGZBemFYZ0h2eEQvRDFkM0x0SEgrS3Bi?=
 =?utf-8?B?Z1lNd0tOQmVidWk0V1FxWjRDRGh2YzJQekhUVnZmTE5jWTBjNDBqa1cvRXZp?=
 =?utf-8?B?d1RSZDQ4QTlaajQ2bmlROENRaXBjbjFlak40bGxoMmRUaFNFRmxBZ3lnaVdB?=
 =?utf-8?B?UGIrQWJQeVBoSVhjNUIvZWNUd1lUMk95K3c5SUZZcHRVRTJCb1BTQnNUNkRF?=
 =?utf-8?B?S0MvMG5wZUFuQ2dzZUN4aVlPTDVwZEEyVGxXOFc2MnNLV2tQc3NSalNPQXJF?=
 =?utf-8?B?ajZHVmJ0YlA0aDh0YW1SbERJWTJkcVRTeXFVZnV2K05mQ3FpL05HK2RmWnUz?=
 =?utf-8?B?TFJyam9xZHVlY3dVZEFqQjRKaHBYVDM0eWREajZBQ21xREpiTHBmRHM5ZW9O?=
 =?utf-8?B?Wm1rVkNBSlFJY1phWkdQZERmSGpnUjVxOThLYzAzUSsralMvNWdQTC9LbGVj?=
 =?utf-8?B?d0dBZVVyYXJ3OW81OGhiam53bUVWRXc5dEVrVUZhaWpKQlhTYk4xMklLQTlh?=
 =?utf-8?B?eVFuR0taK1dVaDdWL3RhQUJaalNCUUVXblJ3dkJCQkVyT20yMmV4ZmltMXho?=
 =?utf-8?B?R1l1T29WNDNSTVBXQWxZMTdlSCt2SEVIOFY3QmlMU2QzTDNPQWhVakI0M2pU?=
 =?utf-8?B?M1RLa3d4T2FpYzBwQnJXZkVKZy9QbER5dkFZZmU3U3FwWHRqcTdyWllFUzdK?=
 =?utf-8?B?NXdvWExaY1M2Q0pCZWl1Zi9nSnlxTmNLZ1BobDVaMjhqbUpkSEkzaHV2YnNO?=
 =?utf-8?B?aXlEWWF4dll6cDc3bmczQmRoZnYyL2ZpekhZbmk2MGwrUlY5cGhjK3hEWGhZ?=
 =?utf-8?B?ajJHV3pmci9raGlhRmc5RXpSRnd1QlEzOFowNWNGbEo5LzBMTk1zWmV3UDFn?=
 =?utf-8?B?TytXdkU5alFGNHE1VVFCekFhWlkyK29hVVpxdDJweFhMZFVPMWFRdVl5a2pa?=
 =?utf-8?B?elNsRTl4MU81b0Q4Z0lwRVdab05qTTB2bFN0ZzJzcVZIWHgzNjkwQUdyeW5V?=
 =?utf-8?B?V21OM09XN2dzNDRUUDRZR1JxL2J1R0FUS2dab056WHl5Z2R5UTJWZVJkTk1L?=
 =?utf-8?B?MTMwQkxIOXJlTW9DZE9GQjY0dlBxb0MrcGQxL2VGVzlGRTA4dmkzSk9MTGVV?=
 =?utf-8?B?VVYwTW0yZHRJMkVuNWErOVVUYjI2aFkrQ0FPbjkxdTFsMzNxS1k5SGI4MzNB?=
 =?utf-8?B?citQYlFTQVVJY3BDYWdKbkgwdm5oN1RGMnBHVzFZOTN1bngvVFM3dUMzSzZ2?=
 =?utf-8?B?ekttWGUyNXQzU3VXRUhKMmNlNE90TWZOVnRkdkxQZVJiczJUWHU0Q3dnaytt?=
 =?utf-8?B?V1c1TXpESU91bDBWWmdQMVJvUzlYV09ldzRPNzQ4VWYxODhtdlg2RTQxUzlp?=
 =?utf-8?B?Zi92MW1WNUpQa2hTOGFyRTNaZ2k5dXp0bkVpVndGM1BKNncwNDBOS0h2elh3?=
 =?utf-8?B?K3dTZjF3MEg2NFNsM0ZKNHExTi9Wb0xFd0pvdjhHbGd5RnFrNTRzVVgrTFBM?=
 =?utf-8?B?SU8xZXhvVGhzZVF3SGFmR3pjcTEwK2ZJVDRyTDRGTVJlT2I2aktMVkhSaGpJ?=
 =?utf-8?B?U3JLZXRXazJveE0xQ3JuaGtWMnEzSkNFcUVUY1hKdTM2RTV5aWk4ejN5ajFx?=
 =?utf-8?Q?VHo8tbtCOeH3STKgIkk5LtLerfpIUmim738XAID?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8179011f-9c1e-4949-aac2-08d92709c7f2
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1432.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2021 03:35:21.3613
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rhDXOrM1XyrrT41amvy8vylaLNM6MXh1j3xkk7RbVyeeKQyflBcJEJ/+yonhWMuxpRFty4LDR9QqLm4HqlIuEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1432
X-Proofpoint-ORIG-GUID: wSdb0OS6AcV4poSvSJfF4vG-XAL1TyMu
X-Proofpoint-GUID: wSdb0OS6AcV4poSvSJfF4vG-XAL1TyMu
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-04_01:2021-06-04,2021-06-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 clxscore=1011 impostorscore=0 mlxlogscore=999
 phishscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106040026
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 6/4/21 11:22 AM, Bruce Ashfield wrote:
> On Thu, Jun 3, 2021 at 11:06 PM <kai.kang@windriver.com> wrote:
>> From: Kai Kang <kai.kang@windriver.com>
>>
>> Replace hardknott with honister in layer.conf which aligns with
>> oe-core.
>>
> I had added this back in April, but apparently didn't push the change.
>
> I also noticed that I've been updating the wrong branch with compatibil=
ity.
>
> That should all be fixed now.

Hi Bruce,

Thanks. I have seen your commits.

But 3 items in LAYERSERIES_COMPAT_realtime will cause layer index show=20
warning:

 =C2=A0 WARNING: YPCompatibleVersion.name: dunfell gatesgarth hardknott:=20
length 28 exceeds maximum (25), truncating

Could we only keep the latest LAYERSERIES_CORENAMES (honister) in branch=20
master, please?

Or it set in oe-core's layer.conf:

LAYERSERIES_CORENAMES =3D "hardknott honister"

we just align with it to keep the latest 2, please?

Regards,
Kai

>
> Bruce
>
>> Signed-off-by: Kai Kang <kai.kang@windriver.com>
>> ---
>>   conf/layer.conf | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> index 007f578..8ae67ba 100644
>> --- a/conf/layer.conf
>> +++ b/conf/layer.conf
>> @@ -15,6 +15,6 @@ BBFILE_PRIORITY_realtime =3D "5"
>>   # This should only be incremented on significant changes that will
>>   # cause compatibility issues with other layers
>>   LAYERVERSION_realtime =3D "1"
>> -LAYERSERIES_COMPAT_realtime =3D "hardknott"
>> +LAYERSERIES_COMPAT_realtime =3D "honister"
>>   LAYERDEPENDS_realtime =3D "core openembedded-layer"
>>   LAYERRECOMMENDS_realtime =3D "meta-realtime-dl (=3D 3.2)"
>> --
>> 2.17.1
>>
>

--=20
Kai Kang
Wind River Linux

