Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.92.73.89])
 by mx.groups.io with SMTP id smtpd.web11.14253.1585425969176694395
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 13:06:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=DpLLnI8m;
 spf=pass (domain: outlook.com, ip: 40.92.73.89, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VsTshlUO7pva5SNzh/VF0PSFKCTYwLzcFjqJY1LZBk6GzQzk/PPyajeQEtCPbipXhJkRH9pZ1AzYPE+rop3Usioury9CAF9QcPZWGhMc4Jn0/gwoueH7V8wLrR4iNalt/IhItZD99zWl5OEEEgu8UTkphHMGEzAMHHdrIsVlK8XY7u+gZCv6iUNm4TcXn1+EJWlH0eoTdqZomijX4IHFWmQXOKZPq1OgmTHhAW3boENbnsKN9Y40BoGZtf24miuggxF5f9Dq3fJJR85O36q1Qt+eU8VULX56k0Q7I/xkxsg8RGOYYT/udB4NDnLnHWHXNqsRMHPqFmzviTG7NsxHAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n4blsbyQ6Iea648OA1tM9fSAy9VLOTO/ZUZ6UL6/R00=;
 b=dQ2M+H/Fek9CuXaAQrT9q9qRiv//oStMp9xCdbJp5mSzooqC6XP2hV/pU4b5mkmdsKaKVvaJzhaZ54UnUj9XEwTu5sk8XoVRpHwcwfMszUnkmrxqEr1bR5VaV5Oc4pogaSlioocx+jifMfd+uMSeI0lsNYBPfMZZBDU0CQyWF3zOlDcUeq1BdcXSm4pzQWx5zArnYATzt1KtZQ0ZbC0FC2NjxY7LevY4iHKFglzkkMOrWXMjaSNRSu1lh8TMLk9dLtPQ8G45zzh8rH0MdCZs73G8Ffr49du7qKF1Rmc2QroA2dc3srG2zlRD/pNEjcyD1cDry/OmNHm60F5Bv9i+JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n4blsbyQ6Iea648OA1tM9fSAy9VLOTO/ZUZ6UL6/R00=;
 b=DpLLnI8mYgroFz2zhBfej3q3rT2CMyau1fALlPKKO5KhtBOcR/9cn1hEzNAVW5ogyNdJRz4FAG1z5NtjCDKDb3UGIO0aA/7gQFZHHv4w4I73HHtj4hwy2BNuwPnQFOPsdGN/t3u8FG9TyMLGXa31e6ijlZnfqEHYAoOngB/kLxrCJXorIzLLTd74q0Ws0TXE+8at35KNuxFWELpskTbgQSkIor4PxOIg7Iv+aWNt9ns0aL+Q340VpAyViNDOa9Wdm7KIxw+8Btktt8NjVEEzfGQrXvjlREdb1v03rAp4d4T8VCxQDRk4vi/5pLAPJT23yYvo90jZ8ReN06LqyUgA5Q==
Received: from DB3EUR04FT039.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0c::52) by
 DB3EUR04HT128.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0c::439)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Sat, 28 Mar
 2020 20:06:06 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.152.24.51) by
 DB3EUR04FT039.mail.protection.outlook.com (10.152.25.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sat, 28 Mar 2020 20:06:06 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:B9502B71739558DDBCC7CA5F1011A85DB3F0F83706C25020ADA9C77FDB2BE1E0;UpperCasedChecksum:4FAA78D21022187018C6FCD55B5E852D4C3A5E2508220D85C606761C44D284FE;SizeAsReceived:8070;Count:50
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 20:06:06 +0000
Subject: Re: [yocto] Compressing btrfs image
References: <f3c697f3-7689-eb9a-93e0-c3941ac24142@outlook.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
X-Forwarded-Message-Id: <f3c697f3-7689-eb9a-93e0-c3941ac24142@outlook.com>
Message-ID: 
 <VI1PR05MB4286D0C01EDE9E7058FD91D8A8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Sat, 28 Mar 2020 21:06:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <f3c697f3-7689-eb9a-93e0-c3941ac24142@outlook.com>
X-ClientProxiedBy: AM6P194CA0001.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:90::14) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <42f8e043-be6d-b7cc-531a-2f8a2d72d4aa@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.87.90) by AM6P194CA0001.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:90::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19 via Frontend Transport; Sat, 28 Mar 2020 20:06:06 +0000
X-Forwarded-Message-Id: <f3c697f3-7689-eb9a-93e0-c3941ac24142@outlook.com>
X-Microsoft-Original-Message-ID: 
 <42f8e043-be6d-b7cc-531a-2f8a2d72d4aa@outlook.com>
