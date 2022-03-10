Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B49C433EF
	for <webhook@archiver.kernel.org>; Thu, 10 Mar 2022 16:16:52 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.11344.1646929011356741748
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Mar 2022 08:16:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=N/8hSkT8;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=0068693661=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22AEqq9N012330;
	Thu, 10 Mar 2022 16:16:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=GiOyVdlmGd7Te1I6hygY9SHI4cqBbFvBfHGXNOfiA0k=;
 b=N/8hSkT8VMrPuZME1tUnk3asMiR+tNhF6bHHzIeff3S+nM5DL3FYhCmTvZSFUFRklRQ7
 VGGhF20Y85di5lNdLuwFhEAg1q7OFyuIUQCBPirW1zGs9JHy+RHPU242Dq9Gp8wqeC0B
 u/eyfardtCPHBg8uTvyfcQvKwoz5DlWyVr9rqWM8NJMMqiYTVQtYR7r+A1sQJTATH1Oy
 CujyWLE/x/P5TqLv1hz1oW1MXq3JalmfW6RFfE2m1i4pfOQUuoUxjczQlnxAHes1OIyZ
 Nza3ftmpeZZUNHMU461cAOt15SSKCEMM1BXdsKkJOfKtBzkWtfXLQFhkJyqubJY46vt6 Ig==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ekw304htk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Mar 2022 16:16:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cW6xrFpIQ6dDjWvhcKYSSebn0WiMKHJmtG5E5AUptnAm88C2A7EuUkO4BMED/iWFvuPQ4/gBm2htw4Ki9JiH6oxXp3t4T7n9GdX4PDx4m2Nl9NGvjYOy/0ofYn3BE8HEfGW7nzUwbxp5eJaPpqkar+5CyX3p7C5t30v/RfrfJVlxmoqqvXPJfaGnMqiForbqkWDmLBpBIA+s+CEqKGvHpV0cwHArkRmST0B6cEKrK57T6NZxaYNEWyZdHZHsbTX2YOtzApYTMo0JbRNiqCHYI8qEZEYAM9MTUbah+JKwiZKExHi87Ct8FB4+af3avtUijehjOy2DsU+6qgSTQomduw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GiOyVdlmGd7Te1I6hygY9SHI4cqBbFvBfHGXNOfiA0k=;
 b=JxE3BnkBAskOGQIoH0wCgFImDxtNJXMXvP1YC4tHMRJ89MSH7eI67GiZUy/gUaDIcqfLsEWsEslPKYQabe8kGA+n4Vb4wRSS5AeduG9luTIQb6WiLYe9UR7YW68iQaPRAJKsjQStBKspZtSggMvXzX+uWx1v8x9vlAhuH6FsGKtoV04dBJZYkKTDRrlSYMprpvtDQRR7nZXega/htBLLRPXbkkH5+I7KnCQPQrc0moYMhmWBXiNs4RcF4e8mpDAqTd4o1tfBXtdxe6uRK98WkbTVmbJqtGyIJjlz1BRbL3cbj0xvsU/0oH0Xnes+bFisaG90+/j/5VHVSOqvQ2bm2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SA2PR11MB5194.namprd11.prod.outlook.com (2603:10b6:806:118::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Thu, 10 Mar
 2022 16:16:42 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236%3]) with mapi id 15.20.5061.022; Thu, 10 Mar 2022
 16:16:42 +0000
Content-Type: multipart/alternative;
 boundary="------------J3Ids6jT7LORjqy7vH55UHFH"
