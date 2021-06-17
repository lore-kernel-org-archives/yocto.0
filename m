Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.142.1623938762713336031
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jun 2021 07:06:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=l7uwYyGX;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=180248a31b=randy.macleod@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id F0D0438C0884
	for <yocto@yoctoproject.org>; Thu, 17 Jun 2021 14:06:01 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15HDwWVu020362;
	Thu, 17 Jun 2021 07:05:57 -0700
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2109.outbound.protection.outlook.com [104.47.70.109])
	by mx0a-0064b401.pphosted.com with ESMTP id 397xms0cgs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Jun 2021 07:05:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KSitIpOvtIB9Zo8RXyqzeBtQ1MDGDKELgYIYKC+qQpPulunfN4tHed9edD6TT8nYCJM4AMY5eWSPGwP7G45rI03TSRKiXjEiwM1I7W+j+A58kmrORSfLZlPJS2oiUZZVlijRvcvk0q0PN4elITNYcUOpbCOeXOeH/tJ8lZ1AhbyAJZKJWOmxfyjx17PdBY0VMLHQEoJr3CVQ1bwiFiwRgQGklBcQY0oDDkG4rBaAy+xWSk6w4w7xV1I27zGJ38nAms2v1SRz73j47lXureyCkJxnc/swNQ/XL0c4OygMRLEW+Ulvs3lpQm9KX22/0t0/y3sHJLo80MI6HQRfvfUFpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZZARxKgWun/oneZ6O1AsKrBYjje0iz3IkEx5TijNhWI=;
 b=R7LhK4UNEu3qofspKOTJPR/qVxqiCKAewuYSn+YronlIn0rv7GFn5CQSpVP2ZzMg0pY7Bpy1bKtKWLns2YLAZKyyen64xUvbf9BUE4riTANCgdQX+eCmoNO6jFnJwy7d4y5LFT7tar3LMT/mtSJUyK12sah4MOIoYtgt+O81Z9IzXSyboOHKNiFFQLRLqubcV6XJp/HK0KIk450Hu5F5LOSTaoKyv5fya/PLqTaUoqdeCItHe5jqsFsT0Sftb7dnTk4ZHRCzU4cI93GfUy6vGwYtoQ2Xpqka83NDTWtjxNL/klfmGqwFP7sW8RIm2vKA8jBK1ShqrAMZYX9UasN9eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZZARxKgWun/oneZ6O1AsKrBYjje0iz3IkEx5TijNhWI=;
 b=l7uwYyGXLbloSZdVK/J7Fvy5horLTVGK8oftLdA0TQR3c+arDPU5l8abZa1u0eWaEBcCpNk794mc3Ya+z4hZPzZodasdCmJnAAn49RXMDZNEGsj1YpGaW83AvsxmuZAJE0+q2SEI/j7xG79umjh0jsBpwg/ZNag5JosX77DCwjQ=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4393.namprd11.prod.outlook.com (2603:10b6:5:206::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Thu, 17 Jun
 2021 14:05:53 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4219.026; Thu, 17 Jun 2021
 14:05:53 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: June 17, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
        "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Message-ID: <cf0b6c6b-c779-3730-7f12-b19f70cb07f4@windriver.com>
Date: Thu, 17 Jun 2021 10:05:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
X-Originating-IP: [23.233.84.124]
X-ClientProxiedBy: YQBPR0101CA0005.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00::18) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.29.18] (23.233.84.124) by YQBPR0101CA0005.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c00::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.16 via Frontend Transport; Thu, 17 Jun 2021 14:05:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5fa02ec5-50c4-4633-c706-08d9319904e3
X-MS-TrafficTypeDiagnostic: DM6PR11MB4393:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4393E092019B0386C84AF32FF80E9@DM6PR11MB4393.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SsJCeAnjS/L6YH3H5F+Pv+tfxSCzIcY02xc2YLXJUuxua7V6vGSin0SOoLW9TjisVfnsvXvKYhtQxMHoZvORpM0aEWt+1ZXhHTUU5Fex9GP0cahpRx6owgYox5Un+aws4GSW6IohSgT1C36qIPtzSNMn8g7FMPGb6YlYc/vS8DLCW8tEn3r98SDaYvABlPW2M8yEhyHbRafMJbQa78bA7Gh5wsKUvT9ylOE/wv51k+lw0ughHXWEf5P4WRuOgNwJykwFcwpeCknjtRNJBHmUTmdeSt55b529CKFGb1QMV4DFcsYWhxdcFg70aAJvwhjuSDENEfrtBX4gY7QfcaEjNRH0Qz9Ry+xs3slc1hANKugoMO5g0NoulpFsQcbIIaqFo+eIL2GS5FJ+q7tiCCiBE6458aGMRxBxXWM5F2WyCCMTxTPjOo2aW0PPFTCXKvVbP0Q2+wSL7lIsLJyJtFxbbVZu7xEpIdr+o2VHeMz/GEAXBdR5tL0+kwXkElWaFCr0FbpyMOHWV4bP5MRmqeWTgthro2PsCHa2TXh6MVYcsLCfrKz4MoWKz3DhH3PxS5UKxsRp7RgnSJKQ4mqmJn+QXLKMVDzpJ4hjo/ybwwJtNhxkh+AkJa3q6AfxpkU3dpDM5bRsRFqhzin6kjn4jNzyhR0KUUcTAZjaLsneME6hdRmauj5ug469wuFwJOrZ5PoV2RN2tfK+aWwbsrG1+1P8s3Fh1YRxJ1qr57BaySqtBG1tBl+JJGr7zLHHSekRF736Z9GOpYsJLxGP69C9MwEfqqTXiwR2fo6QQPPaGjVCbiMx9UCC8KrvCRgaELOjB3agMx25bJjiTrfZHmKbCRd3vB8nQwqBo2LAlva8+U3AySPUvDLVPevUJOIgTQ6HRFe0
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(39830400003)(376002)(136003)(396003)(966005)(478600001)(107886003)(36756003)(186003)(8936002)(16526019)(31696002)(66556008)(31686004)(2906002)(52116002)(66476007)(26005)(83380400001)(956004)(6636002)(54906003)(6666004)(5660300002)(4326008)(86362001)(6486002)(38100700002)(316002)(8676002)(110136005)(2616005)(66946007)(16576012)(38350700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QURucTFIY1luV0dvcHBRV0V2R043aXVyNW51cVlPWmFUcDFkMk1yWG1QYzcw?=
 =?utf-8?B?NDFLdDJYL1RaK1BGdktGNnlUZWRMR3h2RTBGcXRlZmFTVHJ4ckdGQ3AxWWRX?=
 =?utf-8?B?eXFaZkVoMFNLWnZYNkpXVVllLzVyejlqY092MzBQWnBVZU5aQmdvdzh5Tlk2?=
 =?utf-8?B?ekZLRnlmOXpSK3dHQS8yc2JkOTUwVjB3NVJoNG5pWEpQWG5oZnE5WkN1R1J6?=
 =?utf-8?B?UXpBdS9XSEFEemdzVHFMTENiODR2cFpWbkFPOHNOeXBiOUJZVEtaRjhDRFdx?=
 =?utf-8?B?bHlEdGRZWkk2Nm5mVkVaSGNxaC9qWkFzYWk5cVVKRHc0OEtZbUxBNXZXU0cx?=
 =?utf-8?B?T2JqSG1FQXpRKzFKMFUvMzVPSC9sSmVMWml5SmtzVFlIZG9yTkxFTGtwaVlE?=
 =?utf-8?B?bWVFUllPMk0vRXIvTG5ETzljZDlDc1FLeGVrMEhWaEtyeFpabEFYa2FDRjRY?=
 =?utf-8?B?ZlYyWVc0cmdHOTgvamFWVzcwNTRYS3V4R0pteDY0c1lTK0w2a0JIOUg1aEZy?=
 =?utf-8?B?ZURWc1ZNTW1TV2lNSFRsV25xRDBtbVhKT1FMaXFXZDJGSFI1eXUrLzhJOGJQ?=
 =?utf-8?B?bFkzOTF5dGxnRHJnRzhQR0VWc2pIbHJLbEVKT3BhL2hBMk95bVpQb0hJYTRw?=
 =?utf-8?B?NTdVUGVNcHg4bVRTSFVZaTU4MjhGK2t6TEpJR1ZxWjF3K0ZiTEtFWGhwSUZq?=
 =?utf-8?B?bEwxMjZucjg0MVdQN3BDUlRXNm4vU0dNZG5XbERudXVHa1ZYZmxUNHJzV0ll?=
 =?utf-8?B?VDlwei9selBIZmk4VFFPaU1RK0hXbHpxOTNQbjFoZXpKU0hWM2RZekl0eUMy?=
 =?utf-8?B?a1NLWk00bjFGMU1SaFVSVDJoRlMxblBTVVNuMXBHQXl1OVNaQUFXN09qaWw1?=
 =?utf-8?B?ektjL3F3WG82bUdRVEtiS1ZsYnNsODhMQ0RrZ2l1N1BwVk5JRUFpMVVLOHhQ?=
 =?utf-8?B?VGVRZmIvWGppaEZHdGRoZVNKRDdPT0xaUlZ5bEVwc2FRZU8vNlluamwzdEJ3?=
 =?utf-8?B?cUM0dk9mSnF0WTZTOVBMNDFVbGZveTgxMG9uQzE0dWxpS2FPRXl1UU1OZGFz?=
 =?utf-8?B?UXVGTWphTkhmUStKczVEaERnc1NOVXlJTGNMWHp6dUswMTNxOEhHYm04bTJy?=
 =?utf-8?B?ZFJENWg0R3VBMnljL0lCRm9rai9HQXl3YTYrNUkzWU9YVC91QkdQNWN2a1pX?=
 =?utf-8?B?NHZPVkIySHlGTTRweHpDbXEvNjFydmY4Q0pzdHNHaHBHYVBXTEFNdXZkVm1p?=
 =?utf-8?B?WmJiYmlEeWp6eHNDdTF2VDNMRXJudVVwTmZIcjl3bGpYcVd4dy9KTis3YXN5?=
 =?utf-8?B?bnB2YjU4cmtMNlFHV3M4VDRsMlJhL0NBc3poWGpoZjJRTStuaVloK1Y3b2o2?=
 =?utf-8?B?TmJKL2ZXSTY0Z2x6SnBjSHVlMnlORkJMWG5Gc0dLTUdET2ZoREh1cnltL3RY?=
 =?utf-8?B?VThQeUJGd3NuRi9EWStwN3pVWDRBQ3BxbjVRVlZhb1RLYVdUYTAvOEJMUmUx?=
 =?utf-8?B?WWsrdVJPMCtzaHFYSWlJb2NURjZIMVZYUWJ0OGQ4Z2xNQjlsVEVPTWdJOWVw?=
 =?utf-8?B?eFVraFM4eVFqRU9UcmxYSmY0b1EzK2NKdFFDelNqWkpDTXBpZ1JrS0RVeU9F?=
 =?utf-8?B?NFdONVV2d3RKSnJJWmo0eVc0NWp3b1c2YnBBazFuUlFDN0NDOFZhb25vbVdN?=
 =?utf-8?B?M2M1Ny94NCtyVCtwcjlTU1BJd2FINldxa3BXOFZDY2VtYW5iY3VWVWs5ZzFY?=
 =?utf-8?Q?908OW2JDmuIy56A20HZqFmsFRJ+qJKKR53TMB5T?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa02ec5-50c4-4633-c706-08d9319904e3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2021 14:05:53.2728
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LYzUFFS65SHCZ3Xey2H+/4bXAXUK7GTANAZ2afnax5VSEyf0hlilLEfNJmhYOHOBPlvG793AsvpDiaz8w9Tc0qv+fD0LvFGwVCAUcnRp5Ew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4393
X-Proofpoint-ORIG-GUID: 6rOiq8pPsKJE8E-gQ5J_GWwzmyeyNWHP
X-Proofpoint-GUID: 6rOiq8pPsKJE8E-gQ5J_GWwzmyeyNWHP
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-17_10:2021-06-15,2021-06-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 mlxlogscore=999 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 adultscore=0 phishscore=0 impostorscore=0 clxscore=1031 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106170090
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit


Join Zoom Meeting - 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees:  Alex, Richard, Saul, Randy, Tony, Trevor, Sakib


Summary: Things are improving somewhat on the autobuilder,
          RCU stalls are the top problem now.


1.
LTP kernel BUG:
Many thanks to Paul Gortmaker for his work on this!


2. The most common problem now is the qemu RCU hang.

For example these builds:

https://autobuilder.yoctoproject.org/typhoon/#/builders/73/builds/3541/steps/13/logs/stdio

https://autobuilder.yoctoproject.org/typhoon/#/builders/73/builds/3541/steps/13/logs/stdio

Richards links on RCU stall detection, and tuning parameters:
    https://www.kernel.org/doc/Documentation/RCU/stallwarn.txt
    https://lwn.net/Articles/777214/

Next:
  - Ask around for advice on qemu debugging.
  - RP thinks that the underlying system has a problem:
      CPU or other overload.
    We do see that there are two qemus that are using lots of CPU in
    the links above.
    Richard says that the likely activity is:
      - core-image-sato-sdk, compiler tests
      - core-image-sato  lighter general tests
    Alex thinks that the particular workload is not significant.
  - run two qemu in a controlled env, with stress-ng.
  - iostat will help - Sakib.

3. Valgrind ptest results are getting better.

4. ptest issues are coming along, with util-linux being the next
thing to be merged today likely.

5. On the ubuntu-18.04 builders, we seem to see issues there,
    we dont' know why, maybe only that we have more of those workers...
    Alex, could you possibly get failures per worker statistics?


6. discussed Sakib's summary script. It's coming along.
    TO DO:
    - special activities: rm (of trash), tar, qemu*
    - report all zombies
      (The current hoard are due to Paul Barker's patch)
7.
make: job server
  - the fifo was being re-created by the wrapper on each call
    so Trevor will fix that.



8. From last week, I don't think we've increased the timeouts:

  - qemu-runner? timeout increase 120 -> 240
  - ptest timeouts 300 -> 450?




8.
   Plans for the week:

   Richard: RCU stall
   Alex:
   Sakib: task summary
   Trevor: make job server
   Tony: ptests and work with upstream valgrind on fixing bugs.
   Saul: (1 week) have QMP deal with sigusr1 to close the QMP socket
   Randy: coffee, herd cats!!


../Randy
