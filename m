Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B2ACC433F5
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 19:54:45 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.16712.1639079683145150407
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 11:54:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ksFOtP7H;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=7977babe60=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1B9EDOsM030986;
	Thu, 9 Dec 2021 19:54:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : subject :
 to : cc : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=PPS06212021;
 bh=WWR6kE8FziGV8OxQI6HuCs5JugVpmfWgdusldmcAzCk=;
 b=ksFOtP7Htjs3OUYIhAMZTp7j+alPThfUfOGUR38qpw2UKjjB7vm250t9jBaRgKoLMXMC
 inrHqKkiFK813nAKLHoRfhzkV5274oxX0uyh3boouCLwZizMLqaWL2XA9ObQr9YlFgl2
 ALvCBq0Z40hd93MSyouRiGlHD8ZHKPMM09oatzrex+4E72IB4awPt3HB7MeacMNf/ECv
 EB64Xhy+STAiDq2AUao31IkCLoJxUY15O7uk8ObIrfpEyLnE/xnTv1mdM8RYJnlkaGKM
 RIsoutKDpYpU5BvndIwR+fcSuuuhINEYPBVkIh0afd3Tb50Ounrcn31ndbIdeXewrVFf 0w==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3cukc3rg52-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Dec 2021 19:54:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BtmjaLyypDuszK4qhVWdWTYLzYqimFnPiuXbtI3h3Pc8DeojJuESm9AYLzgRgAOaHUSVXshEKwLyBDW6A11vmap4AqC0vpmmHMr28KaqzkdvOxsC2lQwIvLK5JJJH5R316vnAP9bUmmEbliYWJRbpKnR4SV66oDBtL2symN30GSYelg9hDmp8nDzDmVmoEIYYPOPnE0scNjEimDlcV6vtbzANRxTPos+R+qQwfcbUW3COxhOi5QhBVXpkPh81zo7XsnSXwq3Lj+U4zvLfD3H1+DzXGxoqQxyg9hQe/ZNGRCtoC3uUPC9s0PuoVB7uoVPVjhToZUFvb0OHX3yxGXD8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WWR6kE8FziGV8OxQI6HuCs5JugVpmfWgdusldmcAzCk=;
 b=m7diCX5/O7eDu4w5Qdww3/1g7yP2v7kfzIhLE6w0dP7NbA8JWMx2W0Cm+KzPcXh7GPNxh97q/MCOWpryYbTWZqEx+ZEKb/oQtWxT95VE7rFsvfHvhcRd8C9qcopkaqNqRhj+5lCJFr6gSCjgqXOEmZcJcqGzrmlFYbCrj9T26h+uAlc26L3aXVNCE90fCdfpJnvWnj01vuWUt8L+Sla/LxCR3Z6TQFRUYExS7HR4vOTPNjhFtqgg+sWoIu8Bvlt5iOSJKN022pqAEiknbwHeBRRL9bW8lquPt+V8DfL2UvVvRQxpkXidJtkIBl2FD3Pu5iXS/JQN8+sxpBHd6IY+Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1993.namprd11.prod.outlook.com (2603:10b6:3:12::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.20; Thu, 9 Dec
 2021 19:54:34 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c52d:281d:a9ee:67b6]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c52d:281d:a9ee:67b6%7]) with mapi id 15.20.4755.025; Thu, 9 Dec 2021
 19:54:34 +0000
From: Randy MacLeod <randy.macleod@windriver.com>
Subject: [yocto] Yocto Autobuilder: Latency Monitor and AB-INT - Meeting
 notes: Dec 9, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <265343d8-5d3c-24ab-7896-117be4318a26@windriver.com>
Date: Thu, 9 Dec 2021 14:54:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:217::34) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
Received: from [172.25.44.7] (198.48.226.187) by
 BY3PR04CA0029.namprd04.prod.outlook.com (2603:10b6:a03:217::34) with
 Microsoft SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Thu, 9 Dec 2021 19:54:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c79b6d20-99d7-44bb-183d-08d9bb4db8eb
