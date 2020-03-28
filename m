Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.92.73.25])
 by mx.groups.io with SMTP id smtpd.web12.6353.1585404514281770869
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 07:08:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=O8PiAtq8;
 spf=pass (domain: outlook.com, ip: 40.92.73.25, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDe2FkJcgl1Nuc4bAfHH3f/op4wGzBG+MfcuQaeNrGjnMFCuIuB2xuryWxnKoLBkbuQkL7RX640Ja5gUbd9GtljoxaioKrkg7r1bGzOP+jkI/p47Ju8cStcDRlB1rsmotZ6l4uEqmTN/a5Q4YvP8mOlTmFjkvFBz25qZrpUzqtcIb659eP93w3gh5ay4saP7KYzYyDr47p8lVeallKdoVUVZXGcyfGOW0rxoZahv0mH7sMDep8vhzZSUSYqS2AJp4fed6kUggyklMIHoY2D1HEv6WV4SYtrl5IHmobqEWFJASkvBgUEkRIssAs1r7fNZWDY6rqLeaP41TAC+Xd8K3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ww8BpUYOwYFUoaIdCpMnziPPg8vnbirsULHGTqDdSGk=;
 b=EBG0mF3HEbbk0PCcbTM6remsxDqVc0wijQRtrfDMbpzTg/pRqmcxQ940Ky0MzyKIdCSQS20C9i0vHepN81KF/RDD+ddQLQSi7m0KjtQGxGVzvjmHNgHj5KFC3A5fXMYeMlc6050fsFKOMO2yYc26zdBXIrmltfzfIOT1e956one2nYHt1xsRmJDgnXX7A052dj8/iKIIHt2kH//EnNvabPV13xrxKo8fPeUPl00DbzJOwYPrktNJOS3T3vyG9aTyTEQf8+5oKCg7fiYPKBjB6pLcPGHdGnnovp8G+sik32BGnuMU4uYuJEJOSFY0YF1n6sL/NnMBizPBw46eEIwRIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ww8BpUYOwYFUoaIdCpMnziPPg8vnbirsULHGTqDdSGk=;
 b=O8PiAtq8v9Rtd8OL5OOnZpEx0jr4ygNGA/TA3RvEC6RWpxJQOzkeCJ6e/wpcT6V66FISnc3O4hqZZU3njPCJFzz3RyiVP5qg9pVP175FBVgUMHdBdnzNJ7VsmnTAdvFXC0r6MXpDTFnUiDgiEgETUkwvc0JVWYnUdE93e0QAMj/dbcI9CZsUtjDYvhLOJcjSuZlrNJJj3UJt9FZ1l2fwdS/jOxe9U5x4bpYhAWKpgagOf4WJWiZN0/OUO/izPB9VxUGBWv5K5h0/DohE9CAJfaN6FnKIQKeG+daT4YAOWcHG2hGDYtmwJPVmdMUimzKMyQfHw2oseeKz/kkhyluUYg==
Received: from HE1EUR04FT056.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0d::47) by
 HE1EUR04HT165.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0d::106)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Sat, 28 Mar
 2020 14:08:23 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.152.26.52) by
 HE1EUR04FT056.mail.protection.outlook.com (10.152.27.45) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sat, 28 Mar 2020 14:08:23 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:941CFD0AFD8A17EDE0E4D2BC8303AFF3724DEDAF5CF7CB49C5BAA8B7E233FEDA;UpperCasedChecksum:A48A2BB7FE23DE0020525A3D619870BC7504AB92099D497544E3557F0D8A19E3;SizeAsReceived:8101;Count:49
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 14:08:23 +0000
Subject: Re: [yocto] Fw: Reducing rootfs size in yocto
To: Ajam Ali <ajama@hcl.com>
References: <HK0PR04MB29144DAFD598E96154278145B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB4286DCEF29A234000881D0F9A8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Sat, 28 Mar 2020 15:08:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
X-ClientProxiedBy: AM5PR0502CA0002.eurprd05.prod.outlook.com
 (2603:10a6:203:91::12) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <111bedbf-a549-1d21-cc22-59748446382b@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.87.90) by AM5PR0502CA0002.eurprd05.prod.outlook.com (2603:10a6:203:91::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend Transport; Sat, 28 Mar 2020 14:08:23 +0000
X-Microsoft-Original-Message-ID: 
 <111bedbf-a549-1d21-cc22-59748446382b@outlook.com>
X-TMN: [CxfFR7J3lt7VOi/cEubD1UjXOrUH4XTa]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: cd0118a1-77e9-40b5-6d26-08d7d3217a1a
X-MS-TrafficTypeDiagnostic: HE1EUR04HT165:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	P7XNM3RXhQbt5Pexrp9rAaeXQF53SBg4xM4z7Aekb+FyIalvHFuEhoqb8f/oa+A8lBwdkDMZq6qA89FS8iVocrayzWvhSqw8Dv5exItE0/FXaOk9VjDhUIEJxVgL43UmCiAWpcxEPNx4ph3OPDwhTOZ8V9BpKVc0uRefMLtavwmQyycRKUez8Q5pl61QBWbc3pzmvCWRvrdcZSkb/NNU8UgRqPbicrCfpHK3hwBVqBU=
X-MS-Exchange-AntiSpam-MessageData: 
	jQp5KfQ0kOyXc50MIRvDstDdPcZj4jBjcoGmuUeFVqe7u8ZHA4wzoVGP9gw3AQwKKqpm0wX7j3hwUo9tAVHt6Vfp7I1pRr87ZzD3VKYrQCYfG0P150v7LvfVREitIDxdCAcHs9urZMSfY9N9BZBn0g==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd0118a1-77e9-40b5-6d26-08d7d3217a1a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 14:08:23.4077
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR04HT165
Content-Type: multipart/alternative;
 boundary="------------CFFDDF0F266BAE8B1E638B89"
Content-Language: en-US

--------------CFFDDF0F266BAE8B1E638B89
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Pretty general questions, but I try to answer your question.


I don't know what the purpose of your image is, but installing 
development tools like boost-dev or gcc (I guess that is what you mean 
with cpp) makes your image automatically a lot bigger, I would suggest 
to put devtools into a SDK, which could be shipped separately.


Next thing you can do is to analyze the what is actually so big in your 
image, e.g. by creating a tar.gz of the image, unpacking it and browsing 
by 'du -sh *'.
You can get the package/recipe to a file by using 'oe-pkgdata-util 
find-path <path>'.


In the identified recipe you can look for PACKAGECONFIG or OE_EXTRACONF 
switches that you don't need and disable them.


As said, I don't know what the purpose/environment of your image will be 
like, but you could also consider to use a different fs-format like squash.


In general if you want small images preferring musl over glibc and 
systemV over systemd is something that you could consider as well.


TL;DR


1) move to SDK

