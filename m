Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.7788.1625149206142081590
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Jul 2021 07:20:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=hw/gPgkm;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=281635cefe=randy.macleod@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2713638C086D
	for <yocto@yoctoproject.org>; Thu,  1 Jul 2021 14:20:05 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 161EGTtl018177;
	Thu, 1 Jul 2021 07:19:59 -0700
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2107.outbound.protection.outlook.com [104.47.58.107])
	by mx0a-0064b401.pphosted.com with ESMTP id 39h47cre52-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 01 Jul 2021 07:19:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZUkp61v9l6LmB7xpX8zdauXYkXEPl/BLNaTmd7Hq1EWKwo1yIS+4KV6e/fotZarIiDFxMnipMnmrLalcCQ4tVFSdd/FmVs7WZzSYVPf1miWdboIjrcuoob/2xdOBLvWT5jubpUomhQVOHGKICUpXPuNHcFjPLK8WNJMwAObXLcIMNZhElLjDByb3YN0ACl5oFcHACtAnhTewehpCYLyXahMmD0SACbhQvLlpgkyhKpDzn/yWxDj0w0lI3Dy30H6N7/T4t31wS9xhReGE0N1WIR6XaENbVqKov1eGSGxvy+YxuQ84dmQU8hp5hjLoEefc791brN1IY1tsSuLDDL54Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTf+4NNn069UurhpJs1+cgQSUdoO1zREOCilXHjtm9E=;
 b=gpvqIQpxHVDDuNUpvTAd6n6Opq6lhG6UPqo1LiLyYAJF244CXtPAzQvQIzfp4OilMqlYTtHzDZ33sOa5Dpk5T6lzk4Fd0T5dI5A+BahQSOwQ6EKAZpQPgvj4MZaYvlsrmERGUDMJ+yk0+Adyi5n7b09wwRgGUSc2a2veMPt7hXom6Jhez/3cRQ3aBBHy4yWYkMPSDbUPD0mF2SOg/HkhBznPsMISUSd4/OjBqH3RGzyiZt0lw5RI1w8Z3lvnY4UEDhNGEjU0uvS8czty196zKkIv/uhDZDm5wbQyKMMbCkWJe2DFLSqQTKiiiRNCMJI5npnHDC2pzu5ZnGk0WscmnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTf+4NNn069UurhpJs1+cgQSUdoO1zREOCilXHjtm9E=;
 b=hw/gPgkmczN0Aob7gvjbYbmsrqUtnXJv+pByoQOzMxkVWzeWAQpUIggqOCdlNye5DjGhSR90B/sL7tvnIq7988v75pNt1V90D3iTa16R2Gz/8AADf4IbYUyXPEJzjKzft9WMYgRH39+RJAmpFU95hq7ES8sPYPlFcuX6RFAaUFI=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2267.namprd11.prod.outlook.com (2603:10b6:4:52::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Thu, 1 Jul
 2021 14:19:55 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4264.027; Thu, 1 Jul 2021
 14:19:55 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: July 1, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
        "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <2ed65c31-c43b-00fc-7133-1354d68dbbc8@windriver.com>
Date: Thu, 1 Jul 2021 10:19:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: PH0PR07CA0106.namprd07.prod.outlook.com
 (2603:10b6:510:4::21) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by PH0PR07CA0106.namprd07.prod.outlook.com (2603:10b6:510:4::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23 via Frontend Transport; Thu, 1 Jul 2021 14:19:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 09105edf-80ec-4dfa-6512-08d93c9b4cb3
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2267:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB2267829FBB677BA820013E7FF8009@DM5PR1101MB2267.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5mv10qsAKYx9VZk29rXYv8DqMGwm/Yb+13RmRMNKP1Q+BxmeldgMUdtOlKHuldDs3gEXtcZRzSwJjjlyvVSpnQOrBKiN0ASofNW/2g7kGlobFyOZRi/a0zYux0VShAdUwOjN9t5Oroh5VwdShX9XReofKdlH+t2WEdQlM8nYGHdja8jdADeOq8NIG2Xc9raOSemKfULpt4eMpdM7NIxqD+DxzHd99gdVsOTa0+99isKXqfKAIu5cm3Er0qqc+w6LVo0Dk4/rkxpugD53r0xIEbbZqG7T6B8oH1cpS/wNZao9L4LredF49/8nhIUKLqVJ4MV7inbJ3VnVVc9ForounV19dt4D+T/UtS3rgaEiEhXWV+TwcStWlURCoyUG7wQhpu5BoWXn6rBdA4I3BdMuaR7VRYq0M6F+ehxigYTHj3WHT/oBB5RdxqHVJY8sKQyVMtRSTil5FEp0K3L1fiVfDnwJQlQ7VzmsnPF03L3XxT9UKnWHlX2qlzy64mNuqmlDGxfccCjgN6TfDC504DacvevnGZYbzSwquDo4IYza/9ByEynoA60j6MOUPa5dq7qBm0foHEn3gZW8xsdEwKDFg1CRC/TNQA3k7UrSkyj7dO+bAtgME3qOvs0WabM7RFNSHezb+ipsaucybqPaeVfwR0yfhU5m8aGGMknuROOeCsZv8FsaIeVGlL5UcPfso3Ke6b1M6Fe8v1kAsiQkOLZf2muOUW7ulxZyOqAuvakM/RB4rwtfs5Xse+AREtgkkPdxIpXdP8dSmZDqVquj5OTU/kdi2uzhyZqQAsrcFeQmLN8mBL+tLZ0RAYfcopDYWrdy0LZihrPfDr8Xy2T6gcU7qF0lx7tMp2XeJKs/GLcMz6tTCVg7Gs4odiwa8wmNmViM5fI7drD9EPHyxuddB2vetGvccbjqEjVPM/2tbCSY70U=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(396003)(136003)(376002)(366004)(2906002)(31686004)(4326008)(316002)(36756003)(8936002)(16576012)(66476007)(52116002)(54906003)(83380400001)(66556008)(66946007)(8676002)(110136005)(16526019)(478600001)(86362001)(956004)(5660300002)(26005)(38100700002)(186003)(966005)(38350700002)(6636002)(6486002)(31696002)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UUozYUloWEhUK2RKWWF1Snl5clcxaWliRUl1enJySzRRdjlJUVRYYTFackx1?=
 =?utf-8?B?Zml6SWFNVmVmc08yUDBVNWNJMDNMbXF0T1JCQkVJYzFYU0lFQWhQWDl2MmhW?=
 =?utf-8?B?UmtLT1Q5WlptdnJqaDllalFhT3kyWmRFcUx2R1lXU0xZOHdERkRyZmorOVU1?=
 =?utf-8?B?ZGs5dWsyNFNXNGhuL2l3VGJhU3dsbVNEdlAwUkZBTk1pU3hnaEtFcE5PcHJz?=
 =?utf-8?B?enMra0Y4d3c1ZndQMWJhVjFCQS9LUGlJL1lnVUFVSkh3MUo3bms1MTBCQUR6?=
 =?utf-8?B?MG5tQXBHZ3pHcW9HNGdNQUx1USswbUsvVG81V21Pd2k1RWprWDEzeGVXM2Nz?=
 =?utf-8?B?NXQzcGp2WkNXMFhiV09HRkh5UGEyNU9RL1dJM21zWjFsVVlSYkl0dlJFQXFM?=
 =?utf-8?B?Yks0QUJMc2JLVHlZR3hHRjVHQy9aTEtiZ3ZXU2dlVm9FZzZRNm5hckJwdmQw?=
 =?utf-8?B?YTg1U3NYMS9aUXR3L25ueUpsdEZ1TzFUelhHNmlmbzJsaFRMbmpJdHJwT3By?=
 =?utf-8?B?aXU3Q09qMi92ZHRNWUx0Z0lRaUgrVEU0dkNlQ2NRaktoVDBRb1FmL3Rzejdx?=
 =?utf-8?B?V1JzNEt6OVlVLytYaU4xU1d2R1VCb0xsK0JFVkcrc2FIQnlPK0l2eUlZSVRQ?=
 =?utf-8?B?SjFpYWlhZWptZFphWVFFV1FSS0d1MU9OWnBrd2JpUk90UGQxNmpMN1ZYNzlK?=
 =?utf-8?B?bEQxRUJ4bmF4UzF3TEl0WUt3dzBKS1FvUWt3QWV3dE1iZGNZZnpJYzdCWUt1?=
 =?utf-8?B?ZDFyT0E3cmluN29HcE96MTBMS3ZEM3IwSzg4d0p3ajBQT1BxNHgxWlRISXVS?=
 =?utf-8?B?b3BvRVkrUEFzWHBvUUZNbUVzN29hblJDckx1ZTk2SGp4Vmd5SDBxaW9HNDMx?=
 =?utf-8?B?SmRzK25DVlE2OStaa3VYTDl1THpCZ2ljUnlOakdkck1rU0ZnYkFnRGlMYVlK?=
 =?utf-8?B?UmVKWnpTWUtLOFNTTlFaL1dhWktScW14VnpJWFQzUlVSZU9ZdWFhU0liTXZl?=
 =?utf-8?B?M3VoRHJMYjM0UmNwUHcraWtTR1hCdHB6QUh6aGIyOW5Sb29xR1huQ1N3bmI3?=
 =?utf-8?B?SWtWd09RY0ZiVjFjQkh6L2hqVnZpYVpKOHlDanN5OWxTcWpPNktOY1dmcHdm?=
 =?utf-8?B?Q1RtbktuenV1T2tyVkhZeVYvdFh2NEIySzl1ZVpLZlQvSFNmQUUxYnpvZEN4?=
 =?utf-8?B?c0xERFJuakd0cDZYSlpYa2dTVFB1OHFJbFcvU0VOdlRDRm43Z2xvSGUxdmR6?=
 =?utf-8?B?RUpiNDhIdDFrYlVNaFZoWk55bGxvYnlNSzR4ZjkyM3hkUE5ET2UyK1AvTnJa?=
 =?utf-8?B?WHJYM0UyR1hNWVRmQ1dhZHZlajZ5VHI4NnJJYlgzM2V4NUJpZ09DNTJPL3VY?=
 =?utf-8?B?QzA2enFxV21oYVloWWIraEhmOVliT1BhZ3lUSW5kUEJvZTh4aFI1eGVVSElO?=
 =?utf-8?B?bEFuYjNYN3paVGF4YjBVeDJUS0poT2JjMjU5MHRjbVJSZ0J2a284aktOdjF5?=
 =?utf-8?B?bzIyZTNiYmErbnhEQTZTbk1qRlZhMjhEL3V2NlpydThGN1VjL2FqcnY5eS9i?=
 =?utf-8?B?eFQrbDdiWXNlSGNRc3JqMmw5NlZtd1N4ck1vQjE2aDhIMTM1aHFUcmtSREdW?=
 =?utf-8?B?QWxzTkRyckJ4R3IraHZzYTljbVNISXYwKzN5ZUxpb1lHZ3ZSYVVvYVd0d3VL?=
 =?utf-8?B?ZjZmRDl1cmYyT0d4dCtBVEE5dVBZZzZhaGtaYXNQcE5Wa2lTbnovRHlCMjhh?=
 =?utf-8?Q?Wr5fqZkgRsLQbUfCj6X6SajUrtRffsv/7s1IMss?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09105edf-80ec-4dfa-6512-08d93c9b4cb3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2021 14:19:55.5897
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1hOLCinrkK5OlzUPvH3GvwwSMamQeT3F1vanSv4QahDnodP8ot9N77KZPmQBPW2OLrhB3J1BiOFV1wrDI1rWyixhI5MoUnD5okY2qe4O454=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2267
X-Proofpoint-GUID: 3KUgDtYwNAKsA6eF75fDxCLTgAffApOi
X-Proofpoint-ORIG-GUID: 3KUgDtYwNAKsA6eF75fDxCLTgAffApOi
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-01_08:2021-07-01,2021-07-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 spamscore=0 priorityscore=1501 mlxlogscore=999 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0 clxscore=1031
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2107010089
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit


YP AB Intermittent failures meeting
===================================
July 1, 2021, 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees:  Alex, Richard, Saul, Randy


Summary:
========

The autobuilder RCU hang is fixed, build greener.
ptest failures (some glibc-2.34) are the top problem now.

Add Michael Halstead, see questions below in section 4.

If anyone wants to help, we could use more eyes on the logs,
particularly the summary logs and understanding iostat #
when the dd test times out.


Plans for the week:

===================


   Richard: glibc upgrade, etc.

   Alex: ?

   Sakib: pub/non-release link upgrade, script clean-up.

   Trevor: make job server test. Try it on YP AB!!! What type of build?

   Tony: nothing this week for YP.

   Saul: nothing this week for YP.

   Randy: vacation!


Meeting Notes:
==============

1. The qemu RCU hang has been fixed to not deadlock anymore!

It still  hangs at times but this dramatically reduces the
AB failures.


2. Lots of ptest failures with
   - tcl
   - valgrind
   especially with the upreved glibc-2.34.

3. YP AB INT # bugs reduced: down to ~ 47
    Richard went through the list and closed ~ 10 bugs.
   - RCU, LTP bugs closed.
   - qemu ping bug remains
       https://bugzilla.yoctoproject.org/show_bug.cgi?id=14029

4. bitbake server timeout.

    "Timeout while waiting for a reply from the bitbake server (60s)"

    Randy mentioned that the bitbake server timeouts seen in the
    Wind River build cluster have gone away after upgrading to
    a newer version of docker.

    Old: Docker Version: Docker version 18.09.4, build d14af54266
    New: Docker Version: Docker version 20.10.7, build f0df350


    Clearly the YP ABs aren't running in docker but what
    about firmware and kernel tunings.

    Michael,

    Is the BIOS/firmware kept up to date on most nodes?

    It seems that we are running stock kernels which makes sense but
    given that we don't have concerns about privacy since system access
    is controlled and the nodes are being used to test open
    source software, we might consider optimizing for performance
    rather than security.

    Alex pointed at: https://make-linux-fast-again.com/
    Which just lists a set of kernel boot options:
       noibrs noibpb nopti nospectre_v2 nospectre_v1  \
       l1tf=off nospec_store_bypass_disable no_stf_barrier \
       mds=off tsx=on tsx_async_abort=off mitigations=off

    Can we enable some or all of these on a node to see what the
    performance difference is?


5. io stalls

    Richard said that it would make sense to write an ftrace utility
    / script to monitor io latency and we could install it with sudo
    Ch^W mentioned ftrace on IRC.
    Sakib and Randy will work on that but not for a week or two.

6. Switch the pub/non-release links from full log to summary.
    The host data links on:
      https://autobuilder.yocto.io/pub/non-release/
    should include links to the summary data. I think we have room to
    include both links like this:
    0 1 2 3  (Full: 0 1 2 3 )

7. Qemu machine protocol debugging commands

    Saul's patch is in.


8. System load: make, ninja jobs

    Trevor has been busy with other work but has been playing with
    kea and make -l:  load average calculation
       https://github.com/mirror/make/blob/master/src/job.c#L1947


    We're confirmed that this actually works on a build server and
    for all versions of make in the cluster.

    Randy may write to Paul Smith about the general problem we
    are having.


9.  iostat

     The iostat output is in some of the AB logs:
        https://autobuilder.yocto.io/pub/non-release/
     for example:

https://autobuilder.yocto.io/pub/non-release/20210623-17/testresults/meta-oe/2021-06-23--21-51/host_stats_0_top.txt

     search for "start: iostat"
     it looks like the io sub-systems are 100% utilized but
     we need more time, data and the summary script to be able to easily
     make a general statement about AB INT issues and IO load and
     to be able to identify what is typically generating the IO load.




../Randy