Message-ID: <c2b269e8-be0b-1b86-3820-1f9c26a4dd12@windriver.com>
Date: Thu, 10 Mar 2022 11:16:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 3/10/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        alexandre.belloni@bootlin.com, Steve Sakoman <steve@sakoman.com>,
        trevor.gamblin@windriver.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        luca.ceresoli@bootlin.com, "Wold, Saul" <saul.wold@windriver.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        tim.orling@konsulko.com,
 "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        Ross Burton <ross@burtonini.com>
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0141.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:e::14) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30845a37-6b34-40c0-c42f-08da02b15d35
X-MS-TrafficTypeDiagnostic: SA2PR11MB5194:EE_
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB5194C85B4CED10412235EA909F0B9@SA2PR11MB5194.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wVIw08iPlofziveNRgUCsFZ2OhEcc72Vm3vUroujyrVF/BZ9wOyk9He2YxIjCz3aZ2Rnp2bozSorWC8U7kuyp+bj/tQqPpfVSheXOrJLj4E32/OFyNGhnwv16Z1rHonYe+fXEtCzsMSUyH5rNFVk2clESy8KDn8DqmPluQ9B4YyMSGo+MZHk0vzu3v/+EUd5EdH+XokXTgUxpQETIa3vvzyR6t5/yeyum8FTTGOJijOUGT9/UhTqO0178ste7oTvH/2eTahjiRbyz4FUotV3094S3Nht0509nrhdP2M1RSTUMjFaXER78SpULrkDOCYluqiwteC4qNR9KMdB5th1fjJgKNZggdQcjr6Co9Yjr8brG4dijXIiNZejjSEP8GT51bI36Pl4TiG9v01MHRhdJXZIEJRZi4Y6111jv9N7mS37Oji4LH/psQf7bVNSWwQoZ6xml+KsTwx13jSy4E70fehaoQfiCZuDIUUMbHMWOH8GNCD8D/BCCvlEvNbc0IkvOg96rH4rxb/H2o+mIWmGR4gULR0esd+bBAlbDkxm3DjkIWEjefnx0Mx4aS0PzdVHKF+v/Gm3j92VeSC4Q2ZsPbuxYGiPcvNr34g4ya/fzOJtDuhwDL8A12uVweJ21q7BPWsENx/fm6siIOq37MJX1uyhp6ZyC6a68WYal5tzlARMEfcODXj4m8t7LGddjlreLfjXaMCNDUpIG2qhhOsPmGsGzTxGmSVxHo4ckbOEExxHwFyQ2Cx/0jT5JuKwzmWAEguTJ0n59oX3oQh/bTO4rMWy+nwAQK7kIap6kL2M1eRSCkXrWJqBWKLIF/ICJufX
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(36756003)(4326008)(66476007)(8676002)(66556008)(66946007)(33964004)(6506007)(186003)(8936002)(316002)(7416002)(6916009)(54906003)(38100700002)(508600001)(31686004)(5660300002)(6666004)(966005)(6486002)(44832011)(166002)(6512007)(2906002)(83380400001)(2616005)(86362001)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NzQ0V3pJV0duaW1IaFlhZzlkZU8rVkpnc0ZDV0dkSyt6eU1Ra2duc2ljNG5T?=
 =?utf-8?B?dlROdDNXSUZXK25OdGFJek52V00rLzdSTlo1b3BKVXB4bGdndUg5azg5alV3?=
 =?utf-8?B?TzVhNktHc0x4aTF4dC9uS3RhcFJFK0VQSmtiWmhSTU5lUVV2M0s2ZGF0ZU5F?=
 =?utf-8?B?WlhtaXhUbVlvbEgxUnN4cW51OFB2clBWazh5OXJZZ2lNYkZDMzBsdkxqTHZz?=
 =?utf-8?B?VjdiRnEyRUpqeEhvdjl5cVVnVHZBNTV3SWkyM09ZUFY4dVdZVU9Qa0ZIbEtD?=
 =?utf-8?B?WSttVEhrZk5aL2lZTnQ5N3FqWmRsUnhWVWlLaWI1Zk5iN0gzcml3Tm1mTFo2?=
 =?utf-8?B?YVhZa0hYZE1wSHErY2Yranl4dWlJRzFGb1JLaWdTeHB6eTdIWVVrQVZKV2w1?=
 =?utf-8?B?VHdkNTBxbDZMQUJ5RGdxdVBFSWlyYTR6WTVxWmxiWXpVYUhndkJtN2U1YXRm?=
 =?utf-8?B?aUhIeStNMTRSZkxPMitXVDVhTDJ0aEZDc3hLNnZQdnk3SEVRekl4SFgxcXRD?=
 =?utf-8?B?RUNYUnZMMVpFVmhPdHlweCt2MVp0VkJiTnVyV3g5bjVzYlgxaTk4QnNNdUhI?=
 =?utf-8?B?Y1dvZEJsSjBYbXl4NTNTbUJnSHhINERPd2NMbE1qSjFOeExBYVNKbFhOVFBQ?=
 =?utf-8?B?R1RKZEptWkdiSlF1Vk1Ld0FPRVZ5T3lDVjJ1ekZFVHBuOTJPQ2dtUVJ4MGFF?=
 =?utf-8?B?Z1NYSmlJcnRYbjE0dEg5ZUpZOEx6TCtqUngvbUpyU0xFdHl5aVJ6RG1LSFh0?=
 =?utf-8?B?K2hYWWJaZDJDQzJpZ1IxK2JVUWd2V3ROZHRnWERjNEt3Qm9OUVNyWm9LelVL?=
 =?utf-8?B?dmFtMkxoWlV6Vy9uQ3ZZSnVXYi9OQWM1M3FHVnp4dnoxNmhiei9FS251cDlU?=
 =?utf-8?B?ZGoxem1UYzdGUU5XaEszSWxRM2Fnc0V5ZVlseDZJOGVCRnYzemc0amVyRUhQ?=
 =?utf-8?B?dEVwR2RYdHkvUG03Z0I0MzdKQzdzdDRWOVkvQ2pIandDcTVoM24yT29wSmky?=
 =?utf-8?B?NHE4WnpRQmdMNHZpOEVuNk0zWHJ0YXB5bUpEc1o2cjM1cll0cU1zSlNUaWVJ?=
 =?utf-8?B?RVp3OE1DQ1orY3dvdzFBMGFlMXdlb0tYNXFKVDNLWlpza1NGZlNaZzJPMVpD?=
 =?utf-8?B?aktWQ1FOQ2xrckZQUE1nV1J5R1B6OUpwZHloZXZHcjdhbzFaYWViUGVJYXBu?=
 =?utf-8?B?OXFEYVUrTUJHbUw3ZDZFd245MUVyZFZkVm9nbmJMZFRwQ01UNzlodWhrSVhP?=
 =?utf-8?B?a2NPSE41TktZMFUwbmRpWVBySjFXeS8zZFJkWVFjNVZucWhrZ3hmUGVYL1Y0?=
 =?utf-8?B?NzBRZUduMWk1Z2EwQWlxejdRelFTSVdDWitIK2lxNysvZDNXZjFJYzA3d0FK?=
 =?utf-8?B?UGVYY0V3YS9yQ29jOUpyTHFTZmxsQTVPazZXa1B1UTFpYWUzSVRxajFyM1o1?=
 =?utf-8?B?SG5TL21zT1BrZ1Z0NUFOT3F6N1pKMmgzUlRmT1JVT1YrR1RmV3dlaUZPUjZr?=
 =?utf-8?B?akV5czdodkVjTVlPMUZ2QmVZS0RHbDZaeTJvTmc3T0VwWVhIY2c5bUVFSXJL?=
 =?utf-8?B?b2VPTnlIN2lpY0hxUkk5QUJvbXVnZ05FbkZPMk1iTll5aFVWZHgvc01ySnVv?=
 =?utf-8?B?Z2x1T0Z6NEREZzAzNkJzenNycXozdU0xQ2R3MDliMnFTOTZUQVAvQXZzTjJz?=
 =?utf-8?B?K3hxTUVGWG5PdEpTTCszak5qSklNcVFqOXg3eks0U2ZmZWFYRUhoKzdIdjdF?=
 =?utf-8?B?RkJTMmQxckpLMWxuRTY1N1JkdnFiMjJFQnVmQVpueUc0aXJ3VVF1MzhWQlZh?=
 =?utf-8?B?cEV1NFpXNzZ3SkVPODIrTHRpZnRzb1lZR08xdGgwemE3emNpNzZud0xFejlw?=
 =?utf-8?B?UnNoRFAxdWpYQmRJWXRDeHV0aEdmaC9OZkZFS1ZrWXJXZlZQR2dLTUNqbkx5?=
 =?utf-8?B?S25QS1QwWWJTb2tuWUJ0d1NBZ1hVNEQ5N2tSMmRCVmNGOEQ4SStkRkNSbUdS?=
 =?utf-8?B?bGxvREJTakttQTZ3T3ZjYXRWbFFkQThEQkFNK0tGU2xKYkExem1kRlVDalVj?=
 =?utf-8?B?ZWpZZ2luSEFQeGRjalJxNXg3VVNSNEdEVkYrQT09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 30845a37-6b34-40c0-c42f-08da02b15d35
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2022 16:16:42.4649
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 0H64XlwGK9f7dMuXjp8xllfQwGxvcdkGUths20+S7fLjkCy8PENtBATHUOG0hKWe1BK2aFwwdzT8QLWK83Kavag2BeuJEsy2nW1HEArpY4k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5194
X-Proofpoint-ORIG-GUID: bvPe_JchdKS8NXEffaAhWgT5SrxJ_tX3
X-Proofpoint-GUID: bvPe_JchdKS8NXEffaAhWgT5SrxJ_tX3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-10_06,2022-03-09_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0
 impostorscore=0 mlxlogscore=844 malwarescore=0 suspectscore=0 phishscore=0
 mlxscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203100086
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Mar 2022 16:16:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56417

--------------J3Ids6jT7LORjqy7vH55UHFH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Joshua, Luca, Michael, Randy, Richard, Ross, 
Saul, Stephen, Steve, Tim, Trevor

*ARs: *

- Randy to move AB, 3.5 Enhancement M3 bugs to M4 or later

- All to review Old Milestone bugs and move to M4 or later

*Notes:*

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD. More coming soon!

*Medium+ 3.5 Unassigned Enhancements/Bugs: *73 (Last week 77)

*Medium+ 3.6 Unassigned Enhancements/Bugs: *2

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *71 (Last week 75)
--------------J3Ids6jT7LORjqy7vH55UHFH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Joshua, Luca, Michael, Randy,
        Richard, Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs: </b><br>
      </p>
      <p>- Randy to move AB, 3.5 Enhancement M3 bugs to M4 or later</p>
      <p>- All to review Old Milestone bugs and move to M4 or later<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD. More coming soon!<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>73 (Last week
        77)</p>
      <p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>2</p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>71
      (Last week 75)<br>
    </div>
  </body>
</html>

--------------J3Ids6jT7LORjqy7vH55UHFH--

