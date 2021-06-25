Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.1552.1624584661559888020
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 18:31:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=UIkBZQ4V;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=1810b1e4f6=randy.macleod@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6841E38C0507
	for <yocto@yoctoproject.org>; Fri, 25 Jun 2021 01:31:00 +0000 (UTC)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15P1ThJV011194;
	Thu, 24 Jun 2021 18:30:10 -0700
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	by mx0a-0064b401.pphosted.com with ESMTP id 39d23yg4ms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Jun 2021 18:30:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mYjyIoJ9ZMdjS994NrCdapBnFUGX5Z2mxKoiA7zsS7NgAEiHkLW7+nlt5zFlR86dLu7FPDBbm+KFrX/CYCWu8Wx2dDzv2Aa9BtwdNUYf5RyCZ3qfmO78f35g0sw25ISLBGxSt18U1sBBzM4BEiDI1w/uKwSzpj5KxpwYJ0LP5My9FG6UTBxncMoAc2fhkJLVLSb6dTAV+ru9VKlmCSiqVPXjNL8ZMrUeiXozG6vg9zl7uSrv2aeDNmiSnw7nO/Nmb1zfnUuRE3njCwxbNu+TgjFTyltoe/SRMaR5LcYzevXK4JfhJ9jHqP0qEcltX+gcSpvXskgiOSDq38sLzHNKBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Md6iY57yqs8JHM3VEGQJ/w05xE8nQpPI4K5p3mC2xE=;
 b=VHgUwNWrYD8f95+8iRHy9+K3vmGmwqVxZ747lskTYjJmwJFQrFhV4Rxi4CS5K9Nfh2dRybCc6X+xoGWHwqEKt2GzmwqJEYkwc6MzAV/Jjfw+qC2d8Zq/wveU8LiSUS8XR1OoEf79B0QGRQ9M8qFKx7lieaCZXErpvxsbKR+9txpphFi4bTnlnM6SSQ8BYEC/PuzX/I8kKXTB6T5f++7RLR3o946SHh/Cb7eW86DHKleRifAjb/Xnmf7gxv67NqmnuDSyBwAz56J42ImaNPjb4Ni4MBnjzjdCJlUTypEE51kBIusSsbhwmnAKyYx0R3RVvg4QKp1CDqi26YDYkiXDBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Md6iY57yqs8JHM3VEGQJ/w05xE8nQpPI4K5p3mC2xE=;
 b=UIkBZQ4Vaoed0QSnk57W4RvYwH1cEqsuskMoml4mopHyO6gVYOISwcfRkXSNPf9N6LSPeID4Gj9fWZanO6aJd0KTrOHXfmcobzHWkZup7YrLqXyz7r0GtHENAjMZkXbNNiCNKJ/GzLafsNHIpbMXBKMH7ATTNKoXuj/6g3OyoE4=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3594.namprd11.prod.outlook.com (2603:10b6:5:13b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.23; Fri, 25 Jun
 2021 01:30:08 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4242.024; Fri, 25 Jun 2021
 01:30:08 +0000
Subject: Re: [yocto] what's the state of things with pushing the bounds on ASSUME_PROVIDED?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
        Yocto discussion list <yocto@yoctoproject.org>
References: <f5e52a14-95f1-5965-a71e-cd2a38fbd7ab@crashcourse.ca>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <7c49689d-0a5e-7523-862d-e437e359b957@windriver.com>
Date: Thu, 24 Jun 2021 21:30:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <f5e52a14-95f1-5965-a71e-cd2a38fbd7ab@crashcourse.ca>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR21CA0003.namprd21.prod.outlook.com
 (2603:10b6:a03:114::13) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR21CA0003.namprd21.prod.outlook.com (2603:10b6:a03:114::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.7 via Frontend Transport; Fri, 25 Jun 2021 01:30:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4e560461-1315-4a6a-2cf9-08d93778c471
X-MS-TrafficTypeDiagnostic: DM6PR11MB3594:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3594969D91F8F1AC7E0EE723F8069@DM6PR11MB3594.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	U3Ir4QsPNkxgeV9doL+YavAHMB3CEVDz3mNKpXrq2uLN+xrMgtsWmv00ud53SOkMeQUGPCblPhfM654/3+6fCtSEvjwdDAjjHHYBkfgYZIZkADbkEPXsisfKgtEOCccEUtE8ToEUyv/2sB2YY4uLw8QTk4dzn5250H6ENTPOa5+UUbyTNmldh8ahnK1S0sC0/ZnmAqRzTRq2gJrh3E5gOH9zFW4AzB9r/hNkvydWzhbd94Vh0gQBZ34h4SwGCR3aEk1T3kCTfIlJXtcwi3olYBr5MbBgEnrehO+Du5oIOHj15HOI62AlZHNdPKTXdToRNtjhM97dTE72FFFCxD9tM+ReVvh5DpkEqX2xcgF1lkPYSPjONryLHVUNTHaH7u5aRsEVoaJR/7wpY3MUZHsgsC4T1xLsig7YtS16h/8wDVwOD0limUgxgC2FOqdPZi1Y+txlPUDfeMGLyB1B/1yPfgsAePTHX2uZIlcwW69AQSRUD8v9S2I6wJbh7qBMQ7/xJgJ9F87f3ZlPa0Hl8qbSQ8IoM4FdqrugIva9rvg13pQt4glUSyHFlPW2GrcKWZZoXJUILfSD6O3cWlFOMqA6sy83FpNlpP0lV36NnByvcN0uNW+fVXvGsyPK25gl3s4RKMdH/cDr5uURztvwXpRnbvwN9EN1ksInJ/vWCj4ceGZEPYQVTc0yF/MY7TUX190+PNTfhEYar1Q3U2j2NDFCBZPNid/mv+dsOJcyvP8VYRYXWxTdlKD+jaQyMFVuzChl1U71js49cmPLGDI8P59Tf/Evc38cSCQP5n9TNRt7HeVowlbCj8lobbjsOpwFRtN184S4tTipj6RYxHAvOOEPU2pPUGl9Z+p1r8ftlNNzPwy2W+beNBRN3vj5FmJ4EqEe
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(396003)(376002)(39850400004)(136003)(966005)(83380400001)(166002)(2616005)(6486002)(956004)(186003)(478600001)(53546011)(2906002)(66476007)(52116002)(16576012)(8676002)(8936002)(5660300002)(110136005)(26005)(31696002)(31686004)(316002)(16526019)(86362001)(36756003)(4001150100001)(38100700002)(66946007)(66556008)(38350700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?Windows-1252?Q?+ZS9ZGtX+/gNsKTbvDkrvlZPVipwwCb/qRzzoVVKmDyAmJqf6XJZ0K9h?=
 =?Windows-1252?Q?JVhlhJsuD8eU5xTPZnW9u6mxfqni7AgiKgxfA4MN+Yrm0Rxjo7DuhfbK?=
 =?Windows-1252?Q?f8j5b5KtheO0qKjfV4aa0DT8ooH1uz0gq1T6tzWP0xIB87DH2gthHDal?=
 =?Windows-1252?Q?ZPRoT1XrKpORINsMEBbbLjABUfYwzyPLdZtCU4fvCyKoAp4SIhx3nGmR?=
 =?Windows-1252?Q?vn03t9u+OKOAEsmzVrm3IcqCEd2V1/L1LzewOOnS5QSTywa3xjIYmhHh?=
 =?Windows-1252?Q?FQFG0wCQO6juf98C7ZmnZr748U04hATtnd+C4QpjwOmtoNUPn5EOLVgw?=
 =?Windows-1252?Q?5lrZCUeuuHbiS3T5Kcl2wAFSQpk9kC9+6PP2pFi9/gD5XLNbmygzH78n?=
 =?Windows-1252?Q?YIDYQCZ9FgBE950IayEogi9TYScG7Sb+yHHeqxsH9eBr6OAaFeGBcn9k?=
 =?Windows-1252?Q?qPMBTzOJ9E+N4ACSlrMAEytpbpL7p3ALhXahCm9OSbc9ZeGb3HQRdq4/?=
 =?Windows-1252?Q?OqfndJTjNfq0CpLefITEboyZqpxcR3QW9nDOlTjKv7WSmihwN9iXWh+u?=
 =?Windows-1252?Q?BVYtu5PiLkGIZPlbiDIkWGaMQrU/xoirFsv1h3eVZrqeL/my4/xw1luI?=
 =?Windows-1252?Q?hO6TAlq+bsqoRJ/27tE3KVZWXVojZKrtI4A2VFX8PXupxvWTWmkz1FwM?=
 =?Windows-1252?Q?VC1rWL/dA10ISNI0NLVAFSI7BY3Qns48LVMtRwimqJCghFFSupmTBWFR?=
 =?Windows-1252?Q?zLhPR8mtQIqvadmBryfkFu+M1On6Br8rhTKX1pjMVDeK7UdJ/XWLndvl?=
 =?Windows-1252?Q?gud5WuzeM7ymWDlFVFWOjEghT1QubEf5HfIIMhTBBfWoFRfO03730gMz?=
 =?Windows-1252?Q?M7RM4zmp4CuGb1ikUt0wzlrz4fzD+eTbLPFEqBHY53TkqLUUiqA1FZnT?=
 =?Windows-1252?Q?xL0GaM2M3+lkDnzcLebwWLtgH0+1yVlDHyomHsSvjFSGapp80fNUXmW9?=
 =?Windows-1252?Q?1e630cQIfs3lUKrubij+Z5PS6Ixn/YWPTKSEZ71YkT0XJ1pd9chSRCfu?=
 =?Windows-1252?Q?VLZ26jn8/+wevRCnzWNe/oWZ8pml0yJCtkaBBvhrteXtBl3d3LWPBqYO?=
 =?Windows-1252?Q?/+RZ//gCjOHm+U6WaMNuz64vbEtE9v6gFdYXmDM+NgLQzuOMd7tMFWny?=
 =?Windows-1252?Q?8PbjnT1dmYKd5DZj/ON/yUrk6gRJx9KsjVQbJul2I69Ly8jmKYD5pFFG?=
 =?Windows-1252?Q?RiqoQ68RW/0aHIRMLmtfNj7IXXoAtDoeKu4Xedua8UynSeXJ97BVnwGe?=
 =?Windows-1252?Q?zX3cMUW/0lbblYNB//1oYZ+zZok0hCpmP42tx0gR2EUo77HG3Wa7FmCX?=
 =?Windows-1252?Q?GBMDgfbrQUAQ7WQ2pzbI3lqQJ8qH/iNSipO2hHPY7PbEYz8swuIDwB5o?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e560461-1315-4a6a-2cf9-08d93778c471
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:30:08.2699
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QM7vtlHQwNgG0jbnDYmGXcDEuOEX+QFwOelMyFrs9iTbhTMXGzz47EJpZikTqM+eMN+MzUl5vYDA4JAuvI9gtIfyXp6MDWyzlo/Gqd0qJTo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3594
X-Proofpoint-ORIG-GUID: 8vnX-x3X_V8DjaiR2PRqD_IRc8FO-0IT
X-Proofpoint-GUID: 8vnX-x3X_V8DjaiR2PRqD_IRc8FO-0IT
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-24_17:2021-06-24,2021-06-24 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxlogscore=999
 malwarescore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 mlxscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106250006
Content-Type: multipart/alternative;
 boundary="------------81087D38A776608BF416008A"
Content-Language: en-CA

--------------81087D38A776608BF416008A
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-06-24 7:50 a.m., Robert P. J. Day wrote:
>    i asked about this once upon a time, so i thought i'd follow up ...
> given the fairly stable state of recent linux distros, is there any
> standard for taking advantage of what *should* be robust native tools
> rather than building them? (i'm ignoring taking advantage of sstate
> and building SDKs and other clever speedups for now.)
>
>    from scratch, i did a wind river (LINCD) build of
> wrlinux-image-small (and i assume it would be much the same under
> current oe-core), and i notice that numerous native tools were
> compiled, including such standards as cmake, curl, elfutils ... the
> list goes on and on.
>
>    so other than the tools that are *required* to be installed, if i
> mention that i am currently running ubuntu 20.04, is there any
> indication as to which tools i'm relatively safe to take advantage
> using ASSUME_PROVIDED and HOSTTOOLS? i realize that the versions built
> will probably differ from the host versions, but it seems that if
> there is an incompatibility, that would be fairly obvious in short
> order.
>
>    thoughts?

Hi Robert,

I didn't remember where this was defined so I took a look:

$ git blame meta/conf/bitbake.conf | grep -A 24 ASSUME_PROVIDED | cut=20
-c1-12,74-
34927dfa61c=A0=A0=A0=A0=A0=A0=A0=A0 2007-12-18 15:04:06 +0000 175) ASSUME_=
PROVIDED =3D "\
da52dce440a=A0=A0=A0=A0=A0=A0=A0=A0 2021-05-16 14:16:56 -0400 176)=A0=A0=
=A0=A0 bash-native \
34927dfa61c=A0=A0=A0=A0=A0=A0=A0=A0 2007-12-18 15:04:06 +0000 177) bzip2-n=
ative \
40a3cf008f2=A0=A0=A0=A0=A0=A0=A0=A0 2012-10-02 14:12:21 +0100 178) chrpath=
-native \
da52dce440a=A0=A0=A0=A0=A0=A0=A0=A0 2021-05-16 14:16:56 -0400 179) diffsta=
t-native \
43c46e9c837=A0=A0=A0=A0=A0=A0=A0=A0 2015-10-16 22:49:26 +0100 180)=A0=A0=
=A0=A0 file-native \
2980ac001f7=A0=A0=A0=A0=A0=A0=A0=A0 2016-02-22 16:23:49 +0000 181) finduti=
ls-native \
b51b4f5ae26=A0=A0=A0=A0=A0=A0=A0=A0 2017-09-10 22:59:08 +1000 182)=A0=A0=
=A0=A0 gawk-native \
617835990ed=A0=A0=A0=A0=A0=A0=A0=A0 2012-07-10 13:26:18 +0000 183)=A0=A0=
=A0=A0 git-native \
34927dfa61c=A0=A0=A0=A0=A0=A0=A0=A0 2007-12-18 15:04:06 +0000 184)=A0=A0=
=A0=A0 grep-native \
675ff42c603=A0=A0=A0=A0=A0=A0=A0=A0 2016-01-07 13:39:39 +0200 185) hostper=
l-runtime-native \
b248e55c0c3=A0=A0=A0=A0=A0=A0=A0=A0 2016-01-13 10:03:04 +0200 186)=20
hostpython-runtime-native \
da52dce440a=A0=A0=A0=A0=A0=A0=A0=A0 2021-05-16 14:16:56 -0400 187) libgcc-=
native \
da52dce440a=A0=A0=A0=A0=A0=A0=A0=A0 2021-05-16 14:16:56 -0400 188) patch-n=
ative \
da52dce440a=A0=A0=A0=A0=A0=A0=A0=A0 2021-05-16 14:16:56 -0400 189)=A0=A0=
=A0=A0 sed-native \
cb1897b8bee=A0=A0=A0=A0=A0=A0=A0=A0 2008-04-11 13:19:21 +0000 190)=A0=A0=
=A0=A0 tar-native \
7d3d6a35fdb=A0=A0=A0=A0=A0=A0=A0=A0 2014-08-17 23:24:02 -0700 191) texinfo=
-native \
da52dce440a=A0=A0=A0=A0=A0=A0=A0=A0 2021-05-16 14:16:56 -0400 192) virtual=
/crypt-native \
da52dce440a=A0=A0=A0=A0=A0=A0=A0=A0 2021-05-16 14:16:56 -0400 193) virtual=
/libiconv-native \
da52dce440a=A0=A0=A0=A0=A0=A0=A0=A0 2021-05-16 14:16:56 -0400 194) virtual=
/libintl-native \
0c0b07286f2=A0=A0=A0=A0=A0=A0=A0=A0 2016-01-25 13:38:00 +0000 195)=A0=A0=
=A0=A0 wget-native \
34927dfa61c=A0=A0=A0=A0=A0=A0=A0=A0 2007-12-18 15:04:06 +0000 196)=A0=A0=
=A0=A0 "
40a3cf008f2=A0=A0=A0=A0=A0=A0=A0=A0 2012-10-02 14:12:21 +0100 197) # gzip-=
native should=20
be listed above?
dd1b4430b5d=A0=A0=A0=A0=A0=A0=A0=A0 2006-02-10 11:45:39 +0000 198)
^4b46c1f6e8=A0=A0=A0=A0=A0=A0=A0=A0 2005-08-31 10:45:47 +0000 199)=20
##################################################################


