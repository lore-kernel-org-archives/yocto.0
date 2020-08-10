Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.75])
 by mx.groups.io with SMTP id smtpd.web12.35820.1597021610255888479
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Aug 2020 18:06:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=JRDvefi2;
 spf=pass (domain: windriver.com, ip: 40.107.93.75, mailfrom: mingli.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D94j+XRtR02VS2yiYQiI9YkGHBXI9rzUNuT//rpStI9pnu51XCGKkuEV7sD6ZcgGgG1CsILD63cEa15QMBluluSJXw7QLNV5B6mAnIgPfZPZtGGMqrLPUjDoEjHZAQZ/C55GHX+XB2BxHcyDoNs5I3G5PXzYyYdtSixYGjUNPfCKcz2R0K6iObNhyR1Ph3NWpmxQ5P+JOrSoXqmKv4X1SZ2eu8SkfM5Tvtq0HbCRn2P+uaB9z1EXfn9maAOu6ve12C5PwFS03PbFGWBaQgoA5cWUP8UxZkk8xsPAIsliGQdSBpSqZ3jEHrEp7pSkvg216W11LMxugeUwI+hnsjptkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxHMUo3BdGCUrBUYVJNZu7bpinQ54MMDgt9Jg7snjys=;
 b=dbH5V1/zmwsq0l7uoJpJM4IhKR9Cm00gqhgQooQPaD906FUNT9zlQs8cCa/tL4Ny/jk1F8LPdO1j/zj0lkgR84wzkIlPwKuicwEG+3XOUIClIcD2ITrvW9zsoUOsdALZ2A/zcGKF1eKB4gDYjVlO01YLZ/g8WQilISG8kEtRVhbPm4ppRqWTEjt7CjOUD/JGdlRCDKZQFhW1CyBvcp5993E2jfwapSPtLbSmCyzR/amtAGN+dtG77vl6xqpQ95RCEYwT7+UD7qqW6IV+nAYJZaWMURKgSRAekXz7iIAonXh6uoOEA/MZKF8tH35QtEFjjFPpGADviW71g3rGvUzF4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxHMUo3BdGCUrBUYVJNZu7bpinQ54MMDgt9Jg7snjys=;
 b=JRDvefi2NFAAqXbpxWs5EtE6ugXDrlbz8XNRz40C2pyWVOJCb6vbi8zc5TzouZwrkgidbf1B7ieiVB63A/1gOZUfLjMCabEaUkcb6qz86yjllUDxFNjR7wHFzQxrcqicH54/OQp8ugD2LjD5zoo5cQ8hfi7WKsOq6LxZgj63+WQ=
Authentication-Results: mvista.com; dkim=none (message not signed)
 header.d=none;mvista.com; dmarc=none action=none header.from=windriver.com;
Received: from BYAPR11MB2598.namprd11.prod.outlook.com (2603:10b6:a02:cb::17)
 by BY5PR11MB4181.namprd11.prod.outlook.com (2603:10b6:a03:18c::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.19; Mon, 10 Aug
 2020 01:06:47 +0000
Received: from BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::19f6:49b4:700d:c360]) by BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::19f6:49b4:700d:c360%3]) with mapi id 15.20.3261.022; Mon, 10 Aug 2020
 01:06:47 +0000
Subject: Re: [yocto] [meta-cgl][PATCH] ucarp: force to use TLS1.2 during do_fetch
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
References: <16227A594D77C7C6.3435@lists.yoctoproject.org>
Message-ID: <2ef7a153-9aa5-0b2f-22a6-cf8ff7ec0e36@windriver.com>
Date: Mon, 10 Aug 2020 09:04:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <16227A594D77C7C6.3435@lists.yoctoproject.org>
X-ClientProxiedBy: HK2P15301CA0014.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::24) To BYAPR11MB2598.namprd11.prod.outlook.com
 (2603:10b6:a02:cb::17)