2) check PACKAGECONFIG switches

3) same as 2 or consider something "smaller" like lxc

4) same as 2

5) same as 2

6) same as 2

7) move to SDK

8) same as 2


On 28.03.20 14:25, Ajam Ali wrote:
>
>
> ------------------------------------------------------------------------
> Hi All,
>
> I am trying to reduce the image size.
>
> how can i reduce the size of following packages so that i could get a 
> small image size after integrating these packages in yocto?
>
>
> 1) boost-dev 2) docker 3) containerd-opencontainers 4) nodejs 5) 
> nodejs-npm 6) python3-numpy 7) cpp 8) postgresql
>
>
>
> Thanks in advance,
>
> Ajam Ali
>
>
> ::DISCLAIMER::
> ------------------------------------------------------------------------
> The contents of this e-mail and any attachment(s) are confidential and 
> intended for the named recipient(s) only. E-mail transmission is not 
> guaranteed to be secure or error-free as information could be 
> intercepted, corrupted, lost, destroyed, arrive late or incomplete, or 
> may contain viruses in transmission. The e mail and its contents (with 
> or without referred errors) shall therefore not attach any liability 
> on the originator or HCL or its affiliates. Views or opinions, if any, 
> presented in this email are solely those of the author and may not 
> necessarily reflect the views or opinions of HCL or its affiliates. 
> Any form of reproduction, dissemination, copying, disclosure, 
> modification, distribution and / or publication of this message 
> without the prior written consent of authorized representative of HCL 
> is strictly prohibited. If you have received this email in error 
> please delete it and notify the sender immediately. Before opening any 
> email and/or attachments, please check them for viruses and other defects.
> ------------------------------------------------------------------------
>
> 

