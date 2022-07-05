Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCA2AC43334
	for <webhook@archiver.kernel.org>; Tue,  5 Jul 2022 08:47:36 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.69])
 by mx.groups.io with SMTP id smtpd.web09.82374.1657010843956496564
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 01:47:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=P8u5BCgN;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.69,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YnTGDdx5ARmyMhVIfJhdulcXv0mpdNzyDv2xUNQoBFdGnDQPJOoebhyrEXWOlpdo6s23vcWPn3nxNQ1QSd15w0VnSqYO9XkyUDaSKvogPNUJXE3jHBfk19FwWen0puY7VlLxUQ6PFRDC4QbVUsGimlgWR3TNa6y9Ql2rCxsghiZ39nvYPGK7VHV0gMaWh5vkhsqCQlfAAQND3V2Q3NIiTtboochjgDUkhqmQvMBsKpZRCd/Svv7R7gcO0q8KxFzTOuIeabWhCi/ykUqiuDDylH9+3Rj9VX2uk0lKsv0T0LIx+2KqA5H/GA5N7zpwwRfbRF0wVlboYUQw1NfUODAWdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XdWM7MHt1KAB2dveayXbxjn7ZhNYN4om2kfnmm1sjZo=;
 b=oaWcFxoMyJzj+WsbnQmU+xJ5fgWJ46QgB1kzNT5AOI+Pxv3/BZsMbEWU0z5WRq1lFAIevjrDXmf3Gud+rKSRoVzDVGK3mdWz+OIXCq081BS2FttQkFgeM1beajUQv4gGeZsoS1LCgmrcyUIbxuuMhY+yQjKJeZVNaBtgOjCbryzBO/yBcI+llrXfFvljv0kMfxMLaltnXdxHZ35O3jot0ZavnsqrpgTGN1tpxvLTfUFq4zoJnW7gz4i3LsM66OwXaQeL4H+rUlNb3IyBMDpKcbF1jBnFYqWLgy9gZ8NwzqvRXqhhYyIslTr5mUM6GUlzQabWdg+LFuEsqvV/KZRhaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XdWM7MHt1KAB2dveayXbxjn7ZhNYN4om2kfnmm1sjZo=;
 b=P8u5BCgNvzH7NmQuX4/Hvg+fL2oFTW7F5ACwK+XsuY6Tf3Rvw6YY0vbJNrJMKiitGWKu0BHmFK9wlr/QCyLg0fWdjd4hbcqlSW4nFI4HcX2l1x4kVZw1r5r/COhNeQ2Csleb5X/jlGpCCqo0kw2E4gIuXZbI7C3ecmre5xNO1wY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by PAXPR04MB8144.eurprd04.prod.outlook.com (2603:10a6:102:1cc::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.21; Tue, 5 Jul
 2022 08:47:20 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::cc58:11a8:839f:895f]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::cc58:11a8:839f:895f%7]) with mapi id 15.20.5395.017; Tue, 5 Jul 2022
 08:47:20 +0000
