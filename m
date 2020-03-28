Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.92.65.64])
 by mx.groups.io with SMTP id smtpd.web11.16655.1585432798938659616
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 14:59:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=Qmt4W+Qp;
 spf=pass (domain: outlook.com, ip: 40.92.65.64, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jqrx8BP7HF+LwJaVJd3HRzTsZUuId45XTmJ+6uxIhtDKwpPcHNvyuHg6/HAi3iYuXbZSlBgXwmECRsagnEvmnw6ueuRPVGxT099AwF5jv6oxm9YAnIkft23ljfS7ARRsUwDKI/RU5jr8ehT7MnAhndydmecAZHWCP41vVzWxQ49aYmfJfiB9XtUvE1vb0yots2pJEZ9/jmqbLui3CbUfRSbjEFKreXUg5NO9Vra/q2xjvoEv0/m0PvgncT+u4Dm1FFZMuBCbbbZu+dtDM0BoWcvUjkbuaH+OG+EbapNXaQhy2PM8S3QEZBcXQl4dEbclk1wbBEFYkYI3MhcgGHdKsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v16rgsS8RNJAJJIrS/ay8k4Ip+kVQiyN9GHbkbVfJ9Y=;
 b=SmG9l4WjV5BoZasq77HPW8Zg4dWsdD78V0W6vvM/H1jKnaG90ISQpWqdTembgMd1KQPr6I+j9I7ajZ9EmE/LIkAqXe4QhA5JFzs/ooCZ7wgsvW92PqmC2SPzqu50Zmds6ahHukJcCGKuyitpUvdwsOMAfexbJGRRpU6isyZpkhl2OegQSB453Q9gPA5aB+NHxnfYQ/ZLwwc1tSDSfCTsTom+Ig5+IUul5N/11B9LjCxGIPbHmmREVEvSaKevptf2cH7TR4MzmmscqX5mFrwsmGY77ZNsa9sAiJIQjlXb47AJA9UniksA9IiIdf/IW8H38qvENQDfl8L2g0i+xOS+/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v16rgsS8RNJAJJIrS/ay8k4Ip+kVQiyN9GHbkbVfJ9Y=;
 b=Qmt4W+Qpzk6V0mgVPMJCuFaRQuYv+vFjVVJuv/xIOjJHiASnHWyevs2s5E8nBeUKhOd7q/MopIVMm6PEi3EnLtI2mhGAk7mtDkwiTM9+i4ic3cGOdqXULAIKwRwm6t22W62NMbtE8sRIVVjZ3lXuZBEGZ9nM6/2h/urAlSgLlG/75WYjuKkV12tccgeu5pj0AKP3iythybr3SpeHHl5UhGz5MEQ0nYh2LzzS0SK+3Uv6ZyufDKTh0Wh0kHKnkVUZExsuwIOCqKuaczwvwPja3JexoCiYgwFTWXreXP1jW5e7l5qwmq/ln8fksIwwZoQ2aG67bgMDGiq34mOrZB5XXg==
Received: from DB5EUR01FT064.eop-EUR01.prod.protection.outlook.com
 (2a01:111:e400:7e1a::52) by
 DB5EUR01HT011.eop-EUR01.prod.protection.outlook.com (2a01:111:e400:7e1a::122)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Sat, 28 Mar
 2020 21:59:56 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.152.4.58) by
 DB5EUR01FT064.mail.protection.outlook.com (10.152.5.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sat, 28 Mar 2020 21:59:56 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:C9FBA5AF70A8B9044023D74B0D7E72B708EC8FA5D2971C41756E3E51CA4ECB59;UpperCasedChecksum:0439A10FCE294CC85FED0757D28F0145BC8A8AB5AE27AC2B3DC4D98621F6D58C;SizeAsReceived:8849;Count:49
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 21:59:56 +0000
Subject: Re: [yocto] patching an .inc file?
To: Derek Dresser <dresser.net@gmail.com>
References: <CADmsHKcYEineQpg5w7k=p8-ygVZji-RrOdWviMc8WP54p9RPVA@mail.gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB4286F209083FA6D3181A93DCA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Sat, 28 Mar 2020 22:59:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <CADmsHKcYEineQpg5w7k=p8-ygVZji-RrOdWviMc8WP54p9RPVA@mail.gmail.com>
X-ClientProxiedBy: AM7PR03CA0003.eurprd03.prod.outlook.com
 (2603:10a6:20b:130::13) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <c8a7049a-2a6a-e6dc-3955-481c6f1fba05@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.87.90) by AM7PR03CA0003.eurprd03.prod.outlook.com (2603:10a6:20b:130::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19 via Frontend Transport; Sat, 28 Mar 2020 21:59:55 +0000
X-Microsoft-Original-Message-ID: 
 <c8a7049a-2a6a-e6dc-3955-481c6f1fba05@outlook.com>
X-TMN: [sm1CYUTy3N14DfxL19P/TyN+WH/WD8SJ]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 5188ad59-aeee-42b5-7dec-08d7d3635a16
X-MS-TrafficTypeDiagnostic: DB5EUR01HT011:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	y3b1GFNYVNal/If0jfMmux/W54mGbyGDusvFBPHESyL8LQT2czXGfqQ9Ug6xilUDMfQIoQnFpZFRZm0JmMgIEJO8OIOV18ubS7cCqTgOeVnjpWMCRAd8Lxgb6rLapZ0vmgFwG+KfJSsmEQE/jW4UffLPpf8bi5rnIMXi5vny9K5hZDVAyoxzaDWxTZ/1t3inBtJ7317hXru4NAvyTtHbuCIKhjQKjbBEsCz/N2gQO4M=
X-MS-Exchange-AntiSpam-MessageData: 
	j9r9nAuSlS8wUFJrRwwtqSIo6U7UBvprd0GiWfSmpgT9/ngy0SmriLASbasnk8Wd0A9AxFalMtP5rRRytVyDH1PEqrHKC2oTMfaQy8prwlJ7tZ3sz1U7vbMPnND6i9FUHJVx1XeEN0HBaMt1a6oW4A==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5188ad59-aeee-42b5-7dec-08d7d3635a16
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 21:59:56.5249
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT011
Content-Type: multipart/alternative;
 boundary="------------1131FC5E25977BA24803EB41"
Content-Language: en-US

--------------1131FC5E25977BA24803EB41
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

What you could do is to override the file in a layer with higher priority.
Just create the same file under the same path (e.g. 
<your-layer>/conf/machine/include/microblaze/feature-microblaze-versions.inc) 
and apply the changes there - this should help for now.

But be aware that this way could lead to trouble in case the overridden 
file does change on an update - so use with caution.
Unfortunately you can't BBMASK the original inc file, you have to rely 
on layer prio.

On 28.03.20 22:42, Derek Dresser wrote:
> Hello,
>
> I am trying to update a build for a custom board based on the Xilinx 
> zcu102-zynqmp (using meta-xilinx)  to 'zeus' and am getting the 
> following error message:
>
>     Toolchain tunings invalid:
>     Tuning 'microblaze' has the following errors:
>     Feature 'v11.0' is not defined.
>
>
> I have tracked this down to the following file:
>
>     poky/meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
>
> Editing this file allows me to build without errors.  I'd like to 
> apply a patch to this file (or override the file with an edited version.)
>
>     diff --git
>     meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
>     meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
>     index 955674fff9..3221e2aab7 100644
>     ---
>     meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
>     +++
>     meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
>     @@ -44,6 +44,7 @@ TUNEVALID[v9.4]  = "MicroBlaze version 9.4"
>      TUNEVALID[v9.5]  = "MicroBlaze version 9.5"
>      TUNEVALID[v9.6]  = "MicroBlaze version 9.6"
>      TUNEVALID[v10.0] = "MicroBlaze version 10.0"
>     +TUNEVALID[v11.0] = "MicroBlaze version 11.0"
>
>      # Version conflict matrix
>      TUNECONFLICTS[v8.00] = ""
>     @@ -60,6 +61,7 @@ TUNECONFLICTS[v9.4]  = "v8.00 v8.10 v8.20 v8.30
>     v8.40 v8.50 v9.0 v9.1 v9.2 v9.3"
>      TUNECONFLICTS[v9.5]  = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0
>     v9.1 v9.2 v9.3 v9.4"
>      TUNECONFLICTS[v9.6]  = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0
>     v9.1 v9.2 v9.3 v9.4 v9.5"
>      TUNECONFLICTS[v10.0] = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0
>     v9.1 v9.2 v9.3 v9.4 v9.5 v9.6"
>     +TUNECONFLICTS[v11.0] = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0
>     v9.1 v9.2 v9.3 v9.4 v9.5 v9.6 v10.0"
>
>      # Version flags
>      TUNE_CCARGS += "-mcpu=${@microblaze_current_version(d, True)}"
>
> I know how to apply a patch against a recipe source file, but not this 
> toolchain tuning include file.   How can I accomplish this without 
> editing the files in openembedded-core?   I'd like to override or 
> patch this in my own layer.
>
> Thanks,
> Derek
>
> 

--------------1131FC5E25977BA24803EB41
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>What you could do is to override the file in a layer with higher
      priority.<br>
      Just create the same file under the same path (e.g.
&lt;your-layer&gt;/conf/machine/include/microblaze/feature-microblaze-versions.inc)
      and apply the changes there - this should help for now.<br>
      <br>
      But be aware that this way could lead to trouble in case the
      overridden file does change on an update - so use with caution.<br>
      Unfortunately you can't BBMASK the original inc file, you have to
      rely on layer prio.<br>
    </p>
    <div class="moz-cite-prefix">On 28.03.20 22:42, Derek Dresser wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CADmsHKcYEineQpg5w7k=p8-ygVZji-RrOdWviMc8WP54p9RPVA@mail.gmail.com">
      
      <div dir="ltr">Hello,
        <div><br>
        </div>
        <div>I am trying to update a build for a custom board based on
          the Xilinx zcu102-zynqmp (using meta-xilinx)&nbsp; to 'zeus' and am
          getting the following error message:</div>
        <div><br>
        </div>
        <blockquote style="margin:0 0 0 40px;border:none;padding:0px">
          <div>Toolchain tunings invalid:</div>
          <div>Tuning 'microblaze' has the following errors:</div>
          <div>Feature 'v11.0' is not defined.</div>
        </blockquote>
        <br>
        <div>I have tracked this down to the following file:</div>
        <div><br>
        </div>
        <div>
          <blockquote style="margin:0 0 0 40px;border:none;padding:0px">
            <div>poky/meta/conf/machine/include/microblaze/feature-microblaze-versions.inc</div>
            <div><br>
            </div>
          </blockquote>
          Editing this file allows me to build without errors.&nbsp; I'd like
          to apply a patch to this file (or override the file with an
          edited version.)</div>
        <div><br>
        </div>
        <blockquote style="margin:0 0 0 40px;border:none;padding:0px">
          <div>diff --git
            meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
meta/conf/machine/include/microblaze/feature-microblaze-versions.inc</div>
          <div>index 955674fff9..3221e2aab7 100644</div>
          <div>---
            meta/conf/machine/include/microblaze/feature-microblaze-versions.inc</div>
          <div>&#43;&#43;&#43;
            meta/conf/machine/include/microblaze/feature-microblaze-versions.inc</div>
          <div>@@ -44,6 &#43;44,7 @@ TUNEVALID[v9.4] &nbsp;= &quot;MicroBlaze version
            9.4&quot;</div>
          <div>&nbsp;TUNEVALID[v9.5] &nbsp;= &quot;MicroBlaze version 9.5&quot;</div>
          <div>&nbsp;TUNEVALID[v9.6] &nbsp;= &quot;MicroBlaze version 9.6&quot;</div>
          <div>&nbsp;TUNEVALID[v10.0] = &quot;MicroBlaze version 10.0&quot;</div>
          <div>&#43;TUNEVALID[v11.0] = &quot;MicroBlaze version 11.0&quot;</div>
          <div><br>
          </div>
          <div>&nbsp;# Version conflict matrix</div>
          <div>&nbsp;TUNECONFLICTS[v8.00] = &quot;&quot;</div>
          <div>@@ -60,6 &#43;61,7 @@ TUNECONFLICTS[v9.4] &nbsp;= &quot;v8.00 v8.10
            v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2 v9.3&quot;</div>
          <div>&nbsp;TUNECONFLICTS[v9.5] &nbsp;= &quot;v8.00 v8.10 v8.20 v8.30 v8.40
            v8.50 v9.0 v9.1 v9.2 v9.3 v9.4&quot;</div>
          <div>&nbsp;TUNECONFLICTS[v9.6] &nbsp;= &quot;v8.00 v8.10 v8.20 v8.30 v8.40
            v8.50 v9.0 v9.1 v9.2 v9.3 v9.4 v9.5&quot;</div>
          <div>&nbsp;TUNECONFLICTS[v10.0] = &quot;v8.00 v8.10 v8.20 v8.30 v8.40
            v8.50 v9.0 v9.1 v9.2 v9.3 v9.4 v9.5 v9.6&quot;</div>
          <div>&#43;TUNECONFLICTS[v11.0] = &quot;v8.00 v8.10 v8.20 v8.30 v8.40
            v8.50 v9.0 v9.1 v9.2 v9.3 v9.4 v9.5 v9.6 v10.0&quot;</div>
          <div><br>
          </div>
          <div>&nbsp;# Version flags</div>
          <div>&nbsp;TUNE_CCARGS &#43;= &quot;-mcpu=${@microblaze_current_version(d,
            True)}&quot;</div>
          <div><br>
          </div>
        </blockquote>
        I know how to apply a patch against a recipe source file, but
        not this toolchain tuning include file.&nbsp; &nbsp;How can I accomplish
        this without editing the files in openembedded-core?&nbsp; &nbsp;I'd like
        to override or patch this in my own layer.
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Derek</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------1131FC5E25977BA24803EB41--
