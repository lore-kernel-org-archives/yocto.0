Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3392BC433FE
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 16:29:17 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.12528.1647534555570713446
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 09:29:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Tf3/XzLJ;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=0075e9f39d=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22HGHRTX024924;
	Thu, 17 Mar 2022 09:29:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : cc : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=tQlwyqOgFNt2l5il+809YcInDkvjsLnp1m7+mA8aSbA=;
 b=Tf3/XzLJtMoSZ/ZsApKZoUCjBSioGOhV1DsLh7PztBIrexy0+FY7CdxnNfaengdBhFk3
 YqFQWfWBvzNOh6S0XtPULoHjxWGmtVDTpT1dvod/bQ3/4sjKWBYyaqDmuYUMLzvBiK9P
 e7k+vfEugRG+Ihi5JSiLEuCeWL8qTS3++l9apIyicdULklCMwEV55hdjy3nWEmzylkuq
 pCZtPky2xDPda/mMVGran5lt7ZVTZFMnQGdvja9P3Rxz7/NyAEAMGLo152SFdSHsFANz
 L+uvq2VA6JO0O1UggtKlfdnx3Lnj5XjT3Zh51OLWNqFLeZEAZD+pZPwqePUPPGlaWTYM jw==
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1anam02lp2042.outbound.protection.outlook.com [104.47.57.42])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3erqp9cfnj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Mar 2022 09:29:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X7ZBdFcXi2aq2xuOH9ue5e2E7/YdgMSi5LpP2gCLOpJqGnLWcyq1GN9OtTUcpN4zlxsz8A2cmtSx8MrzWwqUN9IOoqQqMTqkxcdp2SBNbW2W958vKf2BexpxqbvNxzNjxHl2a4V2Z4kwt9Zq2KjKDxbKcolGCydtrP1czDFzRcCv4v5kSmH40t3I6AGgKLLT8pZytSFt5WAnZ3AXtG+OPmKQ9SvhRds2cF0J9XFFbdZr2gik5PkO1HoWlcpWnHgwP+Qeymau+s514ggaohz9+r+PiiO6EoqZnkNxIDF/L6bIuWOaRa372gMaIOcOIBPlILsLSKHXGzyoFALBU2rzHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tQlwyqOgFNt2l5il+809YcInDkvjsLnp1m7+mA8aSbA=;
 b=NCWPBSo19EUDIdvFYwZgWnnt2BH0cKt3FDDMQwxyeTRo5UVCCvWmtZxwvXMOINtLpZJqzDccWYpHMqlhxGXEkv97YQpHurubOHK7AoEdXtvSLqyQj2q515k6eiy9lnfZO+BiAlLUc70XCJEGsgUtUcPHYIeYuLzrrglKct/rSVLI0qTEzLyummbeZcN2QvnxzAqgcIVAwsjTiO+4n4Rhew3rhxuAITpvonz69dgBdjeBKyek01Wi1V6H38T6cHznNs39OrujFpnobzuEjhTLMKUIGnicItDqRHugX8vdNq130eAt20p9GqU2ioqFh6rBjuAzYdBOY/o5Xw4Soo1nUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by BL1PR11MB5431.namprd11.prod.outlook.com (2603:10b6:208:315::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.15; Thu, 17 Mar
 2022 16:29:00 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::19c6:8fec:7ecd:a91]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::19c6:8fec:7ecd:a91%5]) with mapi id 15.20.5061.028; Thu, 17 Mar 2022
 16:29:00 +0000
Content-Type: multipart/alternative;
 boundary="------------2EytPeCLI5yh0cwLaG1t0gSK"
Message-ID: <e95fe8aa-4660-1a90-362c-e76a8e2d42d4@windriver.com>
Date: Thu, 17 Mar 2022 12:28:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 3/17/2022
Content-Language: en-CA
To: Trevor Gamblin <trevor.gamblin@windriver.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        alexandre.belloni@bootlin.com, luca.ceresoli@bootlin.com,
        "Wold, Saul" <saul.wold@windriver.com>, tim.orling@konsulko.com,
        daiane.angolini@foundries.io, Ross Burton <ross@burtonini.com>,
        Steve Sakoman <steve@sakoman.com>
