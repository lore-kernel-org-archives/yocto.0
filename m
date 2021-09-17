Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.693.1631892041998794509
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 08:20:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=pwZ4dyLZ;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=4894dcb9e6=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18HC8IOi015604;
	Fri, 17 Sep 2021 08:20:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=subject : from :
 to : cc : references : message-id : date : in-reply-to : content-type :
 mime-version; s=PPS06212021;
 bh=QCOPbhUYSUN68hepPjbcJMbksk8DyaMPFu1dBSdfKss=;
 b=pwZ4dyLZA1Wez+UenUf5CdNMFhKp1VVFulJrBvgB2WirIong6W/HN3QTNgz5eJ7q1fnn
 CoDuCsmU47Eq3tsRA9+koGeetkRidXqa3r0sOLNaw+PX825uUkg8k7Tqc189ApY+frnl
 U1AnT9Dp6zA5cnwPMIHUSCBiI0BkMGQZUOkbmA28nNnfYwYRhNziexXs6+ENmmJmOXUL
 Wiv/8hkoExiUZOcOH/ujbUu6Rhmq7pBJ4QUblbmsHblfDmft7yFMGfrmGNcckQANW3Ur
 V5rPoLmIaOR9rU0NedEIxintwLTifbVCKbpbSdbzjWCb0xNHbhzfJ7wJmeiLxDHlCEqL MA== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
	by mx0a-0064b401.pphosted.com with ESMTP id 3b44uj96d8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Sep 2021 08:20:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=awRaucRZP8pujPPS3DiTeedCu497lZvC5WmQ/dALfynnaBJT/s5kJpyp+AshWF4LdOBUc6H20gcH8bPa+kWcCB5nCH/sSD2pQf3TzZYg5Jq54BAC5GqRo3dhGvCoqZ7GVNK0vYjBzTJjQNzbhVJaabZziLxLYfrtJy5I6pvusfmxxRYN8ymeigkckQz/Q11krVI/U9dBQs5Jfk7v+3LiXe7snr5U/dIHyPLHQDlPdjg9yuCnz2DZbM/GZKexfzNWh1KPLeBTzX/SSD6TgGU/csCjRGjQ4V9a2dZGxGFqW9MZPgGLY2uLGphVrU0AqtDjTZ7yALvT0bgdNNdHKcE5Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=QCOPbhUYSUN68hepPjbcJMbksk8DyaMPFu1dBSdfKss=;
 b=m8lgyP3PsRMb2IfpAeNUMy2qo9L8YGqzRNjGe4Vs7nzzAwNqcZY4cLJK1gnlB8kcCdLGLR1SuIJtfQvC+0UMDuQBYtvoQmzBogQEZ+NuzZDaW5xM8WIPXbLyiW/+ijfRyVvwOtozK4/ewhBWMvt4DOmodWdpGUpM+v7o2CMfE6uMx0unQXzuitq2TKjME3PXTm9clOfQqQuTyhAekmV8KPPfAyMk3WGoQScDVrB8lOqjDk+/I5owv9x1QW/8q61R1mIM77rykjeZLIx1p7nA0PB9/uUH9yWPBhmGxzRmxhusJnSem5xsboSWwMEcz9OVXw1PD0wZ6fPMnoN/6Gu0IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Fri, 17 Sep
 2021 15:20:19 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1%4]) with mapi id 15.20.4523.017; Fri, 17 Sep 2021
 15:20:19 +0000
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 9/16/2021
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, steve@sakoman.com,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>,
        jon.mason@arm.com, Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "Wold, Saul" <saul.wold@windriver.com>, daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>
References: <2d5ab941-d94b-07de-c6fa-5e71f088e267@windriver.com>
 <ecd4e7db-5536-1430-df78-50b03a7729dc@windriver.com>
