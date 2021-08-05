Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.10240.1628176884040501674
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 08:21:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=OL33HuaF;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3851e0a6a7=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 175CUkDc020903;
	Thu, 5 Aug 2021 15:21:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=pLZIdxbwHHQKqn0NuDgKgvnOoV82jozd7c7a4tN3eFM=;
 b=OL33HuaFRORkp/kfi39ALHDRPtYraY8X9oaS4mGi0bPDFF8qwz2hDIXi72TE1JTTDR9T
 vs1mZ9WHqkMaL2zcBay7q6cAapEcLXoTqeewHehrSO88HDJJNgcfFg12O+G29TIGB6kQ
 YF+CIBvCGb0gCRqOYfO9MH3Pkfj+txcbzlzRzMOjIWrKEexCxcrdtIFRGxJ1Vzlklw1s
 Pdad/PNBnO+9Sx9TgIAk2r9edcfC8FWo1a6tH0zDjFQirtkZHFQ202J6/2fpfKuV/2Gh
 MLo9D/4MtVkibO5PoKckqrqUhOkeTJIE3S6ERF5x4Cz50+fR9B6rvZ348JD2hdgNyrtO Jw== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2046.outbound.protection.outlook.com [104.47.74.46])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a7w718v73-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Aug 2021 15:21:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aaFBhzdYeEWZSjoeNPLZUgKoe5/LoKQpzY0SlJXnmmECkjrA9/9TziKR9Zy8A2OEjwO/V5Kj+ajojnJ2vFtEmSlzFs094OZoKA+1YbVM3QrCm7YgvvAHOIX+FDGeigoxt+ANQU7jWXUVkEtfnYo2MhGatDU8SeyLBlEonlFL+USxPCz+PuJA3Kj9DRsAdaFaZ2BBHrsu/WEWBAQMJPOqOUmKIDnKb7H/1gVyScjzl1yI8jm+/7xkajhwarwek4IMFokB56V4oHV9yW2T1MfnpDzL1eLXXw/cLEoxDU1ScYADtlUxIGVOl1Kr3ZsMJqiWyz8upe8zoTneKi4u3s2ztQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pLZIdxbwHHQKqn0NuDgKgvnOoV82jozd7c7a4tN3eFM=;
 b=BCXEU583LYhzr/Srv/g3ZbokEmWXMQohXjjzNcmafdYq5Xj3267EVXw8ET4KYfDPjwe30yDYuuut0G3ZLK1VtjVV1p5w9iUfuE9gwssEWpfuTlFt3bL2LWdOn+h51cZWVKLTj4dkMjlfb2tGXGjuLY9XrWxR79QIXwpjiKcKhV/muu9DlIf1/MFyTiVogBTikb0chn8574lIDhJf+nOVLIW96yHbxmtCgRXXS9DPWB7fQVcb2BkLyjoGpWmlD9QJENhWjcjyJkQyAHGFSYJ8wIYtAoVgQ+EQr1IFN4rkJbOpVWiHvSs/0OFy004AAtSQhlyHJOMI1zT9ZqycIK52JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB4829.namprd11.prod.outlook.com (2603:10b6:a03:2d3::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Thu, 5 Aug
 2021 15:21:16 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5988:9cf6:c130:3530]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5988:9cf6:c130:3530%6]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 15:21:15 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 8/5/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>, steve@sakoman.com,
        Tony Tascioglu <tony.tascioglu@windriver.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com