X-TMN: [3ieVomJ1TdHKtZfQr8Ffm+5Qrfs4lovX]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: ffb7dda9-36ab-4cd9-e64d-08d7d353734b
X-MS-TrafficTypeDiagnostic: DB3EUR04HT128:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gWBX3oVocQ38V0ZCoGBp/f+HC89iQ/W6WIdiE8PrWa2WgKOSlyFbnLz2WMc1MwgwyACe4NgWu22pR7gNnycqxPoBlY/ZIeRj0lc5NpLHVJz+uPopngSyPjiuVpZLII/rd0At37JEl43v7BAMK0LHT/l6YTrU9aL7/f3z8x2DlmkQx5gtgVHMAomhRzlk8pF/WBOCKBiLqWfsPgrycPawi76qSPKUv83LqO/WMvs6C2w=
X-MS-Exchange-AntiSpam-MessageData: 
	nKm2dCgUtBnGqnUCk4qtuWMHdrV8d6afZAIJFN8NnMnTTsEG93P8CBjPTF0sDZLUVixMCy/v47lQOriWfzZJBjLjkNqZ3Ygsx8AYYyz0TwbDCACJWK/iYOQ84CQZL0kDTNjYew45WphL53Xv2SED+g==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb7dda9-36ab-4cd9-e64d-08d7d353734b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 20:06:06.8503
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3EUR04HT128
X-Groupsio-MsgNum: 48968
Content-Type: multipart/alternative;
 boundary="------------ABBB6DBB87896A15969073C3"
Content-Language: en-US

--------------ABBB6DBB87896A15969073C3
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

AFAIK there is no way to mount something without root credentials.

fakeroot/pseudo is intercepting some calls before they will reach the 
kernel, but mounting isn't a supported option - it just makes all child 
processes think they running under uid 0.

What you could do is try to find an option 
(https://btrfs.wiki.kernel.org/index.php/Manpage/mkfs.btrfs) which does 
what you want directly while creating the image.

These options should go then to a variable called EXTRA_IMAGECMD.


On 28.03.20 16:30, Edson Seabra wrote:
> Hi all.
>
> I'm trying to compress a btrfs rootfs
>
> I added  in "image_types.bbclass:IMAGE_CMD_btrfs ()" two commands:
>
> 1) mount the btrfs image after mkfs.btrfs
> 2) btrfs filesystem defrag + compress option
>
> But the command mount fails:
>
> mount: 
> /home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux/nodegrid/1.0-r0/deploy-nodegrid-image-complete/temp_btrfs: 
> failed to setup loop device for 
> /home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux/nodegrid/1.0-r0/deploy-nodegrid-image-complete/nodegrid-genericx86-64-20200328134151.rootfs.btrfs.
>
> I saw in image.bbclass the creation of do_image_btrfs task with flag 
> 'fakeroot'.
>
> ====== image.bbclass ====
>         task = "do_image_%s" % t.replace("-", "_").replace(".", "_")
>
>         d.setVar(task, '\n'.join(cmds))
>         d.setVarFlag(task, 'func', '1')
>         d.setVarFlag(task, 'fakeroot', '1')
> =======================
>
> would the fakeroot flag allow do_image_btrfs execute commands that 
> requires root privilege ?
>
> If not what would be the way to execute the mount command ?
>
> I tried "pseudo mount" but it failed same way...
>
> Thanks in advance.
>
> Edson.
>
> *Edson Seabra*
>
> Principal Engineer
>
> M +1 510 579 0843
>
> *E *edson.seabra@zpesystems.com <mailto:alvin.chan@zpesystems.com>
>
> 1506169147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c90-8c28-e559c26bc7d1.png
> 46757 Fremont Blvd., Fremont, CA 94538
> *zpesystems.com* <https://www.zpesystems.com/>* | **Request a Nodegrid 
> Demo <https://www.zpesystems.com/demo/>*
>
>
> 

