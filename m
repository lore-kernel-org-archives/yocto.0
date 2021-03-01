Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.156.75])
 by mx.groups.io with SMTP id smtpd.web11.39.1614617443456075173
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 08:50:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=1BJLNqja;
 spf=pass (domain: ni.com, ip: 148.163.156.75, mailfrom: prvs=8694f493c3=alex.stewart@ni.com)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 121GgVxC011656;
	Mon, 1 Mar 2021 10:50:38 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=to : references : from :
 message-id : date : in-reply-to : content-type : content-transfer-encoding
 : mime-version : subject; s=PPS11062020;
 bh=u9deVli3Y5q2zVZvBFhUx0tL6or+aQ9bwiVKsS/b2U0=;
 b=1BJLNqjayZ9kYnPmQdhO++6i9ryKl5AFTm3aWBGI/vxT0KY8gwTvlnQg39Gy/5oIyR3H
 n9auMOXEKPisZ6CJPM4B0OpLtL8g+SC4U7RM/KMEGyXOtyffNLQx8A5Yn5g5JInJ/O3o
 zBorqHh3YzkyCZ6gWc+eddzfURn4ujVpVIKJeVL9IYirH58/QVyqcTnuL4bAVKCnjyLS
 P3eHc9y15g1JXbqm+OrYkRbON45/brJ4zYvjoIY6MmlKMMwZrLmiHJ96yitGzSlewFpN
 T2iGJ6MLJBgAviLN0bN0Cx4hPVf2Wh7VnX3D5XeLXYDlRE6uSAK6IOLWz5nStdMmagCN bA== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0a-00010702.pphosted.com with ESMTP id 36yk04kcp0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 01 Mar 2021 10:50:38 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NW44NqGOjGI+0A1zQfNnEh50UP50EBnc6NbCYnKjr3L53k2XNqBEEo5YqmRMy9HZOb9tNRBf46JBToVBS6Sd9ef74Ncm29gBTZI2oi5jjxsfbATwzWQMBeI7nPrR5YP9M79+6T0OwpnI1nKDMBXu1Ouz+kA/LH0ZX/5WTMxkk/FJS4O6tNKogyhxGxA/Sbn/te5dJg86yul5J6+8MG6+8JJscPNGOa7irqzHYvmcpK9ZKtslaZx0Id3TzkJPKU9iWS4EzKmcZq9edx4kTarPNS/GWY+FxHcMReHyJIGB8VJSiXPhlP0IHiltxS0plCYo7xbg5zK3FrEv+4I3XpF+9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u9deVli3Y5q2zVZvBFhUx0tL6or+aQ9bwiVKsS/b2U0=;
 b=TaQes1ZRemj2RkuXtLcrR65ElLikL8NJVft7LTLR44hCpu/JaHwlhz/7jJjQVCPy6qGLwactS3b0IeKjir539VggidY2eCGkbLXzKXLoUf4nqvaIHUM4NlWOemqL7msC+LStXa2ZlYN45M+QnyZSGV0IsJtI1ZHFbgr2WY1pc7YVsaukc8UmhlMm3HStwept3AqhTz7PgUbwqYx98REjAFkYMSmu3KFSE3LRmdlwEfy257vSAPslH8uBEu2C3OhHS/lV+Ho63lzhcVBa/M8uAfao+FfQp71aHixaMSwsPaMMwkjnrMvoSR8mIAaW9jKoCSbU+LfvE3cwZEwvcqsdzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u9deVli3Y5q2zVZvBFhUx0tL6or+aQ9bwiVKsS/b2U0=;
 b=hOnPIQOoXAChULflClan9WKsVAEfjrsmRg0HVp0YkCX62CyUh1fNPk4OzbEf0CWJvke9Of+O2O9z0KmbYrBVX5oL8OiW8vOYlPnqxvhtqRr3lwBxBDYwpEqWcUOSJkWHl4tlsVtPG2VOXJXcPLovn65vxV3L2w30qok3JFvAwlQ=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=ni.com;