Return-Path: mingli.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.138] (60.247.85.82) by HK2P15301CA0014.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.2 via Frontend Transport; Mon, 10 Aug 2020 01:06:45 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3814d12d-d5a8-4764-3b44-08d83cc9a77a
X-MS-TrafficTypeDiagnostic: BY5PR11MB4181:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB41818A73255587D48488B466F1440@BY5PR11MB4181.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gEmLdakpFQHBp8FUlCcMyQG0WbwSr+8vzpSZ5xmKRByaGB8ME9Jh3MriJ0hhsGJMzq1DtMA0rE+eMPLH3p/pAaQ11CqXTclY2ZXN5y79d9NRoIVb+RfjZuJ0d7EO+Z5PbnbfmYWHkpHauEffLWlnVSdrAIKDpNpPuN0T3WwpBQ7l0J7vh6dJFSTVW7GE5O5OzND1aNZmDhk7yPuwHPt416gB9s4sa28VgrxB27ZsGiE39EJw2IYqmSmSfUVpGUHc8zJ+LZsZhYPkWS8L5ie7MqBUZRTUjMJ3dLxS473mMDWQEfvYmHjDXuZgstFDOqlK0g2rV6qJmv6TPWVAd+uwG3o1a2J++KLCDF52o2TIoxBm2YnGUJE8fOrV/s4ju/Bw0VjWtYO1olRZvCU9CdQkSt+Bm8n0zwoq7rrHmCNr3HcJ6Jj80WnRf/CLf5gA0X9VEX5cOQWje7NmPoYW0MHRn908pQFG1jA0C3ZuleCvK44=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2598.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(366004)(396003)(346002)(376002)(39830400003)(136003)(316002)(2906002)(16576012)(6706004)(6486002)(478600001)(26005)(956004)(53546011)(2616005)(52116002)(966005)(186003)(16526019)(5660300002)(31696002)(8936002)(66556008)(66946007)(66476007)(86362001)(31686004)(6666004)(83380400001)(36756003)(8676002)(78286006)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	aXLUqt3y4JM9Yd283nX9ijXTCpjshkTnVccs/oq9U3nbcMsq8HLVvhJTGN4iXcnqGVWDhXvjDq2PUclQxX2W+Xhb3xWJG1WrPmS4T6P35rMq9iyoxXIrlZes2YNxb+0zPtgPgLCjJhUmdlsddAfTzopPZfKjfP2fEoQhExZWMmU4h8RpSpGcR1cS7NO32iWM03Kc/Nx9XJQHmcxc9SwDdOOYEsy7nWQ6Cp4ARCPLmsrAVju+RRwg5CnXRU6tNYozPuUMtCp7RTFHPGZ00suYucQsd3xDfCNX07dITpXS3gwlTrMrE1Pjl6CrGU4NZ4bExJHs5FKNVzSNXccGJl/13aIAm1UFP6tFYBwMsnidqYQXQrik5O4Hu3G9wVMD4PZwI3g/IAN9dAWO8voywHhyJc2W64SbyzXQFPBGazxu9YWeRoVqyNZYXgkHZQjYpIYt0ld4US6FG0xqrzXik0eW+PnrbO8tidVPYjB8UtMKOBarx3kkPM2VLvqHVrmnK+cwEpS9fJ4qjK+MQHJhw5e6wVuzMD8Z8bCyhi9so8a9bWXCf81mDeWyN0ZynGgqNPjPbrB2tr7vRdedRv70UyVZaNRycV/aroo2q+PdWPdft2sO0slL0pN8v7Hg5x+8yJvvtuGJYUC9oahBGJcT9QWPqA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3814d12d-d5a8-4764-3b44-08d83cc9a77a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2020 01:06:47.0432
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1TSutX/TC0Ef1jpU2UZlpyOBymk8XVLr482OcoTaazud5hNP8xIsyw/f09uKVhXDPb+hS4MwvsmdOsAeqF4B6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4181
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

ping.

