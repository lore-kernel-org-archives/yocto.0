Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.41])
 by mx.groups.io with SMTP id smtpd.web11.20917.1594141438475986043
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 10:03:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=JT4aferv;
 spf=pass (domain: windriver.com, ip: 40.107.92.41, mailfrom: trevor.gamblin@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ww4S4+iDu8wq0Y0autZxZXm12i6Y8nkebxKE+JaU0RFq9AyXmQIwPyG333rLLfEDlGS6TUaIs3cwr31zdYftYpbabzeM6BPMmcEsfj6NYsnexZSdxSTIQfkqW4v6NYfKEZkGJ4L4WnsLh459zL3xdS3FuRIN92hW9XxbhINh4ZV1ycpjARCX7+OX//4Wp+UMbSwpec9YjgyZquScDpvqavXK9VXi7dXK7WZVXad+Ku8kIKbJwEbsf5GUuriwd14yTS4L3OI2sm0AEWirzcAJkOzXbY2jOJCAa+PlGaaDt+3LztonXDGdf9o5YN6fVB566AZyKeMe8EznNLNS1AWqnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OvrKdCgp/JjE6D79WhZ1QSyFf3rQ4Cy/KaekxsgWFYk=;
 b=LKYRqUQDvLo/wW95xXpobgQThSvcvbcJNM7ZVqYW9KxFhaaqRQ3c5GRcoSArEBTZvvTe1UXOwqlYoIx8PQaBuU7EOZOkgB0MrmsoEVp8uXJn8RdtOHohGfNAu6BoM/Xwrtz69CyloH2cePy5vjiivxh4aC3bHho4wcxuO6AldrTkmywYR2osAZaod2KI/apG/P5JPq3F8cvHiWWIwtBLck7OAwmB/qX+q1Afmrfft0aj8pJS9J/LQTM5OthHVr31D4l9+4lQAjzbvGgo3wzylz10etnn1mnFfLQbMv0LMo7/2K2ycS8+XuKdtB9jLyrwvzKQtVHkT3/Gv2QroNpehg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OvrKdCgp/JjE6D79WhZ1QSyFf3rQ4Cy/KaekxsgWFYk=;
 b=JT4aferv95zrn9Geod57aLARuebURbYeUoEYbGOsID/PBksGFMTOT6eIEfjH2vMJpWtjzOMnROcwPYv7e4ml6P3GJgT8GgTuoTXl5MxYd80HhMW5u0BEjsoVqENzifCxTRKCta5NGAS+/oKfJOFcujl64Wrx9DDROdv21K299iU=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM5PR11MB0011.namprd11.prod.outlook.com (2603:10b6:4:6b::29) by
 DM6PR11MB4548.namprd11.prod.outlook.com (2603:10b6:5:2ad::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.20; Tue, 7 Jul 2020 17:03:56 +0000
Received: from DM5PR11MB0011.namprd11.prod.outlook.com
 ([fe80::c970:4bd8:f35c:d6d2]) by DM5PR11MB0011.namprd11.prod.outlook.com
 ([fe80::c970:4bd8:f35c:d6d2%5]) with mapi id 15.20.3153.029; Tue, 7 Jul 2020
 17:03:56 +0000
Subject: Re: [yocto] [yocto-autobuilder2][PATCH 0/2] Clarification and formatting of README-Guide.md
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org
References: <161AE37A6BCAAD13.11535@lists.yoctoproject.org>
Message-ID: <921cb2e6-143d-371d-85f5-32a28e75a01a@windriver.com>
Date: Tue, 7 Jul 2020 13:03:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
In-Reply-To: <161AE37A6BCAAD13.11535@lists.yoctoproject.org>
X-ClientProxiedBy: YT1PR01CA0109.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2c::18) To DM5PR11MB0011.namprd11.prod.outlook.com
 (2603:10b6:4:6b::29)
Return-Path: trevor.gamblin@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.30] (174.115.236.231) by YT1PR01CA0109.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2c::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20 via Frontend Transport; Tue, 7 Jul 2020 17:03:54 +0000
X-Originating-IP: [174.115.236.231]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 35f2cee6-7ed4-493e-d716-08d82297bb50
X-MS-TrafficTypeDiagnostic: DM6PR11MB4548:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB454885AEA1CC646315C966C59F660@DM6PR11MB4548.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0457F11EAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fEcXkX88HjLDI5mfEZwhmdwsbMkq/BLb/CSrAFJHQlm42696Mh1ls5qs875lIgAnyTQHvn/etruyZEmNCZVkpz81XWsULlV7hM/ivltMdwnL4ziK59PRJ6Y1A6DpbPfHq60fPob1aSb1MswY1ZiZEAZTk8YezlX1BR2GnyhAaXOx5IqbmyQvXlrxEUF4xrW0vScsoW/w3ROU6cu6H/UecOog+Qux5pLnSGUYO3CfXTznJ8YfwHR+TJ0Zc2ZNSlysVmZR2ylnI0GCBgFVqtrvVHxawj/+yeOUjcBimDyNtnMh7P+tiB19WzdmXhv6geqGZm8F7orHwVGDknnuUgknkmEwEW2h+Gm4cGljefU8Z2Xo8Z9COEfqxveZX/EYPxWmtOMudSaMVaB+rPWLbbWfPN3EPOgefsBMY2fokGat3yZqj7LZmN8MJ7pCbwTMr/BlJxeBnBbkwFb/gi8Oc9530w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR11MB0011.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(39850400004)(396003)(346002)(366004)(376002)(136003)(44832011)(2616005)(4326008)(36756003)(2906002)(8936002)(8676002)(31696002)(16526019)(66556008)(33964004)(6486002)(166002)(52116002)(53546011)(5660300002)(83380400001)(966005)(66946007)(26005)(478600001)(86362001)(31686004)(956004)(66476007)(316002)(6916009)(186003)(16576012)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	VmR99Blaq68GjwPRTMcXHssfq8yJO5PtXUvZ+6Ev0opNTuxv4OVTyquKfgGqq4YktqSAWkVakpjkZlYEu3EpZ909VGXa+Wm6GbjDkRSK45bHs3wOnm/79kAVWWf2GdIZr5DR5/MIi+rFp0YEzgHKiqR8D55ho2LzUR2FcD5vbNJUU72YVC5yGldo/RFXk4GeOzom+lTpgLYm2aOOVIWFZwQYeEIhNMCcCJutG00aAzTQ4ZdIwMkFlU4KNGHWpII/Cu3HNzC+KsY+f2MLCKfp6CtJyY8FCFnjX/5T2YXGCyGVSdTCSnjwODnIawuh7YLgT77+JdQSp92FC15Ze+2KWaw3DuuJtmMOjC91Q7539hqtSjRLid/6xbTiKoDSTblc4RGVTXBjTNnivUSAce44Q85otYfTwneig9lY4r4XLdIyNKLB144kEFDEhAPCVlK5+OCVL5kYB5PuPvfKVml1b4HfsdOyLzNOnuTSIQp4P5vhm+K0bX/sl6a681VKI9aA
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35f2cee6-7ed4-493e-d716-08d82297bb50
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB0011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2020 17:03:55.8344
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4jfqfTrF2+ZC0HWHDCMkx4+aH0gWOjNkukYoMQUXzgavz7EtiUcJOsuQY9JLfjbICgfcJiX7oISMoiCLN3Rl13vSmqIRp+RfMLRZN2p3V34=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4548
Content-Type: multipart/alternative;
 boundary="------------3692EF91B1D1931969D5D207"
