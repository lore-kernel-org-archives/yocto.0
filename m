Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.92.89.69])
 by mx.groups.io with SMTP id smtpd.web12.621.1585771746387753024
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 13:09:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=OYwFaizD;
 spf=pass (domain: outlook.com, ip: 40.92.89.69, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PxbOPDl8JZuq9h/3lv5cKP4tZVMhCJKo62nqgmWeYk2Fb8A0TDJgx1bWqfM5gCpbvA1EGYZnwYz9EB9ZhGHaojYyRsIYSAbC1r9Vsev3R4CXP8d2QxDwn6ioD3A3PYSAJFoa6RMegUec5NP/kHgjGauzqvdrNnYJ3Lgncn7bQmDDaEerUo29H8agfpTkFJWjQtV6LKfzv8YjW4x9rHXzBvoSo2t6pynk+Q6/V9QpqYJNSkwZyJ2tslR/PoSyndBlCjjJOdVRSQ0BOQp0/rnlzuypmVV3lhSni4OXcOJ3oqpOlKJgGGQlTq1phs0/qYJpHUAczS9m70WQNfVolmBqhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e2c2AB39HRV+2LbBa90tvVKst2OZ4EYwCn1KexmLB/Q=;
 b=BqghI20XnxUe3Hkb0S+flnO1Bp2W24Mhthc+AE4t6mXFEEzbVYv7uEDemzV9yhpkIxj60oqcyOxFAG+WGrawtkSrsH0E+e/1wIFYa4GEiUga1fWLTsI421NalNNKWgBPXIzq5XFu8N7IpUq5X55Cn9v96AMMX/YamrvtahHva/XB44dUe+qhQrn2KvyDRdCHMUyXZ9K+xNCt8v1JBWPthhMpz+VaFo4LMGTBn12O0ADkUldlYscCc1QGRZ+YtQ5/MHJQDM92DbCKYvHzpIbgj3TtFAqDEgZMIfZ4ux1RXfeLrriUdFewMA7PSMXPxSYOqL5/crBVr006/6nMPXr2pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e2c2AB39HRV+2LbBa90tvVKst2OZ4EYwCn1KexmLB/Q=;
 b=OYwFaizDCP6PWZa8ip1SNHFNOt8O250ybew/8kDNZE7T/k8DyxkSHAfVqT84H/rgtJ1kAyE8vpj+A/B3on3nGjISfwIvW0Pkdhijvenv90ZxZegO+CfucMT/fEJgd12gmi/PAkyCXOQ0mAyy8APlqiii+3zGdJmaM0VonL0msd34KPgeUVRa2PwXCddCR50ZUxxsR4E6ovSPIjkKCO57ap+7v5rDq4IxXPUpKQo9lsDN79oeZkj9zyVao35v9IQWrSuCHP3ZrabH58BkGEXCXsvgWtmd/9SYQ/hJXG9yIY7QHICDDx1o+f7FVlLyjwjhufSiTHA1UQjHHn3agMk29g==
Received: from AM6EUR05FT040.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc11::41) by
 AM6EUR05HT222.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc11::323)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Wed, 1 Apr
 2020 20:09:04 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.233.240.51) by
 AM6EUR05FT040.mail.protection.outlook.com (10.233.241.165) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15 via Frontend Transport; Wed, 1 Apr 2020 20:09:04 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:86C7A2C7C9CAC6F2367EDAD9AC9ED3A0CAAF8430CEC6AA651878946F7F320089;UpperCasedChecksum:F3A61C14A28B3C1F51CEED1A54FBDABE5D9662FF3A8972B854696E2041D22B02;SizeAsReceived:9015;Count:49
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 20:09:04 +0000
Subject: Re: [yocto] python argparse or alternate method
To: Joel Winarske <joel.winarske@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <kdtC.1585760118725241485.ETNE@lists.yoctoproject.org>
 <1601C2BF1E7C8C87.18583@lists.yoctoproject.org>
 <VI1PR05MB4286E300219B89A7EE37D170A8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <CABKMkPLuhj+4zbi8pCfxf_Evv6h51-QMRwTY8pY-FOzvXA0xrg@mail.gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB42861FD368535D839B1289FBA8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Wed, 1 Apr 2020 22:09:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <CABKMkPLuhj+4zbi8pCfxf_Evv6h51-QMRwTY8pY-FOzvXA0xrg@mail.gmail.com>
