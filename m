Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10300.1600928190913379189
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 23:16:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=DuixWZot;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-eopbgr770051.outbound.protection.outlook.com [40.107.77.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9AECF38C123F
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TUFWYeZiGeAFqjjQRwwXsYFzZNqtSjOSPnPYzz7e+/eJurJvitLxXlJd3uTbsQPmKxFgPSoU9afv4WDucaoUhti1aX59jd3DZOy6kgIAmFbYdZ5KEiVXTEtq/PPF9friibG+qwp2qbNtEo4sncL8MOcud0tRV4xDpxMQZpxDmVnNd9IuvRqCa9e38DIOxdz7phge0LA9/sDc6UADtQpDnCWDN+mAwEerfgBCQP+FEw77fU56ndU3FY2CwRoEL7n22gSW7zyRTRRMHZpjZRd+vUutFic5ishw65n6fgPqsF2Mvi1vKBcFg5SPnSIWqCTG336mF29wHgsHBFfUX6mRvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7eLLk5HcEWfg9O7byy0GiEDV98lvzhKZQVUSwOTJJ6g=;
 b=KiSog4xwJtYdvwv9EOMJFBYCEBXuf+Moe6pYqF8ebDyzu3+mBiCUTMgvHiclgZLybosPqEJYexJvjMk6JVQWoXY2DT83zNrs6B0PJOBIKAlNuJkT21/G3BtAVBPUmwEgQiGIco8WFPx828f/8+dXTN8HacU/wDlFjYcLS9fB6Kj6p/bIm6sBTayf26e82ZMmREsyfTbW05GdCumj69Bb79cQxbkf+fxJYR+R/DPcctaxP+1T8Qu0uLOkHN53IBZIVJswNlKBDc0GJcVGtnYm4CQHAWGhGarZ/hbscke3hAi3TBTpT/x3ZUtAUi0mDyboRXRPa/gZgmoyvDbRhi24xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7eLLk5HcEWfg9O7byy0GiEDV98lvzhKZQVUSwOTJJ6g=;
 b=DuixWZot4hVu85Kfz+cmXARGiasmAKUenBHwpCqrYZxZC3KcehuwAnIBlRHrDH4NH0gcTbFV5LYmoHGLj2/OJNnXRouosiztXwrephal+LRIm/o3wEWLpdqzJTWJoKP1Gfo2NyOGpSi8l+MzjGbRL50Om2PMGnSs6iTGcW/tu1k=
Authentication-Results: mentor.com; dkim=none (message not signed)
 header.d=none;mentor.com; dmarc=none action=none header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BY5PR11MB3976.namprd11.prod.outlook.com (2603:10b6:a03:187::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Thu, 24 Sep
 2020 06:16:28 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1%7]) with mapi id 15.20.3391.027; Thu, 24 Sep 2020
 06:16:28 +0000
Subject: Re: [yocto] [meta-cgl][PATCH V2] ucarp: fix build error with gcc-10
To: Khem Raj <raj.khem@gmail.com>
References: <20200924033819.22451-1-Qi.Chen@windriver.com>
 <CAMKF1sr-zgPOX3_n4m-6p5qMxYtrCA9pGA9x8HEBkrYr2Z0oRg@mail.gmail.com>
 <1637A3468779647E.11000@lists.yoctoproject.org>