--------------CFFDDF0F266BAE8B1E638B89
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-1252">
  </head>
  <body>
    <p>Pretty general questions, but I try to answer your question.</p>
    <p><br>
    </p>
    <p>I don't know what the purpose of your image is, but installing
      development tools like boost-dev or gcc (I guess that is what you
      mean with cpp) makes your image automatically a lot bigger, I
      would suggest to put devtools into a SDK, which could be shipped
      separately.</p>
    <p><br>
    </p>
    <p>Next thing you can do is to analyze the what is actually so big
      in your image, e.g. by creating a tar.gz of the image, unpacking
      it and browsing by 'du -sh *'.<br>
      You can get the package/recipe to a file by using 'oe-pkgdata-util
      find-path &lt;path&gt;'.</p>
    <p><br>
    </p>
    <p>In the identified recipe you can look for PACKAGECONFIG or
      OE_EXTRACONF switches that you don't need and disable them.</p>
    <p><br>
    </p>
    <p>As said, I don't know what the purpose/environment of your image
      will be like, but you could also consider to use a different
      fs-format like squash.</p>
    <p><br>
    </p>
    <p>In general if you want small images preferring musl over glibc
      and systemV over systemd is something that you could consider as
      well.</p>
    <p><br>
    </p>
    <p>TL;DR</p>
    <p><br>
    </p>
    <p>1) move to SDK</p>
    <p>2) check PACKAGECONFIG switches</p>
    <p>3) same as 2 or consider something &quot;smaller&quot; like lxc<br>
    </p>
    <p>4) same as 2</p>
    <p>5) same as 2</p>
    <p>6) same as 2</p>
    <p>7) move to SDK</p>
    <p>8) same as 2<br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 28.03.20 14:25, Ajam Ali wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com">
      
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <hr tabindex="-1" style="display:inline-block; width:98%">
        <div id="divRplyFwdMsg" dir="ltr">
          <div>&nbsp;</div>
        </div>
        <div>
          <div style="font-family: Calibri, Arial, Helvetica,
            sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
            background-color: rgb(255, 255, 255);">
            Hi All,</div>
          <div style="font-family: Calibri, Arial, Helvetica,
            sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
            background-color: rgb(255, 255, 255);">
            <br>
          </div>
          <div style="font-family: Calibri, Arial, Helvetica,
            sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
            background-color: rgb(255, 255, 255);">
            I am trying to reduce the image size.<br>
          </div>
          <div style="font-family: Calibri, Arial, Helvetica,
            sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
            background-color: rgb(255, 255, 255);">
            <br>
          </div>
          <div style="font-family: Calibri, Arial, Helvetica,
            sans-serif; font-size: 12pt; color: rgb(0, 0, 0);
            background-color: rgb(255, 255, 255);">
            <p style="margin-top: 0px; margin-bottom: 0px;">how can i&nbsp;
              reduce the size of following packages so that i could get
              a small image size after integrating these packages in
              yocto?</p>
            <p style="margin-top: 0px; margin-bottom: 0px;"><br>
            </p>
            <p style="margin-top: 0px; margin-bottom: 0px;">1) boost-dev
              2) docker 3) containerd-opencontainers 4) nodejs 5)
              nodejs-npm 6) python3-numpy 7) cpp 8) postgresql</p>
            <p style="margin-top: 0px; margin-bottom: 0px;"><br>
            </p>
            <p style="margin-top: 0px; margin-bottom: 0px;"><br>
            </p>
            <p style="margin-top: 0px; margin-bottom: 0px;">Thanks in
              advance,</p>
            <p style="margin-top: 0px; margin-bottom: 0px;">Ajam Ali<br>
            </p>
            <br>
          </div>
        </div>
      </div>
      <font size="1" face="Arial" color="Gray">::DISCLAIMER::<br>
        <hr>
        The contents of this e-mail and any attachment(s) are
        confidential and intended for the named recipient(s) only.
        E-mail transmission is not guaranteed to be secure or error-free
        as information could be intercepted, corrupted, lost, destroyed,
        arrive late or incomplete, or may contain viruses in
        transmission. The e mail and its contents (with or without
        referred errors) shall therefore not attach any liability on the
        originator or HCL or its affiliates. Views or opinions, if any,
        presented in this email are solely those of the author and may
        not necessarily reflect the views or opinions of HCL or its
        affiliates. Any form of reproduction, dissemination, copying,
        disclosure, modification, distribution and / or publication of
        this message without the prior written consent of authorized
        representative of HCL is strictly prohibited. If you have
        received this email in error please delete it and notify the
        sender immediately. Before opening any email and/or attachments,
        please check them for viruses and other defects.<br>
        <hr>
      </font>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------CFFDDF0F266BAE8B1E638B89--