Message-ID: <f33c30f5-d331-69db-8237-324a3449bd80@windriver.com>
Date: Fri, 17 Sep 2021 11:20:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <ecd4e7db-5536-1430-df78-50b03a7729dc@windriver.com>
X-ClientProxiedBy: BL1PR13CA0380.namprd13.prod.outlook.com
 (2603:10b6:208:2c0::25) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPv6:2607:fea8:c29d:d7c0::81de] (2607:fea8:c29d:d7c0::81de) by BL1PR13CA0380.namprd13.prod.outlook.com (2603:10b6:208:2c0::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.6 via Frontend Transport; Fri, 17 Sep 2021 15:20:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0857aa99-cd88-4c0e-e4d0-08d979eea8f6
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <SJ0PR11MB4845B6358E275B4FCDF377E79FDD9@SJ0PR11MB4845.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 j9OqGoYe1yflW0QRy8obbvC5ywkcKPluo4ZCeo/+rXBLBx+0K4quhm2+yd9VwhyNqvjggpuuAWqprJeApwABvcCvrNdtxcZLboSvaqIlwez82XFYEbcd3dUo2zR5hjNoE9JAkGnVw+as1Zt1ZW/IdNljO8FNGQEY4DXWQL5tbC3PoqNsXkHgEZvAFKVu97tzwIixcAQCX/KY9YGE2dokd7OUkjeJi8rZLUilYma8YGGkqSyu6VUbESdoIClOUkKUUI/p2NLQ7MvgA4K/w3ZOv7QTYwfqTuGIEfhcl1Tehf0OdluOiBdcTW6YqzMsIEhg8v4UkO7xT6GSXmGVbfqM8G9cpizxquTiXXsphoidty7ThUQbsatpTikMxXZr/j9CKXE4TDIteJe5tDqYWs9pNZQjvMNIuMRuc48ZC38HuSmqqc21UtsFTZkXUqJqyrNHnz6ot+QEPhYJguMD8PTEog7jVU23/fqHLxQch0X0MNP/bfC8WKd8FGLdo9kg9FXqK7YsAivmaD7OEcBCoLV39SAWAhl8lppeqq+n8yUsI0+TwULsqIfdMlX6x/DzQXAKqVWvT3DkODs/8cdD4CZ+CQjIE1nl2ZyawwBY33CJH4S+ziHW6DqCrOvgPy1oPQB5MlfUetZCDZuwKinMjvHrqouavllGx4xGN1c98oZ1FLxFwccHYO5Fp9nxT076uzcx6Uf0PJzV0uoM/U44wa0Atoet/aFOTvUsV0VaTPEL+4BhhBsZv7yAfTnpvR3bw9OYthtNOC2VCj29HvxCHW9vONLS31pC/9k3B5pL4n8wsl68Fy0DEDyo8Ko3n+dGNvuXBjXxtWDUo9SQrSXiD5stuC+CuinSSHE/Lx/Gasj7yNw=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(53546011)(31696002)(2906002)(33964004)(6916009)(86362001)(508600001)(44832011)(8936002)(4326008)(966005)(8676002)(83380400001)(6486002)(31686004)(36756003)(66946007)(66556008)(54906003)(66476007)(316002)(38100700002)(5660300002)(166002)(186003)(7416002)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?djgwRXA4OGNVZForNTY3RHFVeUJZUXJkZjl0U0ZobE8vR3dWM2M1akpOWGQ0?=
 =?utf-8?B?dnowRnpnTXRWVTl3Vlc5Q1psd0VMaXNZbnk1UG9XTjRaSk9DZ0UraGFnSTVY?=
 =?utf-8?B?T1dudm5QYXhYVnRWODFMcnRIYXUxbW5SbEErMWpyS1BrTmdFbXBGVXBTNXMz?=
 =?utf-8?B?b0Vrc0VLY1V2NmNTYm9TWnZ1SVJ2MzZ5eG4xQkF5akh1ZkNsUnVCQi9hMzFy?=
 =?utf-8?B?WHpMUWJCcFlqV3NFRW0xeERwTXF3RlJFTTg1Zmpxalp3WWVYajNRck40OXhJ?=
 =?utf-8?B?eTZleXJrMEUyZWZIR1lrRkU5a0RsYTdLT2hYNmUwR0FuYk1ibExCcnUrcUp3?=
 =?utf-8?B?RTcvaUhmUTBQWmFsQWw5bUx6MFFkcC92QTFsczkwWTcrNWczQ3oxci9GalV6?=
 =?utf-8?B?Rk5qQnl2SG93SEhET1NwUjFPMEd0NXBWVWN4VkVZTDYzUVN5SitnZjZHdUsx?=
 =?utf-8?B?SWFxT01mU0Yvd0l5ZmdKQitQTDhwbjcvZUhoMkNoUHUzWHJocnZPOFMvVnVW?=
 =?utf-8?B?V2ZEcTNIVFRLeUxGeG1DNWt4czl3TXY0ZG51Q2RiZW1qOWx5dlFVclJ6TGpn?=
 =?utf-8?B?RTlWQnlCcGtEWUgzbUxQQlpsVTY0eUZRaHZ4MXBQQVVIM0VpZUR2NXJFbXcy?=
 =?utf-8?B?dGxDMHpOL0tRd1I4NXdUWUsxZC9naVpwVFZFZU1JL2N0ZnJKeWl1aWU3Q05C?=
 =?utf-8?B?US9KZEhGZnNNNC9UaTJ2WkdUNE5ST1h0WEw5UmplSnJFN2d0cnNWU1c1ZTFz?=
 =?utf-8?B?dWZSME14WU84MWt6eTJUdGVTOGJWcllIWXhDbXdFVHZZSVJsQVM4ZkJuZEls?=
 =?utf-8?B?MDBpSDZnb3U5M2gzMkQvb2w0ZTJhVDRoUC9ybEVhUFdxdU9oY09sUUZVUUZT?=
 =?utf-8?B?S2ZuSm1sZVZRWVBjamRUVWdHVGdZZU9HUm5IRG5JRGc0Ly9mZmtVNkhjb2JU?=
 =?utf-8?B?b3gyb3JzdEtFdUFDN2hhK21lQ1BRdzZTSGs0UUNRTGlEaWhLRmR6NzZaVnBS?=
 =?utf-8?B?WVVaYWNvV1dtaWI3QUZtaTB5K0pEL3ZGaDMwQ1MvSldwU2VmTEg3aytZY09j?=
 =?utf-8?B?bXFnUGpzWmdZU3hzM00rYUxmcWUzTXIwQkxESHdoajI5MGxySXM0UVpDMnJz?=
 =?utf-8?B?YTFKMkt5Ymt3Z2RPZUNzaTkrOW5OU1VsNE1ya3pZQWlxWVRKcXFNeEZ2eVow?=
 =?utf-8?B?T1pzeUp5ckx2KzVvcnJzbDQrRVBna1h0aWxoV2hHMWM4Mzl1MTlCM3NXc0p2?=
 =?utf-8?B?em1wb0ZPVzRKV01PKzZIWk5UdEJ6RXo4Q1JKVzRROVBzeGFOdURLd2VZNzhB?=
 =?utf-8?B?TkRuaE96TVVzdG84TkZjU01WK0hjaFpJNC9BY2pMQlVtL3JZV2RML0xjOWlQ?=
 =?utf-8?B?TG93VkdGQlNtYnV0OEFrTUxVOEVMdkczUXBMSngyOWJoZy9kWHl6Q2JaQ3E2?=
 =?utf-8?B?M3crQjZpdFVzc3lVUGdpOUF0Q1NnOUZYTVl2KzVjN3RIaFpKR1JISDdBRUxV?=
 =?utf-8?B?Z1B3emhxTEc1S0hrejdWVEw4c3FlaWc4N1E2bVF6UFd5OFhLZ3p4bHVhN0Rs?=
 =?utf-8?B?R2FrRTlWQkdPWEp3YnFVb3o0Y0kxeVJzWklVZjF4VXBYdHh1ZDBiYytKZ2wx?=
 =?utf-8?B?MEg4VGU5UXVRcVJhYmFFRVBqNCtFSk41c0RjdEdiODB1WVlibVJHV0RtU21Y?=
 =?utf-8?B?SjVFR08wWW9xOEN5OEhpR3pRR2IyQ0pYeFFYdTRtK1Rta2RGMlk5ajR6bDNp?=
 =?utf-8?B?RVVBOE5rejFOYTVabG9Cd3llOTVXcStyandFWThwQ0s5a0hRSHdOYXZ1dmhh?=
 =?utf-8?B?TXFMRk1lKzlqWjVZaWRwQT09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0857aa99-cd88-4c0e-e4d0-08d979eea8f6
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 15:20:19.5464
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jhQSWAqH7u9+/MxwjEYVZwUAGIQcxC79C2uk/p0xL1O1m7fSCTA3mnMAOdG1qGoy6vQHMwSeaPjVlHQVsvG8oPOh+k3vLesiurEmZMsOotc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4845
X-Proofpoint-GUID: jimnsTGaP3NQDr4BvwRgUMSmd3cvFptH
X-Proofpoint-ORIG-GUID: jimnsTGaP3NQDr4BvwRgUMSmd3cvFptH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-17_06,2021-09-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 mlxscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109170096
Content-Type: multipart/alternative;
 boundary="------------5EB39D415B9B50DC05BD5618"
Content-Language: en-US

--------------5EB39D415B9B50DC05BD5618
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2021-09-16 11:33 a.m., Trevor Gamblin wrote:
>
>
> On 2021-09-16 11:33 a.m., Trevor Gamblin wrote:
>>
>> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>>
>> *Attendees:* Alex, Diane, Jon, Joshua, Michael, Richard, Ross, Saul, 
>> Stephen, Steve, Tim, Trevor
>>
>> *ARs:*
>>
>> - Trevor to move old AB defects to M4 after call
>>
>> - Trevor to ping WR folks about moving Old Milestone bugs
>>
I've moved Old Milestone AB-INT defects to M4 and pinged the group 
internally.
>>
>> - Richard to add a comment to 7298
>>
>>
>> *Notes:*
>> *
>> *
>> - (carried over) Steve encountered build failures such as the one in 
>> https://errors.yoctoproject.org/Errors/Details/593109/ when 
>> attempting to run dunfell builds with the PARALLEL_MAKE load 
>> averaging added. WR is testing/investigating on internal Autobuilder 
>> instance - Trevor is still planning on looking into this!
>>
>> *Medium+ 3.4 Unassigned Enhancements/Bugs: *68 (Last week 77)
>>
>> *Medium+ 3.5 Unassigned Enhancements/Bugs: *10 (new)
>>
>> *Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(No change)
>>
>> *AB-INT Bugs: *49 (Last week 48)
> Correction: AB-INT bug count is at 52.

--------------5EB39D415B9B50DC05BD5618
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2021-09-16 11:33 a.m., Trevor
      Gamblin wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:ecd4e7db-5536-1430-df78-50b03a7729dc@windriver.com">
      
      <p><br>
      </p>
      <div class="moz-cite-prefix">On 2021-09-16 11:33 a.m., Trevor
        Gamblin wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:2d5ab941-d94b-07de-c6fa-5e71f088e267@windriver.com">
        
        <div class="moz-text-html" lang="x-unicode">
          <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
          <p><b>Attendees:</b> Alex, Diane, Jon, Joshua, Michael,
            Richard, Ross, Saul, Stephen, Steve, Tim, Trevor<br>
          </p>
          <p><b>ARs:</b></p>
        </div>
        <p>- Trevor to move old AB defects to M4 after call</p>
        <p>- Trevor to ping WR folks about moving Old Milestone bugs</p>
      </blockquote>
    </blockquote>
    I've moved Old Milestone AB-INT defects to M4 and pinged the group
    internally.
    <blockquote type="cite" cite="mid:ecd4e7db-5536-1430-df78-50b03a7729dc@windriver.com">
      <blockquote type="cite" cite="mid:2d5ab941-d94b-07de-c6fa-5e71f088e267@windriver.com">
        <p>- Richard to add a comment to 7298<br>
        </p>
        <div class="moz-text-html" lang="x-unicode"><br>
        </div>
        <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
        <div class="moz-text-html" lang="x-unicode"><b><br>
          </b></div>
        <div class="moz-text-html" lang="x-unicode">- (carried over)
          Steve encountered build failures such as the one in <a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Details/593109/" moz-do-not-send="true">https://errors.yoctoproject.org/Errors/Details/593109/</a>
          when attempting to run dunfell builds with the PARALLEL_MAKE
          load averaging added. WR is testing/investigating on internal
          Autobuilder instance - Trevor is still planning on looking
          into this!<br>
        </div>
        <div class="moz-text-html" lang="x-unicode">
          <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>68 (Last
            week 77)</p>
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
      </blockquote>
      Correction: AB-INT bug count is at 52.<br>
    </blockquote>
  </body>
</html>

--------------5EB39D415B9B50DC05BD5618--
