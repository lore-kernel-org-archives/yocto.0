Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4963FC433FE
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 15:28:33 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.11838.1647530911715576629
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 08:28:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=EQHI8P+b;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=0075e80d06=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22HBMDkn017267;
	Thu, 17 Mar 2022 15:28:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=uPyteVw9zyuZd9rugdstk6GAo7pbgex+q7vZoCli7ss=;
 b=EQHI8P+bGtmDdlNEa4CcLWFHlilAr+8bVFEBfwR6wi08vQP0F/L6+MzqPOvZLO1A1pnD
 KXxd4Emh3l75k6VfGR955aHQXDYEjOGXe2YTrptI2FWBgkE53+5bPxfC62S6Tq1rxg6H
 +lyhdnoL9hwDLIo9jUN+gyAp9zqpFCFjN4ATZZxSV90UraCoiVdtTya/x9OZsF+sHtj0
 BHmpHy+0rzkV7k2pEAjx3lxSsCT2TZa4MZostQGMPLSvRpG5gxiX7cVdLYGIO2EI266L
 bngyVC9emKl6Z/owDvo+/WzBHKzS1Grwv8M8dGev5+/fcen2pb0D4ePjA4EB8Dw15WHr 1g==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2105.outbound.protection.outlook.com [104.47.55.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ergr0ckkg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Mar 2022 15:28:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gUPR2M1pcCCEkFy16m/wb/0LjzmtQVhriGrAXGXbrykXr1K+sTkAGqGzC1P/hvUWAD2pAuIzCU0Ibsos9bCb7WBppAIPcKEcipS7STPPaZk4A1+cNdd5gkYfeMWWtosJros1zXU05vFsGAijI0UiNUv4xv4FsaWMvFOJzSQZ1mhiRPfGFzK8qteXg14xCN6fu8A/z8m728IzurZs/YXPIE3SvMla3uw58w01WQSIa0uFXQ0lgjZ/F5t45dCdbfVYAaoQuXRiduVk3G9fdIBC5q7uhCEGOLfFgnF5kQDl7VXucgH/k7ExwqJS2SP512+BcgX9DPcuBgD6XOywGDjWLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uPyteVw9zyuZd9rugdstk6GAo7pbgex+q7vZoCli7ss=;
 b=A/JzliKrPLGvF4pg7+AwECRgBtm6R0HBLamm/ofRdWhANLsGAzEUg02a+FDo7Q0YbF7vgA3GRSBaGRYYIpyYyfDW2TEvSXkjET7x16duFiC6vr13OmcpzRETMoEQFYdG74MwZzBu9CcpsWYd5GDkt2BjgpJ/nJCdz3807Wop9Ey3Q8cR7Hl12PPUzqpDKlYPCzGPXAUwG7WAo36Nc3iP/8Sr7NrAVfHYROYVl2mS19MTqoolzW5k5UvsT9MLwrwXiM3Owqx1beG84gH+S/z3uZu//QADLfQ+Y/jxDT18SAWSKSf/8vSBXWAGIU8k7JM8qveF+b4MoM4QswLfKrKswg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by DM6PR11MB3034.namprd11.prod.outlook.com (2603:10b6:5:65::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.28; Thu, 17 Mar
 2022 15:28:17 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::c1c7:209:c28f:67dc]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::c1c7:209:c28f:67dc%3]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 15:28:17 +0000
Content-Type: multipart/alternative;
 boundary="------------Rs2cXVmNc04kwB4fBEUePgfe"
Message-ID: <42ef1ee2-5b9f-d619-d9a3-a14de3cab0eb@windriver.com>
Date: Thu, 17 Mar 2022 11:28:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 3/17/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        alexandre.belloni@bootlin.com, luca.ceresoli@bootlin.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        "Wold, Saul" <saul.wold@windriver.com>, tim.orling@konsulko.com,
        daiane.angolini@foundries.io, Ross Burton <ross@burtonini.com>,
        Steve Sakoman <steve@sakoman.com>
Content-Language: en-US
X-ClientProxiedBy: YQBPR01CA0036.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c01::44)
 To BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8db1f9ae-9e75-42a8-ea47-08da082ac27e
