Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.955.1631806413284209248
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 08:33:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=nEYYwmTT;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=4893d09dbc=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18GDUkYL002907;
	Thu, 16 Sep 2021 15:33:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=xdbxk3KgMJFkfS93HSOl/FFNjRicoinikATmpLc48Vc=;
 b=nEYYwmTTkE+oqKayQZyjUBx77iOq8fnunvDxLiSwgXIlWkVoJ4/37nwAx28vk68pef9f
 iDfzBarO3jcOs5a2brq467s3Q1w0dvTJymPXxt+FOZEwNhkg5giUh9c/j17tLUDDOmdC
 5/VX67ErT1wtogj0/QjTKxfycVxwxiduRt3k1NqBACVZFagokzOIa99rab0+220gsgYn
 swqG6BDeIRMGe5VkSnxQa2JOYue0daxUBX0t0uPOfN19XXD1X+Ug9tRgKh6hk5vmG/0m
 kqHSAtkOGf8ezmhykhgspa0Y4SjMTuONVNOWJJEx0ZuJ7BVtuUCjfV8fDa76quxpruy7 vg== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2176.outbound.protection.outlook.com [104.47.57.176])
	by mx0a-0064b401.pphosted.com with ESMTP id 3b40a80djc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Sep 2021 15:33:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XeT7xxdcgdWWP3/uHvLBeBrqQD+3B0g1nS5AYJpJv3CbmEBoRW9/YRr2GHHD+2YyehN78VbWOFrJUINax1u/R1dY1K6Dq2jjsYQj5nYSBeV4qGUTG2SapuQPCnF9gMTkQxu7YUiK1PSxRi0OJyw3ZrihmHeq6I0PCh9g99kisHzLWW4W5oJrODkUtbAPRgsj0tRad8WFWkTVGStkW9+h5CFi5Ts5kfLjQmU7b1+rq2nRS4xK1XxJA+/OyOaTzKzbSwBFc6cGbZ5FH79H279PTVcR7HzB9NKPsn5mzcdjdlFNKaEKeP8luSwqkrW3hcHoeq1oOWg+l7HdEzt52aIdtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=xdbxk3KgMJFkfS93HSOl/FFNjRicoinikATmpLc48Vc=;
 b=CM1ktamZ0PLLzOYXpiwEYO56Ch8hM33t8ensRW7HzMtrVobL1Pvl6Kee11BhcGKU75GnnFGYWxuEoIxjCS7kxGKY7aCWjU/IZ+wkyEjqAzMqH3KMXeBu8SV9Z3zAFrHRIwe/IqwgsBqTusIQROjXF0ucJZCuV1ZKfryTY+2BInF4XP0VjicNOB3nBgAchFL7z/ZDf7Gz37mw28XNZRWnHUVTct3T9a2ynbdYdB/47aRmIE/gZXiQ19G74uW++B0Qvat+9ywe2r6dPhD4PO8+TYtFQQQkFVC85oBOVxO6LS7Gb6AgSNJ/uDCTJNrjOB7OyJf5HLerMa3KrbiEl0DSmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 16 Sep
 2021 15:33:18 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1%4]) with mapi id 15.20.4523.016; Thu, 16 Sep 2021
 15:33:18 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 9/16/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com, steve@sakoman.com,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>,
        jon.mason@arm.com, Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "Wold, Saul" <saul.wold@windriver.com>, daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>
