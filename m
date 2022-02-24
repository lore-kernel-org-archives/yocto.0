Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56570C433F5
	for <webhook@archiver.kernel.org>; Thu, 24 Feb 2022 16:39:30 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.12886.1645720769566879333
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Feb 2022 08:39:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=o+mlYvnn;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=90549808b5=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 21OCwLPj026924;
	Thu, 24 Feb 2022 16:39:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=v+BBJnojhuW+/y7omOaYa6PdDd517rGfHO8yNymaqSw=;
 b=o+mlYvnnmhjzTI1/cEYmytPnGUlibJglF1Izc05opSq/bojlKF4pGiUBXdTP6Dhdy1qB
 DIMmLYS8EJMWgCjT44yy7Tee8nlIOi6O+rBRWBvB9acJllT0UFFpGEPQ0XWoTVuKUB4r
 +W7P8lPbbVECqkd/Q6w9P7u9q3nL6PasgI0AGZjJx7y3Uv+m9xAjIlfW5akQP40jNWZa
 0eQhTdX78cLtt9zz8yVftF/IrN6t92eSne/UFch1RzkiiKWvwaFaoKpgZTQ2ZNv596nn
 jiYeM6yIOhD4R/EPgZu5lCrpcbhNnzbTbwSgYjLEhEBb3l1SEuN9PRXxYQAIpZ+YxemO Og==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3edukjgv5k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Feb 2022 16:39:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O2L/s35i+Xp5+u/a813sniqzrZ5lxWAoDfURBS1kW+Rh+IV0meHegCXncPhOzqB1qj1KLX4fR3+e8A6tKr9Fc4jmf0HoH+ALucupeFK9H7E/ibHNdyCP+pUcf6sQAlH/9VgnlLicaHxjEjq7EBNjr+VRhjRNygZvXzQKK6ZUI9lEIyQbSIK/LGPuOuB1Fe1wLEiuzqNVv7W9BjXzYD5OfvHleXvZMn9yReo60X56KW3kfC9rjb++nKV3tDXKf2VlVyvR07iQuyMaYt8LeoZOsAf4IYFbF6rdNXrBo5nwIhbtjFzcuHN61jCz3t32HvrzqhEomIuQc//fAKu+8KbtXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v+BBJnojhuW+/y7omOaYa6PdDd517rGfHO8yNymaqSw=;
 b=BpDAfnG9JAGaexDbEpBeLZuJhk4MiIZhZ9REIYYEPW2rPrEdp0/RrdMgMdjEeSbcCOlwNA7zg2pc8utUzaHS10ptjF6eTWN6S7EK92pe57SbIIQmcUHowBbGTXluqq4ZE+RhFZF4qzrWcp5XRtmHEp7bWZtSN0/TLvpMJcX+KoUIt/eOfJb43yi5dP350SsBHmJocfMgc/UIZ9IdJ4mlSyWGkr2MeDxq55r5e0WOtNO8JPZ0biM5qhXlRw6U6tIWI3AsNEn7K2rX++AcjP23xVpBPZePZLeVQ66DC3r/FKJdt+2ZjP5Hdf4oKyeM1YeAVqbxKePLL1+NPycOFlsBpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by DM8PR11MB5719.namprd11.prod.outlook.com (2603:10b6:8:10::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.24; Thu, 24 Feb 2022 16:39:11 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236%3]) with mapi id 15.20.5017.022; Thu, 24 Feb 2022
 16:39:11 +0000
Content-Type: multipart/alternative;
 boundary="------------hnPtFfN5Ouu0DEIh5e4lP7Su"