X-MS-TrafficTypeDiagnostic: DM5PR11MB1993:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB19936D54F5D9FE963249C04FF8709@DM5PR11MB1993.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xTOClc28fiIGqAmWMumhDWDQHHQm2PKwtYy/b0JPBFnvfPzDG/oVeHIyp/mcnngZv0rWVGRPeV8L1uQ3DR65tAPlPlChfyJXWRBdhhU7a+TISuJhnD3y2YJoam4Z4DjrWPPahtyhhNo2VRCESzAVrRYWoXn9jB7+wAfykI0e/uUlXIkzwwqyOtp/KkydWmsjNVlcgg6pbD+p8EfRzL22Fe+8v4EhzGOtrYwaBjUYx8PRjtmG5A06HH67uDkp55AUNyjC6hbjWasADL/IVsHHwl/HK4hUb7Ejresqgp5orBXDnEJsnMHoGjIGsuInwqI5CNrXWWR6c/aq7sl3cXJpYnWog0cKmq1swtp1XgYQEcYH38gtfwlenI4BE+1qdCBt2PHXDVDu3fP992GkhnXwiBJkfdaKjQlcXcIZ9Koidyw6qMpvnU4ohNqCOt96fLc4XwA2/ix85Z7EHc+K/10qwkfjnYAqE2yV6M15N+dLd0tg+DiVi/m3sMEaEvhE/3pCzrxTx6bN5U2Qmw7vbwuY4c0kFU6TjQNMrDb/ONNKaMFfnko2U3/ZDYAY+Ntd3IiUpgPGyko1Ss2yUozFFYYM71lhB0YYsK8yx3yS7FOLdlkH1+B93RBVzLm+qnzG4AKKFzBC1MsYivvafqVAB/Nf9Z8bvDDombtRg58YbyST6J4JIQonhAIIKACELswTo0qsy8aRzoCuGioRfvIpcLo7u6v9j22R9mCNckCuJ805Kad9Wpy/5KmUSxSEPRYyYuVfajFa4SuvyMpLCVBOuDf0JOjCCcKLyA3m2tlXYEAXmmCM9CBQ/5KZYKYRjFJHYjtbcGqBvq7Ef+iamV0IGfSt2n9TLuVhfkpYt+uxuhxpAGQhKkXQK1HLYJKjJh9vI46aN3kWPmBr4euH0JpcWqE5lw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(36756003)(6636002)(8936002)(110136005)(966005)(508600001)(316002)(16576012)(31696002)(956004)(2616005)(31686004)(86362001)(4326008)(6666004)(8676002)(6486002)(38350700002)(5660300002)(38100700002)(52116002)(66556008)(66476007)(66946007)(83380400001)(26005)(2906002)(186003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TC9NY2xkUk5HaHlwbEF1enJoYVp4aUtkSUZqVkdXZWFHQ2NrMU1rYmxUd2Fm?=
 =?utf-8?B?aFozYVJ3MnRCNmJwcDRGQnJxQTAzV25ETm5aSm9JTEREd3NPakpBbVBuR1M0?=
 =?utf-8?B?QlU3WndDcnhKR3h2NzNOemZVbWsvTWxDUkU5Z3pCN3pZRkNXK3N5K20wZEtY?=
 =?utf-8?B?TWpqT05xd1l1VzViMlRaZlhnazcxNGxuVDFoR09HbXUzYjF1Y1BKSit6MXBy?=
 =?utf-8?B?bzlPeWlEMXFBVFk2OWpQdTcvQ3lNS0xSWkR0SlNkNTlEMDBNbVFuanhkOElq?=
 =?utf-8?B?d3dNQzFFaXFwcXFibGQ2aWJmV3phWHF0ZHVPZC9pR29KRUdIWlkwQUlaa01u?=
 =?utf-8?B?WEtTTTRoRzVPcVMwRU9SUWczdW00ZVY1clVkY1VWMXBTdWVTWUJnNXcwejBs?=
 =?utf-8?B?OFlFa0J2VjMvNWhhUkU3NkE3QktZakliMWZBdnlLaE81UDNFcXYydjhRdWlk?=
 =?utf-8?B?aUwyMTBDcm9vQmp5UzVzVGpvUjVaMFFJcytKckJ0bU1FY1UreUl1dkpWektL?=
 =?utf-8?B?UnJVaHZIbVpxMDdiVWMzai9uUG5Kd0lWL0V2WDc2YzVEbld3aWo3Y3dvQjd4?=
 =?utf-8?B?OU01NDBCTWo2QlJpdkl3VFNCWHo5SnEzbHBNRnN0RE55eGdQVHBzQ3BYMjZ4?=
 =?utf-8?B?RUgxNFJERzdJNkk1UE9GQWRhSEJLU2xJd0oxMVhBbndsV0JiNk55cGJpbks2?=
 =?utf-8?B?T2lOQXdSbjVtQlRQc2lSSk4vR1MzRVNiMTJsYy80MzhKendHQTd0Yzcwa2Uw?=
 =?utf-8?B?ZFQ1RWZXT1JFdGdxNndxZ3dGMEhhVE9CRG9ZZ3A4UytGYUFtc00zVEhreEdP?=
 =?utf-8?B?ZFl6WlZnZXBidkFCQS9jYnhWU2Q0RUNjSTF0OUVTTUVPNFE5cjR5Y3d6R1o3?=
 =?utf-8?B?My8yNEZIdnVuSHliOEdOUEhZTWt6a2trYURxRlVTQkFRdnFlYWh0S0FBeHIy?=
 =?utf-8?B?NkZGT2VmUG9qNldpbTZyQjJUYUd1YmVJMXhRY092UEJmVVo2cHZpQWd0Wnd3?=
 =?utf-8?B?a3dzcTFRNVRxMW8vV0VYYytoc0trZ0h5STRRcUlQZDFsQ29HMVh2UG5Nakdt?=
 =?utf-8?B?MUFHNHdZbE5lUzNicDRib2g3UjBBdDFnMmw1MGtyMDZnQkc2MEJsR0hSMHNS?=
 =?utf-8?B?VGNpY1BucGh2aTIrVU1EZUFzU3d3Szk2SDA1YkgrYUtGTk5sZUhKVmMxckZR?=
 =?utf-8?B?QmhmcnRmSjhielBENjRPS281REF4T1JFajlJRVhjR1RnSmVwQWhIY1J2bHFq?=
 =?utf-8?B?OVgzdmMxTDA0VGt0Vjd6TmtGVUd0cURacURYL3p2TE1tK0p3TU43cGxaMTBT?=
 =?utf-8?B?a1hhV2F2UzZaR3grSWdFaUtwT2NhNnZ1MFFQcUFYOTE2ZS9KQldiMndkb29V?=
 =?utf-8?B?dFJlNVBuODF1YTZhSnNEY0szMWZQKzB3KzNyNDFVdExSM0tRY2RlbGxMTDBx?=
 =?utf-8?B?bDFndHcxUnZrY3BKdXVNSGdGbVptbVdHVzdtdTRlRGwxcmNvUll5S3dlUExh?=
 =?utf-8?B?QVUwSk1oUS9ZbFo3bmxqektFK1RKWGp6dStKbVlvU1YxcGFEck1RN0dZNGZX?=
 =?utf-8?B?aDJvWXdkNWVXWEhweGFwbEdOVVppQVRNQk1rR2xDVDh4MDZBdkRiY1pDRDVE?=
 =?utf-8?B?bDJxaWFWbk1Pd2psWTJjUldWd0M4M1BPM2dLemEyMVU1bTUzaEJUay9TZTBB?=
 =?utf-8?B?WDVueGI2WHo3eHVQMlp5d3phYUhNZlZkeUxJL1Z6TnBPRExWdXQ4YklUNDl4?=
 =?utf-8?B?V0p3M2R0M25ONEo4NWIvUDE4cnU2MTFYVGVBTlZmS1FhWkhKZFFpbHduN3BC?=
 =?utf-8?B?QWFiNm1NU1I1eWhhMmV1SjVvRUhhamZtcHA0RXp5eGMybW9KRHdRdGFMRm44?=
 =?utf-8?B?ekhXdWNlNUFPQ28yYlJseXJ1dUZYTzVEaCsrdXhEQ0FUOG80c25VMFpoRUpQ?=
 =?utf-8?B?ekFlT1czKzJ6VUVFVGJONnhZNEhQRTBXbldIQkJKTUt5dk05TVh0TUFOM0hT?=
 =?utf-8?B?Q29PbitIREd0ZHM2U0VQRzNXRExqQlg2ek40SXQ0V2Zvd1FGME90YnNJTDhw?=
 =?utf-8?B?cjBiY3V0L1hqcVJsbzFHd1hVNUdFeEVNSFhCNlVBSmlEOGlITmVkTVUrRjc1?=
 =?utf-8?B?VGV4aVVXdWpVbFkrN0J0bGJDRmZNSDdaWmsvellVRkNHRXF5TFhBZ2JBQnNB?=
 =?utf-8?B?ZTh1cEZMUkVqN1FqQ2hhMFdJbjAzazlYQVhNNU5pNkVZOXVGazVuUzg5MCsw?=
 =?utf-8?B?eWtlaWtJMDlQVG1xd0ZYekpmUXJBPT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c79b6d20-99d7-44bb-183d-08d9bb4db8eb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2021 19:54:34.0802
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Gt+4NKyuRxV6+t3ydsKlrRr/myDt/TRHb59O8QVYokyUevbOy7ptLuImZpibTPYdJMJJdj+KS3yMyZPHiMB+5LK3KW4xsOd8r6p3TcWfofM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1993
X-Proofpoint-ORIG-GUID: 8sqHI9O7STMKAmqEffcoV0Jndm3Yq4HM
X-Proofpoint-GUID: 8sqHI9O7STMKAmqEffcoV0Jndm3Yq4HM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-09_09,2021-12-08_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=999
 mlxscore=0 clxscore=1015 spamscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112090102
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 19:54:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55540


YP AB Intermittent failures meeting
===================================
https://windriver.zoom.us/j/3696693975

Attendees: Richard, Trevor, Randy, Saul, AlexB


Summary:
========

--------------------------------------------------------------
People have been busy with other work so this is mostly a duplicate
of the previous minutes with some cyptic? IRC chat logs added below.
--------------------------------------------------------------

Ptest results continue to improve yet again but there's still room
for even more improvement.

Alex made a graph of the number of AB INT issues per week:
  https://bootlin.com/~alexandre/SWAT_stats.png
We assume that week 15, 16 was when the RCU bug in he kernel
started being a problem and week 29 was when it go fixed but
more careful analysis is required.

The make/ninja load average limit is in but it's not clear
if it's effective yet and it breaks dunfell.
Trevor has a build of dunfell that with some patches appears to work.


If anyone wants to help, we could use more eyes on the logs,
particularly the summary logs and understanding iostat #
when the dd test times out.



Plans for the week:
===================


      Richard: M1
      Alex: look into Rest API for BZ as part of Triage.
      Sakib: hook more responsive load average in to latency test. (v3)
           : Add PSI (/proc/pressure/*) when available
      Trevor: No AB work
      Saul: No AB work
      Randy: PSI, simple experiments to learn what's 'normal',
             make some PSI graphs!

Idea: bitbake/make/ninja use /proc/pressure to throttle builds?

../Randy

Meeting Notes:
==============


Cryptic notes this week since I don't have time for a proper summary!


[09:01] <vmeson> Agenda Items?
[09:01] <vmeson> 1. PSI /proc/pressure
    see: https://www.kernel.org/doc/html/latest/accounting/psi.html

[09:01] <vmeson> 2. Status of AB
[09:02] <vmeson> 3. Randy promises valgrind patches (again!).

Discussion:

Randy explained what the PSI proc data was and
how overloaded ubuntu2004-ty-2.yocto.io was for most of a 25 hour
logging window. Typical high load data is:

pressure.cpu

some avg10=0.00 avg60=0.00 avg300=1.12 total=8891584119

some avg10=0.00 avg60=0.00 avg300=1.00 total=8891596517

some avg10=0.00 avg60=0.00 avg300=0.90 total=8891613258

some avg10=0.00 avg60=0.00 avg300=0.81 total=8891631326

pressure.memory

some avg10=0.00 avg60=0.00 avg300=0.00 total=237120503

full avg10=0.00 avg60=0.00 avg300=0.00 total=194500170

some avg10=0.00 avg60=0.00 avg300=0.00 total=237121370

full avg10=0.00 avg60=0.00 avg300=0.00 total=194500170

pressure.io

some avg10=65.22 avg60=56.24 avg300=40.82 total=142092410628

full avg10=65.22 avg60=56.23 avg300=40.28 total=134090291475

some avg10=48.50 avg60=52.56 avg300=41.42 total=142106526703

full avg10=48.50 avg60=52.56 avg300=40.93 total=134104406782


This is just:
   for i in pressure.cpu pressure.memory  pressure.io; do \
     echo $i; tail -4 $i; \
   done


There are two lines per call for some of the /proc/pressure files:
$ wc -l pressure*

    3000 pressure.cpu

    6000 pressure.io

    6000 pressure.memory



Looking at the max io load for the times when the 'full' system
is overloaded:

$ grep full pressure.io | cat -n > pressure.io-full.numbered
$ sed -e 's/=/ /g' pressure.io-full.numbered | sort -k 4 -n | tail -2
   1710	full avg10 97.52 avg60 93.85 avg300 92.29 total 124322928244

   1699	full avg10 97.57 avg60 93.16 avg300 91.36 total 124015261496


# make a link so we have *full.numbered files for each subsystem:
$ ln -s pressure.cpu.numbered pressure.cpu-ful.numbered

$ for i in pressure.cpu pressure.memory  pressure.io; do \
      echo $i; egrep ' 1710| 1699' $i-full.numbered; \
   done

pressure.cpu

   1699	some avg10=0.00 avg60=0.00 avg300=0.00 total=7340981927

   1710	some avg10=0.00 avg60=0.00 avg300=0.00 total=7341522636

pressure.memory

   1699	full avg10=0.00 avg60=0.00 avg300=0.00 total=131800420

   1710	full avg10=0.00 avg60=0.00 avg300=0.00 total=131800502

pressure.io

   1699	full avg10=97.57 avg60=93.16 avg300=91.36 total=124015261496

   1710	full avg10=97.52 avg60=93.85 avg300=92.29 total=124322928244




Conclusion, no cpu, memory contention, lots of IO -- clean-up or ???





[09:22] <vmeson> read-only YP BZ database query to find "AB-INT" build 
failures, find build and highlight in "non-release" AB build summary.
[09:23] <vmeson> add /proc/pressure info to test results logs.

Sakib and I may do this, else Alex in January

[09:24] <vmeson> network access: weird AB bugs: DNS or connextion 
failure, at times even qemu net connection fails!
[09:26] <vmeson> systemd-networkd at times monitors and maybe even 
changes (if up/down?) tap interfaces

This seems to be hard-coded, mandatory behaviour in systemd managed
distros.

[09:26] <vmeson> Test system, start / stop qemu instances in a loop.
[09:29] <vmeson> say: 16 qemus booting core-image-minimal and doing a 
simple test such as a network connection (download curl), along with 
stress --mumble-args to load the host sytem to simulate a build.
[09:30] <abelloni> vmeson: 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=14467
[09:32] <vmeson> use rest API to query the bugzilla -- where's the API?
[09:33] <abelloni> https://wiki.mozilla.org/Bugzilla:REST_API
[09:33] <abelloni> I'll have a look at that
[09:37] <RP> "BzAPI is an alternate, deprecated REST API" -  that will 
be ours as we're not on bz5 yet



Notes from previous meeting which are largely still relevant.

1. job server

- ninja could be patched with make's more responsive algorithm
      next or is this good enough?

    Aug 26:
    Randy made some graphs that show that the -l NUM results
    in the number of compile jobs oscillates *wildly* between 0 and 200
    on a 192 core builder compiling chromium. What I did was:
    $ bitbake -c cleansstate chromium-x11
    $ bitbake -c configure chromium-x11
    $ bitbake -c compile chromium-x11
    and while that compile was running:
    $ while [ ! -f /tmp/compiling-chromium-is-done ]; do \
         cat /proc/loadavg >> procs-load.log   ; sleep 0.5 ;
      done
    Results so far:
       https://postimg.cc/gallery/3hjfYfG/f8f46c97
    Next step is either:
    a. collect data as above for an image build and see if the sub-optimal
       ninja behaviour makes a difference
    and/or
    b. patch ninja with make's more responsive load avg
       algorithm:
          https://git.savannah.gnu.org/cgit/make.git/commit/?id=d8728efc8


- Richard suggested that we extract make's code for measuring the load
      average to a separate binary and run it in the periodic io latency
      test. Also can we translate it to python?
      - Trevor is working on this and had some problems so next week.
        (Aug 19 - Trevor is back from vaction so maybe next week.)

- Trevor to see if the load average change really did reduce load
    on WR build systems. (Aug 19)

2. AB status

       Trevor is learning about buildbot and working on a scheduling bug
       (CentOS worker?)

       bitbake layer setup tool should allow multiple backends:
         eg: kas, a y-a-helper.

       ptest cases are improving, we may be close to done!
       Let's wait a week to see how things go.
       (July29, Aug 5, Aug 19,  we're not done...)

       - lttng-tools ptest is failing. RP is working on it with upstream.
         The timeout (done on Aug 5) increase hasn't helped.


3. Sakib's improvements to the logging are merged.

       Sakib generated a summary of all high latency 'top' logs from
       ~July 23->July 29 by just running his summary script on the
       merged raw top logs.

      More analysis required....


Still relevant parts of
Previous Meeting Notes:
=======================


4. bitbake server timeout ( no change july 29, Aug 19, Oct 7)

       "Timeout while waiting for a reply from the bitbake server (60s)"

5. io stalls (no update: July 29, Oct 7)

       Richard said that it would make sense to write an ftrace utility
       / script to monitor io latency and we could install it with sudo
       Ch^W mentioned ftrace on IRC.
       Sakib and Randy will work on that but not for a week or two
       or longer! (Aug 19).

       Randy collected iostat data on 3 build server:
           https://postimg.cc/gallery/8cN6LYB
       We agreed that having -ty-2 be ~ 100 utilization for many hours
       in a row is not acceptable and that a threshold of ~ 10 minutes
       at 100% utilization may be a reasonable limt. I need to figure out
       if I can get data on the fraction of IO done per IO clas since
       we do use ionice to do clean-up and other activities.


../Randy






