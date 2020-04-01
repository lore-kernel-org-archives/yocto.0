Received: from EUR03-VE1-obe.outbound.protection.outlook.com (EUR03-VE1-obe.outbound.protection.outlook.com [40.92.72.21])
 by mx.groups.io with SMTP id smtpd.web12.1891.1585762669284300721
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 10:37:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=th8DpK5A;
 spf=pass (domain: outlook.com, ip: 40.92.72.21, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ExhnNS9/0taMKpI8HpwiyjyFmMNrrzD5BCoiBn3S0r0CTNlrwgiLYMpZOaZMRr9CPARq1I38g8UCViC1FbVJTiDAoas2+ItSq113f4+fhHJ4KVW3nz0wLbLOQB9WrtqX1Tay2xsd+oWm5o0GZlsZmoDdoK6mpf81fVfW95Z5VkdAcR38DKCwwdT0huypPvJWPrsIb+1FVBNCXH0zvAflECOEFZE01CdwuhWb4DYETAQyaiYviGX07L8xfTykDTUQ5BqWufiG4L5r2yi21k5sszSbWbW61bSW+rgACdh7xrf4I/AtZbm9j3GhoG8MEs9XELcfjLTnLjYzvkVgS/Q79w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GIMTpPQVLuY/WrB+E92YUmQTDvXPphns5+NGsodlWRg=;
 b=nTglIHmizvQtrVQEVh3N/itRc6fbhU1z5Qo6NZp821QGRVhCLHyIr/Rr7a2IExa+z4PcUI+ZIgRi+Me4phrOk+WQN8+RKNde1yIvl3/vQuuefCRMoP9bm7f/P60aWIGD4+9JtFrMefzQ6GHfxZkDrTw5zQ+C8sQAf28mip4ooyl285UtSpmU57fN8+cEP1MVO140LgZ48Ld0qBxg4uiyZjYPO0Rid758QDoMc7lAylzAtevCo5n7uzdAVdoSt7ZnnKQFLjM4VOfSFCJ0ahPbeMCeQJ35WDPAdOGJwHt+VuRu3A2LrxBTcMxz2YPLTAasnER+f3aujQzgeWcIEuokEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GIMTpPQVLuY/WrB+E92YUmQTDvXPphns5+NGsodlWRg=;
 b=th8DpK5A+sZCt+zFmtEbDBREBTTi1buGhL1Rrw/rGyI3QXFlUySeqnW2GuUAlJP029mM24etTNTIhtsvKVFlP8xPj0ur202IpF1IZAc/U4uHnmqIOrQcCVLzPJ7cbX7ujVuyuvLqf1Oq/LgdsVC+1bx6VqYjEBu7oFZsZIwapd/0W8ZJbdQxOAt//ZpC7iHrAIiGOkrAPM451lqczFOsO1fjGF9Sk/hrlWPbfoACFbv2gQVuHYjH2YGsF1KshuAG8DM+cxviQXuTMnr+WqtQ9LghSDSKEXGJIVvHXgM2Xmd6yScvAwqChV9fMta3U3By9Uq8KZiI8wYFxRdvmwHZaQ==
Received: from DB5EUR03FT010.eop-EUR03.prod.protection.outlook.com
 (2a01:111:e400:7e0a::52) by
 DB5EUR03HT223.eop-EUR03.prod.protection.outlook.com (2a01:111:e400:7e0a::139)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Wed, 1 Apr
 2020 17:37:47 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.152.20.59) by
 DB5EUR03FT010.mail.protection.outlook.com (10.152.20.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Wed, 1 Apr 2020 17:37:47 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:49A0D581E4B8B959B3FCE8A2526E9D5E0C1A3065EC9B1B8AC2C71E1619064A59;UpperCasedChecksum:E9E172AAC2194D630DD8492267B9E7E039F4F0F4E91FFBB0E1913E97A376A55A;SizeAsReceived:8755;Count:48
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 17:37:47 +0000
Subject: Re: [yocto] python argparse or alternate method
To: yocto@lists.yoctoproject.org
References: <kdtC.1585760118725241485.ETNE@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB4286B3AA927ADBCC5CAACD84A8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Wed, 1 Apr 2020 19:37:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <kdtC.1585760118725241485.ETNE@lists.yoctoproject.org>
X-ClientProxiedBy: AM7PR03CA0020.eurprd03.prod.outlook.com
 (2603:10a6:20b:130::30) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <41f25814-aa0d-06e9-5a14-f849658c3021@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.94.21) by AM7PR03CA0020.eurprd03.prod.outlook.com (2603:10a6:20b:130::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend Transport; Wed, 1 Apr 2020 17:37:46 +0000
X-Microsoft-Original-Message-ID: 
 <41f25814-aa0d-06e9-5a14-f849658c3021@outlook.com>
X-TMN: [9XZXQw5Qkz/OQohP8cLawqSS9i6n8dUG]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: f08f5651-6ea6-413f-e612-08d7d663643a
X-MS-TrafficTypeDiagnostic: DB5EUR03HT223:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	26oKr/i0t4f69RlPfhWhPr3RQAvIMR3Z4WeRY3MqaQVQ5hYzEnH0wodthd53/PgNaNa6BY5o2ixb57EQ71w3KYXIpbuEIZEtHHjrQQdYhnc4HFzHm4tJU+KaazpKI5KHvjoYqAkmnpmYUjTPdSz2+k/uKKqZhEu8O4uE4KmmpibDTO9E0S20qTRsrVN3+hUCFqmBzEtFYnHSpWpERuPfzMmnMV5sin51OaSQoyeJ4fc=
X-MS-Exchange-AntiSpam-MessageData: 
	hkjr6lnQYAAshcO++y+Bw46G4eUCVFwcI5ZapoQL7U7WBSnMLBmCewH3qKIVmUBE1Wnztcyz0UgRvDUTwQz07YpLwLPhHppy3rJsbsQ0xm9zWgU4UfY0p7WdWOqShT3BR8X1x2Do9cs0qyQ6HGPeUg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f08f5651-6ea6-413f-e612-08d7d663643a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2020 17:37:46.9891
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT223
Content-Type: multipart/alternative;
 boundary="------------FFF39B9EF1093509C27E4DBE"
Content-Language: en-US

--------------FFF39B9EF1093509C27E4DBE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

What about

do_configure() {

    cd ${@bb.utils.contains('PACKAGECONFIG_CONFARGS', '--verbose', 
out/verbose', 'out', d)}

}

On 01.04.20 18:55, Joel Winarske wrote:
> Hello,
>
> I'm trying the below in a recipe.  Bitbake gives me: ERROR: Unable to 
> parse ...: Exited with "2"
>
> inherit python3native
>
> require utils.inc
>
> do_configure() {
>
>     cd ${@get_out_dir(d)}
> }
>
> (in utils.inc)
> def get_out_dir(d):
>     import os
>     import argparse
>     pkgconfig_args = d.getVar("PACKAGECONFIG_CONFARGS")
>
>     parser = argparse.ArgumentParser()
>     parser.add_argument("--verbose", help="increase output verbosity",
>                         action="store_true")
>     args = parser.parse_args(pkgconfig_args)
>     if args.verbose:
>         return os.path.join('out', 'verbose')
>
>     return 'out'
>
>
>
> What am I doing wrong, or is there a better way?  Seems like it 
> doesn't like "args = parser.parse_args(pkgconfig_args)"
>
> The output directory is a combination of the arguments.
>
>
> Thanks!
> Joel
>
> 

--------------FFF39B9EF1093509C27E4DBE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>What about</p>
    <p>do_configure() {</p>
    <p>&nbsp;&nbsp; cd ${@bb.utils.contains('PACKAGECONFIG_CONFARGS', '--verbose',
      out/verbose', 'out', d)}<br>
    </p>
    <p>}<br>
    </p>
    <div class="moz-cite-prefix">On 01.04.20 18:55, Joel Winarske wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:kdtC.1585760118725241485.ETNE@lists.yoctoproject.org">
      
      Hello,<br>
      <br>
      I'm trying the below in a recipe.&nbsp; Bitbake gives me: ERROR: Unable
      to parse ...: Exited with &quot;2&quot;<br>
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
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------FFF39B9EF1093509C27E4DBE--
