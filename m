Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06955C28D13
	for <webhook@archiver.kernel.org>; Thu, 25 Aug 2022 15:20:00 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.25216.1661440794165592044
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 08:19:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=onF+zR12;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5236ee5ba6=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27PCYbUD027021;
	Thu, 25 Aug 2022 15:19:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=kj29bdlWhrszA3nb7Wq1h4qod1Awx8aeDOVeYP3PJsk=;
 b=onF+zR12LtEcfJLMje5iuBhtU1gGheZPrShLtboXHGLu09rkvFIAfY4g5sgzyleBqYUZ
 zsUxuj7DXIsqXq8ehpv5iCgsTK5EQkxct9DRDMMqKZnSHUb5qbl6CxbY3TYD85Amqxgd
 AHqbiVe3M6p8mPtIQl4zOt/RCfVscTjmTNEki83rInH+p48O+v/Gl9zACo1MZ8RhdyJO
 aiGTkw2x8pAPHQZZLQJlogY86tsG+cfeTw6i7hmtuhvv1az9mGkaMJkfLwOgb8IQktVq
 DKwo/4S4CT81GTtne3oSCsp3WnuQUAsJzNB2/7hbEuFsu8S7bX2saFUWS2V9JQ67gWlg ow==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j53s31u73-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Aug 2022 15:19:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=POWaiU4wcI9kRnmvn3WC+AIRVmAEySs9UQF10HULdJpcSeXLjZ2Ss++ZIkaSZj8ZGcrFjlCRMTGzYdBbxpNjhAYfl6J1AozT8qpQVWvWH+eFCuDU4a2kU8DBXGPO9anNW+yLIbkqALzYst9mNh2BZVS3e6Wl47ongyDuCfmqiCRZ/A+sGXi/c4hF1/V/IEoPUjtGuJUkLCf6nbnBz/kD92o8m1bYIJluDPypyfp/tK8gtj9OtFCNNFmzE6hpOtYhFlyG79GSKMH75jtW99S4MHRcdCHnvu69QlNlVSkZLcK4xBOltEkXBdqpavLYbXBBsAy+NtPiwjE0XCxdRu+YlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kj29bdlWhrszA3nb7Wq1h4qod1Awx8aeDOVeYP3PJsk=;
 b=ccmUb/Y7TE9dWbV8687/FlFUSdmETg9Eq7IJcmgPjLzlamfKQAKr1iQKkNJekO0tvzKc13wiZ0fE/pnKE1kplrJ+tvQA34MIlHwhphbfBrkF+JW99IaVSOxPSMgnQtVFYcARqWorPVIwgJqEu4844pCQlxANnb+Yn0voUhk7hW2H8qZ+NaWYSjmQHQDu8AnjHeCWgWzXHueI9swDPLGQE9HcYhlOUVvUQCCo0ooG+Dk9C08CuGuRtP6yveGcQjbZbQKhlOU1Nip+VqIrsQunIeMX8IKDOlfAsnUds7WQAkxWGOY72gqiCXMxVYbvIGnhf4k3evlf+hEeTcAi6bhpjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CO1PR11MB5137.namprd11.prod.outlook.com (2603:10b6:303:92::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Thu, 25 Aug 2022 15:19:24 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3526:31b1:a7c:cd2]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::3526:31b1:a7c:cd2%5]) with mapi id 15.20.5546.022; Thu, 25 Aug 2022
 15:19:24 +0000
Content-Type: multipart/alternative;
 boundary="------------Ygx8icFCGXhyf4vEUTF5iv0B"
Message-ID: <e0f55ccf-8954-9e68-16de-c1eae87010bc@windriver.com>
Date: Thu, 25 Aug 2022 11:19:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 8/25/2022
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
        aryaman.gupta@windriver.com, pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0256.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:68::23) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 67bd546e-161c-49c5-b0dd-08da86ad3154