Your sort commit is one of the most recent ones:
 =A0=A0 da52dce440 bitbake.conf: alphabetize contents of ASSUME_PROVIDED

I don't see the value in trimming the list too much especially since
you typically only have to build them once.

Of the tools you listed:
 =A0=A0=A0 cmake, curl, elfutils
curl is the only one that I'd want to add to the list but
it's not a default install across all distros I assume so
why bother. I prefer to use our own cmake and elfutils.

../Randy


>
>=20
>

--=20
# Randy MacLeod
# Wind River Linux


--------------81087D38A776608BF416008A
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-=
1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-06-24 7:50 a.m., Robert P. J.
      Day wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:f5e52a14-95f1-5965-a71e-cd2a38fb=
d7ab@crashcourse.ca">
      <pre class=3D"moz-quote-pre" wrap=3D"">
  i asked about this once upon a time, so i thought i'd follow up ...
given the fairly stable state of recent linux distros, is there any
standard for taking advantage of what *should* be robust native tools
rather than building them? (i'm ignoring taking advantage of sstate
and building SDKs and other clever speedups for now.)

  from scratch, i did a wind river (LINCD) build of
wrlinux-image-small (and i assume it would be much the same under
current oe-core), and i notice that numerous native tools were
compiled, including such standards as cmake, curl, elfutils ... the
list goes on and on.

  so other than the tools that are *required* to be installed, if i