Message-ID: <d6530256-cb2c-157c-4a03-c7be0a5bb323@windriver.com>
Date: Thu, 24 Feb 2022 11:39:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 2/24/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
 tim.orling@konsulko.com,
        daiane.angolini@foundries.io,
        Bruce Ashfield <bruce.ashfield@gmail.com>, pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        trevor.gamblin@windriver.com, Steve Sakoman <steve@sakoman.com>,
        "akuster@mvista.com" <akuster@mvista.com>,
        Ross Burton <ross@burtonini.com>
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0333.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:6b::26) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a123e7a6-0a07-467a-71de-08d9f7b42f88
X-MS-TrafficTypeDiagnostic: DM8PR11MB5719:EE_
X-Microsoft-Antispam-PRVS: 
	<DM8PR11MB571945292FAEEFD85194D5389F3D9@DM8PR11MB5719.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	t5Nw7i8dNYHDFsFSYA+MQEr/V3wcTndjcjraRy+rRilK1TYMqeT49KfsXznmUt2xIf5oNbljT5EttmGJUFzi0g9A6jdeTBwr4PHOs9tUaCVjbiLn7nopRev+GNHJiYlRKHzFBHQ8Cm33k1zHcBWFHpEUIePPNFwDEQBs+aMyuSzeo5PBM4Wu66oMT02SH+TYx6N09PyUc89gNjit9JQisQlKk6cAS6hKhMOKr8Y904LJ9fxxLD78p4rRdAlbdW0Iza5lP0E3nOyqXXV2PenShHdW2I9yai9p1W3mUd65dIsYbclzNgu7gzhLkn01wdOMlj697uK/Wga24TKnAhesgJ+taXPOnUO3LBMWydCHOuMPXvumwdGyB3TLcJMasMM04BKWiL28h+awHOdZQTsv58yerjjlip2xJDhHSrlnNlzjCeboWVrP+TT9WlMNnls7sVutuo9dpj0AvEjZwkZ2nCKuw7frDpBOuofKKwDUj7z1DCzlNZSdO/qK6TnybM9c+XMTXrvD3m9AJYB3l8d+zJN8SEZ2YpunEIEvqW1FClyfaM/uQvNpzOMz8eMkHlBdvlPS3QxEjeBS7qALokyqbM5ttpt0NZ0F+2I3erFI4+V/xTKoDGWaX417zKNruLcQ+5ejJ7JVfKB18lxe994Pfdiu3KFvb+kcBZ3vPJNEogmn2PF7oqvquSOEmnSupzF/Z5gORngmPHMPGhgdNxH9SRhNPgvyEywxTk9CSikP4xFF0w6zKp6TuaUhoHtN7XSkqJUaDxsD+epYoPU/UlLnxh+slH17vM2G2zenFyTuAz0AuYtd8sD7e7D1JUVT+0JW
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(31696002)(2906002)(6666004)(66556008)(38100700002)(508600001)(966005)(6486002)(8676002)(4326008)(86362001)(66946007)(166002)(66476007)(316002)(44832011)(8936002)(5660300002)(31686004)(36756003)(83380400001)(7416002)(2616005)(6916009)(186003)(54906003)(6512007)(33964004)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R241dDZaaFJFSE1zMDAwNFM5OFRwblQ3MEVPZmxvY05QaGgwYUx3a0tZN3Z3?=
 =?utf-8?B?QlljMWZLalNLU0RoSjhlSWFIWlhRRGhIOGRhVDF3c202cXNwcWQ2L0krZWNY?=
 =?utf-8?B?WmtLbzhVdE1aZDFnVklhWGRSNUN2c25DZnZiWklQTDRNYmZ6SUsydERYOU1t?=
 =?utf-8?B?cXNxaytvc1ZRZkkvUkRiMVBIcG1rUWxqdms4ZEVkbzJwNk5UN01icWh6SjJY?=
 =?utf-8?B?aVhwc2ppM05KeW1kejEveWpEd1R0SFNLYVhoeDE3ZnBNNFNwWkhoWGJiVkdM?=
 =?utf-8?B?TmlWemVLUkFqWWNkT3dxSnltT1lPZ3NQTU1LdG9BWXhlM04wbWhycVRzdW96?=
 =?utf-8?B?SjY5T0wwZFJwYlBCenJBZ1lyMThXb1pWNVVicTlkN3VnVDhZT0EwWmRhaWVp?=
 =?utf-8?B?TjdYZDIreC9CbmtkaGliZzViN0JkYTY3bXowdU9NT05QZFk3blArYTFZQzNV?=
 =?utf-8?B?dHZsb3orQzEycUZkcUZieENLWWNkSVdoYmltaDcrenE3OGV4MXg1OWpxN0xp?=
 =?utf-8?B?bHc3UU0zdlpScFo3dkN1SUtUajRWdWVyTjEvSXVwamxQdDZ5a3FrMVNGNzJq?=
 =?utf-8?B?VnlHTEtZWnhGTXpaRHZGb0JsVFVCVnkwVTdRUmtmWW80RE5nR1NFekpQYUdl?=
 =?utf-8?B?a08rblRlTEN5Sk5RZzlEaVpJRW1ocllITnhDWkFXZzJEVStuUS9lQWJYOFJl?=
 =?utf-8?B?ZlFMckNLWHg1dDZoeUlhTFU3OGx5V1U2VWZvai9qaFF5c0RzTHFNcVRFK3g5?=
 =?utf-8?B?clNYKzFtbXFNdmJPN3B2MWNOc2F2Q3FhTFk5a2hpdk10RFpJRzlhRjJpVGNO?=
 =?utf-8?B?VW5FVjVmOEJUWjBkMDJzU3FjdTZuQ2ozYkdZUlhLQWJPZzBVaW5zSWdOdDIz?=
 =?utf-8?B?NDB4eVIxQ2krTGx6OFpUZzd0M2YwREhBUzQ0YlY2MzVMa25IQU5YZ0lYcDNL?=
 =?utf-8?B?WnZ6VmZENE9GY3hSeVpVeDZaWHJmQUhHYVRmUTJQWS9qWFdvK2kwZFFKRmhz?=
 =?utf-8?B?QStYeFNaZGQ0a1ovcXFObDdreEJuMEpZbTMwLzlyVzdFRXJHVWxLZEV6VlVF?=
 =?utf-8?B?MmZKYzl1eC9TME5jMGpnWkZVRnlJZzlzK1FUOUFGdWUrOC9oNmExSnNHKyts?=
 =?utf-8?B?dHF2Y3dxcXNpTlIySVVqVVh4NG0wNHJteFF3Y0NhSEtvcDNuSVVndnZPVzhp?=
 =?utf-8?B?MmdERTdmT3ZrK2tzWTEzOFNBYWJ4WnRmbERNVTk4dnI3RWpxYzNkS3lPUlgz?=
 =?utf-8?B?SmxMeWJJbTRqOHQybHN1WGprZ29LMmt1SUxZd2pzTmd3dmNvdUxURnc2ZmZF?=
 =?utf-8?B?UzB2ekxkUElCZksxZlBZMEN2REdseDB1VmFzd1N3eHU1ZGw3b0hKWEF2YUtV?=
 =?utf-8?B?ZTRhWDdZeFdlczJnL2lCSHBSTTdobW1KZHdmUWw3eXF1dkdtbjVxaDB5cCto?=
 =?utf-8?B?a2tVbXp0Y0ZUYU5laExSSjhZZW9sZGNTd2tTd1FRSjBvT21lSnVUVTcxN2JJ?=
 =?utf-8?B?Zkk4Q3gxUkJORE81Wmx1UEd2VzVqM0FORkJURXA1cW0zMGhCNGZrbU9oZENS?=
 =?utf-8?B?TkEvdjBWNjdtQnZWYmdFZTN5ZWVnY2Z4MlZwdnpSQyszbjVseWt1QndOQWlT?=
 =?utf-8?B?dmpUMTZsS0UyY1NoRjJNZmROVnZ2NWNnSkVxdzJ0R1dmWi9PY1UvaFhQYkxo?=
 =?utf-8?B?cGUzdXRuYXpSM2szTTB6eUNWZ0UzYVlhNHVHMXpMYWRGQlpjUWdwakNWWTI0?=
 =?utf-8?B?aGY0OEhEM3ZUalBvaGtmRElDWUx1VjRmbHIwa2laV3hrWk5nS3h4SmM3UlFW?=
 =?utf-8?B?TGY5WTViVytFTEUvVkZZWkQ1UHBNbC9RMlRTTjJIZk1oZFF3TTFUbng1T2pQ?=
 =?utf-8?B?N3ZubC83OG96VGJRNnJIREhra2h5aWFVSEFVQ0lCa1U5blMybmZaSDBlbC93?=
 =?utf-8?B?RFN0TVduVDVMYVk3ZTc4SVdLd01relB5dGtVK3dlSzR4Y29POGZZbG05d1l5?=
 =?utf-8?B?RnlKNm1ZdWxRUC9yVXYwc3lITk5ZZTlDbE95Qy80WVVZS3VKVjdUZ3FYYjRp?=
 =?utf-8?B?YndDcGFJbE0zU0NNdUR5NlpGSmVjRDAybkx6bDFqd0JIZEZ0K1piNXNnWTBN?=
 =?utf-8?B?Y2RJTWhFd0RTWGozOERGVkJrVjhsbWE2MWltQm00RmlFN2ErN0tWOUhSNFB0?=
 =?utf-8?B?aDV0TENxRUVEa2RvWTdxNXo1c2VGdXFTUGkrWm5XUElpN2dWQ0VZWnY2Zm1w?=
 =?utf-8?B?VUR6NmQyYi9iY09sS3AvWWR0T0dzQkE5U0Joa1IwTmM4Tkw0SURjRDdTM3Jv?=
 =?utf-8?Q?qPs26/YaSEcrDYxw0+?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a123e7a6-0a07-467a-71de-08d9f7b42f88
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2022 16:39:11.5624
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 sBjWy4/IpFtQevCnHDBOgISaEyI18ZS0+sHHzye1st+j0rZGzzURsEqPQecIsX3bzm2HetY7rcv39WKaDVsvEpTkgj8k84eM7rznWiaSF2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5719
X-Proofpoint-GUID: 7_Qz5o9Om8c9oHls5nra10t1zSDqmIHj
X-Proofpoint-ORIG-GUID: 7_Qz5o9Om8c9oHls5nra10t1zSDqmIHj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-02-24_03,2022-02-24_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 mlxlogscore=756 spamscore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202240096
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Feb 2022 16:39:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56278

--------------hnPtFfN5Ouu0DEIh5e4lP7Su
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Armin, Bruce, Daiane, Joshua, Pavel, Randy, Richard, Ross, 
Saul, Stephen, Steve, Tim, Trevor

*ARs: *
**

- Randy to write an email list to the Yocto mailing lists to encourage 
users to check for existing bugs and add their input to those before 
reporting new issues

*Notes:*

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD

*Medium+ 3.5 Unassigned Enhancements/Bugs: *78 (Last week 78)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(Last week 39)

*AB Bugs: *75 (Last week 73)
--------------hnPtFfN5Ouu0DEIh5e4lP7Su
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Armin, Bruce, Daiane, Joshua, Pavel, Randy,
        Richard, Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs: </b><br>
        <b></b></p>
      <p>- Randy to write an email list to the Yocto mailing lists to
        encourage users to check for existing bugs and add their input
        to those before reporting new issues<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD</p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>78 (Last week
        78)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(Last
      week 39)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>75
      (Last week 73)<br>
    </div>
  </body>
</html>

--------------hnPtFfN5Ouu0DEIh5e4lP7Su--