X-MS-TrafficTypeDiagnostic: CO1PR11MB5137:EE_
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AB5163ZhhtTriYTOATJxgrCG7T6aXPCuXfa9MXGlhJFQc4KrL8gIdrsevSvQHaCjmPev1rrQ3TKz6xG34SCacTUDr5Eh6re7RN6dNrUi7K6L3Kt50JnKSV9WuJuBk4CDSwdu7uIBc69Hl7/8SPvWeBUYxLG20sd3A5AY5K0UKYEeWCAj8iWnUYW/sbMDqNUbMeymd+/vRmjAcNqOAeNF13SN/jMxLPEKvizt60jzNyzbY7lshxZxm+BctRijlRlm40YKblnErFG8O8KASnoiTRlDXMimTtjbJi/5VGo1KoEyt9/GYtwyd9eETgVZlMh9pC8reNM/ejreYNRhcURG5rdPVlN/DWMqTGDpzbhX61BFs6UuRU7S8lqYp2/PaUStMHHGywyzYXx6XiZ6fUb7R6D/Ozskp53HES72CWgC6O2W07QkfvknmsvuVTEjwCwREizlIQ1Hz99q91D/EZk1GieZzqSGh7XKbkNIukCBWkVsWhicvaZ0IFmk3t5q/txGF2AAIzvAL8qyXaXF8lOM08nTzqPBZXof0ERPHIScxBZr8W2LhFLV7ga7L7sL7qcZL08iOHHQOt6AaNYcCjjWPD0pmwierR+OahoIv5oaNegNiFD8D453NsjOsd4YfCOtefDMBe61MzZuZnrvb5MfzHHAWa5FkHG+6Oczx8jpPvA+KcA2HIKgZNlcR5bAlZCZg6+lFaz5sGgaFNceLdkbBuRAxi4/gfhXkbhZT6Do+YXAcQOKvKcthy+cPhlBPbWmiLkhd2FjXhDbV2plJv37WZ1GEU35v/1XyU3L1/aMn8+oWyB24H1JhPHv0i4k0XnR6MqQA5QARjRRl6vNduir/MfVR8+szqNK5bbUlgweV4U=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(346002)(376002)(396003)(366004)(39850400004)(44832011)(166002)(66476007)(38100700002)(38350700002)(8676002)(5660300002)(4326008)(6506007)(52116002)(33964004)(66556008)(6486002)(478600001)(6666004)(966005)(26005)(41300700001)(6512007)(66946007)(2616005)(316002)(186003)(54906003)(31696002)(6916009)(86362001)(36756003)(31686004)(8936002)(7416002)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R0FFV3FWb2FMcG9IWUdpa1NGUVRSZmh0ZmRqNzMxU21KTStjNWdFSnc2KzFR?=
 =?utf-8?B?eWd3NFlmQmlLL3NUTjhsYk9OQ3hsZHIwb1YwK2ZvM0prb20rb3I3dzR5ekxZ?=
 =?utf-8?B?MzU5U2ZIa2xvZndmUGRqbnNoS3cvY3B2ei8zckhmY09JL0tFM29Ha1FzdmQ5?=
 =?utf-8?B?Wnp4VzF0dnZTY0dsWElWMnlLVUxTTnQxcU41SWEvUkJjZFdEWE5Pak83YjNX?=
 =?utf-8?B?UVdrSnROY0svOFpVS083VkhUUkQwR0gxVytXTWpxZHRYckRpRW1ydk1obDRp?=
 =?utf-8?B?Mzl3NzhGUTlMSkhqWGcxOFhTWnZEbHNQRVZra0lqS2RLM0lMeTZ3WkxZeWdC?=
 =?utf-8?B?cnl6QXA0VURrVWtiN3RmM0F2MGNIcFVDajVlUE5YSWtjYmdnRmN3azRadVNL?=
 =?utf-8?B?REYzL2g1enZWaGpYbUFuU082NlMybnFUSlQzMktaOHRtb1R3bmM0K0Rod1hS?=
 =?utf-8?B?TjFKRG5HMFhWSkJsQUtWM1hVVVVGR2x1RkQyN1BhRDNNT1VhYWlYY09pMWJt?=
 =?utf-8?B?NnpwMFo4ZzdyNU1CVUgxb3A3Yk5CWWkySWhoaXYvTGdUOFN5dE9NRDhocFJy?=
 =?utf-8?B?c3ZmUEJnaEJ3T0lkVVhselA5VnFOMlJqL3RZditiNzk1VlJkem9xSG95Z211?=
 =?utf-8?B?M2ZhSlFPTytPL3ExN2gyRkY5NzA2N2krMXFaTkdvZ3ZDdWNISlRnRFI2Y21B?=
 =?utf-8?B?dUxtK0svdUd1UDNJaVNkdjViWkNJNVNMbllvTlpRSXpzZ24yMU94OUUvVjdW?=
 =?utf-8?B?cjdYQmZ1U1MrK3VMaVZrQ01BTnBIWkFnOVFwcmxmZEZFS2hRdlpWU2JERXk0?=
 =?utf-8?B?RmVaZlVRMW5FMndPWjFNSUpOT1ZtWDdqUHNoWkhYV295TWwyYmVCM0FsUUp1?=
 =?utf-8?B?Sy95c0UzUXVKN3VtUjRxbm9TV0xuUWg1Yi9QOUUxYzVteUVqbzRoSVVYVjdz?=
 =?utf-8?B?OHNwNnE5M1RjczQwMzVsQzFocUtlN28wK0Jid2tBZWIwZnJxUkx3MXhWZkta?=
 =?utf-8?B?bVFHRmowZ2lWdWtYUmQ1aW1aQ2kvVXBQRkZYZE9QeE1zdFJQS1lsWEI1cTMy?=
 =?utf-8?B?aWZnbkZtYUppblI0ckNib0dyZWtzek5GK3RDVERtSUd1a0RmRkZyaWVOdTA3?=
 =?utf-8?B?NkR3dXdGb0cwbURSSUQ0TzlKQjdhdVMvaTVxMzNZQXZWUnEzSy80cTViVkE0?=
 =?utf-8?B?OWJGSW5sZkRKVm5WdHN0dlp1SGlBeVBvaC96K3pMR2ZpaHk3Q25keE55QWRI?=
 =?utf-8?B?a1ZRM1ZwRitDVUdrMW9YbXROVWlJVlYwa3ZwUXNhcGFsZjhvTEJReTdpcEZG?=
 =?utf-8?B?MW9lOHFoSWd6eDlrWG1LbmwvMVVMMHBncFdmWUZwZEplaENoMTVtVURpUkZm?=
 =?utf-8?B?RENCRXAzZGswdk5iK3lkREZhNDRSSUF3dWFjbEtuRG0rK2IyWUZLNDA1NDdI?=
 =?utf-8?B?dkE1bWpVVkpUdFZRN3plK1kzNGc0VDVHTGxZT2VyNTE3c0RlSUlJQUZ4L21m?=
 =?utf-8?B?YlRsWkFmMTVkWnVOM0R2MGF4bXdsMWNScGE1eEczanFVNDYyRWdMa0Y1ZzMr?=
 =?utf-8?B?ZFZVMlFZM0pDZUtDMEdXbU02ditZRHI2MGV4Z2lZK3d3WjhNOS9lWVdNajJs?=
 =?utf-8?B?S3pSSmZZY0NWZ2lKZ2lWa0lCS3podGo4ZDQ2ZXVvS1lHVUV1RjJlWGtuL0ps?=
 =?utf-8?B?Si93K0FMS1h3SDNRbUh0bEJGLzNJM3hXQWpHbDNoM25ERlNFZW15VjBaNnla?=
 =?utf-8?B?blVRdHlhU2prcjUralN0SlM5T3Y1VlBDV05rUHlEU0JHN3c2WlVqUGx2ekJH?=
 =?utf-8?B?dXBWL212V1JMYXp3ZDROVG9lVUt6bWdOTVpFQjNocTNXR3JjS1QwNkxBeUc1?=
 =?utf-8?B?TlR0Ukt2M0NuMUs0NU42TTVRbnc3N3BLbGs3N0NxTVA1V29mMG5pVlZyMVRT?=
 =?utf-8?B?WEh6emE1eHlGMEhMMFN5d0pmQS84SEVLK1kwcWVmc2ZBUkh5T3lFaGQ2cEp6?=
 =?utf-8?B?SmQwNTFzSUpaZ09pWktvS3ZLRlNXNXBvNHpXOXN0ZjBsUzB1M3RRM0U4OEV5?=
 =?utf-8?B?a2Q3cHZZMDhWeDB0UVlZaHNhczdZMVhJekJWKzRyYmJyMlZmYUpNNUxQNjVD?=
 =?utf-8?B?dEtudi9TKzVTOE0yNnNmM1h1RkFxQWF2dTdJNGJaLzM1Uks2a1ltMXJJcERy?=
 =?utf-8?B?eFE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 67bd546e-161c-49c5-b0dd-08da86ad3154
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2022 15:19:24.3006
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 5mi2aprnvS6kRiClfzsRlBooY8vgTAV1ybgIW7ELqeKu8WnxIsyP2SMW5qE2G/BlV7Xb4MxbrOhL4+YDMnGYb7WuFUWJ2IofPcR0yK0GasY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5137
X-Proofpoint-ORIG-GUID: IANlPls4bnlWaxFQ169YigmewmziVBW4
X-Proofpoint-GUID: IANlPls4bnlWaxFQ169YigmewmziVBW4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-25_07,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 mlxlogscore=849 priorityscore=1501 clxscore=1011 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208250057
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Aug 2022 15:20:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57900

--------------Ygx8icFCGXhyf4vEUTF5iv0B
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Randy Macleod, Richard Purdie, 
Alexandre Belloni, Stephen Jolley, Ross Burton, Saul Wold, Tim Orling

*ARs:*

N/A*
*

*Notes:
*
- Tim will raise issue with Armin regarding BOF*
*

*Medium+ 4.1 Unassigned Enhancements/Bugs: *72 (Last week 78)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 43)

*AB Bugs: *58 (Last week 56)
--------------Ygx8icFCGXhyf4vEUTF5iv0B
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Randy Macleod,
        Richard Purdie, Alexandre Belloni, Stephen Jolley, Ross Burton,
        Saul Wold, Tim Orling<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">- Tim will raise issue
      with Armin regarding BOF<b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>72 (Last week
        78)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 43)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>58
      (Last week 56)<br>
    </div>
  </body>
</html>

--------------Ygx8icFCGXhyf4vEUTF5iv0B--