Message-ID: <2d5ab941-d94b-07de-c6fa-5e71f088e267@windriver.com>
Date: Thu, 16 Sep 2021 11:33:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: BL1P221CA0005.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::19) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPv6:2607:fea8:c29d:d7c0::81de] (2607:fea8:c29d:d7c0::81de) by BL1P221CA0005.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:2c5::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Thu, 16 Sep 2021 15:33:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 47f70f28-9b78-425d-063e-08d979274eca
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5165:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <SJ0PR11MB51651B1AD8AE7C42440F73A49FDC9@SJ0PR11MB5165.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 Ch392IV18Hp8jXNhKbY5Laytn1G3a3Tw9yUnoFDvHqZzsC859GGuI1G9L1JgJAgHANCzfctXbOkxggLs+1znPlnt/vBEuRjbP4HziW7oIlu2k/lZy2FoyH3mcW2DXpnwyew2qpNwycN697SxVRrYKkKmjtdME+BjZVySBGrSTQ1seZggqJX2ZtkGPmhBDaxhHdqvX4lQJc7Cx7GHUAHn9kGR3JV2fslO/9Js2OkpFijWFSoq2SIvNgJ82uEIBV1Njjx6/YyeMRGX8qS6u++V+FGvUGjYjkxBT+WEWdTebksd1H/oHSI3IO6vHRUgDaJ6jS6FMsPIwyLCOW3hZMUZkA+j7iZ5+bYaUcgactqpXPiVlKk8M0X5EZXvPrBLkB2jIY9yHkM/KpLnQFCz1Q1IncWdzcqPouzR1vB7dFv1KFUVdvpZ4ltZ95ZSyiA4QNkmD6dYDH8w4uCv2TGDx0fxDlm7UpS3y5VP2xn3N1f3mMsPt1mj47zARYp+IIGVkfx3g9+uimQt1S7SGV+pU8L5nyHiNSkMbsBUxI0oW06FEsDx6RTA/CVv2Z9HNrE2f/xd+B7yxg6V7fiuWKI3oAtd3dvtJxX9Fks6T2jTiSbBCoP9ChKqzryLNthpyYvSxooZDxW9ptNnD2v2LYxevRiJJEREpmVvYDqC8qxHaYg2aQEclR/WhoA1+xUfmdKQRik1GZc170yD2IsbVz/bsSC9Yoz6hWjQH9foebiAWaBcRnEjN9IWeUX2OW1Fif5dH6pNb9Hf0NjOkqXDf8HKLI72vFAmpXfw8gB1JPspbtJQgWyF30ChKJncW2Qu7QiWddEa1JEhRZersifku5RB76+SegmyQ0tFfShxz6tIdFPSbgI=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(366004)(376002)(6916009)(8936002)(83380400001)(5660300002)(966005)(478600001)(33964004)(186003)(2906002)(86362001)(6486002)(7416002)(31686004)(66946007)(44832011)(36756003)(66556008)(66476007)(8676002)(38100700002)(2616005)(31696002)(316002)(4326008)(166002)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?bW1Qb0lDSzhqMGV2c01MaGVKdWV2Y0ErVTlRRDVCaGpIbTQ4SUI3RDVyVUtQ?=
 =?utf-8?B?UkpxdDBSSy91dmt1OU5BSzlFL0hlamtwRFhGeFAxSHBXYTFXb09rZUVRc1pR?=
 =?utf-8?B?T3NsNllid1M4SW5VSEk0MXk2U1FUVUdHYzVJVkNPQ05td1R6b1dlS1dTR0sz?=
 =?utf-8?B?NG8xUlFZOERDem1IeEYyaitHNVBnRDJDNUxUVWIwcWFTMVJ2bElGOHNLZ09k?=
 =?utf-8?B?UTNmaGd0enEvNjZvNm5vWTVDNVRvR1dtSmNGVGFFRE9wdlBLamJEQ3M3YWhC?=
 =?utf-8?B?eDk1ZlV6Zy9lbkdCRFJFZGZodWdvZlozZ2dZVUo4TlV5Z28vTEtWY3N1RG9p?=
 =?utf-8?B?aC81aW1JdDBPYWtxNVRDSklrZzNobXFWM2ZPQ1BZcEMyQUVpU3RrekdsZTZs?=
 =?utf-8?B?WGVJRkdCYTc4ekw1MXByT3Q4d1ZwSUJleENETEQyMWtlY2xxREhSSk05NDZN?=
 =?utf-8?B?eEpuM0V2alBodVZzWEJFbUtOWmlkcjJjcXREdFMyWkhVeWw3OVpybk1HVndi?=
 =?utf-8?B?ckw4RGgyQzUzb1VOejRXOGRGR1dETGZ1VndwMCs3R2JCK2IwbUdyekdWbGQ4?=
 =?utf-8?B?MlY2RUtYMXR3MmdyYlNRUmtCV3ZKZEFaV215bE9UMndvM0NVeGJIU3dkeXht?=
 =?utf-8?B?R0FHSTVLUVF6VkNxQXhqdENGL3dVdWthWDVCSGxwM21ZZnFUSzFheTh2Q3lx?=
 =?utf-8?B?MGdaTUFuY2xQREVDczlPa2Jsb1hUU2VLNDJHT015ODJDQUZDN1dtQThENElV?=
 =?utf-8?B?WXAxOUZqVElRK1R2THhkenh2ekFSYnBJOUtVVk9MMkJSNi9vT3kzVWFpVnlX?=
 =?utf-8?B?dHhvak8vZVJndm5CaGdvejdneE5rSHBreGgxaEcvODZ6T2JnRXphWTdlbVZr?=
 =?utf-8?B?TkI2ZjRiMGVCQ0t3VGRMZlhOMmtsT3FjWjVublF5TjBlUk16czVyMkl1VFlN?=
 =?utf-8?B?Y1ZUazFQNUg0UU9IcC9DNHR2Q1F4Z1owMWtkeUZVak1zS2xENUdSVUhrcjM2?=
 =?utf-8?B?VlkvUWFhcFdtdWlQVlpTN2FuQVQvNUU5NzhBZjF4Y1YwS0t1dWZXYkpiT3ZC?=
 =?utf-8?B?SjdnTU5rblFKSUJZc0twWlZCS0ZvR3Ywd1hPSVNSRWh4THhIbExKUjROSjZ1?=
 =?utf-8?B?SkZYVlIrOXVCMW1kSUdFbmVSUWM3T1VpZE5FbUsyYmRZK1JRcVFZQWR6ckNB?=
 =?utf-8?B?Z1Y0K1ZrY3BsQjNVeWRTSXdzRTM1ODR1bXJ0S2RsRzR4R0JHYnlJcU9JK1ha?=
 =?utf-8?B?QXd2dmxsSnA3c1pUREdFVDNVK3hTLzBDQXdJbnBjOHpUTklzWE0ydjUrdUhi?=
 =?utf-8?B?TWMrTFhmZGpKcEJIa1JjZlVPemhRa2Y3bjhtMU9weHcvVFVQUHRXTzF5RHBP?=
 =?utf-8?B?T2NHa01vU0xTMExSbVBWclk2OEROL1QxVWx3Mjl4Rmo5Q2Q0eWVZTlRFTzNK?=
 =?utf-8?B?Q2s4NWU1bTRmM1hiQ2sxZU1WN2NEV2JsVmIxWGNqeCs5d2FaVDcxdHRGbWZk?=
 =?utf-8?B?VUlNZmxCdlh0aFZ3UEtxNWQwVmhxd3cyaUdpMXlCMCtHVEE0ZDNzL3M1dysr?=
 =?utf-8?B?enFhQkk2eFYrYUJtMUpRVCtPSjl1Z2VGOHZoV1Z1bG12SDBJNllUV2UwclpC?=
 =?utf-8?B?WTUya3ZMYW1LOFRsRjhCc05PMktXcnR0a2ZObzFOd0FSbjFRbHljbmdVZFNQ?=
 =?utf-8?B?UzU5SWN6WmRIQmNXMHc2ZUcrZzgya0Jmb0Vid3R3VkhVV1QwaDczcitEV0hq?=
 =?utf-8?B?YUpoMXpEU0ZuazhNVmdvTWFwWnpzUDVVUGdZT0Yxa096WkpDMjlKeFJzRVUr?=
 =?utf-8?B?K0lseFdxOUJuZ0VpTC9vdz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47f70f28-9b78-425d-063e-08d979274eca
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2021 15:33:18.4332
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nx+ir3qej5KZ3byzofP4bEo6YNdRBgCArW08nXNf3A6Qp1DQUfSsfOJ5L4q8qyuz9UswjNdtOitBal0ieX9vhRVPWfciDY5aZu0CPSVhoEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
X-Proofpoint-ORIG-GUID: BHZwdzCW90vuy8A6WmGcW79bmcJwVI3s
X-Proofpoint-GUID: BHZwdzCW90vuy8A6WmGcW79bmcJwVI3s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-16_04,2021-09-16_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 malwarescore=0 adultscore=0 mlxlogscore=999 lowpriorityscore=0 bulkscore=0
 suspectscore=0 phishscore=0 clxscore=1011 spamscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109160095