References: <42ef1ee2-5b9f-d619-d9a3-a14de3cab0eb@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <42ef1ee2-5b9f-d619-d9a3-a14de3cab0eb@windriver.com>
X-ClientProxiedBy: BY5PR20CA0034.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::47) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f193dae9-0a8d-484d-7f05-08da08333dc9
X-MS-TrafficTypeDiagnostic: BL1PR11MB5431:EE_
X-Microsoft-Antispam-PRVS: 
	<BL1PR11MB54318C1942F6F9DE6CF1B1A5F8129@BL1PR11MB5431.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/3Cu0/uimaRir+4n8J3O1XHd92V7nhc+oBOAC1PezE3H1adQOCRjha6JRCLSZFk/peivgXZaVhiaiWA/wVejxQaxYkrIigEL1m+3XHKgJwCOEimM2TlCsBd1OyCCBB6Ne5DbiQf32hKFnIOCkefz//P43s8mnEA1WNT5z4PVoOdtOlfqcrO0WiDtXLASr+za25RZNXOH860aSUpRV8Khcr5eIXvCSttCX/EFZky0XoWFrZoxc94wg+RqzI1/bGActJ3wqpWCgaiWLO1JQXNgXpyOrspgfdh0ODmnoqWIEaejFmgYBscM8e+8ZgZFH2kX1QRX31iDG83V1xG3O833++wTbjUQY5uSldzYqpfT1lOA48/uDp/4nIY43x6MAYfF1K/vVaFhy4asTx2SlXeLCW+HXkzOxGD2KYoVj+O/DOOp4lDX+vVPtf7SAkeafBBNsD25TXNYcO8pimZCnJacleA9sNpkkhq8GHiCiPhFy20Z6OXEfZRFgR9yAdNKvG5L9fgxoivIxFCHEUeidofLf3NACaKtix7JKjL0eLHWsW+qt1XIVk5KW0Got1u/Kkngybkiq3RBHXkqToH8zXqZG/ChTecPQlSmzt0K/6dxyg3EbLYLdydcD3FoyDWTrYvrNkRN4+fX76YGgwpGMtZNHhqOaTEjxisMJl7+4QcZTZCLf8bL5ggTXNkQQTcZ8247/aGIllBFAhdXqQEw6zSCFrIZiilplPllC31j0xYKDYhCrM/jXFizlRUUrDMgjra+EF+IjVztdUhDlQUCEylEAmovJo3N3HY3AaIBXRAgTZbz5eQzIzMWBPaUUzRTFCsuJw6oaJljEBTz7Z8oXuTUjgDdoQO1l1uhw3vnsLBjTIQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2906002)(508600001)(6666004)(8676002)(4326008)(110136005)(966005)(6486002)(31696002)(36756003)(31686004)(66556008)(66946007)(86362001)(6506007)(52116002)(33964004)(53546011)(2616005)(6512007)(316002)(66476007)(186003)(26005)(83380400001)(38350700002)(38100700002)(166002)(8936002)(54906003)(5660300002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Rzk0S0hnY3NXSHNaNUg1c3p6VEJVSHQxU3hHd1Z5dGFlc2wwZGJhaVFhQjhR?=
 =?utf-8?B?Yi9GcXlkQ1ZaZHJmUTNraWl4TkdmQ3R6dmVjT2JQT0FSY05udm9yeUVOOUNX?=
 =?utf-8?B?R2NGZGpzWStNVVJScEJpRWkreWhoYmJIT3l6TzU0blQvU1ErNnJ0UTZlR1Ra?=
 =?utf-8?B?NEx1T1Jyc3lCZGMvVkpObWZQN0dPUEZ2N2VtaGN2Y1Fia1crLzdBVGJQcmd5?=
 =?utf-8?B?Wko4bUpNdVdmS0RmakxCWGxISTlPOVpFd3NBc01Oa0lkQk1yVHdOTVZhS1ZD?=
 =?utf-8?B?Q3pQR25RTG9IcnRaUE0wWkxFTU5NMTRpTU8vaVpGSGlCc0ZRT3RqU1Y0ZGJq?=
 =?utf-8?B?eVRoRFBHa1E3b0ttQnJ0em40N2JobFFoL2hSK1hNK2hOUm5WK3phOHhQQjJ3?=
 =?utf-8?B?Y3ZXb0QybFRicUpickZiV1hyL3YzOWJ6dmtYNkRPejFnUEVhcTM3Z0Vlc0Ew?=
 =?utf-8?B?MjJsclZtNkNtV2piZFNEdkNUaUNHVUprTWFVVzNEZ3BhMEZBdnV6ZExlQXl5?=
 =?utf-8?B?ZEhtSm02QU9WeU4zMElLSS9TZWY2cVJ6QVVxbTJwSEV6S2NQSUpPUjFJMytn?=
 =?utf-8?B?UVdsaWNQRHh0QlFudVZ0d3J6cWttLzlaaTFaVnoxTVlaSlVHbDI1aVFVczhE?=
 =?utf-8?B?NlVTNll4cHlVdkVpQ1ZqZ01Yc3JoUWxheEs1SXFJMXJCN2Jobzg2N0lTSkRE?=
 =?utf-8?B?Um9ZdkxLRFltSm1LY2tqMmNUZGFPRG1BYkxzbUVvM0wzcGNRNktoNDlhbzha?=
 =?utf-8?B?V3ArR1ZZbjRTeHc3LytKa2RIUnY5dy9HS1hqRFFKYmVjNVRTS2NuandodHkr?=
 =?utf-8?B?UCtOWFMvUzhwRzF3VE1HNnBReWNDdy9Xait0cVNQUU50RkE5ZWVwQnA0cGUy?=
 =?utf-8?B?elNxQitObW42V2x6Q1RnL3BvMFYrOTNMNWdFUTFkT1VUeWFGMjk4eW1mTVZP?=
 =?utf-8?B?YnB0M0ZwQWVVUXFLZDVWdlU0VWVndFY0eU52bWdGYXo5cW1HVlNUWnYzZklJ?=
 =?utf-8?B?eklvMlFRRmI1MUtYOS91RVlQL0FRb04yM3dNL0xCdGI0cE1nMHo3R2taTUZu?=
 =?utf-8?B?NklQbkNNM0VaRWdnYndwdWtMRHQyQTB1dUh4dW9lQnFxRnFCTEhVVWhKQ2s3?=
 =?utf-8?B?VkZwbmNWTlZwOWxpMEVnM3pCejllUEdQWE4xUC9pN2U0S1lUbGk4L0pmdmpi?=
 =?utf-8?B?Q3k5RkluaFlueDVMZmZCSFZrc3o1OHZzY2R3b3VvVUloejBRN3NjVmoxV2VZ?=
 =?utf-8?B?TzlXY3d3TFdqRHdtOTJZRFNwdUV5MnZkc0x5U01wMUdLTG4xOUgzbWNPelZy?=
 =?utf-8?B?elR2cmFwWmh5QnFod1NxUDcyWk51SmFudEgzVEVKWXBFRlpNbVIwWlBseWM5?=
 =?utf-8?B?STdFcFg3SFBORzR4a0J2L2pvaGdZNU9QZDVBWlY4eUpwUkcwNWh0alpYY0JB?=
 =?utf-8?B?WkFFYTZDc2o5YmFaRkNQakh5UHoxT3Y4OTh6ay9xTmtQWElySjFXUHh0N3VC?=
 =?utf-8?B?cy95UjhyalU0MSsxNjhaeEl3bTN6a1R6QWYyK0l5N3h5YmRFNmV5ZWNOSVV0?=
 =?utf-8?B?VVloS1RzZ2U1bVZsK01hZ2pLaE1TbW90L2F1d3JoWk50OTVXVjZudGRrVk1h?=
 =?utf-8?B?NjFTaFRTZkZvcGU5c3dnT2pKR04ycUUrbmhmNktsa256NnQwbHN6TlhnUi9n?=
 =?utf-8?B?RlpvN0Y1QWJIbFVkd2pzRFZDZFlNT2JSMGxwVjhJZFQ0Tm5jVzhFb2Q5d0g0?=
 =?utf-8?B?V2EvSUg2RVBIZUxJeXRuQmwrUDR5RTlqTHZlOEFpckxYT21vSHpQR0xtTmRn?=
 =?utf-8?B?OFNBUUJxbkRvcm1seXA1bWozLzUzcWVUbGNyTFF5OTRYeGVwM2I3R2s3YzVz?=
 =?utf-8?B?Zmw3NU5Na0hGYmdWYVdmUkVqZmJTTmZlZmxGNTNFL2ZmMlFVeGxqVVlrTWtY?=
 =?utf-8?B?dzQraW14Rng4YXV2WGc5NG9xa1hIVThlWHQwWnFHVzlIUGI2NWZwM1NjYjN1?=
 =?utf-8?B?anpEcHR4QThRPT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f193dae9-0a8d-484d-7f05-08da08333dc9
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2022 16:29:00.1503
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 WaajCjmmMBbuHeRx0aj0p9RyANWJZfdTu5SAbGRoXiKRtJAVb+qfanDPpzXUhVbNA0hqY06VaizqNLOTYIi1AKGFgdbxgeNWG9tHlR4r6II=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5431
X-Proofpoint-GUID: WOS3dHp3IorsAgNWCHLLE0oh1RTGJeRY
X-Proofpoint-ORIG-GUID: WOS3dHp3IorsAgNWCHLLE0oh1RTGJeRY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-17_06,2022-03-15_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 phishscore=0
 clxscore=1011 priorityscore=1501 mlxlogscore=999 mlxscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203170093
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 16:29:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56483