Message-ID: <1de0d9a5-726f-78e5-41b5-cc2338553765@theobroma-systems.com>
Date: Tue, 5 Jul 2022 10:47:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [PATCH 1/2] image-without-static-linkage: add class
Content-Language: en-US
To: johannes.schilling@methodpark.de, yocto@lists.yoctoproject.org
References: <20220704162504.1488894-1-johannes.schilling@methodpark.de>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220704162504.1488894-1-johannes.schilling@methodpark.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS8P251CA0010.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:2f2::8) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8ef34467-3877-482a-b937-08da5e62f8cd
X-MS-TrafficTypeDiagnostic: PAXPR04MB8144:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/AQm1+OWnanTqrjNlktRgYq0YiNjcUi+d918zPU7erSyi2BZa61+Mka0by2apl1U3dJW1TjJgZ8FXgwYlvP3TlrPsdml4naHafyw5+TCmdad74FDR6rtm1SkiE6zVMeefGvfXO9e31sF7AGOSvLPYrA2APDvW+j2Iag93WO8Xq0nGa5YAL5GQaCimAKyg2hJsvTP9Y3RWukt5Rgy54Ih+2HgkwJH9un4toVm8AISTyB1g5WCAFj99IVJb0nxCXY5f7skK0lz7cAhVap+hxkmYiIcfMN0ityu0UpQOelifSjwdJTvoqPaVqf5RQzfiSd/oBSphQ1RP6wm723z+JteUvP9zABk9FVjG4HlQDmfctWAkpclu4ai1vx+M0g95Ia+DtJ6nX84heutzh2/bkxwcOFKEzw2tGg1ao+6Wi40dhMu/V7L3CTHiH1MbKpdxuYL3uA3ZicLnJk1ORkkgbHFp0Jv3zphLiJSbROjm+3PytxddpthFmkN77uk1K66GYEAg3dysdWBATduXG/SNPW6D53m5tLO8TS+Ft8G5jzkgPndLO9ELZ5rVPl0CIkc5IKo1WOb7UZ1U6clhDIsl2LyUTlmQqCs2kiGgco1VU7MuPQmINe7hAhiFsvfWftS64EgNU9t/jl9lOsO6SJyBpIznHQBD7REXipvKdfSyHgFBOymWKgHmPr0AV7Jiuaoj/lZykBsKMcRcahaKFTLRKn5MJbp43ELcITgKyFqQoqCuIL+qMaA5WewVOHd7DINunyITPs+E5I9WHr63yC9bqtDbqsaGTuoCOypzbQALUgeyhsTSUYE1yuSapy52kTYpbEeIH1yM+4MjiDU0ySJv6ttggWOdm+TvFbJYeUcAyLfX6s=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(376002)(396003)(136003)(39850400004)(366004)(30864003)(44832011)(478600001)(966005)(5660300002)(8936002)(6486002)(53546011)(6506007)(31696002)(86362001)(26005)(6512007)(41300700001)(2906002)(38100700002)(2616005)(186003)(83380400001)(66946007)(66556008)(66476007)(31686004)(36756003)(316002)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N0RmZjUxU0ZuTXdCNE9LMHQ3cVlVTWlxRndQSUt4SlBQeDcyemowUWtmbTVJ?=
 =?utf-8?B?SUhMTGJkZkIzOHNHUUZBSkpGVElhSE1IOWJYMXRtcGpPM1J6WW5PSy9xLzdK?=
 =?utf-8?B?M2QvVi9oY0R5d0dhWXhUNmRVV0dLRTBwUGp6Rk5TQVRMdFNpNVg1Z0paRFRy?=
 =?utf-8?B?bVBpcWNQYXIxd1VESXppZnFWeFl6L1o4QXVIMy9wZE1UTmdFVm5oRGVNQzNs?=
 =?utf-8?B?VTZRU25rc2E0L2VnWFdEVHpwZWdDWGQyS0o2clFFQnV3SnYxajJLMzhJUWxr?=
 =?utf-8?B?bUczRXRjRER0TGVFWWlQeFI1TE81c3VVM1haLzRwTjlQL0pnd3FxMWI5YWVO?=
 =?utf-8?B?cjFmVTYvYlhha21zOVF1cWNxOFUrNUNqbUgrNzlBa2pnQklPVzZXTEQxYkVw?=
 =?utf-8?B?Ynpsa0xrSi9VKzVoTm1xUHpsZis0N05xbkFwZHdHbHpkNVBIakozc3IrNW5R?=
 =?utf-8?B?bDByT29LNEpRVUNjWVlSc0FCakJLZzJUSEhsSjg3aDQ0dGVWaVdWY3hCMXk5?=
 =?utf-8?B?TmdRZFVYVk5Qc3dMaW13dCsveGFYOUE1cHNvRXY3TGZnQUh0K25pL3JMZVhV?=
 =?utf-8?B?VFhmdS9PUXF1dUcxYmEvb29VdkVOUGFjVWt5ZFp1THcwU0p1Z2YzSGNzbVMv?=
 =?utf-8?B?RGxmZVpSd0NDeWRtYURVTklUdjJQTHB2N01Ya1RXaU9MaGV3aUxSM1RncEVj?=
 =?utf-8?B?MGpwaXExMFZDUGNQcmNGdXY5d3R1dDNVbGpRTWlxN3Axa0hUV1hNWS9xeEFZ?=
 =?utf-8?B?OTg5d1c0TzJ6M08wRTVJb0tQYXJWZ2NEcWlLYWRMbmc4OUlWdG50MGxIdkxW?=
 =?utf-8?B?dlBsbUJNTTdRUnliYUpWa3pMdTh1NEVENlRTUlBEdjhXa3U2d1UreFVtbkgw?=
 =?utf-8?B?WHZUN0ltZXF6Yi85eVR2T0plUzlCbkR2OTRUZHdja2VmbFdVNUd4THVzM0o0?=
 =?utf-8?B?OHRtVFJCK3FDamhCSFpGU1RvbnNocERseGxBN29neSsxZmF1SFdTeDg5NFhi?=
 =?utf-8?B?c1BUa0lrQkd0cGRrUkVaU1VsZ1JDN1g5eHVEalpISGYvN2tSelh2YnJyU2xM?=
 =?utf-8?B?TTgyVWhaVDRnKzZUM0FDbVpjWUpic28zUkkyRUhMSDQzaUhpUUYraXo1dWFt?=
 =?utf-8?B?cytCVlJseGVpVGtSd0lZbTlRSCs3Ylk1azVlblJMT0JmUDBYdGlIZ1B4TC8y?=
 =?utf-8?B?aURkczZlRXZ4cGI1NkpaRndUWU5mdWk2NGkyNCtwUlptK1ZZN0VUUjJ3Nng0?=
 =?utf-8?B?QkRrM05DdkRpak1IbkZpMk5UOVpGcTcway9XQXdCWStMMnV4dDZnSTVGUzJi?=
 =?utf-8?B?ZnJXYWdwbWcvSkMvVVlUdnRYTXZlN2xmelRaamtRWVpQbjZTNEFEcUFyMmlz?=
 =?utf-8?B?UThTNHZIalpBNHRBbmdrM3ZhQ2lyVm1QRXpIQ01xQVRnSVV5R0ZqU2QrUVF6?=
 =?utf-8?B?dzN3YmdiSVhqSkFDSUpBVDBUYzMrWXJKa2lKNFdjdWRNV2ZqVlRjVUNKbm1k?=
 =?utf-8?B?cjNIS1F6RXg5b0ZrTER6cWxkSDN5cGtGbUFLakR2RTZaWnVoY1UzV2hVUnAv?=
 =?utf-8?B?d2Y4bUR5MXZxTm1FTTU2L2pkZnhLSkdjTHRGa2JJbmhLVVcvWlBjNmthY2xu?=
 =?utf-8?B?YzBKUzhFMEZCakpDNG5uSzUrNHhBZXJ4QmtEUUFORXVRWWNpMW9TeGduKzhn?=
 =?utf-8?B?c3JoWjZrRnM3U1QzME5Yb0x4UEwxbkYxdERQQmQ3bW1mRGtCNGRJekdIVG5I?=
 =?utf-8?B?dWdKdHI0d3p5b3cvWmE2UFdQeU1uQkJUZ3pVS0ozSDhHVlk1aUowRjVXb2VG?=
 =?utf-8?B?UlRnOVozMkZZWXp0TFQ1UmxVWlRQbElPcTloL2hSbmxUZzM5OC9wZVhsNEJp?=
 =?utf-8?B?T2lXWURycm5GNk1hM3JwRTdvS2ZHTUlCalRSR2l6SGFvaHRCeDdUQXJoM1Y0?=
 =?utf-8?B?NlNSS0thOExWdmNBZllva1BsTC9Pc1Q5cnNhWnVmcEhWdys1SDNESWtwaDFV?=
 =?utf-8?B?b1dTWXdyQ3c4VzJjMUlza0g5ai9BSnJFSnhxeVZteE43ZS9pbHIzUUU0MHB6?=
 =?utf-8?B?djZ5T3JZSGk2cE9BNm1PYkVqNkQreXFFNkQvc3RGcmRVUnMrVHVhWk0xVGhF?=
 =?utf-8?B?T05haDVBU3FMT3h0cFdkVTJGd3RXOGJKdHRLa3h0WExEUUZOd082Z0F6alRQ?=
 =?utf-8?Q?rs0y/PeV5HyeumxOclCzkPU=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8ef34467-3877-482a-b937-08da5e62f8cd
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 08:47:20.1634
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 kpV3/hl2kqqai0n3HOe9/Bh1jiEmtRgMlOwH5Epqcjc2qdX5eemXyyfvV7Ff5OEQC6EIj2XRVZNSR2S5jpocp+HXTCpP8d6CtWTjNkCB/VboTmVjp9r3ksDux4b0B6xI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8144
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Jul 2022 08:47:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57449