Content-Type: multipart/alternative;
 boundary="------------03A1D66AA166678D91E3234A"
Content-Language: en-US

--------------03A1D66AA166678D91E3234A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alex, Diane, Jon, Joshua, Michael, Richard, Ross, Saul, 
Stephen, Steve, Tim, Trevor

*ARs:*

- Trevor to move old AB defects to M4 after call

- Trevor to ping WR folks about moving Old Milestone bugs

- Richard to add a comment to 7298


*Notes:*
*
*
- (carried over) Steve encountered build failures such as the one in 
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is 
testing/investigating on internal Autobuilder instance - Trevor is still 
planning on looking into this!

*Medium+ 3.4 Unassigned Enhancements/Bugs: *68 (Last week 77)

*Medium+ 3.5 Unassigned Enhancements/Bugs: *10 (new)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(No change)

*AB-INT Bugs: *49 (Last week 48)

--------------03A1D66AA166678D91E3234A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alex, Diane, Jon, Joshua, Michael, Richard,
        Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <p>- Trevor to move old AB defects to M4 after call</p>
    <p>- Trevor to ping WR folks about moving Old Milestone bugs</p>
    <p>- Richard to add a comment to 7298<br>
    </p>
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
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>68 (Last week
        77)</p>
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>10 (new)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(No
      change)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>49
      (Last week 48)<br>
    </div>
  </body>
</html>

--------------03A1D66AA166678D91E3234A--