mention that i am currently running ubuntu 20.04, is there any
indication as to which tools i'm relatively safe to take advantage
using ASSUME_PROVIDED and HOSTTOOLS? i realize that the versions built
will probably differ from the host versions, but it seems that if
there is an incompatibility, that would be fairly obvious in short
order.

  thoughts?</pre>
    </blockquote>
    <p>Hi Robert,<br>
    </p>
    <p>I didn't remember where this was defined so I took a look:</p>
    <p>$ git blame meta/conf/bitbake.conf | grep -A 24 ASSUME_PROVIDED |
      cut -c1-12,74-<br>
      34927dfa61c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-=
18 15:04:06 +0000 175) ASSUME_PROVIDED
      =3D &quot;\<br>
      da52dce440a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021-05-=
16 14:16:56 -0400 176)&nbsp;&nbsp;&nbsp;&nbsp; bash-native
      \<br>
      34927dfa61c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-=
18 15:04:06 +0000 177)&nbsp;&nbsp;&nbsp;&nbsp;
      bzip2-native \<br>
      40a3cf008f2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012-10-=
02 14:12:21 +0100 178)&nbsp;&nbsp;&nbsp;&nbsp;
      chrpath-native \<br>
      da52dce440a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021-05-=
16 14:16:56 -0400 179)&nbsp;&nbsp;&nbsp;&nbsp;
      diffstat-native \<br>
      43c46e9c837&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2015-10-=