Thanks,

On 7/17/20 3:38 PM, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
> 
> There comes below error when use buildtools [1]:
> $ bitbake -cfetch ucarp
> [snip]
> --2020-07-17 06:39:31--  https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
> Resolving download.pureftpd.org... 37.59.238.213
> Connecting to download.pureftpd.org|37.59.238.213|:443... connected.
> GnuTLS: A TLS fatal alert has been received.
> GnuTLS: received alert [70]: Error in protocol version
> Unable to establish SSL connection.
> 
> And can simply use below step to reproduce the above error.
> $ wget https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
> --2020-07-17 06:43:36--  https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
> Resolving download.pureftpd.org... 37.59.238.213
> Connecting to download.pureftpd.org|37.59.238.213|:443... connected.
> GnuTLS: A TLS fatal alert has been received.
> GnuTLS: received alert [70]: Error in protocol version
> Unable to establish SSL connection.
> 
> $ wget --version
> GNU Wget 1.20.3 built on linux-gnu.
> 
> Currently wget uses gnutls as the ssl backend as the below logic
> in layers/openembedded-core/meta/recipes-extended/wget/wget.inc
> PACKAGECONFIG[gnutls] = "--with-ssl=gnutls,,gnutls"
> 
> Check the link https://download.pureftpd.org/pub/ucarp/ and found
> the file https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
> already 10 years ago.
> ucarp-1.5.2.tar.gz                                 31-Jan-2010 22:06              429089
> 
> Meanwhile we can use gnutls-cli-debug to diagnose the download.pureftpd.org
> which hosts ucarp and it doesn't support TLS 1.3 but supports TLS 1.2 instead
> as below.
> $ gnutls-cli-debug 37.59.238.213
> GnuTLS debug client 3.6.4
> Checking 37.59.238.213:443
>                          whether we need to disable TLS 1.2... no
>                          whether we need to disable TLS 1.1... no
>                          whether we need to disable TLS 1.0... no
>                          whether %NO_EXTENSIONS is required... no
>                                 whether %COMPAT is required... yes
>                               for TLS 1.0 (RFC2246) support... no
>   for TLS 1.0 (RFC2246) support with TLS 1.0 record version... no
>                               for TLS 1.1 (RFC4346) support... no
>                                    fallback from TLS 1.1 to... failed
>                               for TLS 1.2 (RFC5246) support... yes
>                               for TLS 1.3 (RFC8446) support... no
> [snip]
> 
> $ wget --secure-protocol=TLSv1_2 https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
> --2020-07-17 07:07:08--  https://download.pureftpd.org/pub/ucarp/ucarp-1.5.2.tar.gz
> Resolving download.pureftpd.org... 37.59.238.213
> Connecting to download.pureftpd.org|37.59.238.213|:443... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 429089 (419K) [text/plain]
> Saving to: 'ucarp-1.5.2.tar.gz'
> 
> ucarp-1.5.2.tar.gz  100%[===================>] 419.03K   432KB/s    in 1.0s
> 
> 2020-07-17 07:07:16 (432 KB/s) - 'ucarp-1.5.2.tar.gz' saved [429089/429089]
> 
> Considering gnutls doesn't fallback to TLS 1.2 automatically, so force ucarp
> to use TLS1.2 to fix the above do_fetch error.
> 
> [1] https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html#building-your-own-buildtools-tarball
> 
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> index 6f30bf7..d17baa0 100644
> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> @@ -34,7 +34,7 @@ DEPENDS = "libpcap"
>   
>   SYSTEMD_SERVICE_${PN} = "ucarp.service"
>   SYSTEMD_AUTO_ENABLE = "disable"
> -
> +export FETCHCMD_wget = "/usr/bin/env wget --secure-protocol=TLSv1_2 -t 2 -T 30 --passive-ftp --no-check-certificate"
>   EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN}"
>   
>   # fix the perms for config.rpath
> 
> 
> 
> 
