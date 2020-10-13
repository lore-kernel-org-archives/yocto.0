Received: from NAM02-BL2-obe.outbound.protection.outlook.com (NAM02-BL2-obe.outbound.protection.outlook.com [40.107.75.83])
 by mx.groups.io with SMTP id smtpd.web10.5690.1602569579707259147
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Oct 2020 23:13:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=FpiBMyj+;
 spf=pass (domain: windriver.com, ip: 40.107.75.83, mailfrom: mingli.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D2fjPE0hfuHhB/O37byfFg07VzncilH4UdnDUH6uVq9OKQQJfdca1rfRJOo8htsxEthGX+vDa1KQSdc3bJdvpYfC32QLve7sbdXlXO1tdI477DechxEiP1HSJW1uewzBk6rq4EG3IEltP+Oun/eOmFCtlDzQjWqB3TvCVmN7I2OETYK5XUiDTnRhfqic5KaVoVkfIO/Y1M223URPSquPM1JotR9425PbtKFWK4w8PGhT34m1bKaChHapGVpdkpZEPu8Vnaw9puW6j7z5gc5H6P8Zyu6DGKJIqU9Tb15kdLFzcW2fmhmx9v3Ognq97nhZKgi/uuofsPT3C0ZYShIgpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9rz0VAIS+NsSDsfA+Sqj9O2OtI0bWBZDooIcqv4czSA=;
 b=DAIViaMZfhzObEnF6LyNu4v17tuXZ7sxKeQQqENj2HaOxSz3YlWo4fZt7h4aYxWhg4jyB4iT7hWdj4FceESHQ1tto++VPjE8bbrwV/Ybpt3YR8mmi9VJ+LLW2EDJiHurk8L5V2mA9BNbHiEvvney8AeEZj4LHJmpKM7k81qxL7JPPBQlnL5GFdZDgsPwrcwfk90MCvnapItxdmpYGaU9U1yw9FiB2nvDj7v9LC7Tw9kQs68VkE4Iom3EGyLbxhgq7L26JTzcyeJ1Il/QwRQlFnThm2BgHt/XSCjY/7qXBRT5pdDWCo4QurpS56GuQk7uyBGINt/kBb9Ml0uWxVo0PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9rz0VAIS+NsSDsfA+Sqj9O2OtI0bWBZDooIcqv4czSA=;
 b=FpiBMyj+gg42mS9dsPXZGn+eeM1yhN4Cv5tUdMUpy162BRKsmbl44iGpkFS5aDBt6TCMghf7Dw2iUJjecbU1q+mufLwKje6IwbuFRhe3yDbDbksHGbE6LJxeDUEFGplkv8jraPcC801+reB9sHWPo+cXye3JVTfxtGDkbrjGLXs=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB2598.namprd11.prod.outlook.com (2603:10b6:a02:cb::17)
 by BY5PR11MB4225.namprd11.prod.outlook.com (2603:10b6:a03:1ba::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21; Tue, 13 Oct
 2020 06:12:56 +0000
Received: from BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::9425:b061:32a:a98b]) by BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::9425:b061:32a:a98b%7]) with mapi id 15.20.3455.030; Tue, 13 Oct 2020
 06:12:56 +0000
Subject: Re: [yocto] [meta-cgl][PATCH v2] cluster-glue: improve reproducibility
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: jpuhlman@mvista.com, yocto@lists.yoctoproject.org
References: <16389774D07A220A.8201@lists.yoctoproject.org>
 <1638D51C7AA899F0.17423@lists.yoctoproject.org>
Message-ID: <73e911f9-dbda-5eaa-ecc6-3f4b14048240@windriver.com>
Date: Tue, 13 Oct 2020 14:10:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <1638D51C7AA899F0.17423@lists.yoctoproject.org>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0054.apcprd04.prod.outlook.com
 (2603:1096:202:14::22) To BYAPR11MB2598.namprd11.prod.outlook.com
 (2603:10b6:a02:cb::17)
