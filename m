Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.768.1630596734230614838
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Sep 2021 08:32:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=hya03sKQ;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=4879085da6=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 182CStOZ028239;
	Thu, 2 Sep 2021 08:32:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=O2b3CT0b2fJMsKyZO3LQuOC2bsdXJ8AIILsyJN9/eHQ=;
 b=hya03sKQ79i4Lb+JRWWYURcczwaEVQ/Zy1eTlJdUvoawhfAsqD/AiYRn8jRaKsSwuAOr
 3FYI+35W5buE3bXnqR1L9bPbUMAnNMag3rTmFWQ/vZ4xOCFNqTRLVZUyyIJ65qc61zXL
 YCzQug0X69te4mLgz1xb4GD5uDqWTxMGG5Cv3O39OCi/W3ePvb9PLDTiwdEHzpXeIq/W
 JWC13H5H9fzeHOKc5QBwagUyxRO12fuPvU/gN0urU8OEpxTYxaUZpHDcU3gI9rAIwAV3
 H5/xFLqsoXNWo43eam5hg0zOPKuvmFxOr/n/Mc8qV0d/niG9y8ydJklYFfa5KgLhdQRx lw== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
	by mx0a-0064b401.pphosted.com with ESMTP id 3atdx60sev-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 02 Sep 2021 08:32:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFer8eZC3SfwubjZRJxJJ6c0K9L4nIeGFf6BjQWwMeuDqBHlSR+2lQcYoM9SLwoz7obh45eNcLU3HyPr1VnLtbdZ4f6k6DvImyN3K4aUCcGNMW2t0MDgNEKKis3llzLosnpSZCZSliJP8sSjdT1l61iZSOhbGyO7VrlWQMBF6h2puqI9QlVbR7AtIvMfplAnRCPqVIWdVXFZrNa844zgH3DoetMpIbvfMcW22ERL2x915/ostFAMWMZiscKToP3+u34TtKOE+2mrswiFemIUWCRgJMULLXugjjVTrOAHakGeMnMn3oeWSjShGZyjho6/EjhdT4g/toYrDXaUz21vGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=O2b3CT0b2fJMsKyZO3LQuOC2bsdXJ8AIILsyJN9/eHQ=;
 b=a6xBtMm47JuGmHDd9F934eQ/V8OjTrKPpeRv5rjRK1xzwt/5UguDs2Lw2gNS02lqV71tzAZ2NAO0+dE81I+pmZGvg8pdPMsDln+xAV9jj1scsihHUHm4ld34uPahKHQvUqIdRmSxxz3YFO++GCekJfMz/N/lkSqzkBgRkKoB/3MdvV9JqxYWoeCfuSKv/aZu+VH+jiomKP49pUw2pU46iliSGEngFOwAaL5/a2/zdXQtGbH9XwWrnvbu5GojQ0J8lHslNWS81N8E2RJDeYlKnYMXCA5EHJh6TaKqQf457SC7uttJsikjMsM7E+RcINoBWRoS+ndoYrFw88AFLCAp/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB4006.namprd11.prod.outlook.com (2603:10b6:a03:188::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Thu, 2 Sep
 2021 15:31:58 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1%4]) with mapi id 15.20.4457.024; Thu, 2 Sep 2021
 15:31:58 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 9/2/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>, steve@sakoman.com,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Message-ID: <49f21db8-6f96-e4cf-cb72-5f570f65047d@windriver.com>
