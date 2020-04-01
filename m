Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.92.90.36])
 by mx.groups.io with SMTP id smtpd.web10.2030.1585763166429259311
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 10:46:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=sCAV3/T6;
 spf=pass (domain: outlook.com, ip: 40.92.90.36, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lLyBD+JZQ/YReGGooHTKEeIPmWVsNK3fvfGqDw+Gml+ridIvyxcAiROflKPIt9/cmHtqdn9zPIk/k/pOXT+JaQzsBcP/SIBLqks13w3AM5r4K07ct+W0PoCz8lpD9/Jg8YezDFJIjWbso49spjXFZtzlP2yQ3ousPFUoxAvmpvOkHqh5cYdA7NqY20ZKjM7xGTGMl9dQIVY2FHo3YoLjajgPy6t2R8vNuu0BFeOHuCU++shq3yXzgfc+ksr1Sazh+LWkKbZqLsVF8YaXmt3OpnlVUneOaxzl08mc5Fy/fofkEYwgcPlKAsY5saMtPBjiIMKDXl+DZJomWV2mVYJrqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TIHAb/zANM1vjWFATmbiojQ5/Dwsms9uns66HRi4xfs=;
 b=fTzBLJ+RC5exsGkEpKj7D6pGNHYdTchiNLCtkAByO22urjexWUoMnuTfpJcAZfGbRJpiyT5A6ti7mAY+3t3Ow2aN5xUH2FYIB4rlYQTpFrf7IIQ73IeagdE6wkSHB63a6zaqY0yATQgSZundBqxKkB01RGCu5UJsVdVB9qYKHQUr9beM2QhsCG1PonEiMozbzf1TOa0YatzVzLCoxFgz6YQ5j8isjLgtpH03CiZeupIVBVMjW8Vj1Dqq2VukVHjKT4YxIKN4Xwn04VPGvIPOGnk5hvYg5Nh4qUrpd+tfCdNA0M9t0rR3e/+7rMz136rTxGjVJ6qR379Em1NTd/xNRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TIHAb/zANM1vjWFATmbiojQ5/Dwsms9uns66HRi4xfs=;
 b=sCAV3/T6VIBp3FbQoSaorZJYxIuKrFBlM3MZNdfrbAx5WgTc0c1s1yz0SOc3OzoawFqCPT8eZrhAG1CM54fS7p46XuC4cR5jRyJC+jUVaSZsPqL2hMn4rJAa1nKnFJTSkSYWwF3P9KjyAvXBit924GtTFe0ENUh87iBrYZrKblsYd6nMMKKaYVnVQAyp4C5+KUi0AwzqHILv3er0k72amtrYhVWNu636ggo44WIKns7umlojY5fgan6cwD/P7Tg1ZC/0RehIxUKUlEPRP2Gd1PKb2oh982APT+4LAKKtwGh7bnwqgE2RQ6yOhWZr0251/xbYti58HsMwMaztAISYjQ==
Received: from VI1EUR05FT062.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc12::4d) by
 VI1EUR05HT145.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc12::113)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Wed, 1 Apr
 2020 17:46:04 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.233.242.59) by
 VI1EUR05FT062.mail.protection.outlook.com (10.233.243.189) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15 via Frontend Transport; Wed, 1 Apr 2020 17:46:04 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:81F2F8E1C92A3FE82DEFDC70A2882C4D6083B47CA62299411F636DAAB15D5F33;UpperCasedChecksum:6D5BFE97600C09B8719354AE2EA35383022F61F68EC2DB06406787F836DCF45B;SizeAsReceived:8798;Count:48
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 17:46:04 +0000
Subject: Re: [yocto] python argparse or alternate method
To: yocto@lists.yoctoproject.org
References: <kdtC.1585760118725241485.ETNE@lists.yoctoproject.org>
 <1601C2BF1E7C8C87.18583@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB4286E300219B89A7EE37D170A8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Wed, 1 Apr 2020 19:46:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <1601C2BF1E7C8C87.18583@lists.yoctoproject.org>
