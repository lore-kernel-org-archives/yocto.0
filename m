Return-Path: <kiran.surendran@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B860C433F5
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 15:27:04 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.11012.1634225223621445639
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 08:27:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=cQBqwvVB;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5921ed8fbe=kiran.surendran@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19EEQRii017500;
	Thu, 14 Oct 2021 08:26:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=to : cc : from :
 subject : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=08NM9NIKENp8pjrH6BnKSRE4TnF0yzgWfYKZGgMSmC8=;
 b=cQBqwvVBOdyMQp0qo7dLwkD25r4vqtyE/rpi/Un28QnIluSWEGKJkzdkSBBd8IGWOtQA
 Tqh2USWFSK0wQhQ+iTZKtIp1nf6Q5awhbvAlEitGpUyp3+Gs69KURMH3DsHaxjmJKcPI
 OtzPaFiLbVZzZqKsKyPidYRotW/arTDHqaEjPoBJ1S7QNH5P8w2vZ2eoj8BiCWsJYo5f
 qU8w3Gri8vUw4A4t0BBR/aLe5r1ALb/YL3ZBlolAD/F1BX83p7/r4MlkUJ00x1LLYr80
 9VGGAn3zqaxkByTHNuWvKqReSEI8mhWql5dFUZa/sIEfRPvAacvGnz6Vizms5/5QHiHk +g==
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam08lp2046.outbound.protection.outlook.com [104.47.73.46])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bpbdq0k1d-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Oct 2021 08:26:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FJeuh+JHs8IRiObDsqwiZtDtgwlh7wzTnCTQc/jFWGANPSQbgEYTFRvm35ikW/ARuvraHMkDRLCJH1dPMPWnPrMPcHv0CnuLv0nJkVntZiLEwQPpO+I3cp/OvwA1bkzysyKgoMLH0DzxNOv1uMUOKeium2Qp63LWxSKNFDFWlGWvt63yh8GO3vKEyp/IlUl/+ejOx4Hj7IRi6TWWTkiVyDICk7xGD9V9AAqteUHHy16E5OCUjTQhwH+upOVYWbmx0sAFFL+jJuv20rAV1ONOnjYe0MWIfGyImHpzfCQ0zmrU+2rJLeAkFFqxf42lCEkkXGBlHuJRVqXpaXHl9JadfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=08NM9NIKENp8pjrH6BnKSRE4TnF0yzgWfYKZGgMSmC8=;
 b=EElWymyiptIictabVacBULnErpI0eNxi0foyPexXlcGhu/5mNtQHO5q9m8zKvKXlQqVICF6+pcu7gL1D3zl5cHQA0OfFED0S/WZEXnrpi7aSLpH5+oKnGPR47tDXMYDCrMPyy778/DuFzgTbWvbzCNNbw10wq8VdxtlzgmcT02VaKvjeApANhCsYT1X8OsHcAMPlr/8PUc/TkJKzJ9ZldAdczV5yBhiNbzdYIJ1jXTX00TX0fBW6gngO0/dltjcuxhwikGhjJHq5yU96mvgORPyelj18eKEGI2YNuTIWK4xUYthuOVLfKl2ioP2tIrGGibM8MLBf6Kyf38S4y7Qj9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4282.namprd11.prod.outlook.com (2603:10b6:5:1db::24)
 by DM6PR11MB2617.namprd11.prod.outlook.com (2603:10b6:5:ce::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25; Thu, 14 Oct
 2021 15:26:50 +0000
Received: from DM6PR11MB4282.namprd11.prod.outlook.com
 ([fe80::6181:1d2:89f9:7875]) by DM6PR11MB4282.namprd11.prod.outlook.com
 ([fe80::6181:1d2:89f9:7875%5]) with mapi id 15.20.4587.026; Thu, 14 Oct 2021
 15:26:50 +0000
To: yocto@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com, randy.macleod@windriver.com,
        timothy.t.orling@intel.com, Saul Wold <Saul.Wold@windriver.com>,
        steve@sakoman.com, ross@burtonini.com, daiane.angolini@foundries.io,
        michael.opdenacker@bootlin.com, sjolley.yp.pm@gmail.com,
        jpewhacker@gmail.com, david.reyna@windriver.com,
        kiran.surendran@windriver.com
From: Kiran Surendran <kiran.surendran@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 10/14/2021
Message-ID: <a9bc1eeb-89c4-6834-0732-1213d269009f@windriver.com>
Date: Thu, 14 Oct 2021 11:26:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
Content-Type: multipart/alternative;
 boundary="------------7D19B1C26C69C140002E000E"
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0109.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2c::18) To DM6PR11MB4282.namprd11.prod.outlook.com
 (2603:10b6:5:1db::24)
MIME-Version: 1.0
Received: from [IPv6:2607:fea8:5a80:ea0:cded:813d:2e52:6b5a]
 (2607:fea8:5a80:ea0:cded:813d:2e52:6b5a) by
 YT1PR01CA0109.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2c::18) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16 via Frontend
 Transport; Thu, 14 Oct 2021 15:26:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70f9eb62-ee52-49b6-28ff-08d98f270b29