X-MS-TrafficTypeDiagnostic: DM6PR11MB3034:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB30341C581C47BF13FDE4E6BB9F129@DM6PR11MB3034.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wDcqkpPy2hNonT5W/VTfhAIIvx9A3ELiHEHyWmKEfI93PC4N11ZstS3Iqa7dgANP5XDuhFMbq8gPGCCgP5d1zgCDLRkeFtAVYi8qWQoemPE0oLIQL6ZiR6dhPWryF/IhLhrUa/mZc6g71OPuIQny8TwR54fery58i3vYjNXSVbju0RPFtpRGL1QibakIiKNaxyyDLIC1s4TNCQ07IDoioxnZcn74k3ZXD+MFJbTHIjwBToif6HNcjXSDKWrJ+ZEWuRrQ4yT1nENt/GsN43VIc1EpoVlgsnfHkvOCuH53xf3AijJyhCnnkYOCl61Cw6/D9GpnolEf8mCJeIWB8jXNEhsqhIQ39IQu1NKmYnGFMLNM9dkLj0IIuzlsEeKRFSHaLxCUFmo27inr51+JCr2JewNG2jFqKQNfmwceFX6C2n6jawYo7p3sbU1Zbpw9s+JtLwDcB9Uu7FfrN9K6Rw4IB/oj/ZRdtOPPdC7RIgN9TzTr9dMEzwRkhwOStDV79qYtVD6gnLJjWBa0j5RLStH3i4hA0On7ggJF56zr/DmHWa5lqiUfDcYW+UfskNnvo3lzCUV/W1MDkgHpvtA1L3+kRFg4grxoeCc03QyY2wi/HcnHwiuwbUkJvvnwxzUKHRm+kugAx684Ydi31QQF8pT/68BXSKa/d/tq5fqr1A1aL1k0vHRtA22UQPbrqUTNmeq3KHHDCf3S0WVxV5gMFMsOwlFQim5MsTutRW5QAKgwEhFIYiqwvPz1hCnjFpL9pRsoG2FBljoPi59SACb0y0uQfHjKQpsUV2Oh3RKIKtouHQadYwjJPPsHWySl1wW8rYSx
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(316002)(2616005)(4326008)(66946007)(66556008)(66476007)(186003)(83380400001)(508600001)(966005)(54906003)(6666004)(6916009)(6486002)(6512007)(86362001)(8676002)(33964004)(6506007)(166002)(8936002)(38100700002)(36756003)(5660300002)(44832011)(31686004)(2906002)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T2FoTWxlVHo3THZYdTdvOVZkekF3MWR1ZE10OUdnNHFlNElpL0kyT095RmRR?=
 =?utf-8?B?TmM3bWxRZmlUMmVidlVTejdYNEVJd2E1UThXYW14S3BvOS9SOWVHUm5TMk5G?=
 =?utf-8?B?RjIvYmlhNDdVZ3YwRysxT09GSERTcytaaEp5MXpLM0tOMlltK2c2U3FMNmZL?=
 =?utf-8?B?cC9WZDJKQldNWCtucmlRWUhnTVJKQjlVWEo3QndlelRuYlc2RlZwSm8xVmdn?=
 =?utf-8?B?bFF4eWtxZTVnRUV4aEtOWnhVZDFFVWRaL1VpZXhGNFhDSnpORWRRbFdaSVp1?=
 =?utf-8?B?eUlqYjZqcDZOOWh3NHphUFl6RDBBWEZsbjF5TWpVSjZVK3RvcDdRaWRiRDV1?=
 =?utf-8?B?U3lOajRaL0creHpmRVgwR3BxSWgreklWV29Qb3QrVjNMWmpNL1hlS2YvZWcy?=
 =?utf-8?B?Nlp1MmhNanlqTGw3MTRVd1Z1QVZTQ3lNTTJUYUFUc0ptVWMxdkwySVhXT0hV?=
 =?utf-8?B?eDd4UDZ1N25GU0hDWjUvTWVVL2ZlZ2J0QjJIYWtEMGxRNG92ZG5FQ2Vpa0E3?=
 =?utf-8?B?MWEyRFpkc3FsZTVJdGl1bHhQSmR0SlhvSkJYUkxYQjBBejg4eDFUQnZ2VnNw?=
 =?utf-8?B?Z3gxeU5UeGZJUUNEVE9TZTdHUHVXUU1iSVBOVi9WT3pzZXZvM04vNnVyY3BC?=
 =?utf-8?B?ZjhBODVyWlNHNTVVR3FJMXBNOVJCeVg3ZnR2L2dJdDA3aG43ZXFobThjMER6?=
 =?utf-8?B?K09ja01HV0o4RE02Nm9WUC8rb2JvTFZaVHQ2b0xJMFpSV3VoY1E4RnN6OEpQ?=
 =?utf-8?B?aXQwQ3VhZjNTK1dqNnZDcHF2dUkvelFLQ0dlaVN6czN1VDEyaEdrb2lRcFAz?=
 =?utf-8?B?QXFGSjR6Y01CY05aZDNxN05hYXlkTzBJZ2RsU3ZGdXRpTFcwdHJseUE0cTRW?=
 =?utf-8?B?MDNIUHNHLzFOTDNNUkNiaHJiZkh5ZndrV3B0SndIcWc3MVB6RFRoSm9RRVlD?=
 =?utf-8?B?TSs5cWhzbU1kNDRHb3V5eGhkS3E3VmdQUlVpRFd4QWJoY3g2U0M5Y3FvNmU0?=
 =?utf-8?B?RVZXbnhLWXEvbWswR0pnZHVRNVhWSElLbDMzSmozWHQ4VDloUlR6TG1QMjBK?=
 =?utf-8?B?aDJqUUlFSTVOczl1SWEvR2J6dEdCZ2VkUEtoc2xtOUdUSDRadVBCNlo3WmQx?=
 =?utf-8?B?bTNlRWh4VFNuVWswV2VwcFB4NndMa2puN1dCRUs3RlVCN3V2SDVRR2s3bTZm?=
 =?utf-8?B?aHB4YUNZZ0xmRUF4Y1haRkI3a3NXb0s3UzZLWmVXY3N5WHZ0YjNZRXkvRzZj?=
 =?utf-8?B?bHU4clVSRW1uVUNSd0cwMXhMSnVMbEVHUlc0VnpHeWNiQnM4WksyZDMrZDVE?=
 =?utf-8?B?aEpybnZibWFBZitRMGVPL2YzVzByZDZWMmV6MkJGZlRUVEZYczE5VW5ZSlBI?=
 =?utf-8?B?Q1RMQnZjUmw0YzZwWW9jUHBDT0RCbXhzS0I2YzJvM2s0dklWK2FUQWgwTFNa?=
 =?utf-8?B?eVRiQ3NZQUNYWkIxbHhsVGdUaTR5NTBYOURYL0pOaGdMS3QxRk9mQTk4U3RV?=
 =?utf-8?B?VloxMkZkSExVaVRMVFFsejhHUHVRNHJmSUJjalhNdU9xSjJTMzZ3V0M3WDVQ?=
 =?utf-8?B?cXNMaFFvaThlT1VmVGhHR3BsTkEyRk43UDBpRVFRdnpEd1dHT1NYV0xyQ1Zt?=
 =?utf-8?B?L0hlNWtyOXZvUS85d2FqclZzNXExVS9QWkFTSGszcTRVNTN0cmNWRktubSts?=
 =?utf-8?B?Tmw5ZEtxMys3bURWcWU4c2ZFNDJMQzduWXNFUENZTEpYUnFBSUg4TlVDeXZV?=
 =?utf-8?B?TVRZbDRaU2xkUUhkZWZPQ2Ezdll3anVuemNmelJvUHI4NlR4cDdoV3Fwck1N?=
 =?utf-8?B?V29LanNNdjRvNWZEYUNqdzN6MDNyckhOOS9YaDFwK1dLQjNhbGVUUjFRclJ6?=
 =?utf-8?B?aEIyOHVEVUVMNDg0cUhGMmgrYjBnQlJpc0NuRXM1L0NaUjF0Y3FqeURteWYy?=
 =?utf-8?B?cjBncUJLQWx3RCt1Z3dFY0wvMUdnY0FyQWJvLzJsRU5iOWp6NVEraUYzQXZY?=
 =?utf-8?B?QUpXcGpadFJtcU81VXJReXU5MUROWVF1YVpQLzZWWEk1dzU5N2FPTG5yS1Mr?=
 =?utf-8?Q?Os1bTU?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8db1f9ae-9e75-42a8-ea47-08da082ac27e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2022 15:28:17.3123
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 fvdpluz8mB3fH7T4GgLbm3ftkIbhstTljWEmWGHyz6dexJtBhyP+Rv8QSug98WVSS/tGU2oxGSQOJxpCPoQoNsItQ+V//nqAPAz44VObFHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3034
X-Proofpoint-GUID: oDmPCfoPHsoDDzxS7MV85vxlN7YynKTu
X-Proofpoint-ORIG-GUID: oDmPCfoPHsoDDzxS7MV85vxlN7YynKTu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-17_06,2022-03-15_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 suspectscore=0
 clxscore=1011 impostorscore=0 mlxlogscore=924 mlxscore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2202240000 definitions=main-2203170090
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 15:28:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56481