--------------ABBB6DBB87896A15969073C3
Content-Type: multipart/related;
 boundary="------------B29BBF03C7041DAEEA080DEF"

--------------B29BBF03C7041DAEEA080DEF
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-1252">
  </head>
  <body>
    AFAIK there is no way to mount something without root credentials.<br>
    <div class="moz-forward-container">
      <p> fakeroot/pseudo is intercepting some calls before they will
        reach the kernel, but mounting isn't a supported option - it
        just makes all child processes think they running under uid 0.</p>
      <p>What you could do is try to find an option (<a class="moz-txt-link-freetext" href="https://btrfs.wiki.kernel.org/index.php/Manpage/mkfs.btrfs" moz-do-not-send="true">https://btrfs.wiki.kernel.org/index.php/Manpage/mkfs.btrfs</a>)
        which does what you want directly while creating the image.</p>
      <p>These options should go then to a variable called
        EXTRA_IMAGECMD.<br>
      </p>
      <p><br>
      </p>
      <div class="moz-cite-prefix">On 28.03.20 16:30, Edson Seabra
        wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:BN6PR19MB3249AD0F7FD9FD9CEFD2BEA8F7CD0@BN6PR19MB3249.namprd19.prod.outlook.com">
        
        <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> Hi all.</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> I'm trying to compress
          a btrfs rootfs</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> I added&nbsp; in &quot;<span style="font-family: Calibri, Arial, Helvetica, sans-serif;
            background-color: rgb(255, 255, 255); display: inline
            !important">image_types.bbclass:</span>IMAGE_CMD_btrfs ()&quot;&nbsp;
          two commands:</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> 1) mount the btrfs
          image after mkfs.btrfs</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> 2) btrfs filesystem
          defrag &#43; compress option</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> But the command mount
          fails:</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> mount:
/home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux/nodegrid/1.0-r0/deploy-nodegrid-image-complete/temp_btrfs:
          failed to setup loop device for
