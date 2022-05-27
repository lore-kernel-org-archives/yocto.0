Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B096C433F5
	for <webhook@archiver.kernel.org>; Fri, 27 May 2022 02:44:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.3222.1653619468546271698
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 19:44:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=jilUhPiG;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=21468e305e=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 24R2YE32029212;
	Thu, 26 May 2022 19:44:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=QmUE2YreN3Tjcbqs12268k47GdC4jjOKy1aflPAnLsU=;
 b=jilUhPiGvhIhUQbXpP4g6nnZcNYvC4FqPp/1zICUQlE4F/uZfsGjjI0LoMSTO8qEXX9M
 fyBsfX1SQpD9bbWZb2sxz/WRejiQNwzem6Evy0QSK4Pe1gHHrpMu8tvudzjNmGGmdcc/
 dKoy3rWE1h++6gZkdifRsDQuIVlb2ZGwpSMo/b8NTzq0mNVpwf3V31zh+KIOd+5isVa3
 vvo402ZzmRM8Afe+n23xBH1VfFky+A8WCstoKhCCrs5j1TdOza43q9v/YLwmjHcvLz57
 0hgvAcavhWFGWLOcxFK91wCG7N1ksvx5rwxMRNdTQw7dCm2SaYG76b9t5K19oPPci5Ye 0A==
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam08lp2041.outbound.protection.outlook.com [104.47.73.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3g93u9t1a6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 May 2022 19:44:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J42kT28+ywPBzngeCG9j54y1eGgU7DhzvyDCkDqHH2NeESqsZW5Y7Mihuf8OyEhJekjV4AsRBCB064Ay8FaJppoxvauNO9295EaUnrKLk7UhSiWP4q72m4XvZMivqxxcU+2rNTEo7EEvcvDBQWaYIFctAvGFAD/ANUzmAikcMGEQGhAVndNQvzaGe0qvrNqWHC3WVbjuTFLzkNdM9cHhUF27zJ2+v9sFC5Y2v08Zgi892REfdkbYzye+7jCtSWI5+uAXUSnL4NIY2Ue4KimtFTVUVLsADc6EoSmazFin7RJsFkmNKtcR6qr3Gq93OA8Ly+rhL7cckuyjt49K0KONRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QmUE2YreN3Tjcbqs12268k47GdC4jjOKy1aflPAnLsU=;
 b=Ufb5UbSqPE8pGGsu17PU/hSO2J3kjHJEl9666Eh7JhjCCBxfcNVPmkmeSDr9FcGrj18KiUzqw+Yz0n6QSjG7PPhqNYbqx7s0rJv7yHUa4088rdEQiqZJaTgE94dOgWBZ5mlxnWBXtbRw0NYCQTMu3uSWQbFq7Fz//i7YqUZMIjun8vvtsYbk34X+QCMq/HvytE2eW/ws76N2EkB/2V6+HkOdZjt1NfbFCJCaTHg6nYKXO85ey16IQN93cXDd4v0NS95jtTdVjC1PbUcOiAU7dQ/ELXPNcrKm2dlyX1Y+qyR2LS54czJ6RSjii+F6YNU/kTfRPBwG256r0UptzRJGhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CH2PR11MB4408.namprd11.prod.outlook.com (2603:10b6:610:4a::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5293.13; Fri, 27 May 2022 02:43:59 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::7cb0:dc6c:b2b3:b69b]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::7cb0:dc6c:b2b3:b69b%5]) with mapi id 15.20.5293.013; Fri, 27 May 2022
 02:43:59 +0000
Content-Type: multipart/alternative;
 boundary="------------VfrJ0OfczeGnffV6odo7npzp"
Message-ID: <fb1f5060-74fc-1210-3546-1e329f4f553a@windriver.com>
Date: Thu, 26 May 2022 22:43:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 5/26/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        ross@burtonini.com, Saul Wold <Saul.Wold@windriver.com>,
        michael.opdenacker@bootlin.com, valery.chernous@gmail.com,
        aryaman.gupta@windriver.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0166.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:f::9) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a1627082-d7f4-4f43-ff48-08da3f8ac065
