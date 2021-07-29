Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.11041.1627571648849688909
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jul 2021 08:14:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=cHUJrffe;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=384468f419=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 16TCrF2h007255;
	Thu, 29 Jul 2021 15:14:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=oKl2rOTJXP1NIX62Jy6ZZsDvox+Hzhzj665CkxOWnIE=;
 b=cHUJrffe4zPMlx85oztuYGzsbAw9Egio9DESax1Iyin6hrm+zWED2XeXRYaZq1Oy9zc4
 2lEPbE2HF6VmLP/plrzdEO1C+83SNpgjhbMfKYYMK/XLhm99Y8GWKJ+DyRUSYJx1a9wp
 UDHuuS0MgkzVpqHW2yqMvnesZ7at954pr3wPw8w/gotY13pVt0BwPZPlZQYGNcWIXKpG
 dk1UrGyRBmGy8CBgtLHm4iT66bQV+HI3+Lu140HGv+mmlPPp4z2J5zjCYRCVojB7Bvo5
 KOFGM7UvWYTKrnkv+8EqW4IB9Hx76/HGVzL+s6ymX/dlZFUdXOQJ+sTnvbLkqvo4pIbO nQ== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2105.outbound.protection.outlook.com [104.47.70.105])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a348t9sjv-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Jul 2021 15:14:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MiSqwvoEUx+HNoumaLs6c1EHcfKk9Sxmfcjv2zaQrTwlYNRWNzWaFdHVVzsP3zOJ+AGagF6q3yh7Sa5Mv5/j9g6UqBgTf+UocbTk/FUkLWUP0XeiD3HwmpGaLM1SBj4m2kbtLw3n2KEBIEIt2ugK9Jf/zIdpMIqt0CLfQcPLaPPRpRIwI3hNF6oQXlyGrsq3xLlZtEBNIiVLFY8yjU7ov8nMMuxHDk3uReNwC8CsgRhsPE1iiab5UW5+n/bIcUXStmocd3es4Zuabyg6WkPwiEvTUU0RjlH7I+kqQXY04u/HfyloTfnHR4SUyMwyq57dgq53aHsx9vZWoHpNOWdBGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oKl2rOTJXP1NIX62Jy6ZZsDvox+Hzhzj665CkxOWnIE=;
 b=QHHVSU/t2eGe92T1LFiyo8LxXZ88tbPQ9fehseaXHveVwTiyMN2YIzxUMvrCbKQn3c2P8H3QnNFHAQuCnciCecD1SQh9cH63SknrIIrlonNocs7w1Pf21yEbV/BQLTSd7hu82HoOy737sVqzrJtVhtWaTmUzEE/UyrYlgmYI2i1xaJpeIvDRtTGFIzB0EDLp9moQdHWGbEMgMlL35atAV6tYL77ALNh2wqZ9drKKEPRngbT/RIptNm8vcs9leNEvTYH6Bs5VubZEeD4pphe7IlFp8inAfTNNVvkpVjqA0gMfx1NrRd9s4vfWGsSv5Z0XzZzs+zvJKhCNKzuf2QGEkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Thu, 29 Jul
 2021 15:13:56 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::1dda:f315:a48c:fd4]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::1dda:f315:a48c:fd4%4]) with mapi id 15.20.4373.021; Thu, 29 Jul 2021
 15:13:56 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 7/29/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>, steve@sakoman.com,
        Tony Tascioglu <tony.tascioglu@windriver.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Message-ID: <6f994685-4b63-8ed2-8941-441909e3e0e6@windriver.com>