Content-Language: en-US

--------------3692EF91B1D1931969D5D207
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 6/22/20 10:18 AM, Trevor Gamblin wrote:
> Long-overdue patches based on experiences trying to set up an
> autobuilder instance. I've split it into two patches because the second
> patch (the one that line wraps the majority of the document) may not be
> desired, if the doc is meant to be read in the pre-existing format.
> Patch 0001 cleans up the doc so that the sections can be more easily
> referenced.
Any issues with this patch set? Do I need to resend?
>
> Trevor Gamblin (2):
>    README-Guide: cleanup, clarify setup instructions
>    README-Guide: wrap lines at 80 characters
>
>   README-Guide.md | 489 ++++++++++++++++++++++++++++++++++++------------
>   1 file changed, 372 insertions(+), 117 deletions(-)
>
>
> 

--------------3692EF91B1D1931969D5D207
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/22/20 10:18 AM, Trevor Gamblin
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:161AE37A6BCAAD13.11535@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">Long-overdue patches based on experiences trying to set up an
autobuilder instance. I've split it into two patches because the second
patch (the one that line wraps the majority of the document) may not be
desired, if the doc is meant to be read in the pre-existing format.
Patch 0001 cleans up the doc so that the sections can be more easily
referenced.</pre>
    </blockquote>
    Any issues with this patch set? Do I need to resend?<br>
    <blockquote type="cite" cite="mid:161AE37A6BCAAD13.11535@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">

Trevor Gamblin (2):
  README-Guide: cleanup, clarify setup instructions
  README-Guide: wrap lines at 80 characters

 README-Guide.md | 489 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;------------
 1 file changed, 372 insertions(&#43;), 117 deletions(-)

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------3692EF91B1D1931969D5D207--