16 22:49:26 +0100 180)&nbsp;&nbsp;&nbsp;&nbsp; file-native
      \<br>
      2980ac001f7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016-02-=
22 16:23:49 +0000 181)&nbsp;&nbsp;&nbsp;&nbsp;
      findutils-native \<br>
      b51b4f5ae26&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017-09-=
10 22:59:08 +1000 182)&nbsp;&nbsp;&nbsp;&nbsp; gawk-native
      \<br>
      617835990ed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012-07-=
10 13:26:18 +0000 183)&nbsp;&nbsp;&nbsp;&nbsp; git-native
      \<br>
      34927dfa61c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-=
18 15:04:06 +0000 184)&nbsp;&nbsp;&nbsp;&nbsp; grep-native
      \<br>
      675ff42c603&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016-01-=
07 13:39:39 +0200 185)&nbsp;&nbsp;&nbsp;&nbsp;
      hostperl-runtime-native \<br>
      b248e55c0c3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016-01-=
13 10:03:04 +0200 186)&nbsp;&nbsp;&nbsp;&nbsp;
      hostpython-runtime-native \<br>
      da52dce440a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021-05-=
16 14:16:56 -0400 187)&nbsp;&nbsp;&nbsp;&nbsp;
      libgcc-native \<br>
      da52dce440a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021-05-=