Received: from SN6PR04MB5151.namprd04.prod.outlook.com (2603:10b6:805:90::25)
 by SN6PR04MB4381.namprd04.prod.outlook.com (2603:10b6:805:38::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Mon, 1 Mar
 2021 16:50:37 +0000
Received: from SN6PR04MB5151.namprd04.prod.outlook.com
 ([fe80::1d87:e6b2:6840:e809]) by SN6PR04MB5151.namprd04.prod.outlook.com
 ([fe80::1d87:e6b2:6840:e809%3]) with mapi id 15.20.3890.028; Mon, 1 Mar 2021
 16:50:36 +0000
To: opkg-devel@googlegroups.com, Christian Hermann <mail@hermannch.dev>,
        yocto@lists.yoctoproject.org
References: <20210225140001.10643-1-mail@hermannch.dev>
From: "Alex Stewart" <alex.stewart@ni.com>
Organization: National Instruments Corp.
Message-ID: <567221fa-c9fe-6c0a-fc14-a280009d13be@ni.com>
Date: Mon, 1 Mar 2021 10:50:36 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <20210225140001.10643-1-mail@hermannch.dev>
X-Originating-IP: [65.36.69.14]
X-ClientProxiedBy: SA0PR11CA0034.namprd11.prod.outlook.com
 (2603:10b6:806:d0::9) To SN6PR04MB5151.namprd04.prod.outlook.com
 (2603:10b6:805:90::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.3] (65.36.69.14) by SA0PR11CA0034.namprd11.prod.outlook.com (2603:10b6:806:d0::9) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend Transport; Mon, 1 Mar 2021 16:50:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2efc937f-c41d-4eae-22ff-08d8dcd2235f
X-MS-TrafficTypeDiagnostic: SN6PR04MB4381:
X-Microsoft-Antispam-PRVS: 
	<SN6PR04MB4381C56636429CE8C82C09ACFE9A9@SN6PR04MB4381.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Yw31pDXEzaQ1g0zg25rfkPB/4E4DzY4Ket80L48/GEMydYdjg4qYa0a26KvjYQcan0t26qjYkGEteKVELAnquKhHWOcuftNNy8ixkB8gXkI+x64e1bWoI/HZ/XzfuAVxZVh4uv7YK5+5pBPUdsw3iU7tDUdkIlfP+sD29/5FFc0eglQpDvez0xPFOFphpdq7SJm2zCuUxFAz4rsB9+jX8BBByG7NF/jVSJdXsFizKguii8YocWWOx5KHx6mxE+tWoT+HntZeTJUSSLNW6pUmBOIoCCr1YR/pJJcsjiePg4DKLuUYseaXqFWxsYtF6uCwrmo4/sFLptFaT3nsjuft2GPf0OHWZE+hkuaK0U3Z+SwST8TDw1v438zS1KSql4l7PynC21EHjVL3TX2HxqoFcw7UAcUVrYMnpJN3uZOW9RkexMj4IaUxy2FQ+bKwTN9p9zWJgcV4sFpev/eMKvKkyU4HoS5/UX79ntpyzGXGcQ3KlzJhfZwlTgZduxfq7NuzyJ2dnqTlJ+/aJMc3V9+m4VzlSsZrJ0MmVvKkGDqHgGosboQ/Vz4EG+N2eoZ4WDBlusQuxWNhGpexbn3mP+lOfu6kWU7DIzkm5QY+To/E9Un2aLwz/Vd3RinrNYK/137D/oQ9Ttej/cba/ITXQ5s7Yw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB5151.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(376002)(366004)(346002)(396003)(39860400002)(44832011)(8676002)(478600001)(2616005)(31696002)(36756003)(16576012)(558084003)(186003)(956004)(6486002)(31686004)(26005)(2906002)(36916002)(66476007)(316002)(5660300002)(86362001)(66946007)(52116002)(66556008)(8936002)(16526019)(45980500001)(43740500002)(15477505002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?UnlhN3RoOVo2NU15WmpLeDhEUzEvSkZpajNNcURZSXFsdmhtWmU2dTR5QWJK?=
 =?utf-8?B?SWJINS91Z3dqcFkzT05IRjNsKzVjajcwWWV2R2xZN2pManNqSW9aK3dyU1pu?=
 =?utf-8?B?QXNpRVVkMzJlcEhvWHFlVVN3VlJ4UFcvTWFzMWJ2bmtTOUMvRXZHa2dOSGNk?=
 =?utf-8?B?NGpnSEJjem52NWNGOVJIcllsKzQwenFSdG9HM3FpSUthT0xKRDVubGMvMk9m?=
 =?utf-8?B?UzQ1L3JpODlUTmN5ZE5ZbHQwdjVTMlByR056VE1OWk4xaWtrQW5EbXREd3Zq?=
 =?utf-8?B?OHpRL0lLVmY0NStEVGVpVWx3SGtINGhqdmJOYmo4RnI2TlpDZGFjRkdJTGJx?=
 =?utf-8?B?eHV1NWtqdVFoMHFLcytuVzNiMjJ2SVdHTVhyL2x2ZzNXYTJMd3YvY0R3NWFo?=
 =?utf-8?B?bDJvQitld2IzTFlFRkVqTEc3NnZueVV4WHhWSnFWaEUvQ212dUZ2cHNkMzV2?=
 =?utf-8?B?STVCQjlVMWxzTFlFelNNQjdiQXhVMjduNkx1L2JEb0htcmQvanlHSFZVZVls?=
 =?utf-8?B?RTVlZkRYcGdOQm5vVlRkT05KWjdjVVZHcDV1ejFsWDhuQm5EVWIzc2V1N25v?=
 =?utf-8?B?YzdtWnl3dFF2Smx5NHZKUE5zZHI1a1IwTXlteTZjZ0xXOTI3b2tMb2hGL1Zl?=
 =?utf-8?B?a1Z4cGJzN0N4NXRlTTI5QUI3T3d5QVRQb2RLZ01lNGVPbVljL2xzNDRTbWRw?=
 =?utf-8?B?OFpyRFlQU3ZrSGR1ZGdhMnd5dFVMaFJoa1VEVGd6encrMlZmWWxmenYrNUU3?=
 =?utf-8?B?ZWs4TVVZR245YWF0UW54Z21lMUhEQTM5ZTdZV05ScDNLU1JaMkFBS3E4Qlhn?=
 =?utf-8?B?ZGk1MTd1UVBSTStxMWxsY3ZJeHBuZ2dUaGd6WDU1dzc2bGpQOGhSUVltYXlF?=
 =?utf-8?B?amZsZXVPNkZiY2NGeU5uYUJGVC8rYlhEdUZ2eHQ1dktxaHBNd3NaMk9vSjFZ?=
 =?utf-8?B?MXd4aWswNXEwWERJY2ozRlVhVzJQSGY5V1NNTTY4YlZJQ0xmVWpDNzFtYzdv?=
 =?utf-8?B?RFRVbCtuQkxoTjh5dGN4RTBZbVVXV2hHTVh1YXd1L0FGV05kMm5IVXJicnEz?=
 =?utf-8?B?cy9WZHEwNzB4VkpXYVJCNFd5NjBsRHV4VXc5ZDlRMUxNMlFLTlYzL3NDT3Bi?=
 =?utf-8?B?QTNZdDJoZi9JNDJLNHFDSnNkcTczSzhTUWJvR3pPTDBsVUpuV2V2K01lRGFa?=
 =?utf-8?B?MWMwRWRuNnZYbHlZTmxFMXFtd09PcmIzejBrdkRnUVJnM2NIR2JJZUdOa1p2?=
 =?utf-8?B?Vks4bndzaG13N2FXZFFnSDRWSWJ3ZjA2ZFNTQXlvVmt0dU8xb1hTa3RIMWpW?=
 =?utf-8?B?czNyU0MxUVU5NGczMm5aNjZiUDFXeG03Z3JqeG1aakF0cTJRcDBGOHFCayth?=
 =?utf-8?B?K2ZFektORExidzFSczhzNk9iVW51Rm5vUE9DY2dSQ1VhMWlJdTBVWTN6VUox?=
 =?utf-8?B?SXhRQ3pYTTR6VnFaQkp4WkdSSGJ2OEkvaUFIWUNOM21rZC9uNWY2T0xpRFM1?=
 =?utf-8?B?TTJHbzlxazRVeWd1bGw0ZTZCUXR1NXpmakRrUjZDRFgvUVRKZUlnSmJMM0cr?=
 =?utf-8?B?YlU0U0s1cEQ4Q084elNORUJnZ3NITENGMEQ0M09CYlBpbnN5VVNBR0FzaThZ?=
 =?utf-8?B?M0g2WGFqVXFiTzVPWi9ta1RNM0lRR1I1U29sa0o2cHN1Q0R1Vnh0bkVuWWc3?=
 =?utf-8?B?OERPQTBjd1Q4cWl5SFRsS2JHUkFTTGZabjdZZTBmVDJBSEQ3VFZNQ0pGZ0Zt?=
 =?utf-8?Q?MGH3PZOP8BK3QoaOfx0+J1xkr5JTIMrGdqztyPJ?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2efc937f-c41d-4eae-22ff-08d8dcd2235f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB5151.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2021 16:50:36.8764
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KMGE42/yR5D5b1gqUssN99u1rMvBEQgmZeECq6ApuiM+UPx5OT4DUIn9pFNFM7pWoPKEq4uTTCNg7ifYoOP06A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4381
Subject: Re: [opkg-devel] [opkg-utils PATCH] CONTRIBUTING: fix yocto ML link
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-01_11:2021-03-01,2021-03-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30
 impostorscore=0 mlxlogscore=999 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 phishscore=0 adultscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 spamscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2103010136
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Merged 1 commit to opkg-utils:master.

18f7bfca3ac6f5c4502ce05de6e5e4fa5360e759

Thanks,

-- 
Alex Stewart
Software Engineer - NI Real-Time OS
NI (National Instruments)

alex.stewart@ni.com

