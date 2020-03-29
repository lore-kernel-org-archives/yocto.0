Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.92.75.65])
 by mx.groups.io with SMTP id smtpd.web12.27316.1585489476384456426
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 06:44:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=jpN5QWhM;
 spf=pass (domain: outlook.com, ip: 40.92.75.65, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPLOVNU0jKZNKKCKVxicj1klqetq1swzpw8HLxtW+MEiAQhrdLyi+/BEbpFthUeMor64JIy73+4ECcaYAMAgNowGoqBjAtO/Kx8SbkPT17Ot2anHwyRxPtBareNimTxI5tMONQKQmra+RJDYjBbHM55Vmy46mQ917rRScI1UH6510ai+PrsboOvASxE5tSyJf0pCnpKcv2fFk92QbNaTQoUdvR6+/U7/z6Qk0q+3V5AaMtdacooW8C5I67zAzn9IC2JQ3b39JPcZ270Jnk2t4gNkCQKPhDzIAv0Ou4ZiFA2O5EDrfTVMPgRpQkC59InwRAaC77iyynWV4ZLST7A/2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VXTwdO5RLHnWX+GPdQdP4dHYIiGMVqu81XBq0Q++XbA=;
 b=LDsedh9gCCm6tx3gfiJLy8xmJdDNMwGea9xSh4H1EPOBEN8gBU30tVNAum0S+1P97edj9HG9g9orx/J94e1nhq37e7/VZFAHtUkoIb9mAbtPQBuwnXzaA7DOfPR7mbCsULVwm4+wM72QH0XS2SeRsMFBWpxpJIzAXIf1pfasbS7EIpITyYJe2YQBR0YhpYep1c3+rS1Q2EReiC9z/yK2mcGWLJNPe+lVGGgu0Fmnmho7mZFnKHpEC5VG/5DWsqtwVEECj/MiLY0aRMxsxnhkTMXL2kGcQA+5TtPQk/mH3i7R2leOHHKD1Hikr+j6Ma1ySc/D96eoeNFvpWYBXQEotg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VXTwdO5RLHnWX+GPdQdP4dHYIiGMVqu81XBq0Q++XbA=;
 b=jpN5QWhM8ichoVQieGZrqJWBkY5Jg2n6SeZG6IkJsegecSWHrZZ0CiXt/7EXlpkKfsEgPl3rD1CsZGNcLiTPal870b7uofmtk9g6a3ED+3eZhsb84Q5NGKPLNTVfon090vQXmTtB/JtcbzppGmCjqaYEdjiyiC9hsuz7kN42FmjySPMyPE0/7/UTl48hiT1G7RXVUnV6cF3EZd16XaP6bL4V0GI3taVfi6oTFuhBOA58gxaLISUlnapcp3YO6rD3p8Ouc+rBqrcFKoZaiCT/BZU601xWVbZRB9ELBxpWDuXDK79ja7UQysVTDqZRE3izKAwns+0IBsXpJB5WK26IpA==
Received: from DB3EUR04FT037.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0c::43) by
 DB3EUR04HT117.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0c::195)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Sun, 29 Mar
 2020 13:44:31 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.152.24.55) by
 DB3EUR04FT037.mail.protection.outlook.com (10.152.25.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sun, 29 Mar 2020 13:44:31 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:BBA3F3B8C59AB7FFEA50851CBCFE940E3FE2B9417D6001817DB9C5B3B9EAFAFE;UpperCasedChecksum:45D503EF0532A44EF88E39227495AC3D9B2CB51785ADC2E4904F70A5921533C4;SizeAsReceived:8809;Count:48
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Sun, 29 Mar 2020
 13:44:30 +0000
Subject: Re: [yocto] patching an .inc file?
To: yocto@lists.yoctoproject.org
References: <VI1PR05MB4286F209083FA6D3181A93DCA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <19211.1585489105648561652@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB428672D5AF931AB4640CB5E7A8CA0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Sun, 29 Mar 2020 15:44:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <19211.1585489105648561652@lists.yoctoproject.org>
X-ClientProxiedBy: AM6PR05CA0012.eurprd05.prod.outlook.com
 (2603:10a6:20b:2e::25) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <e4a11ae4-d3ca-3ebc-7de1-b929c7ab2a37@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (79.215.5.195) by AM6PR05CA0012.eurprd05.prod.outlook.com (2603:10a6:20b:2e::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.18 via Frontend Transport; Sun, 29 Mar 2020 13:44:29 +0000
X-Microsoft-Original-Message-ID: 
 <e4a11ae4-d3ca-3ebc-7de1-b929c7ab2a37@outlook.com>
X-TMN: [mt/XwLxnQsA/2DOmOre8rsu9G0cozmGk]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 6308bc99-0c67-447e-3508-08d7d3e74e55
X-MS-TrafficTypeDiagnostic: DB3EUR04HT117:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4Z/JQE+qsqaPgUQJdMPPun/sWZDy5+o8cUPWInOEluNEfb8DxAoQEkgyozoq4wpmYT9jt+fWOsVJJ28RuJnH3pMIRLTm/g5gIoZVi5sBalNfmOdZTsQfzJTznjdAEAtMwJrn3WoSps+2nWAAbAAldgwvR2VwDtzkmWka2kN59inWEHN7HppPfklf/Ax1n9R/uQ15FN+Db2BT6p7EImelGaxL+0qCjl2KzR6vyTLVQ7I=
X-MS-Exchange-AntiSpam-MessageData: 
	YWwjizCGTs3eEx+EEvd1LmlL1SKHKvYUNL24ofZ+G4q0R3rLXDsmVgNiWysZ1mOx65HaBj9kYernP9agfDF3+WY1frJkiBkk73tgOAVloqj6miBJTFeObewDKwwQZ4boFI2/RoPJDYVlKOMijIRn4A==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6308bc99-0c67-447e-3508-08d7d3e74e55
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2020 13:44:30.6124
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3EUR04HT117
Content-Type: multipart/alternative;
 boundary="------------B9CCE47906DB1A76DEDCA2F9"
Content-Language: en-US

--------------B9CCE47906DB1A76DEDCA2F9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Derek,

or maybe I'm mistaken about the layer priority and it's the order within 
the bblayer.conf that does determine that (I tend to forget which one 
applies to what stage).

Maybe you could try to move your layer to the end of the bblayer.conf 
list (actually that was the case when I tested it yesterday) and see if 
that is working for you.

As pointed out in the other reply - only do this as a matter of last 
resort and if there is no other possibility left.

On 29.03.20 15:38, Derek Dresser wrote:
> Konrad,
> Thanks for the reply.  I understand this is temporary until the 
> overridden file is updated.  I appreciate you pointing out using layer 
> priority as an option.  Unfortunately, I can't seem to get this to 
> work using priority.  I'm afraid I might be missing something.  I will 
> try to illustrate with an example.
>
> Here are my layers, note "meta-acadia" is priority 16.  This is where 
> the override file is.  My understanding is a higher priority takes 
> precedence.  I did try setting my layer priority to 4, but had the 
> same results.
>
> pokyuser@9cf512f73142:/yocto-src/poky$ bitbake-layers show-layers
> NOTE: Starting bitbake server...
> layer                 path                               priority
> ==========================================================================
> meta /yocto-src/poky/meta                      5
> meta-poky  /yocto-src/poky/meta-poky                 5
> meta-yocto-bsp /yocto-src/poky/meta-yocto-bsp            5
> meta-oe  /yocto-src/poky/meta-openembedded/meta-oe  6
> meta-perl  /yocto-src/poky/meta-openembedded/meta-perl  6
> meta-python  /yocto-src/poky/meta-openembedded/meta-python  7
> meta-networking  /yocto-src/poky/meta-openembedded/meta-networking  5
> meta-filesystems /yocto-src/poky/meta-openembedded/meta-filesystems  6
> meta-security  /yocto-src/poky/meta-security             8
> meta-xilinx-bsp  /yocto-src/poky/meta-xilinx/meta-xilinx-bsp  5
> meta-xilinx-standalone 
> /yocto-src/poky/meta-xilinx/meta-xilinx-standalone  5
> meta-acadia  /yocto-src/poky/meta-acadia               16
> meta-idexx-distro  /yocto-src/poky/meta-company-distro         6
> meta-neural-network  /yocto-src/poky/meta-neural-network       7
> meta-selinux /yocto-src/poky/meta-selinux              5
> meta-cgl-common  /yocto-src/poky/meta-cgl/meta-cgl-common  7
>
> and the override file diff (same path within my layer)
>
> pokyuser@9cf512f73142:/yocto-src/poky$ diff 
> meta/conf/machine/include/microblaze/feature-microblaze-versions.inc 
> meta-acadia/conf/machine/include/microblaze/feature-microblaze-versions.inc
> 46a47
> > TUNEVALID[v11.0] = "MicroBlaze version 11.0"
> 62a64
> > TUNECONFLICTS[v11.0] = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 
> v9.1 v9.2 v9.3 v9.4 v9.5 v9.6 v10.0"
>
> here's the error
>
>     Toolchain tunings invalid:
> Tuning 'microblaze' has the following errors:
> Feature 'v11.0' is not defined.
>
> However, if I copy my override file into the "meta" layer, I can build 
> without errors.
>
> pokyuser@9cf512f73142:/yocto-src/poky$ cp 
> meta-acadia/conf/machine/include/microblaze/feature-microblaze-versions.inc 
> meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
>
> Is there something else I'm missing to make the priorty override work?
>
> Thank you.
>
>
> 

--------------B9CCE47906DB1A76DEDCA2F9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi Derek,</p>
    <p>or maybe I'm mistaken about the layer priority and it's the order
      within the bblayer.conf that does determine that (I tend to forget
      which one applies to what stage).</p>
    <p>Maybe you could try to move your layer to the end of the
      bblayer.conf list (actually that was the case when I tested it
      yesterday) and see if that is working for you.<br>
    </p>
    <p>As pointed out in the other reply - only do this as a matter of
      last resort and if there is no other possibility left.</p>
    <div class="moz-cite-prefix">On 29.03.20 15:38, Derek Dresser wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:19211.1585489105648561652@lists.yoctoproject.org">
      
      Konrad,<br>
      Thanks for the reply.&nbsp; I understand this is temporary until the
      overridden file is updated.&nbsp; I appreciate you pointing out using
      layer priority as an option.&nbsp; Unfortunately, I can't seem to get
      this to work using priority.&nbsp; I'm afraid I might be missing
      something.&nbsp; I will try to illustrate with an example.<br>
      <br>
      Here are my layers, note &quot;meta-acadia&quot; is priority 16.&nbsp; This is
      where the override file is.&nbsp; My understanding is a higher priority
      takes precedence.&nbsp; I did try setting my layer priority to 4, but
      had the same results.<br>
      <br>
      <div style="padding-left: 30px;">pokyuser@9cf512f73142:/yocto-src/poky$
        bitbake-layers show-layers</div>
      <div style="padding-left: 30px;">NOTE: Starting bitbake server...</div>
      <div style="padding-left: 30px;">layer&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;path&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; priority</div>
      <div style="padding-left: 30px;">==========================================================================</div>
      <div style="padding-left: 30px;">meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        /yocto-src/poky/meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</div>
      <div style="padding-left: 30px;">meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5</div>
      <div style="padding-left: 30px;">meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp;
        /yocto-src/poky/meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</div>
      <div style="padding-left: 30px;">meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-openembedded/meta-oe&nbsp; 6</div>
      <div style="padding-left: 30px;">meta-perl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-openembedded/meta-perl&nbsp; 6</div>
      <div style="padding-left: 30px;">meta-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-openembedded/meta-python&nbsp; 7</div>
      <div style="padding-left: 30px;">meta-networking&nbsp; &nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-openembedded/meta-networking&nbsp; 5</div>
      <div style="padding-left: 30px;">meta-filesystems&nbsp; &nbsp; &nbsp;
        /yocto-src/poky/meta-openembedded/meta-filesystems&nbsp; 6</div>
      <div style="padding-left: 30px;">meta-security&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-security&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8</div>
      <div style="padding-left: 30px;">meta-xilinx-bsp&nbsp; &nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-xilinx/meta-xilinx-bsp&nbsp; 5</div>
      <div style="padding-left: 30px;">meta-xilinx-standalone&nbsp;
        /yocto-src/poky/meta-xilinx/meta-xilinx-standalone&nbsp; 5</div>
      <div style="padding-left: 30px;">meta-acadia&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-acadia&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16</div>
      <div style="padding-left: 30px;">meta-idexx-distro&nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-company-distro&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6</div>
      <div style="padding-left: 30px;">meta-neural-network&nbsp;
        &nbsp;/yocto-src/poky/meta-neural-network&nbsp; &nbsp; &nbsp; &nbsp;7</div>
      <div style="padding-left: 30px;">meta-selinux&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        /yocto-src/poky/meta-selinux&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</div>
      <div>meta-cgl-common&nbsp; &nbsp; &nbsp;
        &nbsp;/yocto-src/poky/meta-cgl/meta-cgl-common&nbsp; 7<br>
        <br>
        and the override file diff (same path within my layer)<br>
        <br>
        <div style="padding-left: 30px;">pokyuser@9cf512f73142:/yocto-src/poky$
          diff
          meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
meta-acadia/conf/machine/include/microblaze/feature-microblaze-versions.inc</div>
        <div style="padding-left: 30px;">46a47</div>
        <div style="padding-left: 30px;">&gt; TUNEVALID[v11.0] =
          &quot;MicroBlaze version 11.0&quot;</div>
        <div style="padding-left: 30px;">62a64</div>
        <div style="padding-left: 30px;">&gt; TUNECONFLICTS[v11.0] =
          &quot;v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2 v9.3 v9.4
          v9.5 v9.6 v10.0&quot;</div>
        <br>
        here's the error<br>
        <br>
        <div style="padding-left: 30px;">&nbsp; &nbsp; Toolchain tunings invalid:</div>
        <div style="padding-left: 30px;">Tuning 'microblaze' has the
          following errors:</div>
        <div style="padding-left: 30px;">Feature 'v11.0' is not defined.</div>
        <br>
        However, if I copy my override file into the &quot;meta&quot; layer, I can
        build without errors.<br>
        <br>
        pokyuser@9cf512f73142:/yocto-src/poky$ cp
meta-acadia/conf/machine/include/microblaze/feature-microblaze-versions.inc
meta/conf/machine/include/microblaze/feature-microblaze-versions.inc<br>
        <br>
        Is there something else I'm missing to make the priorty override
        work?<br>
        <br>
        Thank you.<br>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------B9CCE47906DB1A76DEDCA2F9--