Hi Johannes,

Thanks for the patch.

On 7/4/22 18:25, Johannes Schilling via lists.yoctoproject.org wrote:
> This class provides a new image QA check that tries to detect static
> linkage of a set of well-known libraries, leveraging the detectors from
> cve-bin-tool[0].
> 
> To use in your project, provide a config file as described in the header
> comment of the class, and inherit image-without-static-linkage in your
> image recipe.
> 
> [0] https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_intel_cve-2Dbin-2Dtool_tree_main_cve-5Fbin-5Ftool_checkers&d=DwIFAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Hh9S5cawTgVqdeYOsBqc8rVaNr9ZaBpIWiDZ_AmMvLe1nDPvairY_aW0wkexnXFC&s=9KPe08w-rv38bJzJx3MOSvKRgtdKbTkKVUTuKQhTIZk&e=
> ---
>   classes/image-without-static-linkage.bbclass  |  65 +++++++++
>   .../python/python3-packaging_%.bbappend       |   1 +
>   .../cve-bin-tool/cve-bin-tool-native.bb       |  34 +++++
>   .../files/cve-bin-tool-static-linkage-checker | 126 ++++++++++++++++++
>   4 files changed, 226 insertions(+)
>   create mode 100644 classes/image-without-static-linkage.bbclass
>   create mode 100644 recipes-devtools/python/python3-packaging_%.bbappend
>   create mode 100644 recipes-security/cve-bin-tool/cve-bin-tool-native.bb
>   create mode 100644 recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage-checker
> 
> diff --git a/classes/image-without-static-linkage.bbclass b/classes/image-without-static-linkage.bbclass
> new file mode 100644
> index 0000000..c6f2013
> --- /dev/null
> +++ b/classes/image-without-static-linkage.bbclass
> @@ -0,0 +1,65 @@
> +# Provide a QA check for statically linked copies of libraries.
> +#
> +# You need to provide a config file in TOML format and point the
> +# variable `STATIC_LINKAGE_CHECK_CONFIG_FILE` to it.
> +#
> +# The file format is as follows
> +# ```
> +# [checkers]
> +# modules = [
> +#   # list of checker module names of cve-bin-tool checkers lib to
> +#   # enable, i.e. file names in the cve_bin_tool/checkers subfolder.
> +#   # https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_intel_cve-2Dbin-2Dtool_tree_main_cve-5Fbin-5Ftool_checkers&d=DwIFAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Hh9S5cawTgVqdeYOsBqc8rVaNr9ZaBpIWiDZ_AmMvLe1nDPvairY_aW0wkexnXFC&s=9KPe08w-rv38bJzJx3MOSvKRgtdKbTkKVUTuKQhTIZk&e=
> +#   "librsvg",
> +#   "zlib",
> +# ]
> +#
> +# [exceptions]
> +# ignore_dirs = [
> +#   # list of directories, everything under these is completely ignored
> +#   "/var/lib/opkg",
> +# ]
> +#
> +# [exceptions.ignore_checks]
> +#   # for each binary path, a list of checkers from the global list to
> +#   # ignore for this binary (allowlist)
> +#   "/bin/ary/name" = [ "zlib" ],
> +# ```
> +
> +IMAGE_QA_COMMANDS += "image_check_static_linkage"
> +
> +DEPENDS += "cve-bin-tool-native"
> +
> +inherit python3native
> +
> +
> +STATIC_LINKAGE_CUSTOM_ERROR_MESSAGE ??= ""
> +
> +python image_check_static_linkage() {
> +    import json
> +    from pathlib import Path
> +    import subprocess
> +
> +    from oe.utils import ImageQAFailed
> +
> +    check_result = subprocess.check_output(["cve-bin-tool-static-linkage-checker",
> +        "--config", d.getVar("STATIC_LINKAGE_CHECK_CONFIG_FILE"),
> +        d.getVar("IMAGE_ROOTFS"),
> +    ])
> +    check_result = json.loads(check_result)
> +
> +    deploy_dir = Path(d.getVar("DEPLOYDIR"))
> +    deploy_dir.mkdir(parents=True, exist_ok=True)
> +    image_basename = d.getVar("IMAGE_BASENAME")
> +    stats_filename = "static_linkage_stats-" + image_basename + ".json"
> +    with open(deploy_dir / stats_filename, "w") as stats_out:
> +        json.dump(check_result, stats_out)
> +
> +    binaries_with_violations = {k: v for k, v in check_result.items() if v}
> +    if binaries_with_violations:
> +        msg = "Static linkage check: found {} violations".format(len(binaries_with_violations))
> +        for violator, violations in binaries_with_violations.items():
> +            msg += "\n{}: {}".format(violator, violations)
> +
> +        raise ImageQAFailed(msg, image_check_static_linkage)
> +} > diff --git a/recipes-devtools/python/python3-packaging_%.bbappend 
b/recipes-devtools/python/python3-packaging_%.bbappend
> new file mode 100644
> index 0000000..d6f5869
> --- /dev/null
> +++ b/recipes-devtools/python/python3-packaging_%.bbappend
> @@ -0,0 +1 @@
> +BBCLASSEXTEND += "native"