Date: Thu, 2 Sep 2021 11:31:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: MN2PR13CA0004.namprd13.prod.outlook.com
 (2603:10b6:208:160::17) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0:fa88:8bc5:c0d2:27cc] (2607:fea8:c29d:d7c0:fa88:8bc5:c0d2:27cc) by MN2PR13CA0004.namprd13.prod.outlook.com (2603:10b6:208:160::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.7 via Frontend Transport; Thu, 2 Sep 2021 15:31:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07f9b41c-6404-4627-d2a5-08d96e26cd10
X-MS-TrafficTypeDiagnostic: BY5PR11MB4006:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <BY5PR11MB4006D1D96827EAD2A8E489D69FCE9@BY5PR11MB4006.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 AZKFMy+JhdVDUCkRJMXMYAhGAwSvacrdtXota4chKxfNRxVBHjeiIimOTexJ0FHHiXHB443M9cBrYjMfX4DjzqxkbB5D8/lhi4J8MSUv+NQqNSuLYGt+JhnwY1GF2iZEXrdJwLaPgFxxlcPzbB/WP7HgAz1zdXYp3UPbqbt8tveBG+YstJImSMem/oqvQg5RHdCm9NbSj2Sffwx+0hOkZOwfruQPjq+TffHEtV3VeMJL88gGkLii6/b9GoysfNjyRY8two9Hd0px+dkqZaCUMzjuvFm/d5pNdYtnhW7msWjVib/qdDzPsTUQVrglFXaoJpeEYb4SXRSrQVAmMv0ykwIJTjcvTccdUKDMtzB3DXoaNZ4xE62Nrbl1wPpixhqkooadezO8VRq+UporU1bpbJ3a3hTu3aePaNbI84GQBUjFfe1y3VocBtqpy0rbalkr5n6Rn95FFd3MZFu51CZFwzvLBItpiXQXYXIXEI8qgN3az0bwQWN6pwarFEFaIgtVvQLjgBFe4JnupfSqtcX8h2unQbBxP3xEMz5sQaRxpHOWJh1bM9c1y5EQUmVh3+vGDXv8vzJ3MJY8vwOZhs0J9PUq5PKR+zm2vMz0g8Zmtn4T3ZZfHSmpBZC8H8Wi6oECq+rK9Q7l4yZAgItHuxCWqLm7TSp9qeJj5ZkhGHcArSmZiPg4vN3Yvtx90pKefi9HjZUri1IXv2QlIYHjxkXNUIv4V9SL6AgiCWyRjCtgXJ6P283cmhZNAtBo9qLkLtdhA+2YRZPFl/BaREZkf8Nsny03nTqOXiaFj3hhS/KPpx9lCPChG9D6oQ4fNHGXqeqvmJJsX+9vfcMzvDVhr3VbrCaiSuUiJOxQs9vlb3hXi+c=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(508600001)(31686004)(186003)(38100700002)(2906002)(4326008)(54906003)(86362001)(2616005)(316002)(8936002)(36756003)(83380400001)(44832011)(31696002)(8676002)(6916009)(966005)(66946007)(66556008)(6486002)(66476007)(33964004)(5660300002)(166002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?aWpYd0tneFoyS3dnek04dkRvamVFd3duR3lQWGtMNGM0YjZPRUxHamxtZTFp?=
 =?utf-8?B?NmdPMmJLU05KZW0wVEVTeTBvbDJtWThXMGUweDlTQUFrQTc0Ymc1VkIydGtE?=
 =?utf-8?B?SGEwTFlZbk5GSVcwdmhZQjNqSUxMeU5MbnU0b0p2TlBSMTZJNGwzYWpPcTVp?=
 =?utf-8?B?U0VNYjdEYlVHaGgwYk9HSGZpWURSN1NDQUgvK09RN1NCbit6cDNkY1V6QWl3?=
 =?utf-8?B?UkRjNkFNRWUzcXRFSkt2bVZPTXpvQ2RkSHRKejhXWUg1L1VLYmpTazVMN3U1?=
 =?utf-8?B?ZnE2UG1jMGozSEpYeCsyREVjaWZNRlpsRE8ydVdmdnZYWWp0RVBkbUdTZWcv?=
 =?utf-8?B?REZvRHRUeWFGZ3RoMkpzZ1JVOW15UU5KRWpUT1FLSHkyb25LUnZuY3czcHFD?=
 =?utf-8?B?OGdWR3c4bzJ3VUFDaWlaeVFjMWhORHZSVmhpMVhWaWVVVTYwUjN1RmVweC9j?=
 =?utf-8?B?bmRIWkpWNURkN21UdjBuRXQ3bVZoaE1IY0xKMGRweTU2UEppd3NXODJrRjhO?=
 =?utf-8?B?aWRFbis0TWVDeXVLeEI3SDhJRExuVC9nd3dIclliSVZsMG1CYjVxMWdWZnhZ?=
 =?utf-8?B?KzQrajVJeWhYS1FLQWlQWVVVbUlTTUZEWEhBSy9FMkI3a2xMK0d5eVdmWXBV?=
 =?utf-8?B?L2dXTFo3YllTNFpTS0lYR1JWZ2lxU21JRksvSHVsN1g4ZHlxUythSUkzdW55?=
 =?utf-8?B?RmFublluVWZOU0k2dFhpK0xLVStPRzU4NnJ6QnVkdHB4YkYwR3h4YzhHVzJV?=
 =?utf-8?B?S3NGU0lWZGg3NktnSlNKaU9VNm1yRXNtMk4rRjIwa0l2bElRRzlNQVZDN2hh?=
 =?utf-8?B?Y0c4REhhRHB6N1dDVG13d2h0N0ZacjFXRjR0ZTNGUDJ5bUFXSTZzbDNsd21O?=
 =?utf-8?B?b2poT3V3eXpTdWNXZHR6UUdqNGYxVU50dTZUOHBTSnYyTzVLeUlhVk1jckJk?=
 =?utf-8?B?Q3RFNGZnaWNvNnMrWHMxWENKdW02MjdsNDlxNkxBbExPTWpDVkV1WXNEUmhD?=
 =?utf-8?B?aEVXTHRpWFRmamprRFdtYnBRQ3k4Y2IxN2dqM2NSZlZTdE1wK2hSWmppTHd5?=
 =?utf-8?B?MElvREluYUljTTY1aW9OVTFLMDZua3g3M21DUHhUTk84dmU4OWZ6QXV2ZkEy?=
 =?utf-8?B?WTh4OFpzbDJ3M295c0VvOFErRGN0WEVsbEFuZVRPeVFZZWdCMm14WXRrd001?=
 =?utf-8?B?NUxVOTlleGM3dUVIM0hudmpyeXZ0UUpOdG9lVTdUNE10aWE0dWVLMzhRWm1I?=
 =?utf-8?B?eVlMTVlZbnFxME5BdEptaG5SM21QZTQxb3hkYWNvNkRWYWs3M1hXQUY2N1hY?=
 =?utf-8?B?Mk1xcEMvQnlhcnlwQ1E2a1UrV3VVaTYzT3VwY2hrdG9oTkJIRVJnZHVjbDVD?=
 =?utf-8?B?SGFhSzVJcm1EVEtBSHc2Y1FQZldLbXdtTzM2SEdFT0VYLzg3Z0RTcDg5S2xx?=
 =?utf-8?B?TTljTVhEa3BEOFZFVUJCOXQyRjAza2o5QVhuYjR1MVFBRTBBbzYya1pPUzdp?=
 =?utf-8?B?cU1iOGVvMmdKWmlOOEFWT3duTmVPN3JyZmxsZCtzZEpiVGEyamczS1AvY00z?=
 =?utf-8?B?YVhhQkVyUURkNWpLUlVCMTgzTjNUclowRzU5TFpEREovZEt1ZHYvOUJObGho?=
 =?utf-8?B?V2tKSTBIQTlkV3kzSkZvalNSb2lyK2RIZlhXZldaZGFENWp1Rk9aMW9UVmhy?=
 =?utf-8?B?YmhBMUM0Y1JVUTRBY29IYlU1MXREVkhSekp0OGFoWnVIamdVUWtCQUJZbmFK?=
 =?utf-8?B?UVZqd0p0ZlBsdll6V0YrTW05TEJTRDdjUFZ1T3BFZFY5VEhKK1NScGVla0Zj?=
 =?utf-8?B?U1NSK083bmIxQkUxSHhZZG90aEZrL1Fxd0lwYW1BM1ZZZW1YSGVLMTZ4YUdC?=
 =?utf-8?Q?AMWLSH6ABgldW?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07f9b41c-6404-4627-d2a5-08d96e26cd10
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2021 15:31:58.0548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Z24XLFVaoqlCyhcw+5SwrAsSPrI2uYpujsIkyubRrG/2H222yo0GfKR/oDdGf7L8y/LnV9REVKE3GxhY/yP51f8BNetxO1ITRCiPu4qAsU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4006
X-Proofpoint-GUID: xCOWAv8eAiMA-cuHDZWDg5uxYaR0Sv-W
X-Proofpoint-ORIG-GUID: xCOWAv8eAiMA-cuHDZWDg5uxYaR0Sv-W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-02_04,2021-09-02_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0 mlxscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2108310000 definitions=main-2109020093
Content-Type: multipart/alternative;
 boundary="------------74F291DCEA4A8A3055CFE61B"
Content-Language: en-US

--------------74F291DCEA4A8A3055CFE61B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alex, Bruce, Joshua, Randy, Richard, Ross, Saul, Stephen, 
Steve, Tim, Trevor

*ARs:*

N/A

*Notes:*
*
*
- (carried over) Steve encountered build failures such as the one in 
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is 
testing/investigating on internal Autobuilder instance - Trevor is still 
planning on looking into this!

*Medium+ 3.4 Unassigned Enhancements/Bugs: *77 (No change)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(No change)

*AB-INT Bugs: *48 (No change)

--------------74F291DCEA4A8A3055CFE61B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alex, Bruce, Joshua, Randy, Richard, Ross,
        Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    N/A<br>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">- (carried over) Steve
      encountered build failures such as the one in <a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Details/593109/" moz-do-not-send="true">https://errors.yoctoproject.org/Errors/Details/593109/</a>
      when attempting to run dunfell builds with the PARALLEL_MAKE load
      averaging added. WR is testing/investigating on internal
      Autobuilder instance - Trevor is still planning on looking into
      this!<br>
    </div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>77 (No
        change)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(No
      change) <br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>48
      (No change)<br>
    </div>
  </body>
</html>

--------------74F291DCEA4A8A3055CFE61B--
