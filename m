Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.12385.1625752414833449884
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jul 2021 06:53:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=mYU5Ty1v;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=282301596d=randy.macleod@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AA70F38C0851
	for <yocto@yoctoproject.org>; Thu,  8 Jul 2021 13:53:29 +0000 (UTC)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 168DqomE003742;
	Thu, 8 Jul 2021 06:53:25 -0700
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	by mx0a-0064b401.pphosted.com with ESMTP id 39nnp2gg8h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 08 Jul 2021 06:53:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gsfweK54r3qJPlfdlT5uPnj8DXSRgw1RUrFN5XHo4t2UqkVQsNAYVW/dmR5OZ0PPBO6RWAspzKrhL/ebebsS9vPjU/UYlQ6KpHBDRvdYRHHrIyv1YtUAfT9nLEYVW9sn3Vk1Rxx5feMx03BfgC3Nm7Ltxbou+rL0gD9ud1iMnG9hoTNrnwBcZNhTjay5a234EumJMfyx9KH66nk2omDbankI6ohOyCgsnoef7WYFE25ZRY6SVFhjPgC/hW+7I5ahx4YV9pC2QBpFUwZHg+Htt5uthfKTJqU5V61Eyw7GsAJLlANStDg2Scv5O2Fo7deGmhu1RwAEr+YFaHGVbFAYgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X4+Rc0VsbRPPiYAWloMD+MDkLHY/tHSpqLfxIVAuVxk=;
 b=IwQjldENQEPKyyahQfDoxuRcD8gQZY5vkuewN7TmzaL+ychE6Zp6SS2B9UrghgNDVDAT65q7FnZpoDM5sW/MMg2/hIfVsYXJiF4YDdpMRc/GUcK/XDG05PaPTUXpJfZZ6AOK5q2Uw43h+SuVGj9RJggEk4nSDtSwcYrSWbTmp9ZDtGFyC8gu5LulzDrDkI0IapI4rIaMT4/djK63T56nWotUyN6/blcfj3PCG+zH4SsyyUYL6KSPSdKyemMwlMY2C30krhi+pPKkELdbaksaYLBGSy+oAOm6p1tNxSA3KyHIw9pNseEI8zlqF5Z4ArJUuOYup5bP6jF2Xe3yuH5U3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X4+Rc0VsbRPPiYAWloMD+MDkLHY/tHSpqLfxIVAuVxk=;
 b=mYU5Ty1veDCCBYSEuWF7Zg0GFV14rl04EI8V38cIqya0VNsLayH3IvkcKNHosY1qvFv3ZW72KNUGYi/PY/ngkisXbmzqvyZp4X2d4OiVUZ0BlJgDFIYhU2Pu3rEyE0xYbjVRFT0No8KW9OOCKBmB5UoIj1aa+ZSm+iiWi3I8Cpo=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM4PR11MB5422.namprd11.prod.outlook.com (2603:10b6:5:399::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.22; Thu, 8 Jul
 2021 13:53:23 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4308.022; Thu, 8 Jul 2021
 13:53:22 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: July 8, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
        "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <15248ca8-1257-4ed9-b405-149070fde4a1@windriver.com>
Date: Thu, 8 Jul 2021 09:53:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: BYAPR07CA0096.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::37) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR07CA0096.namprd07.prod.outlook.com (2603:10b6:a03:12b::37) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20 via Frontend Transport; Thu, 8 Jul 2021 13:53:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 31e7d305-2000-4276-bd5e-08d94217c032
X-MS-TrafficTypeDiagnostic: DM4PR11MB5422:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM4PR11MB542231044C1B47EB9E9E2A24F8199@DM4PR11MB5422.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	x5Y05NRU7HV+7OrtA1KKjvg774p+wfg3EJR51nlTCi23jf13N9ya25uthp/4RPmmAlxGHmcfouBDjCjE/BZ/lb8tRnWBxKS2E5zvJIQ+RxG7C8BMma0EVtZorUmnHVaYMQWhIYaX5p2kqK180Bneg6XSv1DTqvEJtPK0e3nuLfcHWMcpkZDkO++KMLxwiYtaMntpv/QqrQ+p+zLymIsSM4OloL3eP0q+GdWKzXKhlLu+PU+fWTAslOhUCYy/RcA/kqqBtLV2OMW6isVdpkZgJRf2G5/9aH5F2rEiVDv4hoiP7NE4ioyYojFfBbcgY5QatyzABhdgUPrOSpZRGZqQfyJwA0ANjpO3CCkOwUNJDEQohEDIsNpHXxds9tMWtuDOb5faGK1EK3eRWaJ3BxrdsoorebtBMlMrkvJBrtLY6dSB6XKCswncJM9RNV9OpMjH4vNSWPhyc+qoYWIA43dzKKXRl3RqAXb9ug9th8IS0cb0tVgwqjCBVDHjFlqD4C72lcdPjD8VWM8z4xn8gMNn6EthrgFL0ePAk4XevWl/VYVHQPDbf0b9pZwo6cMqnaLk8qcKryFNZ+y+/gXAG/0h5Bwezt2KVoG6BIR+W0AzGitK6RkkCD0iCYsDqqETgIuR6Q6409vrM3tq1/cw4f3dlRSaAT5+wqZhidfk/tYMzUxpfZQGbGEqmXKtMEc/jS3WrIvEtcUxM4xvLCwhK3SVSFlg2/vP2AoT3qB4U8MdLGru6y2T8w2C9jfRUiJy90TB6r4n9RzBUWRKnFqqjiI+c5ak35BBoxQ9XQPK7ol39/qekGuR67pX9lCG8MHPKcVFKAEX2ozy/BuScoWPlevGAFNaFsXpzvmFPjY0A9VJ9FBrCx7MoI6aot3iP9QO4c5R
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(346002)(366004)(396003)(136003)(2616005)(66556008)(66946007)(6636002)(8936002)(5660300002)(66476007)(110136005)(6486002)(8676002)(52116002)(186003)(2906002)(38350700002)(83380400001)(316002)(38100700002)(16576012)(478600001)(36756003)(31696002)(6666004)(86362001)(4326008)(31686004)(966005)(54906003)(26005)(956004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VjYzTitrazY5QXZXOU1VTG1Pbm51Qnk2RCt0c2lwTVJBcFVEU3FYL1F1QXlT?=
 =?utf-8?B?MGQvZFJYWGJYUFJDUFUzQklwdGhQaVlQdWVkdDQzRWJ6TkN4RkpOVXJrdWxP?=
 =?utf-8?B?d1dqeTdNN1JqTUI3UDJ3dEFNRkZQUklHRUZLZzV2TnFXc1daNVB0ZmNVTUQ0?=
 =?utf-8?B?WnJYSHI0eWVGU0k2N1Y3ZGFnQnk1QmxHNnFYaERrUFlTejE2YUx3MWt5emtJ?=
 =?utf-8?B?NEJRMldiNEF1dzg2VmNOWnVONWkyOGNRcVNEei8wc3dteDN4b0JBandCeDV6?=
 =?utf-8?B?WGdnVWh5WDRyZUdBN3h3WTZrVTJIVmNVT1NjQnIrWmx4emU3L1E0eU9RZHRs?=
 =?utf-8?B?Q2lPc2N3Yjk4UHlCazltMHM1VVc3MUNVYjBUNGZMWkd0cER0a3JNVHI5YnRL?=
 =?utf-8?B?RWpmTUd1ZE1KanZoQjl2WXdSVlhYSmhNL3MwcFBpczJJVzVsQUZYaVlkcE5F?=
 =?utf-8?B?cjBJd244akx5MDNVUFdZMytUTHhQNzNjSEVYM24rSi9KdUd6QnVhODUrYTJO?=
 =?utf-8?B?OTJTY0gxeE5CalRGWkFFZThjU2ZwTEZYc0d2MzkrbmxkQU4wWVhZTWdhbnQ2?=
 =?utf-8?B?dWxaeGdUQjRsYjFEMHpJUEVVZHQ2RzMvRStxTHJKSjA0SmdySEVWM1RXWHBS?=
 =?utf-8?B?dlFTNjc0YlhQMFprd0V0UmlLL2R6a2NXYlU3cnpJR3pzalV0L08zNUUyVitz?=
 =?utf-8?B?eGJWL2Y5cytad1owY2xKd1Y5eCtscGtuSzkvS2o1QU1abXhoWER3cllCMy8z?=
 =?utf-8?B?eWVWUlJyK0RxUDlWOGhxYm9WWHpPZFU2L1kwb1JwRWo2WVYzeG0vcERhUDUy?=
 =?utf-8?B?MFJKeEVuTUZabTcwdm5lTkpPK2JFbnV0WnNWNFlaa2xjdm1XZ0luVkIrenJt?=
 =?utf-8?B?VVFvVHVqeXY2TnJoN2l4aDZJVHZFV2U3TFV6WlZLZ3l3b0tRSDhrOGdGdzNR?=
 =?utf-8?B?VURxcExpdlJzNjlmbmhkdWxSUDhGR1M5UDlSYlc5RmNtdkd2NnJqTnRtTHhF?=
 =?utf-8?B?T3NxZTdTNWlsb1dTQ0I4Z0srTjdIbGNLNWgxd3k0eU0vRzllM2w1WjhrK0hn?=
 =?utf-8?B?d1NSc1ppQVMvdVd4RytDamdoaTd0WDBoV2xXM1pmTkpibUJsSmZCUEZDKzBr?=
 =?utf-8?B?NTRmSklDUTlGYUZFMlhYMCtGZjB4ZjBpUmxjdEl1SlNjTnRkSG9DWHZjdXlO?=
 =?utf-8?B?VGZCbENlSDF1RnlQd1E5RW9ZTTIyYnFqTlJjdmNJN29qd2tFaTBSbVB3bnEz?=
 =?utf-8?B?UEYvQTRNRVZOWkR5SEIvQU5Xc2NRR3R3Ly9qWEdyNGVoWW5SQ0FKZm1ZTkp6?=
 =?utf-8?B?dlkxVklVdTNTL2hwMWJybExieml0RTNPSW11c2VWdVFFRVdqako5V2RTd1dO?=
 =?utf-8?B?NjlDVzh3OXVOVWRyVmltenpqMmE5TEFnV3kzVE94UENYazZqUTNFQmhSdkk2?=
 =?utf-8?B?STAvMVpzRlBrdWdKUmtIZXFvQlkrQjdnTzU1Ky9GOE1rYWlpRUFBSFBEdlNi?=
 =?utf-8?B?KzlBa2lDTXRydlA2QXFtdWUxRitpbk4rWlgrTmMvZlI1U0FmSXNYWktSKyts?=
 =?utf-8?B?eWp3NTBkUVJwenRNQWJJbG5zQXB1blRMRmFiNDlhUGgyVkV0RUFEY3JMa0Nn?=
 =?utf-8?B?cDdMeG5JVVg2U1BSalhYSThBU05uVTJFUDRUemdScVBJcUE2THJJU1EyTFIy?=
 =?utf-8?B?dFYrVE5QMGJpNHBSTlNyUnRxUG1NTXVpZzZQTDZqQStQK2pxL2FteG11eGsy?=
 =?utf-8?Q?+hi/wWnRkaF8uKDp/mUxv/Qn1zuTKr62Lht3/HN?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31e7d305-2000-4276-bd5e-08d94217c032
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2021 13:53:22.7526
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dfKVhkvNsSOoZWq8tNgnIodUG/f+zVsVG38nnEfPckmxh+x7CLjST8Flro8JdzfKsEDCjIXgpUqwJP+UvFDsRb21eiS171rp0N4OrWUcGLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5422
X-Proofpoint-ORIG-GUID: XnHSh8ysxiIolQNi17UrZHXC9p44Kwkg
X-Proofpoint-GUID: XnHSh8ysxiIolQNi17UrZHXC9p44Kwkg
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-08_06:2021-07-08,2021-07-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 clxscore=1031 suspectscore=0
 priorityscore=1501 mlxscore=0 phishscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107080076
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit


YP AB Intermittent failures meeting
===================================
July 1, 2021, 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees:  Tony, Richard, Trevor, Randy


Summary:

========



The autobuilder RCU hang is still fixed ;-),
    master branch builds greener.