I would say to put this change directly in python3-packaging recipe, no 
need for a bbappend.

> diff --git a/recipes-security/cve-bin-tool/cve-bin-tool-native.bb b/recipes-security/cve-bin-tool/cve-bin-tool-native.bb
> new file mode 100644
> index 0000000..3efbdf7
> --- /dev/null
> +++ b/recipes-security/cve-bin-tool/cve-bin-tool-native.bb
> @@ -0,0 +1,34 @@
> +SUMMARY = "Scanner for statically linked library copies"
> +HOMEPAGE = "https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_intel_cve-2Dbin-2Dtool&d=DwIFAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Hh9S5cawTgVqdeYOsBqc8rVaNr9ZaBpIWiDZ_AmMvLe1nDPvairY_aW0wkexnXFC&s=EeXrVAokCJc_mQJv65wsyoKKTcNPVZNUJoMzfnfECxg&e= "
> +
> +LICENSE = "GPL-3.0"
> +LIC_FILES_CHKSUM = "file://LICENSE.md;md5=97a733ff40c50b4bfc74471e1f6ca88b"
> +
> +VERSION = "3.1"
> +
> +
> +SRC_URI = "\
> +    https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_intel_cve-2Dbin-2Dtool_archive_refs_tags_v-24-257BVERSION-257D.tar.gz&d=DwIFAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Hh9S5cawTgVqdeYOsBqc8rVaNr9ZaBpIWiDZ_AmMvLe1nDPvairY_aW0wkexnXFC&s=Zsl7OBDrfnYUlSJUhoyVM9PfYwURRjvVRUVBqfi3hFM&e=  \
> +    file://cve-bin-tool-static-linkage-checker \
> +"
> +
> +SRC_URI[md5sum] = "af6958f8be7f7ce0d2b5ddffa34a1aee"
> +SRC_URI[sha256sum] = "c4faaa401a2605a0d3f3c947deaf01cb56b4da927bfc29b5e959cde243bf5daf"
> +
> +inherit python3native native
> +
> +S = "${WORKDIR}/cve-bin-tool-3.1"
> +inherit setuptools3
> +


