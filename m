Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27D90E00D1C; Wed,  6 Jan 2016 16:11:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.169.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0120.outbound.protection.outlook.com [65.55.169.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A18E00404
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 16:11:25 -0800 (PST)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=alejandro.delcastillo@ni.com; 
Received: from [10.2.33.36] (130.164.62.82) by
	BLUPR04MB837.namprd04.prod.outlook.com (10.255.188.11) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Wed, 6 Jan 2016 23:57:05 +0000
Message-ID: <568DA9B8.9090204@ni.com>
Date: Wed, 6 Jan 2016 17:56:40 -0600
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Haris Okanovic <haris.okanovic@ni.com>, <yocto@yoctoproject.org>
References: <1452121621-24213-1-git-send-email-haris.okanovic@ni.com>
In-Reply-To: <1452121621-24213-1-git-send-email-haris.okanovic@ni.com>
X-Originating-IP: [130.164.62.82]
X-ClientProxiedBy: SN1PR07CA0024.namprd07.prod.outlook.com (25.162.170.162) To
	BLUPR04MB837.namprd04.prod.outlook.com (10.255.188.11)
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB837;
	2:pHLhNPQXK2lE9qWm9G7U6Qqalk/pBPuSiMU8idWpUVhg3MZdeLljpdLwAlPwA4cTcE/zDrDzEw3PtjmsxVNxD3CLwl+wkctcqNY4iadqA/rxSebUxW5ktYWsEVZ6OnVZ4IkPQ0GAHogC8oYTcp7P3A==;
	3:0f3eNItHAqPufw1ii51Xc7AO0I5r97YL4u5NbTHmw25v29NgbQXJFDCDtITbPmCff6sAU7UHKkjikAaNxgf9N1/Ikd81QG9a4K/gCukAQejWFPQrZCNNypdafccjn0k/;
	25:dwHgHdpgXnKPEwmEMBRtUXOcIJ2GBMF6Qt5gwll9q9Wnew8WwtyYK/Y41PFKz9MKZuSsxIpcffRu+Iv+xWsFiDm7/eAG3QRDumgeQZzV75Yso+C5qi2ZUgfdiXgJ04FV4d1sq/ornotaE2hoAWBnMmDzrHPxHlY/U7Ri0vzH/CyRzx+rfM45zhq105GbHt5NI1JXW3L278hWcuweI8fAbg==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR04MB837;
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB837;
	20:3e2oItbMrVUDf11nsPOi+zvbYR7EA3m0+HnUjh3SS1ipjvW/uXdORVqVYz/z8bntu6lXgUomuOpVvaEldqHnOFsWFm07fLcw7FbdDuGLwCS1vxnHB0Zd+1kp2YwFzFSYgF4tSwAzIVVyVO3uWojdajevr15BtjmRKNJucWu4LeZEyUF85hN03Tifwe5oyNmSasfqiQ0lGtzppex5IghrSqhL1HnoAdk5nSIVzdz3PcFmq/ZImC949zTkGck8wjxJwGCqYuu1wLGAIcoGrI+LarZgMcF07C7ufmeVjuDk5TEP/0566EiPZ+X8XLEFIWvOXK+mMca7h6p7ov6oNehrhvfB55MLkc5p8NPIU7VvmzMm3X8n5nYdqNj5jY/sobKfDoqtyzCyg7P3T9hPyMIfw5qBPBmwTl1X6LhIQX+GM1eKcufKGbQKNCBR6nE+pCDAZkzVqLeOgvbLbfvpOYTMYYNt62JhjpBPuO3aH6O7eJ2kaFFslj3Ac7qQ11hKhQbWIY7IiVT23uGtJufR2cbBX4IOk9hIAhV2PVLyl/qqG0q90wTek/NdYFqQse5/JxT9XeOGXqU0GmE/+ce3ta+L9vKuYNRd+ifFo/GCtQ6BG4k=
X-Microsoft-Antispam-PRVS: <BLUPR04MB837F14A55208F7A8DA0FDBB86F40@BLUPR04MB837.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(520078)(10201501046)(3002001);
	SRVR:BLUPR04MB837; BCL:0; PCL:0; RULEID:; SRVR:BLUPR04MB837; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB837;
	4:tVr3kUa5JKagnLGlfxWoYV1ai+fsjFXWYZhP2SZYtH4Gz8ZqW9jqOX48a9m3/cJ98MnJvYrCzLewQi3TfjOz5VsADhmQOBeXloXwxOdz8ronD4N+1YYhRxaLYM09icoKXwIQZ1RMgptG8odpm7XZ5dcW0ces0PxySwvcV7oz7tw7KZR4i/geY+PVDWND8Q8T/j5KzrioJqjDYYP/w3y01w/rNbcCjSfUSU2EOehcE+wAgGnNuQacMaQwH2gYp3vQEB3f9qSjaXFpSQryyDI1/ZlCt9h8lXvEO86OMD81zHVAFsItPUoKNqH/pRHLwB3B9WMyvtN6AcArDpr7paiW+kXUDj59UI6aqCc9neSEnE7g19zeNePTA7g1FAhsGQxc
X-Forefront-PRVS: 0813C68E65
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(6009001)(479174004)(377454003)(199003)(24454002)(189002)(92566002)(59896002)(5001960100002)(42186005)(54356999)(189998001)(77096005)(97736004)(86362001)(5001770100001)(4326007)(80316001)(65956001)(47776003)(87266999)(87976001)(76176999)(230700001)(6116002)(83506001)(33656002)(106356001)(5008740100001)(81156007)(19580405001)(50466002)(1096002)(4001350100001)(2950100001)(64126003)(122386002)(5004730100002)(3846002)(101416001)(36756003)(105586002)(65816999)(66066001)(15975445007)(586003)(23746002)(50986999)(65806001)(19580395003)(40100003)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR04MB837; H:[10.2.33.36];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BLUPR04MB837;
	23:QRi35GCm95ZK29I6QdE8pX8gjMbTRI9fXWVEil?=
	=?Windows-1252?Q?ggiEpUQaKllvUTi6XRudus92SwvWhexFqjst4ShtT7JjRZpVu2qGRID0?=
	=?Windows-1252?Q?e6b+M8gG+j0MCDtchLaRDclniOMeBXDM885sc8KNmlSESn/TdlVi+YM6?=
	=?Windows-1252?Q?i/zVFrmm+gwUh0z2j8qzzFHwYu0HuQ8i9rGccLhWAkbRv53iJtKr0j3U?=
	=?Windows-1252?Q?j9uDAxGUjg45/rRwPyyntrqVcLRfdOG9fojCn6ZceqVwDZ4Dhv/sz3Bb?=
	=?Windows-1252?Q?DOQIsP41xEcURNrywKcItT928bhA14T3ptwC4UB/7ZWvJm/mVnILdDnh?=
	=?Windows-1252?Q?Zc1HpnYt4F9HTnMXyee/02a9qAZqTH9AFg3JJIwZF3/jVnqQnZI+GJLz?=
	=?Windows-1252?Q?fdaTL2xB1DULJBE4zUKQWk9g9LYg0fA9j0ZVl+v0Y5n0AhbO16LMra9b?=
	=?Windows-1252?Q?ioDt2uqY6CPSWocGSSZeQIro87OSa++r4p4yvSj9l1WhuOE5n3aDsvFk?=
	=?Windows-1252?Q?JS/A8LTzH3F30uTRiTTnoTSgroGHcnfxRd+UTgiah6AADP4F1vazzZpZ?=
	=?Windows-1252?Q?fI2rqvoa1n8e9ZvfUwKF0U92VoGZUEeE+6KrPlk3dEtdI8HiQprLDEI0?=
	=?Windows-1252?Q?Q03Cu1uL7UhkQjnKdCJjWpTVMiILfq4lYDBWYvKsSavghKBiYoWL7tv0?=
	=?Windows-1252?Q?hpOL/FUGqcRG3nnGsNHhgzJePsKhbOzguq2eRHjU08uUIrgq55Pxx768?=
	=?Windows-1252?Q?Bp5o/uXMYh2bI8vqeDQNkHYhUTMmSmoRCrVw1Il37Bz521zCvrWiV2TK?=
	=?Windows-1252?Q?PTxWKNRdeknblMBwARSR0kV6VevGRXXI8DmqQecOpzlfrPgGRghXqm+t?=
	=?Windows-1252?Q?my+dZpygqQeh4WquJBSIy5vzI+etynGRe6uYRadxMTgJC1c7SjJtwu7l?=
	=?Windows-1252?Q?kkj8hFb8kUhvsunOUKxjoFuC0BAWsNxJTrXng0QstxARMgfl4r02KK34?=
	=?Windows-1252?Q?WbVA6JYmDRpf0IjBU9PF5sTRs5pussD7gMx2I7LaM6QKylOMLNEVFGXc?=
	=?Windows-1252?Q?PYzOtT1GrmDEde4QAKMmkKJ0U3z/5gDBpwidV+KXSyDxeqdhoPLKHJBU?=
	=?Windows-1252?Q?0oDCJoDB6FhVd3c3ViWaDgEGRdbU0Lp95XkEtrF2i/8EonOtdpgoNt4t?=
	=?Windows-1252?Q?ET5+gfNFaSRohmNdCZi/G8x5pud8xkEYgPtQuzOyLmTJDImCkFm+c6US?=
	=?Windows-1252?Q?tmlI4K7N+3ap32sF99iGZ1WpVNJh5azRoUMybBZgZV1Gq2HKhuQP0J8p?=
	=?Windows-1252?Q?I3oNPMrgNlWvpbZBmz/JMRvi/eCQFMK596HeFgGfm4DToayC+BiBuW3i?=
	=?Windows-1252?Q?eiy+0vZC5V0+ivkcup4XPM+b9pmhxi1LUXuYg0cH9LB48BJFmLzvv+7O?=
	=?Windows-1252?Q?BOEvDG9ikMRRqTFV2BmzDgIiM5PmtieDSRYCDpeA=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB837;
	5:61v1xXtz/3V0mbfaxGpj3dv9E4j45QQSJJONHB2n5FENcweFlMoI7MtHNHDFdqwNXsRKdsB7J/tWbMmj30ptUvCVh/NFidkoBTNToZMmyCZ/qD+ttPfgyHClFr66CQbk2hHugDEOeT7pwdOIzc2FGw==;
	24:b7UFpaLH03PVfCDs4VRK6Ue5Qmg1RL6vrwrtE66lhWGAw30pmnDoSFi8VqolqGJMFiufH0jMn+cwVRN2+QEWitHs5KtpB4/p+zpab6Xm/t4=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2016 23:57:05.6086 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR04MB837
Subject: Re: [PATCH] libopkg: Add disable_intercepts option to opkg.conf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Jan 2016 00:11:29 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit



On 01/06/2016 05:07 PM, Haris Okanovic wrote:
> When set, this option disables interception and deferral of certain
> utilities (E.g. depmod, ldconfig) when called from maintainer scripts
> (E.g. postinst). Disabled by default to maintain old behavior.
> 
> Append "option disable_intercepts 1" to opkg.conf to set it.
> 
> Testing:
>  * Installed package containing postinst script and verified
>    intercept prep/finalize does not run via DEBUG output.
>  * Ran `make check` with option set in the test suite's opkg.conf,
>    no additional failures.
> 
> Yocto bug: https://bugzilla.yoctoproject.org/show_bug.cgi?id=8837
> 
> Signed-off-by: Haris Okanovic <haris.okanovic@ni.com>
> Cc: Alejandro del Castillo <alejandro.delcastillo@ni.com>
> Cc: Paul Barker <paul@paulbarker.me.uk>
> ---
>  libopkg/opkg_cmd.c  | 22 ++++++++++++++--------
>  libopkg/opkg_conf.c |  1 +
>  libopkg/opkg_conf.h |  1 +
>  3 files changed, 16 insertions(+), 8 deletions(-)
> 
> diff --git a/libopkg/opkg_cmd.c b/libopkg/opkg_cmd.c
> index 050e6ec..ff3dcc0 100644
> --- a/libopkg/opkg_cmd.c
> +++ b/libopkg/opkg_cmd.c
> @@ -328,7 +328,7 @@ static int opkg_configure_packages(char *pkg_name)
>      pkg_vec_t *all, *ordered, *visited;
>      unsigned int i;
>      pkg_t *pkg;
> -    opkg_intercept_t ic;
> +    opkg_intercept_t ic = NULL;
>      int r, err = 0;
>  
>      if (opkg_config->offline_root && !opkg_config->force_postinstall) {
> @@ -352,10 +352,13 @@ static int opkg_configure_packages(char *pkg_name)
>          opkg_recurse_pkgs_in_order(pkg, all, visited, ordered);
>      }
>  
> -    ic = opkg_prep_intercepts();
> -    if (ic == NULL) {
> -        err = -1;
> -        goto error;
> +    if (!opkg_config->disable_intercepts) {
> +        ic = opkg_prep_intercepts();
> +        if (ic == NULL) {
> +            err = -1;
> +            goto error;
> +        }
> +        opkg_msg(DEBUG, "Intercepts enabled; statedir=\"%s\"\n", ic->statedir);
>      }
>  
>      for (i = 0; i < ordered->len; i++) {
> @@ -379,9 +382,12 @@ static int opkg_configure_packages(char *pkg_name)
>          }
>      }
>  
> -    r = opkg_finalize_intercepts(ic);
> -    if (r != 0)
> -        err = -1;
> +    if (!opkg_config->disable_intercepts) {
> +        opkg_msg(DEBUG, "Finalizing intercepts\n");
> +        r = opkg_finalize_intercepts(ic);
> +        if (r != 0)
> +            err = -1;
> +    }
>  
>   error:
>      pkg_vec_free(all);
> diff --git a/libopkg/opkg_conf.c b/libopkg/opkg_conf.c
> index f52a4db..2d2f4f7 100644
> --- a/libopkg/opkg_conf.c
> +++ b/libopkg/opkg_conf.c
> @@ -85,6 +85,7 @@ static opkg_option_t options[] = {
>      {"overwrite_no_owner", OPKG_OPT_TYPE_BOOL, &_conf.overwrite_no_owner},
>      {"combine", OPKG_OPT_TYPE_BOOL, &_conf.combine},
>      {"cache_local_files", OPKG_OPT_TYPE_BOOL, &_conf.cache_local_files},
> +    {"disable_intercepts", OPKG_OPT_TYPE_BOOL, &_conf.disable_intercepts},
>  #if defined(HAVE_OPENSSL)
>      {"signature_ca_file", OPKG_OPT_TYPE_STRING, &_conf.signature_ca_file},
>      {"signature_ca_path", OPKG_OPT_TYPE_STRING, &_conf.signature_ca_path},
> diff --git a/libopkg/opkg_conf.h b/libopkg/opkg_conf.h
> index 7460ca2..5421044 100644
> --- a/libopkg/opkg_conf.h
> +++ b/libopkg/opkg_conf.h
> @@ -107,6 +107,7 @@ typedef struct opkg_conf {
>      int volatile_cache;
>      int combine;
>      int cache_local_files;
> +    int disable_intercepts;
>      int host_cache_dir;
>  
>      /* ssl options: used only when opkg is configured with '--enable-curl',
> 

Wrong ml, could you resend to opkg-devel@googlegroups.com? Also, you no longer
needed to CC Paul

-- 
Cheers,

Alejandro

