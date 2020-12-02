Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.63])
 by mx.groups.io with SMTP id smtpd.web10.91.1606931255646605369
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 09:47:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=K7X5dAZ0;
 spf=pass (domain: windriver.com, ip: 40.107.94.63, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XeJg+QkEcXiLmhH7YEVj2yr99Otyp/8ZWye4PQkGRQniPOoo2prmIwgH9XnfZJY9m4+PW0pYlzDlkFnHGBV3TA6Ypmn+QLf3ohoXv2rbH0C9Ba3A3gRmru8coWQWvRM3ERaDnSCbRNuALxMChz6d8YdiOZ/O3QVeM2sT66F5Dhn/ZtxUkJQa8aN30D8t+YpiW9Kq1U695renUI0YyHVJN6zh1ZOGt7TDeN2A/Cl3fy0RpSVx+HIH3gxr3fs2sH2NzafidQDXen3ZUFQmCDhSEIBJm5JlhTuRVQJAu8WkTSSQSToOYmLda4AKI353qDAe8F9K1kOP4tHVKMR7FJjT2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D75g0GNBZpU8vEncESfkZG64k3epsJ19TrEfDLdt7V4=;
 b=lRC3MDvF/UXvvn6CM4LDk2GJgwvARtGjbWzbKE93I5tTDpMAASTpMfFV5qhX/AGDvxYjiiObh9KMgaJps2oDMLPybQ9Xq5pL70iJHKkCcMkhj7G1impKHZWH3I4fJHWPEp+S42dIA97osY7xfIn+56bVtIImWiy6urlLscQrBG2rDoLpa5xBZrUazSSzfg0RvmshC/Cvlta0hv0cJb2VmDbooXi5MNy3/VaAg4vqQ0BlA/HzbLZ/xwpi/NYIRAYsIeM6HBT3PDBun/49kQ7j0OaH9mqJs9N33zj/DyrLyRozdznwusNm7HKawTMh7gOF/ql/vU+XP4TRGMoglOAIjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D75g0GNBZpU8vEncESfkZG64k3epsJ19TrEfDLdt7V4=;
 b=K7X5dAZ02uwPLBxLzwc1mcvHQ4+n+Mguo4dd8zUSh7LtZaRixSYVyY7E6/iuIp50tVzEH05sE/YY5YxIIa5ZpIhftf3osluTxMUwx6ckNZiK36w1OoJFTtrkpDsOzIbTiq6fDxi0fniBKpOBdMnoyRqpgk2zpUQqInIW+vOsgLw=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4233.namprd11.prod.outlook.com (2603:10b6:5:14f::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 2 Dec
 2020 17:47:33 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::7dda:eef1:5113:c588%6]) with mapi id 15.20.3632.017; Wed, 2 Dec 2020
 17:47:33 +0000
Subject: Re: [yocto] Adding modules to Apache2 during build
To: mailings@warpedelectronics.com, yocto@lists.yoctoproject.org
References: <Pdre.1606852955309207764.QI0Y@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <4f4c6841-9b7c-f94b-daa7-2416701c0815@windriver.com>
Date: Wed, 2 Dec 2020 12:47:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <Pdre.1606852955309207764.QI0Y@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR13CA0034.namprd13.prod.outlook.com
 (2603:10b6:a03:180::47) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR13CA0034.namprd13.prod.outlook.com (2603:10b6:a03:180::47) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.5 via Frontend Transport; Wed, 2 Dec 2020 17:47:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8023f4e7-81a7-4cff-77f8-08d896ea5918