I guess you could have all inherit in the same line (and also, pretty 
sure native class should be inherited last).

> +RDEPENDS_${PN} = "\

RDEPENDS:${PN}

> +  python3-rich-native \
> +  python3-packaging-native \
> +"
> +
> +do_install:append() {
> +  install -m 0755 "${WORKDIR}/cve-bin-tool-static-linkage-checker" "${D}${bindir}"
> +}
> +FILES-${PN}:append = "${bindir}/cve-bin-tool-static-linkage-checker"
> +

FILES:${PN}:append (also why append and not a simple += ?)

> +do_configure[noexec] = "1"
> +do_compile[noexec] = "1" > diff --git 
a/recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage-checker b/recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage-checker
> new file mode 100644
> index 0000000..7da1b3b
> --- /dev/null
> +++ b/recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage-checker
> @@ -0,0 +1,126 @@
> +#!/usr/bin/env python3
> +

We at least need SPDX license tag here.

> +from importlib import import_module
> +from pathlib import Path
> +
> +import argparse
> +import json
> +import subprocess
> +import toml
> +

This isn't a core module (yet?) as far as I could tell, so you're 
missing a DEPENDS/RDEPENDS on the python recipe/package that provides 
this python module.

On a side note, I'm not entirely sure we would like to maintain a 
wrapper script specific to OE/Yocto in here. Is there any chance of 
seeing this or some variant upstreamed to cve-bin-tool git repo instead?

Cheers,
Quentin

