Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44D7AC7EE2F
	for <webhook@archiver.kernel.org>; Thu, 25 May 2023 15:32:10 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.15154.1685028729910602480
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 May 2023 08:32:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=KIJUshJu;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=45092dd130=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34P9CbB1006296;
	Thu, 25 May 2023 08:31:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=jj1KabDoEuXDTmhVZcvaTtd29aH3Lyf8LwyXJ3G65vw=;
 b=KIJUshJupGrrztsyXJPubLaB2WEqtbXWmPeGMiRoVfOEQsv5VgnphACXEIaPnaUy7xNy
 enF0ifQ0+CEm1Xy/zkySt0TbEJ10+IijUUdBm2I7HehlPfC9Nn4IdMWFhvDQ0nWYTAkq
 Z+cSlLPEXj6n9vGj/kCHtX8U/+ca26znuI39hHnwjW9CjTWFb6/T9sKMI7xdBI/OYvoj
 YxPZ+PNfBb3Y79Z2sphJ9Iv4u6LQtodMN3oe6IjSjc+R1IjcQNMIgv0nyNWg1LmhI6H8
 zbBDGOfA7CnRmcqjUJy8QDbmBRLo+fMLMKlz8LVZyjJZgJZtvTx6KrCM9KZI8V9Do6I4 KA== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qpwqhcxex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 May 2023 08:31:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cwSlh1GtjxqE+puW6sXusnS1WqHSJVYYOxnUk3/t3etKhhp1HJ9LlhQ02RtvRNw08U1KjKMkwamrm1dVAuschRZwX0b1ypF2JlotRsFd4vaW7jhkkrjtKRFDNgdiXXe/nUDvDcRYEWKbGXlAdHl3Ccwo4E+bEelMIyyaXcNnbIefxvE5OFFab8cw3rV9kiQr36ImAa7FYG+8MlZ5DKaqP5sWGsUlf5ViZ3i/q3HWSizVGst17p6WDUru3Mm5AJl+ETWoOrL0oGrlU4Zgfn/QioABXrBxmkPv5RzBN6WBIfTXljqSaHFdiRNhKA7DH/WXchfGyCmxr0LcCKUqgzZGbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jj1KabDoEuXDTmhVZcvaTtd29aH3Lyf8LwyXJ3G65vw=;
 b=I4ee2AtEzrd3yHuQIvFRXRPgbbtc2Hm26U8QaN587sEhvEzTIYAPXRoJQnMIhFzCR33xJ04cidNaRCh4QK8Yves7/ty/C3+9sLUDVvVSHJ4HH3cmrVDqTzfkbDqR3fLk1De2V/zyVM61nnRHa0AcUic29NXqmEw6HYmEHFXgozIU3E9tLwjDOv731M6ofNIlyDeHGKiuFh1qKhXoAz2rZdX5LRBsajfTSGh61c2hcEXmT+H7HXzhEi4HtPUzcdoLEGPZAP0YdGo6v9pPU2+dHqGZEqakeX/nWmfrUsnJX3NJi8wi/jJ3opSQvEEIilUz8LYxZtTfyHB2ttkvCFjg7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 IA1PR11MB7342.namprd11.prod.outlook.com (2603:10b6:208:425::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.15; Thu, 25 May
 2023 15:31:37 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::61aa:b66e:fce4:b592]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::61aa:b66e:fce4:b592%5]) with mapi id 15.20.6433.016; Thu, 25 May 2023
 15:31:37 +0000
Content-Type: multipart/alternative;
 boundary="------------RNmg1dCqfHsVPfCWR0NgDud5"
Message-ID: <e452b38c-dc36-920f-3ece-66ea7d8420df@windriver.com>
Date: Thu, 25 May 2023 11:31:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 25/05/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, Zheng Qiu <zheng.qiu@windriver.com>,
        pavel@zhukoff.net, tgamblin@baylibre.com
Content-Language: en-US
X-ClientProxiedBy: BL1PR13CA0283.namprd13.prod.outlook.com
 (2603:10b6:208:2bc::18) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|IA1PR11MB7342:EE_