X-ClientProxiedBy: AM6PR05CA0016.eurprd05.prod.outlook.com
 (2603:10a6:20b:2e::29) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <4c7b4cfa-f011-ddc4-1138-ae0554a90952@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.94.21) by AM6PR05CA0016.eurprd05.prod.outlook.com (2603:10a6:20b:2e::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend Transport; Wed, 1 Apr 2020 20:09:03 +0000
X-Microsoft-Original-Message-ID: 
 <4c7b4cfa-f011-ddc4-1138-ae0554a90952@outlook.com>
X-TMN: [U0cPVBDQFbzzjoL7Ptxa5otvtc6zI/16]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 4dc33afb-2728-4a65-8e07-08d7d678868e
X-MS-TrafficTypeDiagnostic: AM6EUR05HT222:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1r2IEw1oGVN66VKW/P6LggRJrUxz3d0RRqn5cjfZzdOY9H2HzAvoXB5CbNjDCW5k1UxJcnYdtZQZM+wXVWYU4vfdrb0XfAuZktySCIvXPl5YJ3Pn9mtZS6hUkrDhzb+L9Pjq2hgWKUGF11qz1ak1BesZ2U0+2C50rmQzGPTSx8MPWfpNnUoc2RYf4Tg2jNLM60xqPTa/5dN+sNAJDKqhkJqkJC7Kv4AR3l8SqsgyasY=
X-MS-Exchange-AntiSpam-MessageData: 
	xv8aJmQs9BykvoWy67sE96KyJ6vypky8BhFKcwkMFkGOyYYOjcnMM07Rq5XWeKwVA94q71GSUyKUOSWBLwe5TYknoPcnQZE3d0KIGjSZlpslHQVEBUqKXoRxuY0w4xl7E6g4+toHalBzhr5J8ecaHw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dc33afb-2728-4a65-8e07-08d7d678868e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2020 20:09:04.0042
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6EUR05HT222
Content-Type: multipart/alternative;
 boundary="------------C22F80EBCC3BBBF0E281B724"
Content-Language: en-US

--------------C22F80EBCC3BBBF0E281B724
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Joel,

okay, I see - although I have to admit the argparse idea looks very 
weird, the error is that according to
https://docs.python.org/3/library/argparse.html#argparse.ArgumentParser.parse_args
the pkgconfig_args variable should be a list not a single string.

so doing pkgconfig_args = d.getVar("PACKAGECONFIG_CONFARGS").split(" ") 
should fix the issue.
But from a bitbake perspective you should really think about choosing a 
less pythonic version

Best

Konrad

On 01.04.20 22:00, Joel Winarske wrote:
> Hi Konrad,
>
> I left out the details of the path encoding :)  Effectively I was 
> attempting to duplicate get_out_dir() as found here:
> https://github.com/flutter/engine/blob/master/tools/gn
>
> My recipe is here: 
> https://github.com/jwinarske/meta-flutter/blob/zeus/recipes-graphics/flutter-engine/flutter-engine_git.bb
>
> Cheers,
> Joel
>
> On Wed, Apr 1, 2020 at 10:46 AM Konrad Weihmann <kweihmann@outlook.com 
> <mailto:kweihmann@outlook.com>> wrote:
>
>     There is a single tick missing, but I'm sure you get the point
>
>     On 01.04.20 19:37, Konrad Weihmann wrote:
>>
>>     What about
>>
>>     do_configure() {
>>
>>        cd ${@bb.utils.contains('PACKAGECONFIG_CONFARGS', '--verbose',
>>     out/verbose', 'out', d)}
>>
>>     }
>>
>>     On 01.04.20 18:55, Joel Winarske wrote:
>>>     Hello,
>>>
>>>     I'm trying the below in a recipe.  Bitbake gives me: ERROR:
>>>     Unable to parse ...: Exited with "2"
>>>
>>>     inherit python3native
>>>
>>>     require utils.inc
>>>
>>>     do_configure() {
>>>
>>>         cd ${@get_out_dir(d)}
>>>     }
>>>
>>>     (in utils.inc)
>>>     def get_out_dir(d):
>>>         import os
>>>         import argparse
>>>         pkgconfig_args = d.getVar("PACKAGECONFIG_CONFARGS")
>>>
>>>         parser = argparse.ArgumentParser()
>>>         parser.add_argument("--verbose", help="increase output
>>>     verbosity",
>>>                             action="store_true")
>>>         args = parser.parse_args(pkgconfig_args)
>>>         if args.verbose:
>>>             return os.path.join('out', 'verbose')
>>>
>>>         return 'out'
>>>
>>>
>>>
>>>     What am I doing wrong, or is there a better way?  Seems like it
>>>     doesn't like "args = parser.parse_args(pkgconfig_args)"
>>>
>>>     The output directory is a combination of the arguments.
>>>
>>>
>>>     Thanks!
>>>     Joel
>>>
>>
>     
>

--------------C22F80EBCC3BBBF0E281B724
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi Joel,</p>
    <p>okay, I see - although I have to admit the argparse idea looks
      very weird, the error is that according to<br>
<a class="moz-txt-link-freetext" href="https://docs.python.org/3/library/argparse.html#argparse.ArgumentParser.parse_args">https://docs.python.org/3/library/argparse.html#argparse.ArgumentParser.parse_args</a><br>
      the pkgconfig_args variable should be a list not a single string.<br>
      <br>
      so doing pkgconfig_args =
      d.getVar(&quot;PACKAGECONFIG_CONFARGS&quot;).split(&quot; &quot;) should fix the
      issue.<br>
      But from a bitbake perspective you should really think about
      choosing a less pythonic version</p>
    <p>Best</p>
    <p>Konrad<br>
    </p>
    <div class="moz-cite-prefix">On 01.04.20 22:00, Joel Winarske wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CABKMkPLuhj&#43;4zbi8pCfxf_Evv6h51-QMRwTY8pY-FOzvXA0xrg@mail.gmail.com">
      
      <div dir="ltr">Hi Konrad,
        <div><br>
        </div>
        <div>I left out the details of the path encoding :)&nbsp; Effectively
          I was attempting to duplicate get_out_dir() as found here:</div>
        <div><a href="https://github.com/flutter/engine/blob/master/tools/gn" moz-do-not-send="true">https://github.com/flutter/engine/blob/master/tools/gn</a><br>
        </div>
        <div><br>
        </div>
        <div>My recipe is here:&nbsp;&nbsp;<a href="https://github.com/jwinarske/meta-flutter/blob/zeus/recipes-graphics/flutter-engine/flutter-engine_git.bb" moz-do-not-send="true">https://github.com/jwinarske/meta-flutter/blob/zeus/recipes-graphics/flutter-engine/flutter-engine_git.bb</a></div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>Joel</div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Apr 1, 2020 at 10:46
          AM Konrad Weihmann &lt;<a href="mailto:kweihmann@outlook.com" moz-do-not-send="true">kweihmann@outlook.com</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>There is a single tick missing, but I'm sure you get the
              point<br>
            </p>
            <div>On 01.04.20 19:37, Konrad Weihmann wrote:<br>
            </div>
            <blockquote type="cite">
              <p>What about</p>
              <p>do_configure() {</p>
              <p>&nbsp;&nbsp; cd ${@bb.utils.contains('PACKAGECONFIG_CONFARGS',
                '--verbose', out/verbose', 'out', d)}<br>
              </p>
              <p>}<br>
              </p>
              <div>On 01.04.20 18:55, Joel Winarske wrote:<br>
              </div>
              <blockquote type="cite"> Hello,<br>
                <br>
                I'm trying the below in a recipe.&nbsp; Bitbake gives me:
                ERROR: Unable to parse ...: Exited with &quot;2&quot;<br>
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
                &nbsp;&nbsp;&nbsp; parser.add_argument(&quot;--verbose&quot;, help=&quot;increase
                output verbosity&quot;,<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; action=&quot;store_true&quot;)<br>
                &nbsp;&nbsp;&nbsp; args = parser.parse_args(pkgconfig_args)<br>
                &nbsp;&nbsp;&nbsp; if args.verbose:<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return os.path.join('out', 'verbose')<br>
                <br>
                &nbsp;&nbsp;&nbsp; return 'out'<br>
                <br>
                <br>
                <br>
                What am I doing wrong, or is there a better way?&nbsp; Seems
                like it doesn't like &quot;args =
                parser.parse_args(pkgconfig_args)&quot;<br>
                <br>
                The output directory is a combination of the arguments.<br>
                <br>
                <br>
                Thanks!<br>
                Joel<br>
                <br>
                <fieldset></fieldset>
              </blockquote>
              <br>
              <fieldset></fieldset>
            </blockquote>
          </div>
          <br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------C22F80EBCC3BBBF0E281B724--