X-MS-TrafficTypeDiagnostic: DM6PR11MB4233:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB42337332D5C6010EE277161AF8F30@DM6PR11MB4233.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qrGexer/TWstAr0hkADfIQWHg9aSOv0jvvpFWKMKfTai+GTRSsSZsMjb3+mWb8dBLxQ9y3V0tMc91apZ0hKpiI7IpqqUDtprJbcUwUFaHcLs+2iKu5lVNpJQ43k3vo7oioXIC4LIscRsOb0H6tcWLBEUHwKnnyS+JE4/KC4J/KkIyYWor0U1wm2jdJlAWAGvzTgSqcnBa/tESag+ZiSR6U2dYDnSuWIVApHXe/Ubd3Jdv1GZPjFLL0PdBTJx6aRswu01PNoyEVEq7QfX3xTKX2WmqLcGn47uz/vC0pt+LWxbVE/jFfFVsJ6qooT9gEK7Vc+vmzR2xmIqYRqXIK8QczMOQOXTJY6OI8uEnHVwS841Efuh7BOPpEPqyMhiOQxw3KAIm1kCmauMzNjsx9phif7DKxeYS2j6WYB2WZKsLhN2kpIzo5HQDAsCsfvkiRsBGjlNN/AzXUMEgurPa0Zd6l+XWbxhJMMH8R5WDsqCa3Y=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(376002)(136003)(396003)(39850400004)(8936002)(166002)(66556008)(86362001)(36756003)(16576012)(478600001)(66476007)(66946007)(966005)(83380400001)(6486002)(26005)(31686004)(31696002)(16526019)(186003)(5660300002)(8676002)(2616005)(956004)(316002)(33964004)(2906002)(53546011)(52116002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?N3laNE15YmJFaXdCeUlhTlNRZ0g2NVVhQnJTcmZTUnl4c2pQT0IzeXlwMjZV?=
 =?utf-8?B?eTY2TnpqVUhqVlpBd203TUhjUFRCV25ydzZ4VFRscDJ0YVpMM3FsOU43S3BX?=
 =?utf-8?B?R0h1WERwZk11Y213c0drMk80M0NjZTdpY0pmbkpQbUN6ZUN0bDlkcDNkOS9I?=
 =?utf-8?B?UU1VaGJSSUtPdUtkamhnZFpBekFyTFZaWVRLbXFZQjluWVVIeXFzUkZqSzV3?=
 =?utf-8?B?czc0QXUxaUU4ZWtMZGpHYUx5SmlrL3BSeGF5bmRRTDRPTCtOeWEwbFprREw1?=
 =?utf-8?B?N2tIZEdPVURTMUx4NVhqaHBROTFCbW1yVnV2dTlhVVkyd0hRdHlGeEFGdC81?=
 =?utf-8?B?cStqaW1hNThFYXp4WmwybFR4amN2TG16bEV3d3IxMzJnZ0xXM1dVR1FvNXJs?=
 =?utf-8?B?VW5XL2ZaaFJnaEFXbGR2dk1SQTZ4V3JKcVZobnhSY1RITWMwckdYaWRoVk9u?=
 =?utf-8?B?UEM5ZC8wT09lV09FbWNoTTlUTHFybHVYeWs5M1hHeGRqUXBYV0UzRDZOeTk5?=
 =?utf-8?B?MHdRUUYzNE93N3ZqVVRFNzhMVWJZaHpUUGlCVThxblQwbEVxdGRhd0V1OUNq?=
 =?utf-8?B?aFVrVUhZa1VMU1JKL3ZOeHIvYVRlZTVEV3NmMTFUSk5ZcEgzU3ZEZjZneHVU?=
 =?utf-8?B?YlZKdTdycWYwOEdUL3NWclVONXUweHRaa0R6dGh1S1ozdHJtSXhOaUZZa0dO?=
 =?utf-8?B?Nm5tUjd1TmdDWllKOThLMnphS1Y1TmNXU0JtMXlxNzRaZUUvTFh2N0w3R2RC?=
 =?utf-8?B?RDZpaXZTMVRiZ2tHdTRweDBkVGN3aVFBRnFGdytUc2FyOWIyWGYzZldTVHBH?=
 =?utf-8?B?MThmZ1FDR1lRRk9OaCt4bUFGV0cyWnF1T2RISmFKQ3J3U0xqNWROczNYUGF0?=
 =?utf-8?B?d0NxMThQVTY0NngzcnpoMWVJQTVnM21GektZZ2FTYXk2TWNzRW90RUtKTzhE?=
 =?utf-8?B?b3hjZ3ovSmZCRytLYlBqLzU2N2dSRVBiRVRmVVJEYmY4ZWRZUHl6K3UxcjZk?=
 =?utf-8?B?NzdxQy93K2sxSytVMDFSRjlnNmtvZGlnQVNXWVhwL3ExTzFYTXM0MUxlYlVF?=
 =?utf-8?B?RWhiMjBjNW9LQ0NNZ0xEYmhWclF0d3ZLRkxTaHpIdXZZVGJIZ0JPMit2eTBF?=
 =?utf-8?B?UHYyNXNyN045Y2NhSjNuOWZvOXRiWW1temNhbENEK2dsSE9rWjYyWVUwYUFl?=
 =?utf-8?B?YTAvUy9WMDNIS3hRbzVHWVJjUmVZQlhTRlNGTDRHVjVCaHBqUWtEc0p1VmJr?=
 =?utf-8?B?bEt2UWY2SkdhSG1kd2RwYXdmb0Rxdkt6alcvZG95T3A3bk1IQjJnYmUzTE1k?=
 =?utf-8?Q?/pxJ5/vYHxWChF64pHo7Ca+U/dvXD7IzBE?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8023f4e7-81a7-4cff-77f8-08d896ea5918
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2020 17:47:33.5843
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sPPXfCWf2D0cxJvcazoATcdrb1EHzOvHQO3srodnoBMSN2iLyHsF8b9mSA6Wu/cLq0qbgoZTiD7s87FDrT6t2ea1yYOD38jpLBeaT2P8ePk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4233
Content-Type: multipart/alternative;
 boundary="------------763372DCC105E89626D8CF19"
Content-Language: en-CA

--------------763372DCC105E89626D8CF19
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2020-12-01 3:02 p.m., mailings@warpedelectronics.com wrote:
> Hello all:
>
> Thank you to all who post to help on the list.  I have been helped so 
> many times by just doing a search here.
>
> I do have a question that I have been unable to solve on my own...
>
> I have Apache2 and PHP installed and functional.  I have also included 
> "PAM" using:
>
> PACKAGECONFIG_pn-php = " sqlite3 imap opcache openssl 
> ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6 pam', d)} apache2"
>
> However, I need to add "libapache2-mod-authnz-external", "pwauth", and 
> "libapache2-mod-authz-unixgroup" to my 


I looked at the apache source briefly and those modules do not appear to 
be part of apache2.

 From an ubuntu system:
    $ apt info libapache2-mod-authnz-external | grep Homepage
    Homepage: http://code.google.com/p/mod-auth-external

and there's nothing in the layer index:
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=authnz

so it looks like you'll have to write a recipe to build these modules.
Please send them to meta-oe as per:

https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Thanks,

../Randy


> build. I've tried adding these to my local.conf in the line above and 
> even tried it in my IMAGE_INSTALL_append section.  When I add it to 
> PACKAGECONFIG_pn-php I get a "do_configure: QA Issue" that it is an 
> invalid packageconfig.  If I put it in IMAGE_INSTALL_appeng I get an 
> error that nothing provides the packages.
>
> I know I'm missing something or not thinking of this correctly. Maybe 
> it's not that I need to add a new package, but a module feature to 
> Apache2?  If someone could point me to where I can find an answer, I 
> would appreciate it.
>
> Thanks much.
>
> -Joe
>
> 
>

-- 
# Randy MacLeod
# Wind River Linux


--------------763372DCC105E89626D8CF19
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2020-12-01 3:02 p.m.,
      <a class="moz-txt-link-abbreviated" href="mailto:mailings@warpedelectronics.com">mailings@warpedelectronics.com</a> wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:Pdre.1606852955309207764.QI0Y@lists.yoctoproject.org">
      
      Hello all:<br>
      <br>
      Thank you to all who post to help on the list.&nbsp; I have been helped
      so many times by just doing a search here.<br>
      <br>
      I do have a question that I have been unable to solve on my own...<br>
      <br>
      I have Apache2 and PHP installed and functional.&nbsp; I have also
      included &quot;PAM&quot; using:<br>
      <br>
      <span style="font-family: courier_newregular, courier;">PACKAGECONFIG_pn-php
        = &quot; sqlite3 imap opcache openssl
        ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6 pam', d)} apache2&quot;</span><br>
      <br>
      However, I need to add &quot;libapache2-mod-authnz-external&quot;, &quot;pwauth&quot;,
      and &quot;libapache2-mod-authz-unixgroup&quot; to my </blockquote>
    <p><br>
    </p>
    <p>I looked at the apache source briefly and those modules do not
      appear to be part of apache2.</p>
    From an ubuntu system:<br>
    &nbsp;&nbsp; $ apt info libapache2-mod-authnz-external | grep Homepage<br>
    &nbsp;&nbsp; Homepage: <a class="moz-txt-link-freetext" href="http://code.google.com/p/mod-auth-external">http://code.google.com/p/mod-auth-external</a><br>
    <p>and there's nothing in the layer index:<br>
      &nbsp;&nbsp;
<a class="moz-txt-link-freetext" href="https://layers.openembedded.org/layerindex/branch/master/recipes/?q=authnz">https://layers.openembedded.org/layerindex/branch/master/recipes/?q=authnz</a></p>
    <p>so it looks like you'll have to write a recipe to build these
      modules.<br>
      Please send them to meta-oe as per:</p>
    <p>&nbsp;&nbsp;
      <a class="moz-txt-link-freetext" href="https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded</a></p>
    <p>Thanks,</p>
    <p>../Randy<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:Pdre.1606852955309207764.QI0Y@lists.yoctoproject.org">build.&nbsp;
      I've tried adding these to my local.conf in the line above and
      even tried it in my IMAGE_INSTALL_append section.&nbsp; When I add it
      to PACKAGECONFIG_pn-php I get a &quot;do_configure: QA Issue&quot; that it
      is an invalid packageconfig.&nbsp; If I put it in IMAGE_INSTALL_appeng
      I get an error that nothing provides the packages.&nbsp; <br>
      <br>
      I know I'm missing something or not thinking of this correctly.&nbsp;
      Maybe it's not that I need to add a new package, but a module
      feature to Apache2?&nbsp; If someone could point me to where I can find
      an answer, I would appreciate it.&nbsp; <br>
      <br>
      Thanks much.<br>
      <br>
      -Joe
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------763372DCC105E89626D8CF19--