--------------Rs2cXVmNc04kwB4fBEUePgfe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Daiane, Luca, Randy, Richard, Ross, Saul, 
Stephen, Steve, Tim, Trevor

*ARs:*

- Randy to move remaining Medium+ M3s to M1 (and move to newcomer bugs 
category, where appropriate)

- Stephen to create an issue for Michael run milestone naming script 
(3.6 to 4.1 and 3.99 to 4.99)

- Everyone to review assigned Old Milestone M3 bugs and move to later 
milestones


*Notes:*

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD. More coming soon!

*Medium+ 3.5 Unassigned Enhancements/Bugs: * 68 (Last week 73)

*Medium+ 3.6 Unassigned Enhancements/Bugs: *10 (Last week 2)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *72 (Last week 71)
--------------Rs2cXVmNc04kwB4fBEUePgfe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Daiane, Luca, Randy, Richard,
        Ross, Saul, Stephen, Steve, Tim, Trevor <br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Randy to move remaining Medium+ M3s to M1 (and move to
        newcomer bugs category, where appropriate)<br>
      </p>
      <p>- Stephen to create an issue for Michael run milestone naming
        script (3.6 to 4.1 and 3.99 to 4.99)</p>
      <p>- Everyone to review assigned Old Milestone M3 bugs and move to
        later milestones<br>
      </p>
      <br>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD. More coming soon!<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs:&nbsp;</b> 68 (Last week
        73)</p>
      <p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>10 (Last week
        2)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>72
      (Last week 71)<br>
    </div>
  </body>
</html>

--------------Rs2cXVmNc04kwB4fBEUePgfe--

