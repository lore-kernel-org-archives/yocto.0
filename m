Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1028.1585689083016791046
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 14:11:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="crypto/rsa: verification error" header.i=@nio365.onmicrosoft.com header.s=selector2-nio365-onmicrosoft-com header.b=HiWyqKhF;
 spf=softfail (domain: ni.com, ip: 140.211.169.56, mailfrom: prvs=7359215daf=alejandro.delcastillo@ni.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85FFEE01929; Tue, 31 Mar 2020 14:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD5CBE01892
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2020 14:11:20 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 02VLAF7U024955;
	Tue, 31 Mar 2020 16:11:15 -0500
Received: from nam02-bl2-obe.outbound.protection.outlook.com (mail-bl2nam02lp2053.outbound.protection.outlook.com [104.47.38.53])
	by mx0a-00010702.pphosted.com with ESMTP id 30243v0yjd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Mar 2020 16:11:15 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FD1iwHbZcwJm9zoPH9X5wUyIIV/tlzWcKXjuT9ElAVr04PRYgrNQzHVVnIf8vCjH9FDD+z3FBluAycC9Mecz0xqxxn8jnlL5gjbFTQAT44wKDwJd1NJz2x9PY0O/MVTkmNCkUMHkBPMOaWXE6aylFpEXWx62fP8k02T9IhxnHZkLLuL0l1dC6DxsbebDX9R0GbaXtY9J7gDAYa+xbU1Hla+tSkUacaPVxPfNj38kxRffuvO/+skzy2jeqeJmvkemVapNCcicnJaWvjMJPDu133F/ACVdbJGRLaKc8H6v06NbSFYeWXnQTEVLi9twA0E3/owWoXYD3l14OLpUjwD2Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mq8UVZowRuBzTmxVDmnwCY8+zYBxHPZh3A15vsa9Q9g=;
 b=XnWEEQBjtRsZNWVLJUxCmcoSaMwb/KvoZpM7jjcwKsZLmx3v4Y//i2hLj7YJoXGtYi1DuWA+UUI/EehTq/JoSZjkrLeL4j7trN51bWqg4cBQepplzaWa87ukevRA87Ry9fyPwatOHjtDfuS0O1FYvDQUfqc04yuwOZ7Lcz0BVKF+i061ExmQg63uWFsfECWb0aQzVjHJQFGWjc6kYhfD4zepcDaIIed33UV3LnJ4iO9kJoGuHTOB+Fk8ohzMF1uoas8YLtg6ojj+gbTlhWoFf1tf5DfmsA+Nz5Vk5pLU4ztW1H6kMq7W9IbZtE4ZYbxIgx0h6ha2n8nrmNI35Z0I0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mq8UVZowRuBzTmxVDmnwCY8+zYBxHPZh3A15vsa9Q9g=;
 b=HiWyqKhFhEnFnszFxU7gsJ93LbwwJyOe719svSpftHW7fxC9o0Ki6okY/RD9RVW8czZEDK2Dnxr8YgN68keuzDym8SAwMbDe8BI/ALX8htHdBOc8r9WuGYbsX9t9/pggczvZHvePro8FFIdk/ARo0Rq489uIKUQ2orfmg/7vcsI=
Received: from DM5PR04MB1069.namprd04.prod.outlook.com (10.174.240.26) by
 DM5PR04MB0460.namprd04.prod.outlook.com (10.173.170.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Tue, 31 Mar 2020 21:11:10 +0000
Received: from DM5PR04MB1069.namprd04.prod.outlook.com
 ([fe80::9532:7a75:536a:58fb]) by DM5PR04MB1069.namprd04.prod.outlook.com
 ([fe80::9532:7a75:536a:58fb%5]) with mapi id 15.20.2856.019; Tue, 31 Mar 2020
 21:11:10 +0000
To: Maarten van Megen <maarten.vanmegen@nedap.com>,
        "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>,
        "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20200319112625.13804-1-maarten.vanmegen@nedap.com>
 <3869e6d2-8298-80da-ee0a-e15088cb1d1b@ni.com>
 <AM0PR10MB2866A70B342F17577263AEE798CB0@AM0PR10MB2866.EURPRD10.PROD.OUTLOOK.COM>
From: "Alejandro del Castillo" <alejandro.delcastillo@ni.com>
Message-ID: <08f84e62-5e78-1727-9ee0-5b49386bc4a5@ni.com>
Date: Tue, 31 Mar 2020 16:11:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <AM0PR10MB2866A70B342F17577263AEE798CB0@AM0PR10MB2866.EURPRD10.PROD.OUTLOOK.COM>
X-ClientProxiedBy: SN1PR12CA0048.namprd12.prod.outlook.com
 (2603:10b6:802:20::19) To DM5PR04MB1069.namprd04.prod.outlook.com
 (2603:10b6:4:40::26)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2605:6000:101c:3b5:3ec9:911d:327f:d8b7] (2605:6000:101c:3b5:3ec9:911d:327f:d8b7) by SN1PR12CA0048.namprd12.prod.outlook.com (2603:10b6:802:20::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend Transport; Tue, 31 Mar 2020 21:11:09 +0000
X-Originating-IP: [2605:6000:101c:3b5:3ec9:911d:327f:d8b7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8b1d89d2-1161-421d-9116-08d7d5b808fa
X-MS-TrafficTypeDiagnostic: DM5PR04MB0460:
X-Microsoft-Antispam-PRVS: 
	<DM5PR04MB04601EFAFCCA478AE9A8933386C80@DM5PR04MB0460.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:199;
X-Forefront-PRVS: 0359162B6D
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR04MB1069.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(39850400004)(366004)(376002)(346002)(396003)(136003)(66946007)(30864003)(478600001)(36756003)(6486002)(316002)(31686004)(31696002)(5660300002)(86362001)(66476007)(2616005)(110136005)(8936002)(81166006)(2906002)(81156014)(66556008)(966005)(52116002)(8676002)(16526019)(53546011)(186003)(21314003);DIR:OUT;SFP:1102;
Received-SPF: None (protection.outlook.com: ni.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	t8+scK0LCW+qBhG33DCSMIMz6uLLr6mDTn5E3gRNphmAw+EEK12KKEpVRj/4Kvzq08eoCO5LZB3X9pu54WXTnwaA55U+DAGIvLxGhXGgOoZ1ezyhKIM9m9ygAwZUo0lLxki+ci9XwJD1iy41fnJSY80qun7QZYnobmofJNXUBnJi6B5NT3ktU5s50QB/RSJ8VILRbrr3SccPSWcAhAZQ3EuEB95kIfgJvMUHYAv8C1YAM4D8xhh0yKOKoq1UwxVdwPrRf8DOCf8zNz2j8w9LP+hTPK9HvpehZOI+A/+SoxYuq+katXcTIUdEGVKgjVBciebF1w5BlxIOgD5VcKXXkmJksSNeJkkdleVY3A8TJI2deIIOCyBB/pcA/oO2FtDcKvC8PIp1gsoPC/BcRop4GcBB8KZ3zbwUmZP4NpIvBz5Ar69MyEl1xgqsjo87FzwX0S5L7J3YSVzHD24cGrsJxPHtIqsC2IFv9dWeIGMefZIdiopyv2IDYNgB0mNPADIjAhu7ebWcmAptYvNbtV949adzDFcE/bnMlT1kwKbUdOhwQUF0hFfDug95bxomiFka
X-MS-Exchange-AntiSpam-MessageData: 
	d1Vn5NVwAR+JwKjqCWJzvYl5ryhJkq7Xp+fp2iBxQms9NG1NUIsqKm8ss8943+3Vh7jk7qkR8KhfaqTeu3GbsqKDI8IJkCYfzOUpR7+gG+auk1pJblVs3SxE/zwyYV23pq9UNjQq4gOnKrOSDQ+nu0kN9/KBiYXb/e2iMMdL7N3CELVsqpnRNHKIWEx1caqsVHgoqhlpKd+RDmD8Rj5cIQ==
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b1d89d2-1161-421d-9116-08d7d5b808fa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2020 21:11:10.1699
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NNO1H13sqPYjrrY1EVIhW1UACRrtgcdhiZOmvIh78t/zg//JwbwnaKpG7In+z2fkMtEhXPy7TDz3Eg3UkA3qC9DxeL0Gf050J9j/7DkcWCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR04MB0460
Subject: Re: [opkg-devel] [opkg-utils PATCH] Opkg.py : Support for tilde in version compare
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.676
 definitions=2020-03-31_07:2020-03-31,2020-03-31 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy score=30 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 mlxscore=0 mlxlogscore=999
 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 clxscore=1015 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2003020000 definitions=main-2003310172
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US-large
Content-Transfer-Encoding: 7bit

Looks good, merged.

thanks!

On 3/30/20 3:31 PM, Maarten van Megen wrote:
> Hi Alejandro
> 
> Thanks for the review. Here is the revised version that addresses the issues with the original patch
> 
> Regards,
> Maarten
> 
> ---
>   opkg.py | 87 ++++++++++++++++++++++++++++++++++++++-------------------
>   1 file changed, 58 insertions(+), 29 deletions(-)
> diff --git a/opkg.py b/opkg.py
> index ba947c2..f1d1dcb 100644
> --- a/opkg.py
> +++ b/opkg.py
> @@ -48,6 +48,20 @@ import tarfile
>   import textwrap
>   import collections
>   
> +
> +def order(x):
> +    if not x:
> +        return 0
> +    if x == "~":
> +        return -1
> +    if str.isdigit(x):
> +        return 0
> +    if str.isalpha(x):
> +        return ord(x)
> +
> +    return 256 + ord(x)
> +
> +
>   class Version(object):
>       """A class for holding parsed package version information."""
>       def __init__(self, epoch, version):
> @@ -55,39 +69,53 @@ class Version(object):
>           self.version = version
>   
>       def _versioncompare(self, selfversion, refversion):
> +        """
> +                Implementation below is a copy of the opkg version comparison algorithm
> +                https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/opkg/tree/libopkg/pkg.c*n933__;Iw!!FbZ0ZwI3Qg!8GdI9G-uXBcfGN71MZdAi9z1Yu4jriaG8UE8nU1yaOxpX0UJ1MhoOrviZ2da4OSknx3-BQ$
> +                it alternates between number and non number comparisons until a difference is found
> +                digits are compared by value. other characters are sorted lexically using the above method orderOfChar
> +
> +                One slight modification, the original version can return any value, whereas this one is limited to -1, 0, +1
> +                """
>           if not selfversion: selfversion = ""
>           if not refversion: refversion = ""
> -        while 1:
> -            ## first look for non-numeric version component
> -            selfm = re.match('([^0-9]*)(.*)', selfversion)
> -            #print(('selfm', selfm.groups()))
> -            (selfalpha, selfversion) = selfm.groups()
> -            refm = re.match('([^0-9]*)(.*)', refversion)
> -            #print(('refm', refm.groups())
> -            (refalpha, refversion) = refm.groups()
> -            if (selfalpha > refalpha):
> -                return 1
> -            elif (selfalpha < refalpha):
> -                return -1
> -            ## now look for numeric version component
> -            (selfnum, selfversion) = re.match('([0-9]*)(.*)', selfversion).groups()
> -            (refnum, refversion) = re.match('([0-9]*)(.*)', refversion).groups()
> -            #print(('selfnum', selfnum, selfversion)
> -            #print(('refnum', refnum, refversion)
> -            if (selfnum != ''):
> -                selfnum = int(selfnum)
> -            else:
> -                selfnum = -1
> -            if (refnum != ''):
> -                refnum = int(refnum)
> -            else:
> -                refnum = -1
> -            if (selfnum > refnum):
> +
> +        value = list(selfversion)
> +        ref = list(refversion)
> +
> +        while value or ref:
> +            first_diff = 0
> +            # alphanumeric comparison
> +            while (value and not str.isdigit(value[0])) or (ref and not str.isdigit(ref[0])):
> +                vc = order(value.pop(0) if value else None)
> +                rc = order(ref.pop(0) if ref else None)
> +                if vc != rc:
> +                    return -1 if vc < rc else 1
> +
> +            # comparing numbers
> +            # start by skipping 0
> +            while value and value[0] == "0":
> +                value.pop(0)
> +            while ref and ref[0] == "0":
> +                ref.pop(0)
> +
> +            # actual number comparison
> +            while value and str.isdigit(value[0]) and ref and str.isdigit(ref[0]):
> +                if not first_diff:
> +                    first_diff = int(value.pop(0)) - int(ref.pop(0))
> +                else:
> +                    value.pop(0)
> +                    ref.pop(0)
> +
> +            # the one that has a value remaining was the highest number
> +            if value and str.isdigit(value[0]):
>                   return 1
> -            elif (selfnum < refnum):
> +            if ref and str.isdigit(ref[0]):
>                   return -1
> -            if selfversion == '' and refversion == '':
> -                return 0
> +            # in case of equal length numbers look at the first diff
> +            if first_diff:
> +                return 1 if first_diff > 0 else -1
> +        return 0
>   
>       def compare(self, ref):
>           if (self.epoch > ref.epoch):
> @@ -592,6 +620,7 @@ if __name__ == "__main__":
>       assert Version(0, "1.2.2+cvs20070308").compare(Version(0, "1.2.2-r0")) == 1
>       assert Version(0, "1.2.2-r0").compare(Version(0, "1.2.2-r0")) == 0
>       assert Version(0, "1.2.2-r5").compare(Version(0, "1.2.2-r0")) == 1
> +    assert Version(0, "1.1.2~r1").compare(Version(0, "1.1.2")) == -1
>   
>       package = Package()
>   
> --
> 
> -----Original Message-----
> From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
> Sent: Friday, March 27, 2020 9:34 PM
> To: opkg-devel@googlegroups.com; Maarten van Megen <maarten.vanmegen@nedap.com>; yocto@yoctoproject.org
> Subject: Re: [opkg-devel] [opkg-utils PATCH] Opkg.py : Support for tilde in version compare
> 
> Hi Marteen,
> 
> thanks for working on this, a couple of comments
> 
> On 3/19/20 6:26 AM, Maarten wrote:
>> Add support for the special tilde character. The current opkg version
>> allows specifying a version appended with a tilde e.g.
>> 1.2.2~releasecandidate which is lower in version than 1.2.2 itself.
>> With this commit, this is now also supported by the opkg.py script.
>>
>> Signed-off-by: Maarten <maarten.vanmegen@nedap.com>
>> ---
>>    opkg.py | 132 ++++++++++++++++++++++++++++----------------------------
>>    1 file changed, 66 insertions(+), 66 deletions(-)
>>
>> diff --git a/opkg.py b/opkg.py
>> index ba947c2..34af483 100644
>> --- a/opkg.py
>> +++ b/opkg.py
>> @@ -1,5 +1,4 @@
>> -#!/usr/bin/env python3
>> -# SPDX-License-Identifier: GPL-2.0-or-later
> 
> did you intentionally modified the shebang & removed the SPDX identifier?
> 
>> +#!/usr/bin/env python
>>    #   Copyright (C) 2001 Alexander S. Guy <a7r@andern.org>
>>    #                      Andern Research Labs
>>    #
>> @@ -38,58 +37,86 @@ from __future__ import print_function
>>    import tempfile
>>    import os
>>    import sys
>> -import glob
>>    import hashlib
>>    import re
>>    import subprocess
>>    from stat import ST_SIZE
>>    import arfile
>>    import tarfile
>> -import textwrap
>>    import collections
>>    
>> +
>> +def order(x):
>> +    if not x:
>> +        return 0
>> +    if x == "~":
>> +        return -1
>> +    if str.isdigit(x):
>> +        return 0
>> +    if str.isalpha(x):
>> +        return ord(x)
>> +
>> +    return 256 + ord(x)
>> +
>> +
>>    class Version(object):
>>        """A class for holding parsed package version information."""
>> +
>>        def __init__(self, epoch, version):
>>            self.epoch = epoch
>>            self.version = version
>>    
>>        def _versioncompare(self, selfversion, refversion):
>> +        """
>> +        Implementation below is a copy of the opkg version comparison algorithm
>> +        https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/opkg/tree/libopkg/pkg.c*n933__;Iw!!FbZ0ZwI3Qg!5LDeOr__t_Ow1oYBFtvf1sVRXNIPxT_bNylibWik21KDrv8His3FsfSxBbFI88ZZzzTfeg$
>> +        it alternates between number and non number comparisons until a difference is found
>> +        digits are compared by value. other characters are sorted
>> + lexically using the above method orderOfChar
>> +
>> +        One slight modification, the original version can return any value, whereas this one is limited to -1, 0, +1
>> +        """
>>            if not selfversion: selfversion = ""
>>            if not refversion: refversion = ""
>> -        while 1:
>> -            ## first look for non-numeric version component
>> -            selfm = re.match('([^0-9]*)(.*)', selfversion)
>> -            #print(('selfm', selfm.groups()))
>> -            (selfalpha, selfversion) = selfm.groups()
>> -            refm = re.match('([^0-9]*)(.*)', refversion)
>> -            #print(('refm', refm.groups())
>> -            (refalpha, refversion) = refm.groups()
>> -            if (selfalpha > refalpha):
>> -                return 1
>> -            elif (selfalpha < refalpha):
>> -                return -1
>> -            ## now look for numeric version component
>> -            (selfnum, selfversion) = re.match('([0-9]*)(.*)', selfversion).groups()
>> -            (refnum, refversion) = re.match('([0-9]*)(.*)', refversion).groups()
>> -            #print(('selfnum', selfnum, selfversion)
>> -            #print(('refnum', refnum, refversion)
>> -            if (selfnum != ''):
>> -                selfnum = int(selfnum)
>> -            else:
>> -                selfnum = -1
>> -            if (refnum != ''):
>> -                refnum = int(refnum)
>> -            else:
>> -                refnum = -1
>> -            if (selfnum > refnum):
>> +
>> +        value = list(selfversion)
>> +        ref = list(refversion)
>> +
>> +        while value or ref:
>> +            first_diff = 0
>> +            # alphanumeric comparison
>> +            while (value and not str.isdigit(value[0])) or (ref and not str.isdigit(ref[0])):
>> +                vc = order(value.pop(0) if value else None)
>> +                rc = order(ref.pop(0) if ref else None)
>> +                if vc != rc:
>> +                    return -1 if vc < rc else 1
>> +
>> +            # comparing numbers
>> +            # start by skipping 0
>> +            while value and value[0] == "0":
>> +                value.pop(0)
>> +            while ref and ref[0] == "0":
>> +                ref.pop(0)
>> +
>> +            # actual number comparison
>> +            while value and str.isdigit(value[0]) and ref and str.isdigit(ref[0]):
>> +                if not first_diff:
>> +                    first_diff = int(value.pop(0)) - int(ref.pop(0))
>> +                else:
>> +                    value.pop(0)
>> +                    ref.pop(0)
>> +
>> +            # the one that has a value remaining was the highest number
>> +            if value and str.isdigit(value[0]):
>>                    return 1
>> -            elif (selfnum < refnum):
>> +            if ref and str.isdigit(ref[0]):
>>                    return -1
>> -            if selfversion == '' and refversion == '':
>> -                return 0
>> +            # in case of equal length numbers look at the first diff
>> +            if first_diff:
>> +                return 1 if first_diff > 0 else -1
>> +        return 0
>>    
>>        def compare(self, ref):
>> +
>>            if (self.epoch > ref.epoch):
>>                return 1
>>            elif (self.epoch < ref.epoch):
>> @@ -191,9 +218,6 @@ class Package(object):
>>            if name == "md5":
>>                self._computeFileMD5()
>>                return self.md5
>> -        elif name == "sha256":
>> -            self._computeFileSHA256()
>> -            return self.sha256
> 
> this seems unrelated to your patch, was it intentional to remove sha256 support?
> 
>>            elif name == 'size':
>>                return self._get_file_size()
>>            else:
>> @@ -213,20 +237,6 @@ class Package(object):
>>                f.close()
>>                self.md5 = sum.hexdigest()
>>    
>> -    def _computeFileSHA256(self):
>> -        # compute the SHA256.
>> -        if not self.fn:
>> -            self.sha256 = 'Unknown'
>> -        else:
>> -            f = open(self.fn, "rb")
>> -            sum = hashlib.sha256()
>> -            while True:
>> -               data = f.read(1024)
>> -               if not data: break
>> -               sum.update(data)
>> -            f.close()
>> -            self.sha256 = sum.hexdigest()
>> -
> 
> same here
> 
>>        def _get_file_size(self):
>>            if not self.fn:
>>                self.size = 0;
>> @@ -259,8 +269,6 @@ class Package(object):
>>                        self.size = int(value)
>>                    elif name_lowercase == 'md5sum':
>>                        self.md5 = value
>> -                elif name_lowercase == 'sha256sum':
>> -                    self.sha256 = value
> 
> and here
> 
>>                    elif name_lowercase in self.__dict__:
>>                        self.__dict__[name_lowercase] = value
>>                    elif all_fields:
>> @@ -384,7 +392,6 @@ class Package(object):
>>                    error = subprocess.CalledProcessError(retcode, cmd)
>>                    error.output = output
>>                    raise error
>> -            output = output.decode("utf-8")
>>                return output
>>    
>>            if not self.fn:
>> @@ -408,12 +415,8 @@ class Package(object):
>>                return []
>>            f = open(self.fn, "rb")
>>            ar = arfile.ArFile(f, self.fn)
>> -        try:
>> -            tarStream = ar.open("data.tar.gz")
>> -            tarf = tarfile.open("data.tar.gz", "r", tarStream)
>> -        except IOError:
>> -            tarStream = ar.open("data.tar.xz")
>> -            tarf = tarfile.open("data.tar.xz", "r:xz", tarStream)
>> +        tarStream = ar.open("data.tar.gz")
>> +        tarf = tarfile.open("data.tar.gz", "r", tarStream)
> 
> this also seem to revert a newer commit (add xz support)
> 
>>            self.file_list = tarf.getnames()
>>            self.file_list = [["./", ""][a.startswith("./")] + a for a
>> in self.file_list]
>>    
>> @@ -488,7 +491,7 @@ class Package(object):
>>                ref.parsed_version = parse_version(ref.version)
>>            return self.parsed_version.compare(ref.parsed_version)
>>    
>> -    def print(self, checksum):
>> +    def __str__(self):
> 
> this change also looks unrelated
> 
>>            out = ""
>>    
>>            # XXX - Some checks need to be made, and some exceptions @@
>> -505,10 +508,7 @@ class Package(object):
>>            if self.section: out = out + "Section: %s\n" % (self.section)
>>            if self.architecture: out = out + "Architecture: %s\n" % (self.architecture)
>>            if self.maintainer: out = out + "Maintainer: %s\n" % (self.maintainer)
>> -        if 'md5' in checksum:
>> -            if self.md5: out = out + "MD5Sum: %s\n" % (self.md5)
>> -        if 'sha256' in checksum:
>> -            if self.sha256: out = out + "SHA256sum: %s\n" % (self.sha256)
>> +        if self.md5: out = out + "MD5Sum: %s\n" % (self.md5)
>>            if self.size: out = out + "Size: %d\n" % int(self.size)
>>            if self.installed_size: out = out + "InstalledSize: %d\n" % int(self.installed_size)
>>            if self.filename: out = out + "Filename: %s\n" %
>> (self.filename) @@ -585,14 +585,14 @@ class Packages(object):
>>        def __getitem__(self, key):
>>            return self.packages[key]
>>    
>> -if __name__ == "__main__":
>>    
>> +if __name__ == "__main__":
>>        assert Version(0, "1.2.2-r1").compare(Version(0, "1.2.3-r0")) == -1
>>        assert Version(0, "1.2.2-r0").compare(Version(0, "1.2.2+cvs20070308-r0")) == -1
>>        assert Version(0, "1.2.2+cvs20070308").compare(Version(0, "1.2.2-r0")) == 1
>>        assert Version(0, "1.2.2-r0").compare(Version(0, "1.2.2-r0")) == 0
>>        assert Version(0, "1.2.2-r5").compare(Version(0, "1.2.2-r0")) ==
>> 1
>> -
>> +    assert Version(0, "1.1.2~r1").compare(Version(0, "1.1.2")) == -1
>>        package = Package()
>>    
>>        package.set_package("FooBar")
>>
> 
> --
> Cheers,
> 
> Alejandro
> 

-- 
Cheers,

Alejandro