> +
> +def parse_args():
> +    """
> +    Parse command line arguments.
> +    """
> +    parser = argparse.ArgumentParser(
> +        prog=sys.argv[0],
> +        description="Checker for staticly linked copies of libraries",
> +    )
> +
> +    parser.add_argument(
> +        "directory",
> +        help="Path to the directory to scan",
> +    )
> +
> +    parser.add_argument(
> +        "--config",
> +        help="Path to the config file",
> +        required=True,
> +    )
> +
> +    return parser.parse_args()
> +
> +
> +def list_input_files(rootdir):
> +    """
> +    Iterate over the input rootfs and find any file that is an executable ELF file, yielding their
> +    names for the next step to iterate over.
> +    """
> +    import sys
> +    with subprocess.Popen(
> +        ["find", rootdir, "-type", "f", "-executable", "-printf", "/%P\\n"],
> +        stdout=subprocess.PIPE,
> +    ) as find:
> +        for line in find.stdout:
> +            executable_filename = line.decode().strip()
> +            file_out = subprocess.check_output(["file", rootdir + executable_filename]).decode()
> +            if "ELF " not in file_out:
> +                continue
> +
> +            yield executable_filename
> +
> +
> +# PurePath.is_relative_to was only added in python 3.9
> +def _path_is_relative_to(subdir, base):
> +    try:
> +        subdir.relative_to(base)
> +        return True
> +    except ValueError:
> +        return False
> +
> +
> +def check_file(root_dir, filename, checkers, exceptions):
> +    """
> +    Check an executable file for traces of static linkage using all the checkers specified and
> +    applying all exceptions specified.
> +    """
> +    full_filepath = root_dir + filename
> +    strings_out = subprocess.check_output(["strings", full_filepath]).decode()
> +
> +    filepath = Path(filename)
> +    if any(
> +        _path_is_relative_to(Path(ex), filepath) for ex in exceptions["ignore_dirs"]
> +    ):
> +        return []
> +
> +    found_lib_versions = []
> +    for checker_name, checker in checkers.items():
> +        if filename in exceptions["ignore_checks"]:
> +            if checker_name in exceptions["ignore_checks"][filename]:
> +                continue
> +
> +        vi = checker().get_version(strings_out, filename)
> +        if vi and vi["is_or_contains"] == "contains" and vi["version"] != "UNKNOWN":
> +            found_lib_versions.append({checker_name: vi["version"]})
> +
> +    return found_lib_versions
> +
> +
> +def _load_checker_class(mod_name):
> +    """
> +    Load a checker class given the module name.
> +
> +    The class and module name can be generated from each other (the setup.py file for cve-bin-tool
> +    does the same), e.g. module `libjpeg_turbo` contains checker class `LibjpegTurboChecker`.
> +    """
> +    class_name = "".join(mod_name.replace("_", " ").title().split()) + "Checker"
> +
> +    mod = import_module(f"cve_bin_tool.checkers.{mod_name}")
> +    return getattr(mod, class_name)
> +
> +
> +def main():
> +    """
> +    Main entry point.
> +    """
> +    args = parse_args()
> +    config = toml.load(args.config)
> +
> +    all_checkers = {
> +        modname: _load_checker_class(modname)
> +        for modname in config["checkers"]["modules"]
> +    }
> +
> +    violations = {
> +        f: check_file(args.directory, f, all_checkers, config["exceptions"])
> +        for f in list_input_files(args.directory)
> +    }
> +
> +    print(json.dumps(violations))
> +
> +
> +if __name__ == "__main__":
> +    import sys
> +
> +    sys.exit(main())
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57439): https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_g_yocto_message_57439&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Hh9S5cawTgVqdeYOsBqc8rVaNr9ZaBpIWiDZ_AmMvLe1nDPvairY_aW0wkexnXFC&s=fhF-Bp16IzErWKiC5cHDhco8Vr6qeAQvnku916eVePQ&e=
> Mute This Topic: https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_mt_92168377_6293953&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Hh9S5cawTgVqdeYOsBqc8rVaNr9ZaBpIWiDZ_AmMvLe1nDPvairY_aW0wkexnXFC&s=PmhHmonOJoabS8hMDLxEC0Dmc-Qur5hup9eDZ1aVToY&e=
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_g_yocto_unsub&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Hh9S5cawTgVqdeYOsBqc8rVaNr9ZaBpIWiDZ_AmMvLe1nDPvairY_aW0wkexnXFC&s=Humk2R0kxOZoVS6ajsOcTkv5OvG_MVwKpuC2PE_NXuM&e=  [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