16 14:16:56 -0400 188)&nbsp;&nbsp;&nbsp;&nbsp;
      patch-native \<br>
      da52dce440a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021-05-=
16 14:16:56 -0400 189)&nbsp;&nbsp;&nbsp;&nbsp; sed-native
      \<br>
      cb1897b8bee&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2008-04-=
11 13:19:21 +0000 190)&nbsp;&nbsp;&nbsp;&nbsp; tar-native
      \<br>
      7d3d6a35fdb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2014-08-=
17 23:24:02 -0700 191)&nbsp;&nbsp;&nbsp;&nbsp;
      texinfo-native \<br>
      da52dce440a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021-05-=
16 14:16:56 -0400 192)&nbsp;&nbsp;&nbsp;&nbsp;
      virtual/crypt-native \<br>
      da52dce440a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021-05-=
16 14:16:56 -0400 193)&nbsp;&nbsp;&nbsp;&nbsp;
      virtual/libiconv-native \<br>
      da52dce440a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2021-05-=
16 14:16:56 -0400 194)&nbsp;&nbsp;&nbsp;&nbsp;
      virtual/libintl-native \<br>
      0c0b07286f2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2016-01-=
25 13:38:00 +0000 195)&nbsp;&nbsp;&nbsp;&nbsp; wget-native
      \<br>
      34927dfa61c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2007-12-=