Date: Thu, 29 Jul 2021 11:13:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: MN2PR02CA0004.namprd02.prod.outlook.com
 (2603:10b6:208:fc::17) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0::f245] (2607:fea8:c29d:d7c0::f245) by MN2PR02CA0004.namprd02.prod.outlook.com (2603:10b6:208:fc::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.19 via Frontend Transport; Thu, 29 Jul 2021 15:13:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b72f8531-8f6a-422b-60ba-08d952a37bf4
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <BY5PR11MB3911F1026EB2F1B0EDC383C39FEB9@BY5PR11MB3911.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 VBGY3xojVpt/aaVjIWkFosesb+V5wEvzqZWN9Zeg5ajGVSSRJSCRf6ZbyXWF5NzMIT3DgGQAAFKF+PkCAzZWWAFtlfdwS7iX5/GNbHIUSb9aM/7ih2seKLfUULJ+DQarqnuqV2uLbrxpn+kK79ZRtYSvhwV2kZh0DnFgrbGWOzYwbS/bEGtlB0sfK7TN7Bzc5i+UOzKqq7J5brVQxXeLU/ZfVdszzgVZUQj1Rez9DY5eQ7G85SXg8Qzp2A3M9VR9ZOrEEp87QG30n548XAt4Ll0ohdx5m2CJuK2BIqx5QhZoWvrxSId/2hRfbZdHPFUS9BDL8nSyMqmopr9HnPzzXDg/rLxrwfA8IK6EFXVXc73bAuuuxQNa/Z+g2z2PJ3bYXbfcUtAwn/5JakWRL1utLdqRwXM9YCdwo4S9LE9AYlL5LnoGxy4q6g17wf3V6xqwVMnIfz0DarmTGEOsyPsOK64ajknNijZqxtmzSqXJHQC1roa/62sdJU2q17kqk7sw8+kr4I608UFknqC3nBgD0+zl/qMIv0RnF7MrlVt3/5u0n6MY09G3HH3ItLDr0Fj2w+SmNXi5rQc2LTk1t8sPwVCgvicrPf62zczeVlOblGQWrYrgx8cwA49MF5/26dFSPlK52vJ4UWV98Bedil4IekwYUAcB4QIz2yaVAPUbnEwNy4l357psDlxr7OF9gGQD3o/i4L/pCyIcGWyctF2K2mG0lpXzgnQMulWlN8EkeaBLJn1pFpQXKbcDn+EOQ4RJqQp9GLL4NcgUMHfiDnfq9hWUfiyNTI1ScaKXCQnnMDAsNtkLDOZwrSVVZ3AT8psY
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(166002)(6486002)(6666004)(8676002)(4326008)(83380400001)(31686004)(38100700002)(33964004)(31696002)(36756003)(2616005)(6916009)(86362001)(966005)(66476007)(66556008)(66946007)(44832011)(54906003)(2906002)(508600001)(8936002)(186003)(316002)(5660300002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?Uko0ZGI4MGNjc1RvUnVJVjNuYkxJN2kyRHJIUjlJYy9xNExONkRqTDhhVXc0?=
 =?utf-8?B?TzJmbU9iZlhSU29QdGY4VDBUQXJZNmtKWWFHM2dmTCtOMDBOZnpoYldFR3k5?=
 =?utf-8?B?cDF6bE52Y3JOUjNJWU5BcG9pRDc3QkF0R0NiSHUwb3ZxZ0d6VVIxdTh3Mmc0?=
 =?utf-8?B?MFdNS0pLa05NeWt6aEpuWkRUODJLNi9tcytwRnhOMzJQOVpqaHUyaUJUenVw?=
 =?utf-8?B?dFE0b0hOcE5ZRWNTNzlULys3YlMxaFduanNuVDVXcGpJV0tJeDJ3NFlzd0ty?=
 =?utf-8?B?MGsvNzhtUy9FY3REbEtxdEcxNE43RmZidHJHdEpnUUxOVzZFRHl5M3VxR0lp?=
 =?utf-8?B?cG4ySEl3aU9HU0ZzUjRHY0ZlOEUrUzlqeGJQMmZlSXowNWpKL1AzaXR2ZFNt?=
 =?utf-8?B?ZWx4UEk0RW5WK0p2MjRPWWU3aFJaWHZRaXJ1a2tKdzR6VjFqSDF3aFltK2o5?=
 =?utf-8?B?OFlCUXErODh2MWJJR1dWMjVGRUNkU2krQXVyZXVPN0FaQjlwTUlNRXo0S2xF?=
 =?utf-8?B?eG5WS1JPZWZhOHVtT29Vc3ZBZkdDNmliUG5DME5lcEQ1VGVvWWVraThTSzVV?=
 =?utf-8?B?WHFGMG9xOG0waVlnUjl0S2ZNenlpVTZyL2ZHZGpZN01TclI5djdCQTNiVmhI?=
 =?utf-8?B?MWh1N25HaEtSRnZGamtwV2QyTmpVSXN0dUVBeWdCTWtPaUkwajVRcDU3NFZB?=
 =?utf-8?B?czY3c3VadDlSelNpc3NsOXRZbzg4bTFkWWhkMUlYaVRwSjlSelc3bzl0RHZ6?=
 =?utf-8?B?SjlETXEzVzhYVFFGVG5nZ3VWOFFRWHhMZlRxV1JVNVhNQVNiMXRxc2VwNEcx?=
 =?utf-8?B?SUYrLzlYL1AwUzVwa2xLOHNCbms2ZS9pWUZEcUdhdzRBUDlhM3phN3NRSTBk?=
 =?utf-8?B?eFVrQ3F6SitqUkJuMjhlVW1zZjdwT3RBa1dIOU83SXl0b1F2WnRZSWZMbGZs?=
 =?utf-8?B?TlNFcFpIcFkrRE8xTVlHUEx3aFBRcHpnNEQ1d0h0anE4KzFudk84UUZZQnRM?=
 =?utf-8?B?czFTTXlLaUVBUzdmSVpNWTNNcU52cEdCMk5vZmxtOHFRQmF5R1hsdE5sL3dK?=
 =?utf-8?B?T2hQdzdCcjhZVE1nMjh3dW5mSmQ3MUhsRWN1OXI5dy9sVlpLaFZjV3BjZzBN?=
 =?utf-8?B?TE16bCt2clZDT2I3UmFvaENQZGphZGw2bWRLM29RZHduVC9pd2dXK0FaZzM4?=
 =?utf-8?B?Tk5pc1ljMEdxaVFTSWJYTnRxejcxVzFvemh2M0puaG5VTnlkTFA0enJteGFV?=
 =?utf-8?B?MkQwVkc1eHNxTWlsVk8wOTZiSWUzcFl0NnM5eXJGUU1RVU5QQU9FbDdpYmZh?=
 =?utf-8?B?cGRSMkx0Qy9Ibm1iODJhRkJtZ2hNYzlFazIvd3AwelMzNklSb09aTHRyd2E1?=
 =?utf-8?B?NGE0aWxhUWx0OElhOCtXVzJuVnhSRW5nTXVOVTNTY3N6WVk2bGhlQ3VURWQ3?=
 =?utf-8?B?T0RhazRwOTNlREJ2SXVWWlpIN2U2NmhnMTdFalJuR2hBMTZpRFdraTd5Sldj?=
 =?utf-8?B?L1RFTlQ3dk5NanZ4L3d5dDlSTkU3b3FPVHFoT2dLQ1pidzBlY2c3N3FYWnNZ?=
 =?utf-8?B?Z29hQ3pwR3dBbHNlendJTHlqTFk5UVpMU1c2VVdWSkk2V0dIUEFsWWpXMisw?=
 =?utf-8?B?cE9DT3MvQ0RFM3pxS05SbVJHSk9PcVdxM3ZscGY0RzRPMkRML2JxcURaemVj?=
 =?utf-8?B?RVFOeFJLQzFnZEZxOU1OVHF1bGtxV2l0L1h5KzRzZVMyN0sxY1ltR2ZGa2xG?=
 =?utf-8?B?dFNWemk0MlBXSEFLS2VlaVB1QXFuV1hCZlJYVURKNm03Z3JNQVNIMmhEMVRh?=
 =?utf-8?B?VktDY3FzTDJvakh0TWgvZz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b72f8531-8f6a-422b-60ba-08d952a37bf4
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 15:13:56.4054
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4/DjMmIerxAsqX5QdOmds3l99J4KF3bjpGxLgipKi2SCiMh8Mq/iB8qtibmYmhaNDgui6ps77stqT9BlZOqLvm+CF3J5voVXbXC3VExDCQY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3911
X-Proofpoint-GUID: UlOkFtvD198bS8UhAq2ABUNpTS-MBvqw
X-Proofpoint-ORIG-GUID: UlOkFtvD198bS8UhAq2ABUNpTS-MBvqw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-07-29_10,2021-07-29_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 spamscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 clxscore=1011 impostorscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107290096
Content-Type: multipart/alternative;
 boundary="------------C6644901750D45B504E65125"
Content-Language: en-US

--------------C6644901750D45B504E65125
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Diane, Joshua, MichaelO, Randy, Richard, Stephen, Steve, 
Tim, Tony, TrevorG

*ARs:*

- Tim to talk with Intel team about bug 14491 ([QA 3.4_M2.rc1] - 
stap.StapTest.test_stap failure)
- Randy to discuss bug (save which recipe fetches which source) with 
Robert and come to a conclusion

*Notes:*
*
*
- Steve encountered build failures such as the one in 
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is 
testing/investigating on internal Autobuilder instance

*Medium+ 3.4 Unassigned Enhancements/Bugs: *80 (Last week 73)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *28**(Last week 27)

*AB-INT Bugs: *46 (Last week 49)

--------------C6644901750D45B504E65125
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Diane, Joshua, MichaelO, Randy, Richard,
        Stephen, Steve, Tim, Tony, TrevorG<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <div class="moz-text-html" lang="x-unicode">- Tim to talk with Intel
      team about bug 14491 ([QA 3.4_M2.rc1] - stap.StapTest.test_stap
      failure)</div>
    <div class="moz-text-html" lang="x-unicode">- Randy to discuss bug
      (save which recipe fetches which source) with Robert and come to a
      conclusion<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">- Steve encountered
      build failures such as the one in
      <a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Details/593109/">https://errors.yoctoproject.org/Errors/Details/593109/</a> when
      attempting to run dunfell builds with the PARALLEL_MAKE load
      averaging added. WR is testing/investigating on internal
      Autobuilder instance<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>80 (Last week
        73)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>28<b> </b>(Last
      week 27) <br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>46
      (Last week 49)<br>
    </div>
  </body>
</html>

--------------C6644901750D45B504E65125--