/home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux/nodegrid/1.0-r0/deploy-nodegrid-image-complete/nodegrid-genericx86-64-20200328134151.rootfs.btrfs.</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> I saw in image.bbclass
          the creation of do_image_btrfs task with flag 'fakeroot'.</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <div style="margin: 0px; font-size: 12pt; font-family:
            Calibri, Arial, Helvetica, sans-serif"> <br>
            ====== image.bbclass ====</div>
          <div style="margin: 0px; font-size: 12pt; font-family:
            Calibri, Arial, Helvetica, sans-serif"> <span style="margin: 0px">&nbsp; &nbsp; &nbsp; &nbsp; task = &quot;do_image_%s&quot; %
              t.replace(&quot;-&quot;, &quot;_&quot;).replace(&quot;.&quot;, &quot;_&quot;)<br>
            </span>
            <div style="margin: 0px"><br>
            </div>
            <div style="margin: 0px">&nbsp; &nbsp; &nbsp; &nbsp; d.setVar(task,
              '\n'.join(cmds))<br>
            </div>
            <div style="margin: 0px">&nbsp; &nbsp; &nbsp; &nbsp; d.setVarFlag(task, 'func',
              '1')<br>
            </div>
            <div style="margin: 0px">&nbsp; &nbsp; &nbsp; &nbsp; d.setVarFlag(task, '<span style="margin: 0px; color: rgb(12, 136, 42)">fakeroot</span>',
              '1')<br>
            </div>
            <span style="margin: 0px"></span>=======================</div>
          <div style="margin: 0px; font-size: 12pt; font-family:
            Calibri, Arial, Helvetica, sans-serif"> <br>
          </div>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> would the fakeroot
          flag allow do_image_btrfs execute commands that requires root
          privilege ?</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> If not what would be
          the way to execute the mount command ?</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> I tried &quot;pseudo mount&quot;
          but it failed same way...</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> Thanks in advance.</div>
        <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div>
          <div style="font-family: Calibri, Arial, Helvetica,
            sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"> Edson.</div>
          <div style="font-family: Calibri, Arial, Helvetica,
            sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"> <br>
          </div>
          <div id="Signature">
            <div id="divtagdefaultwrapper" dir="ltr" style="font-size:12pt; color:#000000;
              background-color:#FFFFFF;
              font-family:Calibri,Arial,Helvetica,sans-serif">
              <div class="x_MsoNormal" style="margin:0px 0in
                0.000133333px; font-size:11pt;
                font-family:Calibri,sans-serif; color:rgb(33,33,33)"> <a style="margin:0px; font-size:11pt;
                  font-family:Calibri,sans-serif; text-align:start;
                  background-color:rgb(255,255,255)" moz-do-not-send="true"><font size="2" face="Source
                    Sans Pro" color="#0BABC6"><span style="margin:0px;
                      font-size:10pt"><b>Edson Seabra</b></span></font></a><br>
              </div>
              <p class="x_MsoNormal" style="margin-top:0px;
                margin-bottom:0px; margin:0in 0in 0.0001pt;
                font-size:11pt; font-family:Calibri,sans-serif;
                color:rgb(33,33,33)"> <span style="font-size:10pt;
                  color:rgb(31,73,125)">Principal Engineer</span></p>
              <p class="x_MsoNormal" style="margin-top:0px;
                margin-bottom:0px; margin:0in 0in 0.0001pt;
                font-size:11pt; font-family:Calibri,sans-serif;
                color:rgb(33,33,33)"> <span style="font-size:10pt;
                  color:rgb(31,73,125)">M &#43;1 510 579 0843</span></p>
              <div><span style="font-size:10pt; font-family:&quot;Source
                  Sans Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)"><b>E&nbsp;&nbsp;&nbsp;</b></span><a href="mailto:alvin.chan@zpesystems.com" target="_blank" rel="noopener noreferrer" id="LPNoLP" style="font-size:12pt; font-family:Calibri" moz-do-not-send="true"><span style="font-size:10pt;
                    font-family:&quot;Source Sans
                    Pro&quot;,serif,EmojiFont; color:rgb(5,99,193)">edson.seabra@zpesystems.com</span></a><br>
              </div>
              <div>
                <p style="margin-top:0px; margin-bottom:0px; margin:0in
                  0in 0.0001pt; font-size:12pt; font-family:Calibri"> <span style="font-size:10pt; font-family:&quot;Source Sans
                    Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)"></span></p>
                <p style="margin-top:0px; margin-bottom:0px; margin:0in
                  0in 0.0001pt; font-size:12pt; font-family:Calibri"> <span style="font-size:10pt; font-family:&quot;Source Sans
                    Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)"><img class="EmojiInsert" alt="1506169147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c90-8c28-e559c26bc7d1.png" style="" data-outlook-trace="F:1|T:1" src="cid:part4.39EAFDFF.CBB4CFC4@outlook.com"><br>
                    <span class="contextualExtensionHighlight
                      ms-font-color-themePrimary
                      ms-border-color-themePrimary ident_378_416" tabindex="0">46757 Fremont Blvd., Fremont, CA
                      94538</span><br>
                  </span><a href="https://www.zpesystems.com/" target="_blank" rel="noopener noreferrer" id="LPNoLP" moz-do-not-send="true"><b><span style="font-size:10pt; font-family:&quot;Source
                        Sans Pro&quot;,serif,EmojiFont;
                        color:rgb(96,109,117)">zpesystems.com</span></b></a><b><span style="font-size:10pt; font-family:&quot;Source
                      Sans Pro&quot;,serif,EmojiFont;
                      color:rgb(96,109,117)">&nbsp;|&nbsp;</span></b><b><span style="font-size:10pt; font-family:&quot;Source
                      Sans Pro&quot;,serif,EmojiFont;
                      color:rgb(96,109,117)"><a href="https://www.zpesystems.com/demo/" target="_blank" rel="noopener noreferrer" id="LPNoLP" moz-do-not-send="true">Request a
                        Nodegrid Demo</a></span></b></p>
              </div>
            </div>
          </div>
        </div>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
    </div>
  </body>
</html>

--------------B29BBF03C7041DAEEA080DEF
Content-Type: image/png;
 name="Outlook-1506169147.png"
Content-Transfer-Encoding: base64
Content-ID: <part4.39EAFDFF.CBB4CFC4@outlook.com>
Content-Disposition: inline;
 filename="Outlook-1506169147.png"

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

--------------B29BBF03C7041DAEEA080DEF--

--------------ABBB6DBB87896A15969073C3--
