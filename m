Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.53])
 by mx.groups.io with SMTP id smtpd.web09.9293.1603692902275697272
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Oct 2020 23:15:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=fH3idYRQ;
 spf=pass (domain: windriver.com, ip: 40.107.223.53, mailfrom: mingli.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZ5r/tSeOUF258EoOLvcBdqkbCLBfLV3pH3dVZKpvc5es1Jnvu3puA4bMImwlLLr1GR9Swy9TMluD66k5KxguexgSEPcT8aSkHle4yzyKzcojZZZuv4rEa8FyX9qBYck2ajCFRNgTHQm1HqLapigbg2WKMLCgz1rTxz+tn4SgRumKA3qiXajr6rrZlBMeoQkm0Xu6wnaoAG+JdWf1kUSxjfHvegQrjlIkd18XDw2YNo0O02yM1NxA/jVp9NFooCpXHJ5XZZMCCTAoSVagOO+Fe5GwFyCrelYKJPihTXcaUD2oM+KeFdCtNvpRbHVAEFjcZNds13JIVceEEjeFzL1AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Viv5ymapsrNsgzfW89GXFFO0HTnPq21jxRiwKrOQjoo=;
 b=QWcak/mBPVEITi91zXpDPCy9RCwu+RE5Ejz4AFOT0No65+BXn1wztMEU2enYNSmyC3O9yFVBCEtukUqJisvDT8URRn8LwCsgyPP5U5Vpvi8IIxYTcyq84ymCNF+29W+aTuwHQYwowdj+jKsa9tYUifvS91KED6BarPvxGj+j+fhC+w0I1dvxWUxoCSbdYBgg2garLOk8UKoQEhP9M80NnQSmZjAC65tKQDMYuoAH9Z6yynvtKKtVITZTvBH1jp3ftr9t1whPF8y+yAQbzYAn4DAClLmo1XFG7/Zp/k7sgWYDbBU1m1pP0euXU7qepQUrEnyzblvgpDN2Fyz4u+AUkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Viv5ymapsrNsgzfW89GXFFO0HTnPq21jxRiwKrOQjoo=;
 b=fH3idYRQ/Qedn301Ervh69S5ssUMLMeeutbpcQewWMoxvMmPzH1LWEeqYpFORjDwGTUmqBu2KTLs/Oeo2p/BhqHRQrpWBV5W3vJbl3UCcJzqKM2g16Whd1eJRrtN2cETJRmr1sZuRI6XaKB3g5VOe6xcxEctmgs69m2fmX8zkFs=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by MWHPR11MB1440.namprd11.prod.outlook.com (2603:10b6:301:7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.20; Mon, 26 Oct
 2020 06:15:00 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::105b:9105:2a38:9e9f]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::105b:9105:2a38:9e9f%7]) with mapi id 15.20.3477.028; Mon, 26 Oct 2020
 06:15:00 +0000
Subject: Re: [yocto] [meta-cgl][PATCH] heartbeat: don't use trailing slash in S
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: jpuhlman@mvista.com, yocto@lists.yoctoproject.org
References: <163FEC4439522E5C.25444@lists.yoctoproject.org>
Message-ID: <dc3f26d2-504a-e9e9-2b1d-7910247e3ebb@windriver.com>
Date: Mon, 26 Oct 2020 14:13:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <163FEC4439522E5C.25444@lists.yoctoproject.org>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR06CA0016.apcprd06.prod.outlook.com
 (2603:1096:202:2e::28) To CO1PR11MB5009.namprd11.prod.outlook.com
 (2603:10b6:303:9e::11)