X-ClientProxiedBy: AM5PR0202CA0005.eurprd02.prod.outlook.com
 (2603:10a6:203:69::15) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <2e5092e8-147f-16d3-77ea-8142807f2faf@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.94.21) by AM5PR0202CA0005.eurprd02.prod.outlook.com (2603:10a6:203:69::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend Transport; Wed, 1 Apr 2020 17:46:03 +0000
X-Microsoft-Original-Message-ID: 
 <2e5092e8-147f-16d3-77ea-8142807f2faf@outlook.com>
X-TMN: [1HOAMcpnQO6Pin3Bf8/PspTNgcNmYO/v]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 8014103b-1176-4fd7-a176-08d7d6648c6f
X-MS-TrafficTypeDiagnostic: VI1EUR05HT145:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kwdDw+WENJUvYXfvLV/TtX/4ZwPhssnVVsMjJRP2RDtdILWGeACuoL70yk14y93IAQuTq7yv/851+T4AyuAw8Gata8k6X38O46iGyJclSq2lfvYm7TNDkYzC1p+TETqJRty/xorMXo0dCf4t9zJ43IOmwnQRYsP8u1jtBDgF2H/lUzjnUOpi9TZ+N1zqONb/4HqHbYsci7ZXuqZHCHae1+KC+y6ulDmTrJ0J2T0/Sa0=
X-MS-Exchange-AntiSpam-MessageData: 
	8rT+UKYBnxswyemU3RHEs2rwRRVhqSqYcdkuY30g84XqYZyZlT/Ix4HsHfyNVPVmAZyGY7JZAnfzBN7Y3ATL4f/YE/xCp3ERLlRlKfrlFrdU8pqruCYZqUhFpjFZPnm3VloNBZ6wQ62hfjRkYgAoFw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8014103b-1176-4fd7-a176-08d7d6648c6f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2020 17:46:03.9473
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR05HT145
Content-Type: multipart/alternative;
 boundary="------------698B84A0AE7CF605770B7E55"
Content-Language: en-US

--------------698B84A0AE7CF605770B7E55
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

There is a single tick missing, but I'm sure you get the point

On 01.04.20 19:37, Konrad Weihmann wrote:
>
> What about
>
> do_configure() {
>
>    cd ${@bb.utils.contains('PACKAGECONFIG_CONFARGS', '--verbose', 
> out/verbose', 'out', d)}
>
> }
>
> On 01.04.20 18:55, Joel Winarske wrote:
>> Hello,
>>
>> I'm trying the below in a recipe.  Bitbake gives me: ERROR: Unable to 
>> parse ...: Exited with "2"
>>
>> inherit python3native
>>
>> require utils.inc
>>
>> do_configure() {
>>
>>     cd ${@get_out_dir(d)}
>> }
>>
>> (in utils.inc)
>> def get_out_dir(d):
>>     import os
>>     import argparse
>>     pkgconfig_args = d.getVar("PACKAGECONFIG_CONFARGS")
>>
>>     parser = argparse.ArgumentParser()
>>     parser.add_argument("--verbose", help="increase output verbosity",
>>                         action="store_true")
>>     args = parser.parse_args(pkgconfig_args)
>>     if args.verbose:
>>         return os.path.join('out', 'verbose')
>>
>>     return 'out'
>>
>>
>>
>> What am I doing wrong, or is there a better way?  Seems like it 
>> doesn't like "args = parser.parse_args(pkgconfig_args)"
>>
>> The output directory is a combination of the arguments.
>>
>>
>> Thanks!
>> Joel
>>
>
> 

--------------698B84A0AE7CF605770B7E55
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>There is a single tick missing, but I'm sure you get the point<br>
    </p>
    <div class="moz-cite-prefix">On 01.04.20 19:37, Konrad Weihmann
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:1601C2BF1E7C8C87.18583@lists.yoctoproject.org">
      
      <p>What about</p>
      <p>do_configure() {</p>
      <p>&nbsp;&nbsp; cd ${@bb.utils.contains('PACKAGECONFIG_CONFARGS',
        '--verbose', out/verbose', 'out', d)}<br>
      </p>
      <p>}<br>
      </p>
      <div class="moz-cite-prefix">On 01.04.20 18:55, Joel Winarske
        wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:kdtC.1585760118725241485.ETNE@lists.yoctoproject.org">
        Hello,<br>
        <br>
        I'm trying the below in a recipe.&nbsp; Bitbake gives me: ERROR:
        Unable to parse ...: Exited with &quot;2&quot;<br>
        <br>
        inherit python3native<br>
        <br>
        require utils.inc<br>
        <br>
        do_configure() {<br>
        <br>
        &nbsp;&nbsp;&nbsp; cd ${@get_out_dir(d)}<br>
        }<br>
        <br>
        (in utils.inc)<br>
        def get_out_dir(d):<br>
        &nbsp;&nbsp;&nbsp; import os<br>
        &nbsp;&nbsp;&nbsp; import argparse<br>
        &nbsp;&nbsp;&nbsp; pkgconfig_args = d.getVar(&quot;PACKAGECONFIG_CONFARGS&quot;)<br>
        <br>
        &nbsp;&nbsp;&nbsp; parser = argparse.ArgumentParser()<br>
        &nbsp;&nbsp;&nbsp; parser.add_argument(&quot;--verbose&quot;, help=&quot;increase output
        verbosity&quot;,<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; action=&quot;store_true&quot;)<br>
        &nbsp;&nbsp;&nbsp; args = parser.parse_args(pkgconfig_args)<br>
        &nbsp;&nbsp;&nbsp; if args.verbose:<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return os.path.join('out', 'verbose')<br>
        <br>
        &nbsp;&nbsp;&nbsp; return 'out'<br>
        <br>
        <br>
        <br>
        What am I doing wrong, or is there a better way?&nbsp; Seems like it
        doesn't like &quot;args = parser.parse_args(pkgconfig_args)&quot;<br>
        <br>
        The output directory is a combination of the arguments.<br>
        <br>
        <br>
        Thanks!<br>
        Joel<br>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------698B84A0AE7CF605770B7E55--