Cc: Yocto Project <yocto@yoctoproject.org>, Adrian.Dudau@enea.com,
 alexandru.vaduva@linux.com, joe_macdonald@mentor.com
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <9caa353c-7ec1-8ec9-9dec-115fc9b28fe9@windriver.com>
Date: Thu, 24 Sep 2020 14:22:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <1637A3468779647E.11000@lists.yoctoproject.org>
X-ClientProxiedBy: HK2PR04CA0047.apcprd04.prod.outlook.com
 (2603:1096:202:14::15) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by HK2PR04CA0047.apcprd04.prod.outlook.com (2603:1096:202:14::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.3412.22 via Frontend Transport; Thu, 24 Sep 2020 06:16:26 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a380f722-8367-407d-eb0e-08d860515f36
X-MS-TrafficTypeDiagnostic: BY5PR11MB3976:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB397656CEC7A90FF962C3521CED390@BY5PR11MB3976.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+hyp9qa3B715BX26hgzdeFXcnY8XWE+qZSluo1pQgqzyOM/csGSxI0nm4tdYI+rKQSB1rvy2cyoXHvjJCpcA/iwZqTYaQae1lSxd0Vy6F5oiUbyQ04gfrca2H3/Jsvpf/YWuM6hJGC357t+SzaC0t+0aimhXDRQTZ/enNRrqwJhTh5u9rxlvHtJH9Sv1jv8yVRFdV5/t2NWMD5+M9LvxHvKRIR+zKqePnHjjlZcDWMjyEEm0xKbqYROSgcLWmegklhm4KFSkDUcgs9NsrgupMXigZRslEbQT9uYWYnvYrXWUxdiJcLN0a0fr/iXLaXMnriq2hcPs03vsyJ1+BaCqV/MyAg+bneqadiSlPaoToym/KzBix2XlD/J31axsSJOCS5s/tUAW/56vBp8FhYB76K6XTDvCoHz2gOVXw7iyaGHQ4ecSdTCNz6kg7ddkuzt/k72dh+ZS9xa2j9CSA2gnxZZsIvapiQoWLlQ5MYtTIVlnmesAxzmtcW+xU6kY9QX33qS+6ElNPl1snLJcIfo5Nw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(376002)(346002)(39850400004)(396003)(8936002)(4326008)(33964004)(83380400001)(966005)(52116002)(66946007)(31686004)(6486002)(66556008)(316002)(31696002)(186003)(86362001)(53546011)(2906002)(6706004)(26005)(16576012)(478600001)(36756003)(6916009)(6666004)(16526019)(956004)(2616005)(166002)(5660300002)(8676002)(66476007)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	usCVFPfLGVpsqq3bi7bGDwIzsNDNIY8C1jdbf/uHAKliMtqY2iIIDVfkZqyl10oaYKopqtT4BMnfmIOEgxD+mkWhTdI29RlGTrHaQuvdkqZYqm0rVwN4XPHGuaLGKf8yLyJ41iL2go5ceDCZdye7Df0jIRitCwvaUZ6Jt+TojBB/vwiCU7BScNOACEnvw6WiWuOrpRVMsSXO/9TqFezJ0dRYgkR13e4/P5RUaNrDYBNlBS3aZNvtiFP7LrABtoaB7eFwrCa+WX1icWwBaS8SarkJWgsCLEj1ZbKXsMEbByOir/aA3ns1RkUaPwFytSq3GLYEqUcJTImHUlk+maXun/K43wFJpNkTQ+DH4BGE5PCr/udZiyLUcjX/RKHUvKO9BNihEY4kO9bltZU0Ss6cCfhn6IVqQZR5hIGT60xsoJ5JMqZMi18q8m4NbqfyfOORvrnO/I9uvJbXJHfCET+ga6ZTWzvPrdbU5tRDSSL2Y2i/tjnS8kO1dKcbeKXqdg0FJ0wkiIM+4i5IX5AbE0KZgu/ifWI+7jQt+KkLbkHm8W7kCbLmFfsx+oFs926GTuIHhy2IIY9Xty1a8Xrk9n8eFRrCAPy202aPzIjLHx/E7wgfXt3GCq1j7v0NCtJOs8kWd+Y4xvsa2l1KBheWLKloQg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a380f722-8367-407d-eb0e-08d860515f36
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2020 06:16:28.2165
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LZ5mp/gplWlaEqF9rUOFOPegZ+ZBjH9EepR9tyVHLGY9+2UK1awQSvrb8mZGzDMEwYOkbBugewMWSOu93qpKXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3976
Content-Type: multipart/alternative;
 boundary="------------BFD3E9F4E76B9E8B55CD8457"

--------------BFD3E9F4E76B9E8B55CD8457
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/24/2020 02:14 PM, Chen Qi wrote:
> On 09/24/2020 01:43 PM, Khem Raj wrote:
>> On Wed, Sep 23, 2020 at 8:38 PM Chen Qi <Qi.Chen@windriver.com> wrote:
>>> Add a patch to remove the useless '__packed' variable to avoid
>>> multiple definition error with gcc10.
>>>
>> I wonder if the intention is to mark this structure as packed struct
>> then it should be replaced with __attribute__((packed))
>

Forgot to mention, I also tested with '__attribute__((packed))', the 
build succeeded.

Adrian, Alexandru and Joe, I'll send out V3 with this change.
You can choose V2 or V3 as you like.

Regards,
Chen Qi

> It's possible, but I didn't look at the logic and I don't want to. 
> Anyway, the variable never had any effect. So I figure it's safe to 
> remove it, and this will not change any behavior.
>
> Unfortunately, the codes are really old, and I cannot find a place to 
> send the patch, not to mention to confirm this with its author :(
>
> Regards,
> Chen Qi
>
>>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>>> ---
>>>   ...001-ip_carp.h-remove-unused-__packed.patch | 31 
>>> +++++++++++++++++++
>>>   .../recipes-cgl/ucarp/ucarp_1.5.2.bb          |  1 +
>>>   2 files changed, 32 insertions(+)
>>>   create mode 100644 
>>> meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
>>>
>>> diff --git 
>>> a/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch 
>>> b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch 
>>>
>>> new file mode 100644
>>> index 0000000..496c20d
>>> --- /dev/null
>>> +++ 
>>> b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
>>> @@ -0,0 +1,31 @@
>>> +From ad33498ac86fe2df0a100d17aa54ca8c30920d8b Mon Sep 17 00:00:00 2001
>>> +From: Chen Qi <Qi.Chen@windriver.com>
>>> +Date: Thu, 24 Sep 2020 11:30:08 +0800
>>> +Subject: [PATCH] ip_carp.h: remove unused __packed
>>> +
>>> +This variable is useless and it's causing multiple definition
>>> +error with gcc10, thus removing it.
>>> +
>>> +Upstream-Status: Pending
>>> +
>>> +Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>>> +---
>>> + src/ip_carp.h | 2 +-
>>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>>> +
>>> +diff --git a/src/ip_carp.h b/src/ip_carp.h
>>> +index 9504a8e..9dcf8cc 100644
>>> +--- a/src/ip_carp.h
>>> ++++ b/src/ip_carp.h
>>> +@@ -70,7 +70,7 @@ struct carp_header {
>>> +         u_int16_t       carp_cksum;
>>> +         u_int32_t       carp_counter[2];
>>> +         unsigned char   carp_md[20];    /* SHA1 HMAC */
>>> +-} __packed;
>>> ++};
>>> +
>>> + #define CARP_DFLTTL             255
>>> +
>>> +--
>>> +2.17.1
>>> +
>>> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb 
>>> b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>> index d17baa0..c6fa901 100644
>>> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>> @@ -17,6 +17,7 @@ LIC_FILES_CHKSUM = 
>>> "file://COPYING;md5=278a886e91f2f6c983ffdf040130cdc6"
>>>   SRC_URI = 
>>> "http://download.pureftpd.org/pub/ucarp/${BPN}-${PV}.tar.gz \
>>>              file://ucarp-configure-sha1.patch \
>>>              file://ucarp-configure-snprintf.patch \
>>> +           file://0001-ip_carp.h-remove-unused-__packed.patch \
>>>              file://ucarp.init \
>>>              file://vip-001.conf.example \
>>>              file://vip-common.conf \
>>> -- 
>>> 2.17.1
>>>
>>>
>>>
>>>
>
>
>
> 
>


--------------BFD3E9F4E76B9E8B55CD8457
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 09/24/2020 02:14 PM, Chen Qi wrote:<=
br>
    </div>
    <blockquote cite=3D"mid:1637A3468779647E.11000@lists.yoctoproject.org"=
 type=3D"cite">On 09/24/2020 01:43 PM, Khem Raj wrote:
      <br>
      <blockquote type=3D"cite">On Wed, Sep 23, 2020 at 8:38 PM Chen Qi
        <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:Qi.Chen@windrive=
r.com">&lt;Qi.Chen@windriver.com&gt;</a> wrote:
        <br>
        <blockquote type=3D"cite">Add a patch to remove the useless
          '__packed' variable to avoid
          <br>
          multiple definition error with gcc10.
          <br>
          <br>
        </blockquote>
        I wonder if the intention is to mark this structure as packed
        struct
        <br>
        then it should be replaced with __attribute__((packed))
        <br>
      </blockquote>
      <br>
    </blockquote>
    <br>
    Forgot to mention, I also tested with '__attribute__((packed))', the
    build succeeded.<br>
    <br>
    Adrian, Alexandru and Joe, I'll send out V3 with this change.<br>
    You can choose V2 or V3 as you like.<br>
    <br>
    Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote cite=3D"mid:1637A3468779647E.11000@lists.yoctoproject.org"=
 type=3D"cite">It's possible, but I didn't look at the logic and I
      don't want to. Anyway, the variable never had any effect. So I
      figure it's safe to remove it, and this will not change any
      behavior.
      <br>
      <br>
      Unfortunately, the codes are really old, and I cannot find a place
      to send the patch, not to mention to confirm this with its author
      :(
      <br>
      <br>
      Regards,
      <br>
      Chen Qi
      <br>
      <br>
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">Signed-off-by: Chen Qi
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:Qi.Chen@windri=
ver.com">&lt;Qi.Chen@windriver.com&gt;</a>
          <br>
          ---
          <br>
          &nbsp; ...001-ip_carp.h-remove-unused-__packed.patch | 31
          +++++++++++++++++++
          <br>
          &nbsp; .../recipes-cgl/ucarp/ucarp_1.5.2.bb&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 1 +
          <br>
          &nbsp; 2 files changed, 32 insertions(+)
          <br>
          &nbsp; create mode 100644
meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__pac=
ked.patch<br>
          <br>
          diff --git
a/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__p=
acked.patch
b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__p=
acked.patch
          <br>
          new file mode 100644
          <br>
          index 0000000..496c20d
          <br>
          --- /dev/null
          <br>
          +++
b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__p=
acked.patch<br>
          @@ -0,0 +1,31 @@
          <br>
          +From ad33498ac86fe2df0a100d17aa54ca8c30920d8b Mon Sep 17
          00:00:00 2001
          <br>
          +From: Chen Qi <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto=
:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a>
          <br>
          +Date: Thu, 24 Sep 2020 11:30:08 +0800
          <br>
          +Subject: [PATCH] ip_carp.h: remove unused __packed
          <br>
          +
          <br>
          +This variable is useless and it's causing multiple definition
          <br>
          +error with gcc10, thus removing it.
          <br>
          +
          <br>
          +Upstream-Status: Pending
          <br>
          +
          <br>
          +Signed-off-by: Chen Qi <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a>
          <br>
          +---
          <br>
          + src/ip_carp.h | 2 +-
          <br>
          + 1 file changed, 1 insertion(+), 1 deletion(-)
          <br>
          +
          <br>
          +diff --git a/src/ip_carp.h b/src/ip_carp.h
          <br>
          +index 9504a8e..9dcf8cc 100644
          <br>
          +--- a/src/ip_carp.h
          <br>
          ++++ b/src/ip_carp.h
          <br>
          +@@ -70,7 +70,7 @@ struct carp_header {
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u_int16_t&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; carp_cksum;
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u_int32_t&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; carp_counter[2];
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned char&=
nbsp;&nbsp; carp_md[20];&nbsp;&nbsp;&nbsp; /* SHA1 HMAC */
          <br>
          +-} __packed;
          <br>
          ++};
          <br>
          +
          <br>
          + #define CARP_DFLTTL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 255
          <br>
          +
          <br>
          +--
          <br>
          +2.17.1
          <br>
          +
          <br>
          diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
          b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
          <br>
          index d17baa0..c6fa901 100644
          <br>
          --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
          <br>
          +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
          <br>
          @@ -17,6 +17,7 @@ LIC_FILES_CHKSUM =3D
          <a class=3D"moz-txt-link-rfc2396E" href=3D"file://COPYING;md5=3D=
278a886e91f2f6c983ffdf040130cdc6">&quot;file://COPYING;md5=3D278a886e91f2f6=
c983ffdf040130cdc6&quot;</a>
          <br>
          &nbsp; SRC_URI =3D
          &quot;<a class=3D"moz-txt-link-freetext" href=3D"http://download=
.pureftpd.org/pub/ucarp/$">http://download.pureftpd.org/pub/ucarp/$</a>{BPN=
}-${PV}.tar.gz \
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"file://ucarp-configure-=
sha1.patch">file://ucarp-configure-sha1.patch</a> \
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"file://ucarp-configure-=
snprintf.patch">file://ucarp-configure-snprintf.patch</a> \
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a=
 class=3D"moz-txt-link-freetext" href=3D"file://0001-ip_carp.h-remove-unuse=
d-__packed.patch">file://0001-ip_carp.h-remove-unused-__packed.patch</a>
          \
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"file://ucarp.init">file=
://ucarp.init</a> \
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"file://vip-001.conf.exa=
mple">file://vip-001.conf.example</a> \
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"file://vip-common.conf"=
>file://vip-common.conf</a> \
          <br>
          --
          <br>
          2.17.1
          <br>
          <br>
          <br>
          <br>
          <br>
        </blockquote>
      </blockquote>
      <br>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">


</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------BFD3E9F4E76B9E8B55CD8457--