ptest failures are the top problem now.



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



   Tony: fix/work-around valgrind ptest bug:
      none/tests/amd64/fb_test_amd64
   Saul: nothing this week for YP.



   Randy: vacation, then email catch-up!




Meeting Notes:

==============


1, runqemu

Tony having trouble with runqemu on some Wind River machine.

Richard has a fix for a race in runqemu in master-next.

These might be related but if not Tony should debug the
issue/ collect logs.

2. job server

- Trevor has conclusive evidence that the 'make' job server is useful.
   email summary to come. Need to fix some assumptoins in code that
   parses PARALLEL_MAKE then send patch to yocto-autobuilder-helper.

- ninja will have to be done next.


3. AB status

  generally better but...

  ptests are having some recurring problems.
  - parted - only on arm?
  - valgrind - none/tests/amd64/fb_test_amd64
  - gdb test failing again. - Randy!

4. Richard reported
    - something really flaky going on with serial ports.
    - particularly bad on qemuppc but also x86.
    - related to Saul's QMP data dump?

5. Sakib needs to send patch to make testimage failures
    generate summary logs.

6. Richard says that we may need to redesign the data collection system
    that Sakib's AB INT tests are based on.





Still relevant parts of
Previous Meeting Notes:
=======================

1. The qemu RCU hang has been fixed to not deadlock anymore!

It still  hangs at times but this dramatically reduces the
AB failures.



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





../Randy