--------------2EytPeCLI5yh0cwLaG1t0gSK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-03-17 11:28, Trevor Gamblin wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees: *Alexandre, Daiane, Luca, Randy, Richard, Ross, Saul, 
> Stephen, Steve, Tim, Trevor
>
> *ARs:*
>
> - Randy to move remaining Medium+ M3s to M1 (and move to newcomer bugs 
> category, where appropriate)
>
Done.

../Randy

> - Stephen to create an issue for Michael run milestone naming script 
> (3.6 to 4.1 and 3.99 to 4.99)
>
> - Everyone to review assigned Old Milestone M3 bugs and move to later 
> milestones
>
>
> *Notes:*
>
> - ~43% of AB workers have been switched to SSDs. Failure rate appears 
> lower, but still TBD. More coming soon!
>
> *Medium+ 3.5 Unassigned Enhancements/Bugs: * 68 (Last week 73)
>
> *Medium+ 3.6 Unassigned Enhancements/Bugs: *10 (Last week 2)
>
> *Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)
>
> *AB Bugs: *72 (Last week 71)


-- 
# Randy MacLeod
# Wind River Linux

--------------2EytPeCLI5yh0cwLaG1t0gSK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-03-17 11:28, Trevor Gamblin
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:42ef1ee2-5b9f-d619-d9a3-a14de3cab0eb@windriver.com">
      
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees: </b>Alexandre, Daiane, Luca, Randy, Richard,
          Ross, Saul, Stephen, Steve, Tim, Trevor <br>
        </p>
        <p><b>ARs:</b></p>
        <p>- Randy to move remaining Medium+ M3s to M1 (and move to
          newcomer bugs category, where appropriate)<br>
        </p>
      </div>
    </blockquote>
    <p>Done.</p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:42ef1ee2-5b9f-d619-d9a3-a14de3cab0eb@windriver.com">
      <div class="moz-text-html" lang="x-unicode">
        <p> </p>
        <p>- Stephen to create an issue for Michael run milestone naming
          script (3.6 to 4.1 and 3.99 to 4.99)</p>
        <p>- Everyone to review assigned Old Milestone M3 bugs and move
          to later milestones<br>
        </p>
        <br>
      </div>
      <span class="moz-txt-link-freetext"></span>
      <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
      <p>- ~43% of AB workers have been switched to SSDs. Failure rate
        appears lower, but still TBD. More coming soon!<br>
      </p>
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs:&nbsp;</b> 68 (Last
          week 73)</p>
        <p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>10 (Last
          week 2)<br>
        </p>
        <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
        week 38)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>72
        (Last week 71)<br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------2EytPeCLI5yh0cwLaG1t0gSK--