Return-Path: mingli.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.139] (60.247.85.82) by HK2PR04CA0054.apcprd04.prod.outlook.com (2603:1096:202:14::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21 via Frontend Transport; Tue, 13 Oct 2020 06:12:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e1b9b2df-261a-4748-e06c-08d86f3f0698
X-MS-TrafficTypeDiagnostic: BY5PR11MB4225:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB4225C1DDCDA0803AF167059AF1040@BY5PR11MB4225.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	X7VfzpQQrfhgGF0aQ8xo5FhrVMjmL/39w/3L45kVJXV4zphczquy/lgfW/XwmJbBeQc9AwK2qLEgkO+emcugSfQkwQujfDkkmeDs+wSyPNQuzdR4nhmoBq4il8pdcXegK0h0zW8JlAiK9ga7gQPMyF0LFulVaeKrLE1NgxJJNy7d7rhSIszu2ksklvkm0xysJzYfi7g45BgmIWQvHP8fwie0Hi61GZbiD/hDQc14buhi3Flh871SVY7u36SPODAkuhlZFp6MpMRN9JSP2VE2Zk2/YqdpQCM2jWklZHckFbGpfODr/zUatg5OBbBgFwvstceqmhjdwiivoxoWZYLt82FJGOgRK3/xg+XSS8/HyUyJfLxovATm3j6Bn8oEy47exWuGG8lbaJTzQ08aYafimU0pvvG9zUAKY95d7ZGA+hTwXbmhU+af57TO0oUNGd3YBWcHGHtClW8mmePKoPSQgPzao8NTszFRrbslHnSMeQE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2598.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(366004)(136003)(396003)(346002)(376002)(5660300002)(966005)(956004)(8676002)(86362001)(6486002)(8936002)(2616005)(31696002)(31686004)(478600001)(66946007)(16576012)(2906002)(52116002)(316002)(6706004)(66556008)(83080400001)(66476007)(36756003)(6666004)(53546011)(83380400001)(16526019)(186003)(26005)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	gNcBxnx6eyZpD5jnUhSiSiBN5V//3ec7NB4YUfosA6VnZddQE1D75+sQi9PQpoZ0/efelc83YrbKlFSem7BzW3ihxCG/XdbGdZDADl40UWV80s7G3xOZVYXt1IfLtdeM0ev3L3RIaxFmETn6XW95ihiZ+CTOyshBm0QJcvLdBIJEJbF1KUnL5CY03eHQZn3VpX4VHckrVTZTu7IrAMg24uW8z2e5vsB5Ei42e+ibv7BHLlk4LJnKC3uQhEQjY88OCRImMaYCmex+hW776hmIuxspmrJLcoZxIr1P/fwE9OHMtIMVfChy1rr5vtQ12BIA3cXEWD+hixolCGMB4Bl+GWgaIhIEzGkHQ0UGRE3dp9rb7Mog97jc5yk5o1MvLj3Zdk+nY3Lt8t/suzXMIteOGPB9C6SyElv1ZnDS92EYudGRng2Go/rjIqbYBNKFbI2VI05xDm+esivdNzQofgvxWdW2r1w+Bx5YGlFdPll+xMDkzMAKSBEE6tPq5kY3Z3whDskv4SHulY2PEYmiebCypRDdSfgID691k1AP7zoHbm6FB75oZMuMfb3netrBecGWc0H5Yyetub3YMFL/Fc7tJygJAQ+UrqMq2jIVP6/yloqc283oIlCtWFmEY9WOyrXCTZEuICDW+SeKgftUMC4oLw==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b9b2df-261a-4748-e06c-08d86f3f0698
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2020 06:12:55.8829
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ndTBThrgrY1nU7LRDaCD8JNj4uhOGRRc7XRT6wqYLn00XLg0nVSPAHvdr+eX/t3duH4+xIMGqM0+UF9Eupad+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4225
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

ping

Thanks,

On 9/28/20 11:31 AM, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
> 
> Set ssh path rather than using hosttools to remove the build
> path in the files such as drac5, kdumpcheck and etc.
> 
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> index d9df83b..af2342f 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> @@ -42,7 +42,9 @@ EXTRA_OECONF = "--with-daemon-user=${HA_USER} \
>                   --with-ocf-root=${libdir}/ocf \
>                  "
>   
> -CACHED_CONFIGUREVARS="ac_cv_path_XML2CONFIG=0"
> +CACHED_CONFIGUREVARS="ac_cv_path_XML2CONFIG=0 \
> +                      ac_cv_path_SSH=ssh \
> +"
>   
>   USERADD_PACKAGES = "${PN}"
>   USERADD_PARAM_${PN} = "--home-dir=${localstatedir}/lib/heartbeat/cores/${HA_USER} \
> 
> 
> 
> 
> 