18 15:04:06 +0000 196)&nbsp;&nbsp;&nbsp;&nbsp; &quot;<br>
      40a3cf008f2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012-10-=
02 14:12:21 +0100 197) # gzip-native
      should be listed above?<br>
      dd1b4430b5d&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2006-02-=
10 11:45:39 +0000 198) <br>
      ^4b46c1f6e8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2005-08-=
31 10:45:47 +0000 199)
      ##################################################################<b=
r>
    </p>
    <p><br>
    </p>
    <p>Your sort commit is one of the most recent ones:<br>
      &nbsp;&nbsp; da52dce440 bitbake.conf: alphabetize contents of
      ASSUME_PROVIDED<br>
    </p>
    <p>I don't see the value in trimming the list too much especially
      since<br>
      you typically only have to build them once.</p>
    <p>Of the tools you listed:&nbsp; <br>
      &nbsp;&nbsp;&nbsp; cmake, curl, elfutils<br>
      curl is the only one that I'd want to add to the list but<br>
      it's not a default install across all distros I assume so<br>
      why bother. I prefer to use our own cmake and elfutils.</p>
    <p>../Randy<br>
    </p>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:f5e52a14-95f1-5965-a71e-cd2a38fb=
d7ab@crashcourse.ca"><br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------81087D38A776608BF416008A--