Return-Path: mingli.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.139] (60.247.85.82) by HK2PR06CA0016.apcprd06.prod.outlook.com (2603:1096:202:2e::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.19 via Frontend Transport; Mon, 26 Oct 2020 06:14:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f7da0f8-0c5f-4fc3-a4e9-08d8797677fe
X-MS-TrafficTypeDiagnostic: MWHPR11MB1440:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB14407028A1498ADAEF1DB925F1190@MWHPR11MB1440.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:486;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Kem+Su1Le/U4alq5yfqdWx2Rw/LLXns3xLp0sk8CMLMEuPrNhYL9iiSq3Y1h70FDcqv4HXwjU9TQrc2N/UmA0SlPt/bP5iTL3S5gPCI6BT1xTkszVQGPGAETMNrFSVm5NXICuPsfG5CeG2gBTSm41hldM6J0+LDmH28OOrijkvKE0DXs8OhJcJUeCJUEnrz+Q7/lWWIP+5sUBA7/1/FGTkEVZmi3tg0H/mTSl/I/JJibg3/p8KPYH8BEGzK+8ffSObBHCtQTlv3kDhYkoZfWnoO9fvVF1cEIvtmTCA8cMjVzq3HI/l/a71NsI0VJCkgJ7RImn00OoxtkvgVvBwVPrLJw+qP/u2OdX7H1HML+pHs7Ttweiq84SfYyqd9Aw6QVmUCcvlpd5NuAghoJ5FECe68eyi+Y3qxsA/1nAlbbk66mwl3bncRjtxtQnE9UttYbUN86lGgOWt0S4UZU1xD0dNK2pYRtu1kR5QLrgS7qJSQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5009.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(396003)(346002)(39840400004)(376002)(956004)(31696002)(16576012)(26005)(8676002)(86362001)(5660300002)(6666004)(2906002)(478600001)(52116002)(6486002)(36756003)(316002)(83380400001)(2616005)(6706004)(8936002)(66556008)(16526019)(66476007)(66946007)(186003)(31686004)(966005)(53546011)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	L4BNqmpw5DTM6HUolee9UhwTe9x9e+ed+o0qEtB9w1JZ8WfoG/X7MpzxFy57hSYLOS3y1TSmDtGbdULyXDlatT1K/0h23hRm3QpELi3cfHZYt+2fXzoTjdSkYyl5UAyvJwI8xgdu3joJdy6LJC1W4F3XQn+W24lJ/IXy7SBP9wAc5ylIxAJMZz/rx5SVSbCdWdF6nNzaM87MTLxiOsx98YurX+kxwYQG3l0AFUg02w/oghkNSl/0yc8BsfvXj7Xco+Znt1WPIxfa9lio41crs65vZDG62R1XVn6KEN/toDY51yj77f2ql8jNTNtMWQlefHQFvqtyc3Ca2qJ+uimpnDLRfbwIF4pr9E2tsBM72WXedHscy27j6QIOwICeBVnfgfUGZzrDYIZi3UDdvSSono+i+YwevbeMaGcIKgHuSujN00jai/oXyLvWcNSQV+PwzWqjt6TCZYIVZGQrnQvnUK4sdj4hPcv8dK2B5EIL8XE81nZmnBtJTYLWFPpa9dBgCxhIGnLMjOjsL4/9p4Pd2ewoV91PiP/UgtO6NIU3MjIX0Kk5gic8EH2pNTebIsbRNsdJf8EVrWLsOvZ/UCY2lqTernso7RI4hGNCGaATBZfYqD8Vk+q7nJVeSzWh5gGz8FPWlELoS0ebWNfm7rtR8g==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f7da0f8-0c5f-4fc3-a4e9-08d8797677fe
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2020 06:15:00.1225
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BT5yVYtESeS8kEuXcflO9VlPA0WmYHiaIKy2sN1aYKEtO9NjO2NQsuLb9vXxuxh9bCItWu7aSS9oXH9P8a/63w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1440
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Ping.

Thanks,

On 10/21/20 1:54 PM, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
> 
> * see oe-core base.bbclass changes from:
>    https://lists.openembedded.org/g/openembedded-core/message/143159
>    https://lists.openembedded.org/g/openembedded-core/message/143161
> 
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
> index 35fee43..5031c64 100644
> --- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
> +++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
> @@ -38,7 +38,7 @@ SRC_URI = " \
>   "
>   SRC_URI[md5sum] = "101c8f507b1f407468d5ef15ae6719da"
>   SRC_URI[sha256sum] = "851d2add2c129fef9fede764fec80229e1f6e7295e0e979950d10258648b462c"
> -S = "${WORKDIR}/Heartbeat-3-0-958e11be8686/"
> +S = "${WORKDIR}/Heartbeat-3-0-958e11be8686"
>   DEPENDS = "cluster-glue corosync gnutls libxslt-native xmlto-native docbook-xml-dtd4-native docbook-xsl-stylesheets-native intltool"
>   RDEPENDS_${PN} += "python"
>   inherit autotools-brokensep pkgconfig useradd
> 
> 
> 
> 
> 
