Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.21377.1623615315716097591
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Jun 2021 13:15:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=J1z2ibls;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=1798f2ae94=randy.macleod@windriver.com)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C37B438C04D7
	for <yocto@yoctoproject.org>; Sun, 13 Jun 2021 20:15:14 +0000 (UTC)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15DKEkKw031242;
	Sun, 13 Jun 2021 20:15:10 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2043.outbound.protection.outlook.com [104.47.74.43])
	by mx0a-0064b401.pphosted.com with ESMTP id 395bg3r9gu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 13 Jun 2021 20:15:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hL6NP5AkETygBpELuUqjR7LgekhlvjnJC4Ks+ShkfcSr7w+ViffUeLFFbdUiMgWts1kY0psW4+Y5vJS97OJZUWIC2etY8k7uB3iBcNNP30IRy+nqhGveSkt8xo3ZgtefRPESYoDM1hVB7QXNlbJNZLdUMnPsq3oTATFYaRBSWQI8LMjXEq9V4rFFYGxSFD2zct8WT3qG5C9+u5d8K7v6lv0k5MCj6NatvEJnyGmI2+DU44PX9EKZQo2G8Yq+kmk6pgVvdpJcC9+KN7W6THqHnGjwH1ftZf7mXN2VIQ/s14DAdiQAgKrJY2lq9hfJ4NqrkWvIO1DBbIIrOKhdG04dqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uF1/dCyMWCKfYPEdvDbwNJOS4rL8Xb81VeP7DKvPT/4=;
 b=HREprhYDyjd25l6FJYKXg5maQkIMphH/FwM8O5Zru6WdD3Mcc/FDsfQgj7LzIaSmXVISX4+UtmgYEIM8p+VD9lCxOJYinV7Kgss/K+pDCmUcdQiaqEc77Uspwtgoefy3p3r3n+nox34hXQPGUlxiXalmAg/EOm0TOlY9B29iZdnHfh3BGKicRvgZ2Vh44d5WUw8o7P6y/XhUNVbyJ2jqPBnw6NmzLaivYVN0atOGUOfmy8sx9sZiLdE2dl1KlhKpYLpXUclZu04D6tj5XN3A6/RfJDc15HobLLBpMRotJcgIj7X0dUYaoI38wcPQ6qrTEOUolv1N+wbQESnsKz5eYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uF1/dCyMWCKfYPEdvDbwNJOS4rL8Xb81VeP7DKvPT/4=;
 b=J1z2iblsgB5RdxxGTjEomsqpjm7PyK8fYqTXi7fAKFjuPIAjTmRkOhMj6cCQZWxIYf9ZQ/H2RNyxkgeM1L7GmCAbcbDmV+j8S/Q8Wb7nrj03uAJNQYg5HpjXge13GRQ5E4PF6hpXaaWdtvVe7rw9kwz6K7PquTyl4xE/SkJst/0=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2186.namprd11.prod.outlook.com (2603:10b6:4:52::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Sun, 13 Jun
 2021 20:15:08 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4219.025; Sun, 13 Jun 2021
 20:15:08 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: June 10, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
        "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Message-ID: <ccd33f0c-ebd4-8a4d-d966-a3bc53cd00e8@windriver.com>
Date: Sun, 13 Jun 2021 16:15:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR11CA0064.namprd11.prod.outlook.com
 (2603:10b6:a03:80::41) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR11CA0064.namprd11.prod.outlook.com (2603:10b6:a03:80::41) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21 via Frontend Transport; Sun, 13 Jun 2021 20:15:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 78490e42-0326-4f0e-1cf5-08d92ea7f09a
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2186:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB2186E552A52D04036C7CC8E0F8329@DM5PR1101MB2186.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7Hq3cZhNp5DOAbRAXJ0tBc/IUlJnO8MzxO7yQywNyY7mWca0YErv76sdD0oOT2C6B6/OpSOhCRExmky5L44sOex77HbgnSGXkhHXQHKEEokRqWuKnzD6mEYyRZQDPPvlXrg6EnF4duxJoN8yuwePdPI981X/Bo91zOBf+eQWpoUoAGQEjpGqJ744tCbVHhK+HpRVThbMxB7qeGKS+ozb4Gjuk9d8Q/ugww0YJi6uj+XKFnU2FaKd0Dr5WkOMOX+vba0Fx/PTdUaI1JiIOq8zSUJqLhNzLwF3STT3sGMlHjmGQziDeimzy4o8yedeoQa0XeR3jHjrk7QWL3cgzQRffp8gd+tV6xNRPsOdFVXrwcABEn5yvkv0HjtkXzuFRrSiAXQlZ+tn+oRggXcgUvPfiiMXnBrGg0pwKdIFNwuJwpL6zz9WxtxI2j8x5sG/QRmLRbW6eYicTAzS9hWnURFe4iPj3tp9tf8VHbd6nKaGed7dDx+zzF2cBwyc/98+6LctUdl0lQ65x0YTUvuFo8SJsB/7fF1wzI+mgLDKpeDq9x0UpbKjUAyqnFyZUU/bSMh2AcI/iUUdZ9nJtQjkOKaiquGx8FErUhR6A+a4K/lX+Hv1doArvLpL/PkwhT9QYVRfNOhtkU1KG/m2kGZJ0ba8wMGAQxs0MME0kSGFxk+AKiuXAXi7R1bqVJHWVkEmlfKmfa9ryA2wBMRGfa5OLZqBHJs2yJ2cTAraZzxooMkX5TDELMo4Ihc2cpBH8PSeMFUX+8j23R00nt0mzMZ75aOTm/vYeQc7wpjCJykDhQhzdAHst6H90XaWi6TnB0qEyOORnyKfNcwYPllMOxArKLZDbjE+xhQweBs2YBA0s5al0G7YBM+vw5pOiY468vSXK6af
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(39830400003)(396003)(376002)(346002)(83380400001)(6636002)(8936002)(956004)(316002)(16576012)(2906002)(2616005)(107886003)(54906003)(8676002)(110136005)(5660300002)(6486002)(26005)(31696002)(66556008)(66476007)(966005)(478600001)(16526019)(186003)(36756003)(86362001)(31686004)(66946007)(4326008)(52116002)(38350700002)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aVRtQjNxTitKV3lkaFpJSlJuUThvQlRxUWVLNkR4Y1poK29Tb0Q5L0lreEFL?=
 =?utf-8?B?NUh1OEVra0JDcTRZMVk1SWs1MnJETXJyNUtiYkIxM2xPS2FVelhGeEg5Rm5K?=
 =?utf-8?B?YU1PaTMyVkpncFlyUmNMbnpvQWMycHNPYUxVMy94WmxhT0pIZ2N4SHgvdGNL?=
 =?utf-8?B?M1dRbFBKSnJxTzVjWkQvUFlIa1YwNWh1Wk9lY0NqQ2JubHd5WnJSZzcxZ1Fo?=
 =?utf-8?B?b2lxRFQ2N1JGK2JscDRMbWRLd2g4a0J2aFJkSDFKMmJrcjV3U1VhRU5ERWNV?=
 =?utf-8?B?ckNxZGhFSDR1WERlUU1nR1hPcWRNc3hyWXB5eThlVU5BYmdyaHJFaFppa3NX?=
 =?utf-8?B?bzZtKzgwM2RDUms3UGE3TlU0TFMyOE1JQlV4WDFRWGt6L1JFOUlQNEJjUnRh?=
 =?utf-8?B?enM1QVNQeTJBK09raUVBOG1zRnIzRFExY2xmQUdtK3RoWFJpUzROTVYyeEtG?=
 =?utf-8?B?UDRYNDFUSHgxRUFIbis2YWJKeWczTUhoODNFcUNpbExqOUdLY1VNVTc3U2Nq?=
 =?utf-8?B?aUtUUTZ5VGZXNzJMYVgxVjhhdWU4OHhZVHF0dnIwMW5SU1Zmd3Rwd2NoR2Y0?=
 =?utf-8?B?YzZMSEQxNUgxQVhnZndqdGY5eTBNK2ltZUZzN3dzVEpTd3JUUHNHcnJvb1Fj?=
 =?utf-8?B?R3BuT0lrTE1wR05xaW0yMEM3eXk2NllVL0dKYVJ1Ym5oTm5seGtQNVdzT2ZI?=
 =?utf-8?B?eVpNK2hreUlOWVRtVVdCZGJtVVFwU0hkYjNIcnhOL2labkR1NHk4V1g4bHJu?=
 =?utf-8?B?RURMa3VFM3ZYZEJhQWxpL3c2Sno4dEFyYVpZRTVQcDZlUm15d2ZaSWRQcWkr?=
 =?utf-8?B?MHp6MkxNZGV5Z2xBU3FVeGRlQ2IrTHk2T2NJQnFtanNFMzJmNVNpWXJrRUJu?=
 =?utf-8?B?THk4SDhzdlNFMlgzT0lCbDU0K3pzRlJqaVNEOVlRUE8wcFhuSkhzcThxOS95?=
 =?utf-8?B?RkcyYXVibXlaQ3FYYnhvazlzdmptMEE5VlBtZkFJQk40d05pS1ZRYTE5b3Vs?=
 =?utf-8?B?RHN6MEJmK0Q5QlYwUFNMZ29zNWJzRFVpc0x2dWVCRnRud2R0ck00MlVUZTI0?=
 =?utf-8?B?VjY3Zy9hb1pvYytsSXZ0T2hXRlYxNkZodldvTngya0FybVVzYjQ4bGcycDNk?=
 =?utf-8?B?aWZ6QlM0dXNFeXp2cmF5M214d09KV3lYU2Zsc0czdXBsVHBGU2dLMnZQdDJt?=
 =?utf-8?B?NTgwOWt4KzI2cTdwZ3dPSmdJVldNdlYwYWppdzdJczVhZFZETGF5NUNldHFw?=
 =?utf-8?B?RkRyV0V1d2RmTSt5V2pwL21Bb0g3TFVTUFJGY3ZvOG1PUjhsaGp3MnFoU1Ey?=
 =?utf-8?B?b0pQNlQ0aTBGSWM3cElXS0xVTlRZc2phTXJVVFFSNjY0c2gzSDBXVG5QR2NC?=
 =?utf-8?B?N0VaZit1d1BnVVl5UjNqQkFkdFN1TDJSWTY0VWtJa2k0bU9lRVgyQ3lEcVlk?=
 =?utf-8?B?UUR2MG1yN2tXV09NRkxtTnlWYzhFNVlPd3Btb1A3TlI4NXVRSUJ0bWsrZVNr?=
 =?utf-8?B?OVNYa2pHMStwMWljTXk2SUdvcDVnV3AxV1QvWmU5Y0tnSHpQOTJGYWxBSytM?=
 =?utf-8?B?aEpmcnR3VFoxaDdJbnVWS0g0ZHRqVU1UaUM0TnE0d3Q2SHlRbEs0T20zcXVY?=
 =?utf-8?B?N0FJNytBUldhUUl6akNPRzRuQzFrNnNJWFkrY2RhWGgvNndCaUZ0YjFudjRF?=
 =?utf-8?B?SXdCc0VUeUFOQzR3ckk1a1NxOVA4ZmxHdndwOUQxZnhIU3AwNlRFbHVqMGov?=
 =?utf-8?Q?63W7IYOkIDyXK+Okgen+IrKh1CVHiw40sJ6NX3y?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78490e42-0326-4f0e-1cf5-08d92ea7f09a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2021 20:15:08.1493
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yjcPmoKjPim+OgkH+ipKjY9lPDqo40uxTfJ54EOaguuoIUt4o9CNFRqngJVzyoTW6vwCoJ3ESBvurc0DYLDFpDHe/KRmJP6mZgEDZgwXex4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2186
X-Proofpoint-ORIG-GUID: TEUPH8cyfV8D7thxGC1NSTqdlbx_20CV
X-Proofpoint-GUID: TEUPH8cyfV8D7thxGC1NSTqdlbx_20CV
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-13_10:2021-06-11,2021-06-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 mlxscore=0 malwarescore=0
 bulkscore=0 mlxlogscore=999 spamscore=0 phishscore=0 clxscore=1031
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106130144
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

(Buried on my desktop, better late than never)


Attendees:  Alex, Richard, Saul, Randy, Tony, Trevor


1.
valgrind:
  - taskset work-around really helps.
  - working on stack_changes bug for qemuarm43
     - reproduced on master, hardknott but not gatesgarth
     - Let's drop it for now to reduce the AB noise.


2.
task summary script:
  - procpath compared to top -bn1
    - about the same number of syscalls (strace)
    - about 5x more cpu and 2x more ram.
  - could be a problem in that we'd need to boostrap since
    procpath-native would need to be built at the beginning of each
    bitbake run or be added to buildtools or hacked into y-ab-helper.
  - it might be simpler to screen-scrape top output...


3.
make: job server
  - working and able to build images now.
  - testing to confirm that it actually limits the load
  - we'll submit for master-next once that's confirmed.


4.
There's a problem in qemu/kernel corruption apparently from
an ltp test. Richard has done lots of work to go back to the
near pristine 5.10 kernel and the problem still happens so
that seems to eliminate the possibility that it's a linux-yocto
specific issue.

Richard has a patch in here:
http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/t222&id=d7d65aae104caa03afc28837b0abe0b486d5a8b8 


and to reproduce the problem you should be able to just run:

IMAGE_INSTALL_append = ' ltp'
TEST_SUITES = 'ping ssh ltp' then bitbake core-image-sato; bitbake 
core-image-sato -c testimage
( qemux86-64, with kvm)


then look for BUG: in log in core-image-sato WORKDIR/testimage/qemu*
  i.e.: tmp/work/qemux86_64-poky-linux/core-image-sato/1.0-r0/testimage/


Reproducible about 70% of the time.
RP: revert qemu-6.0 to 5.x: The problem persists.
     using ubu-20.04



5.
Remaining more frequent issues:

valgrind:
   https://autobuilder.yoctoproject.org/typhoon/#/builders/81/builds/2168


6.
There are 3 patches in master-next that we need to decide on:
  - library preload: read qemu libs into memory.
    - helpful but maybe treat as a bandaid until we are able to
      reduce the IO and cpu spikes.

  - qemu-runner? timeout increase 120 -> 240
  - ptest timeouts 300 -> 450?


7.
  The additional (top and qemu log) output when qemu hangs is merged.
  Thanks Sakib.

8.
   Plans for the week:

   Richard: build M1, debug ltp issue.
   Alex: full day on ltp tomorrow?
   Sakib: task summary
   Trevor: make job server
   Tony: more valgrind bugs/work-arounds.
   Saul: have QMP deal with sigusr1 to close the QMP socket
   Randy: test ltp failure