Message-ID: <e2f64ac9-241f-bc0e-6c7a-5f9c9033bda8@windriver.com>
Date: Thu, 5 Aug 2021 11:21:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: BL0PR02CA0137.namprd02.prod.outlook.com
 (2603:10b6:208:35::42) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0::f245] (2607:fea8:c29d:d7c0::f245) by BL0PR02CA0137.namprd02.prod.outlook.com (2603:10b6:208:35::42) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Thu, 5 Aug 2021 15:21:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a373e27a-8587-444b-de27-08d95824aab0
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4829:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <SJ0PR11MB4829C7A04B07484BAADEFD729FF29@SJ0PR11MB4829.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 akU2aW9W5OTCAm9mYB0uPjPm8DmXARMAW8qRPFdzx+K8haNvysV2pvLTwt+U3B0nDAlfSmyx7sL1ZHg0FPJ4WZCWBz+6Te0kqNsH1EeLMtrGsWhKdFdK2/GvxbmEQejX33tYOpYn5txpNOY3yv5wRvx4eDQ2umveC7KP7gx61BDtRao7rphvjexWAb+OUMO2EHI4H4eY6qZbZbJPyUetVZfQgsUs9AmQNUbHlTMoO53MmnJxeFZVUyhIm3ZzKSZZythoB2nG+1gmB68rQcpUXp0QmdUFifZyy7DO7TJ04icmQ61CKRwz82La0F9F/QVdpWDXM9fjq253ddNJJpqQtIP92APsSBxrtUAaXQ9zh3z6hVr9tCcyZ5diKmisEPiRoY5TMzHb0O6yQmiG+v7OL+vnb+AUDGvsEG+OeyH5IdZlDwzUr0jKk6BV51D718Y5wJYRn9C9Dgj8OvM0MhzN0knQg96AaT16/CrHxvqID480WVSVhL2bZTgQD9hq4mYqyouVUPSQBLU7SI0eLBF6hzQWsGGwyFP3d5cnFkvNeh7z0l5NazqhAhEFISEtx2nS/UO+1eTQP8vz1uGGY5KywTd37KKr1SUiyPDM2nrdrvxgbq/7ayJXeW6l9GbomaT5cWF3i6L6kIAI/HoCs7J9QCSdslgdin7E1hLfG72++5iMN23vCX2D6H8ppwEWQ2P0jh3yzzbzSyHu/JxsrZPrX7MK72vG1fumcaDx9oCsT6n5UdPYxVxwp32hogqM8/FaXyS1PxO+heOCwnx0jxlejfqXQJePrnNmQdDKeUXH7u4UfA0FHAphctX3Vx0y2V3M
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(54906003)(316002)(8936002)(6916009)(2616005)(8676002)(2906002)(31686004)(38100700002)(6486002)(508600001)(86362001)(166002)(36756003)(66556008)(66476007)(186003)(66946007)(4326008)(44832011)(33964004)(83380400001)(31696002)(5660300002)(966005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?U2ZZQ0hlc25qeWdKNC9qWm5LNVFYbU91cFlhUGsxOW1CRXg5T2Y2MHVONnp4?=
 =?utf-8?B?UTFZS2FmeGdjbUFEMkFENkxXYU82OGxNaUltYkJIVFBJRjZDbkNxWS9SVjda?=
 =?utf-8?B?MkxkSUpCTkpCTitoTjcyYjY2QzZMLzNRVmNrNGdDMXdWcGd5MW5HazRTSUVy?=
 =?utf-8?B?OW5UOGo1a3pJZ0tFVE5Iak1Wc3FuOThjRVBHVnJBdTdOWWIwTjgvajNFeEpN?=
 =?utf-8?B?TVVvNXptZXhLVXJaNFQzbFc5TmlKdWpaOWZjWmlUWE5pL3JCcmlhd0FDUnhl?=
 =?utf-8?B?NTF3blFWVTBodHEvbFAvY0R6NWxuSnBScmZFWVorTEltZDRRRVJPVE5kK2t4?=
 =?utf-8?B?cmJtWDA5UzE3R015ZWxRaXpyaXZuelpiQzdoM1laKzczeG0vOGF6L0hFeDhq?=
 =?utf-8?B?OXhQbU85WWRzcGZlQzNIc1d0cjJTZlVYWE9WbFVJOXR2UEt5S0ZDcHN5Tzh2?=
 =?utf-8?B?SVcwandaOGxKOENyN3VaWFowWUp5WDlqbmxGZzVSK3RhQk5ZazVEbDcyUGRv?=
 =?utf-8?B?ZmVmOHF3Tm1KOWhzdzZUUUczUXgvazR4RHdYWXpRRnVSTFZrSFZMdDdaZmhD?=
 =?utf-8?B?S29MUmlzWktQWkh2Uk5iN1lpc2ExL2NWTEg0ZlhPRzNvU2Vlb3V4MDR5WlpM?=
 =?utf-8?B?L1l3bGpxaUI4RDdJL2tjdHdHdmtsVCtyYmtDa05aMjJCU2JlZ1hqRi9NWDdG?=
 =?utf-8?B?d0Q5aDBaNkxNY0JvdkI5eVdmQVBEdUF3RVZWMkNKTnIvSHU3T05tdUpVV1E4?=
 =?utf-8?B?OWh1VWFtb3hMYlJmWHo2YlpaQ0ZHaGEyNXBNeE9YbklMY0J1UEsxRkNmMGdX?=
 =?utf-8?B?ZGVYWUhFbVBmUnk1cUxwdVhCdE1acE9BSWtQYlB4Tm9JdlFXYUdYQkd3NVNa?=
 =?utf-8?B?dkxtMnAyOWJ2ZHNTZTk2R3U5dExBS1JGRjdzTDJReVd4SUVLbGJTTkd6Y3VE?=
 =?utf-8?B?TW5lNkFiSG9mVEFUS2EzdnlPY1A4TDFYbHVKLzREVDNwVlhMTlorOUpBbFIy?=
 =?utf-8?B?Z1B2Wk5SQlc2NDNiK3VLWlZTSnRHRHh1eW96dEtpcjlEa1ZhU00zY280Y01C?=
 =?utf-8?B?TndtZEg3YmI3dkxQN1ptNmRQek1LQ25rOWtqREtGZlB6b2IxQlorMWZJdDRt?=
 =?utf-8?B?ZW1RUWJlR2ZHaVRSSmtOc2JWU1MwYlNFVzZhaTdFK2JDYUxveTcxNGhEUkM3?=
 =?utf-8?B?R3FRMXByRFdqM0dmaXFvZmpSQkNnVnVKOFVyWDEzYXIrL3JrR2ZlUkE0cVNl?=
 =?utf-8?B?cFJMM0FPUTBNb3dzTjR0VDBXOU5qcTY0WmptRDltS284UlJVUXJjL1lLeGpS?=
 =?utf-8?B?T1M1S0pwbDBNVWhxR2pQa1N5empWWmdrUVJVRTdpVnUzcjRQQ3lEM3l1Vkdi?=
 =?utf-8?B?L01tOEFwQ1EySjRkS1pzVkdhNDBETXZXYjdtdHlCN1grNTJFOEJBUUZFdCto?=
 =?utf-8?B?YmljeDVFWDR5dTl0ZUM3d2c2U09RbFN3VXV6NVdmQmZMZk9pNkRpMkZ6dlFB?=
 =?utf-8?B?MGNaYjFKeFlkazlVaHZ2V1pGVUNnMUoxMXVwMjZKbGtpb2o0d1VhSUM5WHpN?=
 =?utf-8?B?aWpoeFNwd05CSVlFb3Z0aHJZMkNEMnhHdXlwY1g1cHRMS1Q2WUtqOTM4MzZF?=
 =?utf-8?B?ODdWZUthcU5uakpFMVlFdUR6T1dXaHFmVWFqemZCQ09TdCtseTZZZG85Slg3?=
 =?utf-8?B?VitWYTJsUjdBaUNoL3NGQkExdzJsbStvcEJHczJ6RkhJVmZPWkF3NytaZkR4?=
 =?utf-8?B?dVJzSWJtQmI4eDg1aVMyQmUwRjNOUEY3Qlo3RXByYVUwNXI5YUl2Z3FRMHV1?=
 =?utf-8?B?Qy9BUzVNSkZ2REM5a2dRdz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a373e27a-8587-444b-de27-08d95824aab0
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 15:21:15.7429
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E2+GDs3BKe23rxBNf0RpLEg1RT2IoQJjKYgQ2qtuTsRe19dfkpetsNPOhHB3TxMxGYWhFbFzN7lUaScYnmgopm8/umIbH8LG/6U8qd1ck1s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4829
X-Proofpoint-ORIG-GUID: d2sE-dIn2MG175VIxvXp_m5JY1JJgZWu
X-Proofpoint-GUID: d2sE-dIn2MG175VIxvXp_m5JY1JJgZWu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-05_05,2021-08-05_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 mlxlogscore=999 suspectscore=0 clxscore=1015
 mlxscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108050093
Content-Type: multipart/alternative;
 boundary="------------0B3238F6A199CF8F02330BE3"
Content-Language: en-US

--------------0B3238F6A199CF8F02330BE3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alex, Diane, Joshua, MichaelO, Randy, Richard, Saul, 
Stephen, Steve, Tim, Tony, TrevorG

*ARs:*

N/A

*Notes:*
*
*
- (carried over) Steve encountered build failures such as the one in 
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is 
testing/investigating on internal Autobuilder instance
- No Future/3.99 bugs to triage this week (wow!)

*Medium+ 3.4 Unassigned Enhancements/Bugs: *80 (No change)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *30**(Last week 28)

*AB-INT Bugs: *46 (No change)

--------------0B3238F6A199CF8F02330BE3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alex, Diane, Joshua, MichaelO, Randy,
        Richard, Saul, Stephen, Steve, Tim, Tony, TrevorG<br>
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
      Autobuilder instance<br>
    </div>
    <div class="moz-text-html" lang="x-unicode">- No Future/3.99 bugs to
      triage this week (wow!)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>80 (No
        change)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>30<b> </b>(Last
      week 28) <br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>46
      (No change)<br>
    </div>
  </body>
</html>

--------------0B3238F6A199CF8F02330BE3--