X-MS-TrafficTypeDiagnostic: DM6PR11MB2617:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <DM6PR11MB2617BBC3348DFC82415B4D67ECB89@DM6PR11MB2617.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 1Pok0MURP+IcLRjEF7jSO7LGYMbVBn9saKDNZcVlLEuOzTCplb079QV6r4O9OZyq4eepGurQju0H3XL4FLNNB8D7ddi4C+NuLJb5jhqWOi0O3Gd++PiyVZUor7uj6gRpcRxShV6QX6pzXRYDKFNubxTF/r+Puj9qmK45ZwbLPVp1EaW2zIzvicBYFrBCdQLos3MJZ9yIwYPYAjjwMdqLf/+DmnUmy1zBdotBwv6vN23PnsTtFx/Hb4fZ2/cWa+coc4lgV3RFs/wwJPeUHrtNiL+R/ce/Wo+ry3c8J9Y63wo6rPyAdTWwVLlNBPr1KVllCiQzqU8bKZ/Xut2ts7/w6CXOukjEGIK5xIWcngZuTxzgopG3aeTWbSsCUX0JX1reCvf65E4Wf5Q0de0UiZNPVnYbPIQWwzJBP3NWG3dUFf+5QrrJ9ORMxdlJ8m9/nDUWgAOrBDpzMEh/Tx+YM4HaaAdzgq3j+Hjl2fY0x6bw4d6kIKSwZxPDUjzFBBxnbLZvTSyMypUIslNtDwcNL5EEEOXkPAEbgQ4NX4F0x9pxX0mOMKaw+TS/EZr9JW4uwvvq6dPJeT512+Mdj6Cd4n6pzK0azaW4l57eAvIkG+Dtyfh4I7YLc3pAWMVZSOr3a4oOilq6rZYufqkxj/RN4+qPmakqv3FpQe43IoWZIg/xCgh5XNoWdoMg2Emh76vS/dxVxLhhCk2qeYlUo7Dgj5NLyWEyOIL8uR3J/O6o7Q/8mteljCgoODzDf3GfrWhqnkF7vxTYbSp+alwKNqkc+NBuyO4tKU7LOK8bVSr4aCoBov8lZ7YA12NlrvxHJjiCL6u/
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4282.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2616005)(52116002)(166002)(38100700002)(31696002)(36756003)(5660300002)(966005)(44832011)(2906002)(33964004)(6486002)(54906003)(107886003)(31686004)(316002)(66476007)(66946007)(508600001)(6916009)(4326008)(66556008)(8936002)(8676002)(186003)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?NGx2VnFlUjhoejVOVER4WjBGa1JnUFVGbVFYYm5lNXduV2E3V3dSN3QyT3Y0?=
 =?utf-8?B?NE81MytxL3dqR0RBYURFc0p3K0NTUXZvUE05SnVJWDFwdy84QkhBRitKdVds?=
 =?utf-8?B?d2N1YnA2bVdGZGU0YUxKZ0NSTFZ2ejI2UnNyWjRiVDU4OWp4NFd6V2pOZTJF?=
 =?utf-8?B?Q3gwUnNQeGxzR3VET2VoU1NqT1AxVDYvSkdsSm92S1FmNUpmOEhYTTRScnlT?=
 =?utf-8?B?ZVVKeXloK1BLZUpGTWdNTmErQkZuTWcrSmc1YTdUMjFZTUdPNEovdDBzZVJu?=
 =?utf-8?B?dUU1SGRpN2grUUNTM05LZ0VkY2RXUDZqQ1h1clMyenZQdWV4cU5PTEhuMS9I?=
 =?utf-8?B?eURBUTYvVlZVU09IQnUyK1ppbmQxU08raHIrYXdDT0tTdFFxczdNTHpWeXZz?=
 =?utf-8?B?TjNvUFc5cG5ZczRvU2dMMGE5aGJzai8wREcrT2tkdEFrbUtsemJoVitvblJH?=
 =?utf-8?B?RlNuNmsxR2JWMkNieDRwQ1d2T2Fyd0RNcFBpeVB5eUdmZVlVbUF5ZVNSQmpQ?=
 =?utf-8?B?S25DdnRIL2kvSGEramdtTnpmR0FkLzEralFHbHo4NkNFalhwakU1SXh0ZUlm?=
 =?utf-8?B?V0E1b3I2WlhJdlhsdlpubXNHenFYS3VFa0laTkcwWEZxenNGU2FDZlpkRWsv?=
 =?utf-8?B?MzRHVXoxV1c4d0E4d1BiVXo1NmZHR0RybUxXRHlqbHBFRU1jWEtYKzcvOWE1?=
 =?utf-8?B?MmhHV1pOQXZPdmkyVi81dkpXcGdPQ3RMRld4OVdYS2ZmdS9GSGJ2ejE5Tjls?=
 =?utf-8?B?ZkgyUnlSQmlZdHdBREY5alFjbnFmZmplR25mbnhydGl3aHpXZ2c1RlZSdFE1?=
 =?utf-8?B?RTYyZGY1bWxSVnBCTlRsWUZwYmZNaWxlRjNQdUR4ajdidU9CeHRIV2Z3bE4z?=
 =?utf-8?B?ZnlDa0F4OHRaOE9aQzBIRnhRcnhCT0daOU9Nd2w0ZTd6aWdtVEZZUU13T0Q5?=
 =?utf-8?B?Q2VRZDVaOVVsd3FWM3FubWZtWXNlUnUyMkt6dG1yeFB2LzJGcUVrbWYvRkxy?=
 =?utf-8?B?UWl1NXFkSzZQcmliWTlWS0ZPcE1idmJYYzJUd3IrWS9DbzU5Yk5TRVhBeVVY?=
 =?utf-8?B?RDdGbGFzR1pWVlVrdDV1U3U0SjdWcEhKWEluL09RRS9wbWY0UWVPQm9leEdk?=
 =?utf-8?B?blpOZ0xUQjQ4cllNU1E4QW5YS0hVSmQvZGdWSW1NUE5weCttWFlVcS9BelRL?=
 =?utf-8?B?VWord1U5Z1RGMmhuTjFFZFY3NkF5M2NWYkY0dGdSZnB4SFdJNk9EUHhGcjVC?=
 =?utf-8?B?N2dqUkYzUnNRZXFnZmQvN1NFNUFraXFlc0VxY2JWZFF0OHVDUmFTSHFpNXc0?=
 =?utf-8?B?SWh2TVhSNnJaNTlqM2pIUSt1YzQ0WXMvZXNpVkVhQ2VGM20vaHNEbEE4dG0v?=
 =?utf-8?B?UHU1U2dIaGtXekhiS1cvbjI4b1NzaDhmMkdBUWlkazcrMnMvTkRvUnVyZC9Q?=
 =?utf-8?B?ZG5GRlJYVDdUYzVYa2R3cE9MNFVtZFRZcDFnbEVNaWdoMnl1U0haTERIdzhZ?=
 =?utf-8?B?SWh0ekxoNVFSMTRScHVMME1WYkU4MzdNbk9zMnVQSCtuWDNua0Z4QlV6NVR2?=
 =?utf-8?B?UmI5c1NsUWlod0poRnZtZHlBOTVnZXR5MXVhYlR4Rk42NUR2QUFQV0srb2Fm?=
 =?utf-8?B?NTN3M2c2aXludlNaekZGUnk4TXMrNDdMUy9rRjFOUFFXV25MVXIvYlg5S0Rm?=
 =?utf-8?B?dzk1aTY5U204bGRuVktqMHp4c1g4ODYzc3dOc2lxa1RjNEkvWVdUMHVuUzlt?=
 =?utf-8?B?SU9WM0l3U1VRNDZZU293ekZFS0FjTWYvLzJUWTlzdnlGdFovL2tVK0Z4bVpT?=
 =?utf-8?B?Um1VL0RQMnhVNmlTL1F2enI0eGh0Tk1rMVlVRjJPZC9KU0lPZ3A2dWhhNm9K?=
 =?utf-8?Q?o6fFC0z0lHhGl?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 70f9eb62-ee52-49b6-28ff-08d98f270b29
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 15:26:50.5228
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 8jh8Qk/UBjy4crzbmbIxFcCFUMo5g85Ej2aTe667Om8AB3cEDyhczc9WrXLCDrmY3aiQ1WJlX356KeDQ+thwf6XXpqLHZ0cXl8QVwwRDtxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2617
X-Proofpoint-ORIG-GUID: g1b55QCtHr94iAwJhgyRxkzhmydQ7101
X-Proofpoint-GUID: g1b55QCtHr94iAwJhgyRxkzhmydQ7101
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-14_08,2021-10-14_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 mlxscore=0
 phishscore=0 bulkscore=0 malwarescore=0 mlxlogscore=571 priorityscore=1501
 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110140092
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 15:27:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55072

--------------7D19B1C26C69C140002E000E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Steve, Randy, Bruce, Ross, Richard, Alexandre, Tim, Joshua, 
Kiran

*ARs: NONE*


**Notes: NONE**


*Medium+ 3.4 Unassigned Enhancements/Bugs: *68 (No change)

*Medium+ 3.5 Unassigned Enhancements/Bugs: *12 (No change)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39 (No change)

*AB Bugs: * 65 (Last week 64)

--------------7D19B1C26C69C140002E000E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
    <p><b>Attendees:</b> Steve, Randy, Bruce, Ross, Richard, Alexandre,
      Tim, Joshua, Kiran</p>
    <p><b>ARs: NONE</b></p>
    <p><br>
      <b><b>Notes: NONE</b></b></p>
    <p><br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>68 (No
        change)</p>
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>12 (No
        change)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39 (No change)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs:&nbsp;</b> 65 (Last week 64)
  </body>
</html>

--------------7D19B1C26C69C140002E000E--