X-MS-Office365-Filtering-Correlation-Id: b2391a04-d496-485b-94fe-08db5d3520cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4S4mow0hyiEOJLf4XUjffOUwexgpZPwuXM1PJ3z5a3v7ntCekIriYxkzTYkpyYhRH3MDQpJpXzs7bnDsjQkfD5AsRzddlsrGuClz1iwlJzMYi+9OUE05uxt0gqyioqqN8KbADbtU9QyoNoxEz0jmv8dSHIy/676out65orjeZQZm8iZeXJr0FwhsFzJofAO8nBVLFovDg+0TWKqvo9iof7RekCCqrbExjiH63jGunDD/LmuDsWiGclnUiw2Uho5Fem40XjiYm/5tFWaHtq9idKzue8jmWsLwbI3i4FKApEn8oAgE1Zho/2qr75lsWH6Vp/vUsKmMp82g7A764J8/fhQBmhhxRIFQCjF7i5+2evseoXfKHDoQGtj8yYFhrkpa2JpyAOdpIv3Rpv2nie2RQq0GwzwyWQg6unjpYSWtbOawsiv/S3uPsOQj2swrd/1TeDJCjsbYrLp2KbpYQ3dS5QGu9fSqPW/IJUY6lGCHXBVh+wcJjYDiVSiWW5s3B3VP6S6rhxnx8p1UXJ+eozEfAN0XOFakGVrqAf6ho0PMSnO8fFdOL+cfAdH9lbC4iMIU6sj7LcuitN2dT95/wFgPE2raXGuYAukM9Oak5pqrCMFWb1185OnnqCEdtpsq4+Uq
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(39850400004)(376002)(366004)(346002)(451199021)(2906002)(966005)(2616005)(36756003)(186003)(44832011)(7416002)(8936002)(8676002)(5660300002)(26005)(6506007)(6512007)(478600001)(66946007)(66476007)(66556008)(6916009)(4326008)(31696002)(86362001)(166002)(54906003)(38100700002)(31686004)(33964004)(6486002)(316002)(41300700001)(6666004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R2p3bURrWVcvamR2YUZWaktub2NBTVVFTDVCUjIrVWJQdTZETDk1MnEyelV6?=
 =?utf-8?B?OFBLRytzcCtKWTBBY21qdXp4RTNHeHpTWTdiNTBuU29Ta0VubjE2c0VyMzBk?=
 =?utf-8?B?YmhCTDZjUyszdHV4bERldVpjMDBSWTdXNmZvbWF0R0RtNWhvUWpMQi92TUVS?=
 =?utf-8?B?QU4wb2ZGTHhwKzFxNWpBL0VPMWJpc0pXMFdoSGRUM0UzTCtYN3g2d0Zlb29j?=
 =?utf-8?B?dWFFU1pWRUlqV3dDNDFuT1owLzFGT0FDNlRDL3M4T3ArdUtDTFI3RWllNTFF?=
 =?utf-8?B?eDVHVGl0Z3lDUmdQaTdweGlZTEtnR3ZQQlZNTkdRVUpYR3N0bC8vM2dHSUhF?=
 =?utf-8?B?QTBCSHd4SzM4cG83aFRxc01OWktIYXRHNHIxUmE5bUlwYjVBdit3ZjNtcnkw?=
 =?utf-8?B?bGVvWFBrcW11TldoR1dNZlhYUlUwRXpNQkowUzI0dnN2MU5Qa2kxOStvNEQ3?=
 =?utf-8?B?QTc4d0hkRDRTNXF1bXhRWkJFUVpTcnJTZWxVSGZ0b0NNUWxXKzZRME1jcWtu?=
 =?utf-8?B?Z3UvbGZCUExVU2Y0UXdrMFpJREt2dG1QTGVRL1hsbWhGNC9yOHEwVVVCMEla?=
 =?utf-8?B?bDRQK3BQVVFRVEdFaXBZTXdCR3lhMmxuK0U0eE1oQzdNS0d4NnlDWERLS0hX?=
 =?utf-8?B?cVg2bFVOY1dnUFp2TGJ3QmpodzF0NVNhaVFYS0hVb3RVNmliTitXV3dTeWtH?=
 =?utf-8?B?SEsySmlYYjdkUDJDUVR6QnN3dUc1M3NOZi8xMFI5Tm1vcGUvNEpsM1RubWp3?=
 =?utf-8?B?YzZ4NTlZVFpTM3JuQlUxTDUzV2FTbXRWekVBYWJaYVo2MUtCQlo2MzFvVTFO?=
 =?utf-8?B?ZlVuSUpvSHYwcm9YNWN4U2Z4WVkyN05Mc3VFMkpNR1BUaVFYOXAzelBOUnlL?=
 =?utf-8?B?WGFtckVNWHROUEEzaGVqV1RjVE84bHB0RlNwdVhubGc5MnhhdHJDMUtjUFNS?=
 =?utf-8?B?OXZGSlNwTWxPNUNvM2s0RlJ6Tm1lQmRJU2RXS1ArZEdGVWlDOHc2SGZoaldz?=
 =?utf-8?B?U2djYkN0dlJyT2ZxbE94Zk9HOGYxUnRiOVFIM2FaYm16ei8zZTRkck1rNFY2?=
 =?utf-8?B?QXFYaWhIUngvMGsyUHM3eHNHUC9HZjczY1dNaUpEdUhHKzdtQjk2MmZDM3k2?=
 =?utf-8?B?Z3E3Y09Ta0tXWG1GcGVYcXdYeGhlRm9QRml3d3RYUjltV2dINk1KcDh3SGxk?=
 =?utf-8?B?dnlJM0tsZzNpZkpHTktPNmpvYkwzQ21iRXBoMVBUQkllK1R4Ync3RHZodjd4?=
 =?utf-8?B?R1QweTNKUDZxdzkrUXVXaHhqNXNKU2hZN1J2cC8rbnF6WjdBMGhRSi9qbVJV?=
 =?utf-8?B?VDc2VWM1YlFzVWxqYVU2RHVzRkZxNWFRTjlwTXlBTGxicDZTajBiZXZldjVq?=
 =?utf-8?B?UE55cG1BQ09uZ3Ywb1UwVDhuVHFwYTU0bm9Xb25qd3V3bFlrVEFtOXoreGRo?=
 =?utf-8?B?NnE1bXFLcVNLaDVmTk03dDBMNmFnWXN5Y1VidzJUWXpDQnljLzlKMGg1SWZR?=
 =?utf-8?B?ZnNhcklhaXdMcm14Lzh4K1hYVHpoc2ZJcXJIUFpDVEVOUmRhZkg5dVhwY3RM?=
 =?utf-8?B?Nkl5WUt6OEsyLy9YNU9ucUhKRGxDNFdJNGhJRkhwZGpzS1BEcEtBaWU5ZStF?=
 =?utf-8?B?NGltUkZuMHQ3SWE3UW9ySnNKOVZsc0lZN0pvOE9TSnlGcU96aGdHRDEvcjVI?=
 =?utf-8?B?UDJDR2JNaGlMVk01Y2N3Tkl5V3dxbEU1MUhGaEd6YytZOU1xSURLUTBCYUhy?=
 =?utf-8?B?SWpyRXFuM1dXWDEvSzhiakV5UUNkMDJTY0tjRUlhZFBnekd4MlF3S1R3c014?=
 =?utf-8?B?aE1MOUw3RnlxRzNqK25CRnp2MC9xTlZsR1RMb20wNGFnNDF2d1hJZVc2bDJ5?=
 =?utf-8?B?cnRud0NQN24wQVdJT1VkN1FjVFN0UzM2eDRNYUFDbmFyZU8zWitCdFNiSjRr?=
 =?utf-8?B?MnpVRGsyaWdDYWJHQnA5OFFTb1VNOGYyVGZUcGdRWlV6Z2orMElqN2c3ck5L?=
 =?utf-8?B?cmpIbE9xUzVBNE54b0ZJT1pMblhmOVdPMXgrU3F4RE1XZkNxTFEyZ0loZmVW?=
 =?utf-8?B?Z05weXNQZWdCTDV3ajFlRFdqd0sxYWdvRWpEbjIwc01jMGxKeGtiWnN3WjhP?=
 =?utf-8?B?SVJRSnV4OFhFV1hUd3JZd2pUNDdORXEwbDhqdVhwbVh4TzJFemZycERiS1dR?=
 =?utf-8?B?RGc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2391a04-d496-485b-94fe-08db5d3520cd
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2023 15:31:36.9756
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a8VL2mJ4x3QAVpkfbTAYkner/p8io9zhbAZT3Q5DhaJ57Bm55eYpNizhkjgoArdxnxN7fOe9E4hIO8LH99e2CDla9LAC1Mrj8xSuxm1eQAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7342
X-Proofpoint-GUID: 6O4TecZNQMbnCv69NI7deXBDH48k7fcE
X-Proofpoint-ORIG-GUID: 6O4TecZNQMbnCv69NI7deXBDH48k7fcE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-25_08,2023-05-25_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 adultscore=0 spamscore=0 impostorscore=0 mlxlogscore=875
 lowpriorityscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305250128
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 May 2023 15:32:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60123

--------------RNmg1dCqfHsVPfCWR0NgDud5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Ross Burton, 
Joshua Watt, Trevor Gamblin, Randy Macleod, Alexandre Belloni, Tim 
Orling, Thomas Roos, Yoann Congal, Michael Opdenacker, Pavel Zhukov, Jan 
& Sam

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *72 (Last week 72)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *72 (Last week 72)
--------------RNmg1dCqfHsVPfCWR0NgDud5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Ross Burton, Joshua Watt, Trevor Gamblin, Randy Macleod,
        Alexandre Belloni, Tim Orling, Thomas Roos, Yoann Congal,
        Michael Opdenacker, Pavel Zhukov, Jan &amp; Sam<br>
      </p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>72 (Last week
        72) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>72 (Last week 72)
  </body>
</html>

--------------RNmg1dCqfHsVPfCWR0NgDud5--