X-MS-TrafficTypeDiagnostic: CH2PR11MB4408:EE_
X-Microsoft-Antispam-PRVS: 
	<CH2PR11MB44083E74D14771B4EE8E0093F2D89@CH2PR11MB4408.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WoJzYxIwY6etMrYJ+zKx75jjGvbGHf5vWk/q9pIS+2N2s54JmknJcucpFx2U+EpT4AjxPqUCHMM81+lxacG4CUYx6RClT6Rx3d0seuerB5itU9jBF3Zw73fRZNrNkdzI/7xS6bwZpzjRAAnZ2zIFgUSCSBDrgGAMBccCr0ORB3xRei4mEOJqrm2TGO0tnywolbynkJsTtsqUVTh691OUlWPnQ947IeknK8W2FW5Ke+zhLfrzqCwR+XVxghbA3urdCuwspviQKXB4DK6Dpre+j24pqxdszMIAIeqz3JqQE3mkJXnhHpTWB+uAPBURObQJK++lKKfSAdQy4sNAfnAmkF5tdoXPP6ti3ckaqmhDikHFz4DJtdm/+MopK37aHy36kIlWaOWdHgtPMkf4p60PrmVDdgMJTtVUoJAV8dJ05GWjT+WB1Qfb6/JKs6ae1Y8mNVH1IYApYtLlmSUbqrxNwT4aAv0ysL1d/9wKnimFVRByogfnBhGrz2VxXqx4wtd42KqCRfCrlxT0W/WhFvuzPhtjtri6frMFj6537mWy3sZhS53LJvfOAkM7v5j4/FHdwc0bQaIIuhxI04CTWEBv7Bmq71OtPEYxYRjfI4TF0h294wen3InvXf+ABr7i2GB2roI0EdK8+YfaI/lZa3HFrIW+A1NcVKL5SPGOpUUlk+sOT/BlieiyPaxe+IY9AvlWu7lIY9gSTBXfmgmnamib48+wDgiGUUyJxpK3B8w76cOtiXqU+FZdCxsZhzBLOjeH8N5cnkj+QsqODe3Ti4WGqx9V8XT2h/eWDnq6ZY0MDB3AIxjTjUThGz4x9w1Pk/RBZwwBgdhNLiULO8rYAC9793yemHAXIO86Y8u2hCVRyds=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6486002)(966005)(508600001)(2616005)(26005)(6512007)(186003)(36756003)(31686004)(31696002)(86362001)(6666004)(107886003)(44832011)(2906002)(5660300002)(38100700002)(6916009)(38350700002)(52116002)(54906003)(316002)(166002)(6506007)(66556008)(4326008)(66946007)(66476007)(8676002)(33964004)(8936002)(7416002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?akEyN2pKT2F1SWtEMzNsMk1YdDhnaEZHRDBSdHRGbEFtZHB6M25Ud0cwd29I?=
 =?utf-8?B?L2tvaWpTM0Q1M3FzbjF1OHNCMmVqSHNoSG9yVDlnQzV1dGs1UzJWVWMyMkJ2?=
 =?utf-8?B?VFE5MTllVFE2TGN6WVNHMTl5a3YramswTm9INlJhTkx5dkYzNjRLVkpwMU9z?=
 =?utf-8?B?MUJpS3FKclJSeDJ3TnI0WW96TldHSUgwUXFaSWlTVXNWcnNSRlI1aFdmWmVI?=
 =?utf-8?B?ZHdSNFVvSGlFYndHdXg2N3dmWnV6dzJ2MmpDT3RjeHV4ZTBxc3B6TUhaZzRP?=
 =?utf-8?B?ZW9pMEQ4RkVxWGNleWVyb1ByRFVSWlRmYVRJNXdEVXJRclFiZmRRRFROaXdt?=
 =?utf-8?B?U2pNVlhOM3FjdWtST0krKzEySTYyblF0eHczVHJ5VCttMGxkQ2xrVHpraG5K?=
 =?utf-8?B?N1ptVnJHSko1ZHM0SnBGYzFsOFFMZGJkZkdwZE05TzJlc3lERnFZYlBpMkI5?=
 =?utf-8?B?SllpaUd3SjFXaGlneUkxVllxbGVLYUkzdlVNbHhGMGtESk1ydEV4YUR3aG9Q?=
 =?utf-8?B?aXd3b3NaaUR4S0hhcUVPeUhmd05rdXdMY2ozakVMZU1kZzh5SzZDd1Bra3Fv?=
 =?utf-8?B?Y3dFZDg1U0lqdUZFOXc3S3dxbCsvaXFRa29DanZhcTBNRTdBQnpBOUxnYkph?=
 =?utf-8?B?ejd2bmIwQWloL1RKWlh3WEptREFmSFYvTmplS3RrQUJrYW1NL0xoYjJGWXMz?=
 =?utf-8?B?U0JQZUdzWENrZ05jZnhmS0VZamZrVmsrME1NMm14QkEzWklmMVZMYi9DWUlP?=
 =?utf-8?B?RW1SSUd5NGIraDFFbkE2WUlJdnR2c3hFM20vU0tzek1kMjJaUE9IN0s3bVJz?=
 =?utf-8?B?cTlZVTBGM1p3S3BKNDFLMU92ZStURWo1MTBqblZyN3lyK1MzMkRDTG5ReWJV?=
 =?utf-8?B?cE5yMHYvRkVvT2hEd1k2T1MzSGdrWGFzNUlHQnlqb29NZVVSRGhnZEI3c202?=
 =?utf-8?B?OC9NQmdUcmxvRnlXUFduSzRWVWFEb1pDQWxPSzk0NDVZVFkvck9uc1FEcjFo?=
 =?utf-8?B?MmNLT2lFNkZYTTZadkFQZWRWT3VYNXlDWEpKVG5za2tuNVBrcFYyc2ZwZGZQ?=
 =?utf-8?B?L3RiK2VYYUpLcUNRYkVScldjM2xYQkdidGpmb0ZxWkh2Vzgwa0g1WlU5dGhy?=
 =?utf-8?B?Wm14d2hycTduZnJvMG1YZlJBS0c5R1AvOTMxRHlPcnVtTVI0enJWWWlmVGxp?=
 =?utf-8?B?RVIzaVhPeUNXSWlPejBPeFR3ZXJ6Q2RYV0dsSGhHeDZlckZYMTRuMDhmQjVq?=
 =?utf-8?B?WDNBbkNBM0p2cWdXQXNUZ2p2cHByS25kOStiOGtYN3lZSFZRTHVWZkhWOUNk?=
 =?utf-8?B?dkU2dUg3V1lQMWVCbkE5cUE0emFUby96bmREVW5LaEJYMXd1dVRqVmFHNzJt?=
 =?utf-8?B?THY1YUZsK2MrVnNKOWNPNW9vSVN6NzhNT2ppNFZUZGZRcnFRM2lnZmhEOXQx?=
 =?utf-8?B?ZFkxN1dQTkJzY1FkSVJ5WkxadUg2TjB4Ym56TDE1aGtra0hMOG5naW96L2Jw?=
 =?utf-8?B?SFd0ZW5Kcm5qVTlITWVIT1dVSnpCVEtYKy9TU1VHVnBram9SNHRJUExjNG5l?=
 =?utf-8?B?dXNWSEJUOG5UcmRrRWVRVE9MQzVzWVVRS29CVmNJc1prTVZBOTByQmV2OWx4?=
 =?utf-8?B?V2Z4OVIxcXJ6Ti94bThpQ2wveldDMmdwaTBKOGZLaTBSblBHWDBkOXo5bGtY?=
 =?utf-8?B?bzU4VUhXc3UyM2gyMVRVTzRYc0JpZGd6VWd4TTc4eTBqQzRUbVhiR0FselFD?=
 =?utf-8?B?R21QS0ZPYXp6U1djVmQ5QU9JN2pXVDc0cEhNQmlmdWhBSDJENURqZ0FyK2la?=
 =?utf-8?B?eUJrNDYzbVIyR2FhNkdYSGZjVjhXRGtobnVDS3ViNk52OGdyeFB4aDExMjl5?=
 =?utf-8?B?TDEyNWlwNDVmSG9xOXBEZnZVcTYzclk4cFl5QU1FeEVtUzZvUGlEVStpOE80?=
 =?utf-8?B?OXYyTDFjZnN2bFNZK2hMMml5YXBpSzVQSUNXNjNKM1Y3MWh3S3ZaTmxycklK?=
 =?utf-8?B?ZlFkL2wwbVJmYS9hRC94ZEVlSnoyKzdvZWYxNE9hek1MSEw3WTFlMjZ5VmZz?=
 =?utf-8?B?bE1ZZFNMaXB4WVhlZ2JWN3FsSzFCNzVmVTF6NkI3eDZMQTJzU09qY1FLWHFS?=
 =?utf-8?B?VEE4dmx5SzNpUm9zam1uVmN6TXFyN0FwR0kvYlVHOHFseGgxQXRtZElmWmNP?=
 =?utf-8?B?cWpyZDNkNWg1T0lMUmFXenJjTkdNU2ZlQzNIbUVzNWZ2U1FNSkRQNFE4QXV1?=
 =?utf-8?B?ODBHMU9mZVp4MDVkQStqcGhhVUZIUzJhQlRXS1NhbGVJMk1ra2hyRVVuQVN5?=
 =?utf-8?B?TlJqVWl1OW9hTlA1NkZwVFA5bWhZdzVjNXZRZnZsa1Z2cEhJWXhxVFp1NzNr?=
 =?utf-8?Q?Pe+EhOH3TlLKqz+4=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a1627082-d7f4-4f43-ff48-08da3f8ac065
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 02:43:59.4949
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 uRevjN9QhnSHCS0GhBOKNvX42NrmfYTneBqUzp97ivqigzQDF9MPO1XdbEI5kuglTIH/2jPrIAbCBVYxRktlBbSFE0fIj8+77vGa3120qvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4408
X-Proofpoint-GUID: nTIJ867JAwsK_byAt_5OejXHwKRc3YJv
X-Proofpoint-ORIG-GUID: nTIJ867JAwsK_byAt_5OejXHwKRc3YJv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-26_12,2022-05-25_02,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0
 mlxlogscore=738 phishscore=0 mlxscore=0 suspectscore=0 clxscore=1011
 malwarescore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2205270011
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 May 2022 02:44:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57199

--------------VfrJ0OfczeGnffV6odo7npzp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard, Ross Burton, Steve Sakoman, Tim Orling, Pavel, 
Aryaman Gupta, Saul Wold, Stephen Jolley, Luca Ceresoli, Jon Mason, 
Joshua Watt

*ARs:*

N/A

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *74 (Last week 74)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *47**(Last week 48)

*AB Bugs: *50 (Last week 46)
--------------VfrJ0OfczeGnffV6odo7npzp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard, Ross Burton, Steve Sakoman, Tim
        Orling, Pavel, Aryaman Gupta, Saul Wold, Stephen Jolley, Luca
        Ceresoli, Jon Mason, Joshua Watt<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>74 (Last week
        74)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>47<b> </b>(Last
      week 48)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>50
      (Last week 46)<br>
    </div>
  </body>
</html>

--------------VfrJ0OfczeGnffV6odo7npzp--

