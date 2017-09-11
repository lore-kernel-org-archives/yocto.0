Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2715E008D2; Mon, 11 Sep 2017 10:51:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1214 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Sep 2017 10:51:54 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDAE5E007EF
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 10:51:54 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v8BHVQow022704; Mon, 11 Sep 2017 12:31:36 -0500
Received: from nam03-co1-obe.outbound.protection.outlook.com
	(mail-co1nam03lp0016.outbound.protection.outlook.com [216.32.181.16])
	by mx0a-00010702.pphosted.com with ESMTP id 2cw6r6p3df-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 11 Sep 2017 12:31:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=JZKV+YPmNL/HWrsR/i7/S6k43pr9xkSg1t3Ud1XxhzE=;
	b=WusK0N3f4PxyMsGgFtDtq+J7u2wN9lb41d3Yhl3b9Qn/S5Iy5r2oyHByimr11kPwM4OsAiUQxgLJWN3y1Hi8XxAd7xd0+cb+Yuk3nbG7tU5FEO3RTp5kQfhtTezo/5sO4zMwetEyNRckLEQTV315bYOdmwzRuRc17GT9PVVdxgQ=
Received: from [10.0.62.53] (130.164.62.126) by
	DM2PR0401MB1326.namprd04.prod.outlook.com (2a01:111:e400:5022::13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.35.12;
	Mon, 11 Sep 2017 17:31:33 +0000
To: opkg-devel@googlegroups.com, Adam Trhon <adam.trhon@tbs-biometrics.com>,
	yocto@yoctoproject.org
References: <20170902162346.2013-1-adam.trhon@tbs-biometrics.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <8f268064-b584-eda2-f921-54dc0ccc24b0@ni.com>
Date: Mon, 11 Sep 2017 12:31:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170902162346.2013-1-adam.trhon@tbs-biometrics.com>
X-Originating-IP: [130.164.62.126]
X-ClientProxiedBy: DM5PR21CA0008.namprd21.prod.outlook.com
	(2603:10b6:3:ac::18) To DM2PR0401MB1326.namprd04.prod.outlook.com
	(2a01:111:e400:5022::13)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 77945486-23cc-48ee-6cfd-08d4f93af297
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(2017052603199)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:DM2PR0401MB1326; 
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1326;
	3:NpvvVPYggv7SIwYbIVBeCRcko72Xj3zfXXGYMDL1dZJZSa9M9td/VUnWoR6C2XfbO/sDx628n6TyuMyAxHJbfBz8z01j6Lv4KfrbE3kKPOgS3OtpWG0w4WAXIbWp6Zr3uzm4wozHa6se43UMeF/IauRmW/zmNl/MzmsD+6gBXvHs3Q2BMfqO9j9GhVi/xVm5NgLXKaSnr95E8QWPPgS+hR23Xa2CemIwg/g9m4jjRbvN5MEO+ut5HZnGIWmhn2jT;
	25:0+t9O8Ylxp53BPxsShda4dKb0RR56CjJ2i1mKUlFtfEkRqv8Rildje3GpycsnYvvm8Z7R2lWM4MGYbolY7LgG8IkNn8M8DCML2JCew/MGeWFvBwl4prPbhXN8BCwplvG/UdvpYap/KftZ4b9w+PyamCpNuGRyYiUI3pOKdtJIae1r/0ThYCY+DPD18UOn6joPfnUoaWoKsKlvz1/ZoHh08zy3Dvc1dW/tSKG2ZuQDvP1t4Fx89RrjipDlSXjQsLR7QIwJUKMRdqZEqgzaAppNtmjdbEkdaXHTEatHhAInRMAoWk1OP6pmUhxMG8kkhNh2gDZeN+DEYU7yQ14jWoCXQ==;
	31:DbAfqNuYKGbD+dn/OpzwB5Sws7sXqSRvpkPQsz+8cKh0CL0OGRrWXrIpL5e5qYPBPp944rdApgDfaR2zsTTLzWnKu0xGMbjCUObG/GXQX+l6ql6N+LRDTg0QRdqSSvyaaA/hAcyxHM+QE5v6BjlBHvoJ+AjfspRXFPSdOussWT9Ao/QzcsOszzAqkHz9+f8uJjW+h1MwLVjJ8DAaDDaLHl/q9SrI0Xuz87akLWiZ5no=
X-MS-TrafficTypeDiagnostic: DM2PR0401MB1326:
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1326;
	20:MR7KY02bA8vQQw5QN+GXNcMkom+aBh2ROy7YkPz4Hqyh3leWrSlheSpaaXl7Zh2d7gzGrvaUY9fpN3wPouVTynPI9If3RRpmLzW5f1HJykmxXWx9aYq4wrbKLr9tfnKtAERwjv2Mz6mAjiwoCV8aP7Y2LG5SOIVRd2GW84WWRHeaUw3PxLObcVxov8UNLkuXipgyVIzkatqBy9Ds0vvuS4IyYmDdAQDrsMfIUgMas1ilc9kQrz89HUKUnGdnu+i3rBy99hnNUx1gigeiDcKivhjl17iTjSdpIV7JZuzPMxQ2cd/Yp85kgPyxKFnU6MQpBsOhm1qpWLpl3hS6P4xkT8oe73++RXIaHuXYEAx6xHUjtBb3M4AcCo+S0vm+W8GNLVRk2fepMcHay0DLxfYsLtEfAd2n3ZFpsbFEgGgPYRaVqUpNiS8HiMN+QEHCydma0xDCI0/JYAVpRTs96ACRIQIS1Vz6nD9sqUllFNnc0USAbk8U9oWAPLMIutSTlFzr+fYDI7onCbwV4i1xgu91IvTlMqcObyLfxJMqfpWMqcNTk0kchIr5FJtcgkqzaOV1aAQ0/XTxHCYJp6cMSOtvJgvt8TZewY7zYMRWLvluPtQ=;
	4:ez/cgNL+7jskNwdF8+FS6rnuqRCfYTzd7/T3MpmS3rp8OvxWLnZVN38huvRwHktI4a0XiaJwTqatssWIi2/sXtXCMKgJrlHsar28P+K2Dayjdu2JSu3oTcKewqG7BmCiBvCaEXHsdFaaSrgt289WX33lenQr5rzKpKETB+MGP1hloNERclGba4NkKjRVhXcnAOvgW6+xYeRqSNvL9abq3vPjDspdaE4f2WeSs1HXszfK2oq8lbZxhOMfGkiHlnt3
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <DM2PR0401MB13260750AE8566AEE146061186680@DM2PR0401MB1326.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(100000703101)(100105400095)(10201501046)(6041248)(20161123558100)(20161123560025)(20161123555025)(20161123562025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM2PR0401MB1326; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM2PR0401MB1326; 
X-Forefront-PRVS: 04270EF89C
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(979002)(6049001)(6009001)(189002)(377454003)(24454002)(199003)(8676002)(5660300001)(15650500001)(31686004)(81156014)(81166006)(68736007)(6116002)(97736004)(65826007)(3846002)(575784001)(50466002)(83506001)(31696002)(53936002)(65806001)(53546010)(86362001)(2906002)(36756003)(230700001)(42186005)(8936002)(478600001)(105586002)(106356001)(4001350100001)(77096006)(23676002)(189998001)(2950100002)(7736002)(6486002)(305945005)(47776003)(66066001)(110136004)(65956001)(6246003)(33646002)(25786009)(54356999)(50986999)(64126003)(76176999)(229853002)(101416001)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0401MB1326; H:[10.0.62.53];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtETTJQUjA0MDFNQjEzMjY7MjM6OHJOQXphR1FKRnJRUnRqVTFTSjlYOVVj?=
	=?utf-8?B?cTIveXRLUnBXSWJOMzU1anJkNWFLL3pEcUd1c0hpRVZGV2w0VEY4MWdQKzQ3?=
	=?utf-8?B?TU1QeElZWFdwTmJ6eGcyYlJhT0dFeExJcTJ3eG1zS3ErYkJtRmxkdkY1Wmsy?=
	=?utf-8?B?K1NoQzBRUlFoR3BZb3hZeEZDVU4vOU9rU29PLzNBenVoaVl4RWxmZ210Z2Vj?=
	=?utf-8?B?Ym04cnQyd1Z1Wmh1MXMrR09UWUxqMTN3VTRQQUVtNmFveUtyK3MwZXBZMVVu?=
	=?utf-8?B?OGVMWGVEMm15dW9EY3ZjM0ZjV2Rhc3l6ejhrbjhtZkgzV3A4cVVtaDdaNEly?=
	=?utf-8?B?QlVSNVFqWnQ0NVc4dXhMT2VqZ24vbGNQdnc3eGRraU1XR2lYQ2pETzVsVklY?=
	=?utf-8?B?WXV6eFlwSVArcVM2TGFuWnBGbk5OdWUxYjVYclc5L0lSemxZVDBMSGJVbnpj?=
	=?utf-8?B?TXZBcVNoQ1NQTnVlQk81Y25UbE9VR2lZTGxxaTV2dHBaTlBWTlg4ZWZCWmlL?=
	=?utf-8?B?dU4yclBYejJNVmhZVHlRdFhieGxBUVVoeTZ4bHVERnB4Unk3ZXFwaGZiaFlZ?=
	=?utf-8?B?Y0dMd1hhOWlPMTdVN0tXcTRRNFJUTHh0TzVaNDNTVkg4Zk1IbnNkcjJsNEt2?=
	=?utf-8?B?TmI2THo3cG5hTU1uK0R6N1Y4MUhKV2tOZnYvcmZuOXRWN3E5YUl4dmgvQVlY?=
	=?utf-8?B?SXJmWDhIWDh5OERMcXF4bXlBRFVveDRUelFXdGsrM0VEei9IVUM5R3gySVNm?=
	=?utf-8?B?N3g2M0thWG5wK25wNnBacmN3RFhXMDNMMk84S0wxUnIyeVptZDU0a1B6V1lC?=
	=?utf-8?B?K1RWSFZRbFF5UW9BYkdkMEdIaHJESUxQeTM0N2w4OHN0MDFSME1FNHhXZHRU?=
	=?utf-8?B?ZW05Y0xBY2JTZnZlY1hEU3lYaWhRTnYyRGJadWMzazZ2Q0NoM0FmSW9QekJH?=
	=?utf-8?B?NWZ0eTRpNzdaMEdPZFRFa2NGeFpFY2lyYkF6NDF5MGZhU3J2VVJlWTJYOUps?=
	=?utf-8?B?dWhLU0J3U0c5RHcwaVN6TzI5aGM2RjFhRTRBam8vZlhPTlkxeEM4cWZGK3lu?=
	=?utf-8?B?ektra29VS2xvYS9HamJHdXVBUE5zaHJBQU0yYU41UjJscDFTWlI0eno5OFlI?=
	=?utf-8?B?VGtURnpLcWlKUU5NZnMreWM0cklMcVlDVGtjTlNhYitBR1VyOGE4aTZxYjZG?=
	=?utf-8?B?MDB2TUZTUERGeVBPa1d2dk5PZWZoTjVNU1RqQVp1T1dHSWEzOU5ZUGxSVG82?=
	=?utf-8?B?eFFhc2NmZ1Y3Nnd0VVRGVVFZR1I2em9yVEtrc0RMQmozUjNjTVVFb1RkZFdo?=
	=?utf-8?B?UlZYS1puZFRsbk9VbFA4ckJmTkd1TlcyeHFuWXUvbGlqenFMdlpVeUhLc08v?=
	=?utf-8?B?YzFFcVBsM2NkMHJDdG5lWUNaWFQxV0JXSEJYS29TL1Z2akljS1JhUkpHemd1?=
	=?utf-8?B?MDBTclZ3b3g2azBJbksrTkVwV3YvN3NLYUVzdXZEaWpINnUvMnF6dzNlN2Rk?=
	=?utf-8?B?dzZGNlNxbWE5ZjBVVlI0YklJMUFGR2VNWGVHTzQ4bjl3bE9tejFwYTN4ZXdG?=
	=?utf-8?B?YWxZWjFqK1BXVHB3ZHVINlZBWFpZWWpQY3lEN0J5aWc0RFZmdFpyS2NYdm5u?=
	=?utf-8?B?TFpmTk1mSE1Ed2xueHpIUG9OOFdnVFRWdmVOd1d1UVcxVnJLMncyVXVjamZz?=
	=?utf-8?B?MVFCaGVuRU1mUkZvcFdDY3pEVk02MTBKdWtjMW1LZjlXVTVxbDNDNVVYNHgv?=
	=?utf-8?B?Q3dzdTN1WXdZNmIwR3dPSlAwNDdKK3J1c0hHN2lVQzhPTSsxTXdFdmptQ0lB?=
	=?utf-8?B?WGh2emRDWGd5dFdtaEhVR011UGEwQU84R0FXM2FBSlJoRHo0VG5sSmFpVE9U?=
	=?utf-8?Q?z/nep4F0w6GkxSDcjxaXLWWZWnctONDBin?=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1326;
	6:/7LwHftSUp3KprpdScrs2WtMTtu7D9JcrFCmRMWKmT7p1j4m3qhCN/QVJQmHWPWIYo0B5EPQaXJIBA2cpOnHvBAucUxgWfk8HdepZhh97Jiv8O4RIdxEYzpjTpGJYdG9M0qcdd/419BAv2Gu3miJFZvCnQb/U9mI/VtPhJ451REtPQdzEshSeqW0IG2CbumNyY0EQgOH+IZM+cLA/14wSrQdvcEGC2JfPRuOr0cA/70BFZk9EiMMcEB07zVh4rXLw9yEpv2PuhVUWeuoIUR9x2AHN2cqoBlVVygmcw31bjP7D+NzcWEM3Id2WZWc5dE5iHQft5RP4B79iDgGvTKsEg==;
	5:OczNSDakNqEKOEQCduI88Y/11QFy+yqYIgOQbcAQke9DRpBc2OXGS5wI43tajut+0wgihScmMebkGjyNj4CzYKxdX4cN6vmmhy0ksBEsHNCJd3TK1NvKEmO/YGFVMtgPyPW4ridyxlE6WSt/Uy4TSA==;
	24:L9xBvpCQ9MLPZL/+U+W9ZiDv1VHPuhNjHtJsQFN44qOq7YYvId6jQ2jLHIraCMTVYqBMQx4Vh43pjEqlNuG58ThY+9WYz/FmJfwOtPUOQHQ=;
	7:Su9wWBYREdq/MyzJ/F5p2DkovpYfB5+g4S23kPVWu9LiPAToUEHvNe84s1LWUUbAjvx+hz6NgWppbsCyzpzKBj55N/OcIa3OyIQmq9jlf/PKdgyRmiUUV7ihlOhm3oDkUlfqLd8KHC2TQ4S6dusp6kW/TQ0ClHutlBNRrugqPvW5l564xGxWyqPfzoSigIqvt9zww4YeGFrtRZD3QiVjZROb+sFGR/hZSv+jhbBTPNo=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2017 17:31:33.8105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0401MB1326
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-09-11_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1709110264
Subject: Re: [opkg-devel] [opkg-utils PATCH] opkg-build*: fix empty package name in error message
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
X-List-Received-Date: Mon, 11 Sep 2017 17:51:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

merged, thanks!

On 09/02/2017 11:23 AM, Adam Trhon wrote:
> When opkg-build detects illegal character in package name it prints an error
> message with this name. Due to a wrong variable name the package name in the
> error message is empty. The same error occurs in opkg-buildpackage as well.
> This patch fixes both.
> 
> Signed-off-by: Adam Trhon <adam.trhon@tbs-biometrics.com>
> ---
>  opkg-build        | 2 +-
>  opkg-buildpackage | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/opkg-build b/opkg-build
> index e02eaca..0fe513a 100755
> --- a/opkg-build
> +++ b/opkg-build
> @@ -108,7 +108,7 @@ You probably want to chown these to a system user: " >&2
>  	[ "$?" -ne 0 ] && PKG_ERROR=1
>  
>  	if echo $pkg | grep '[^a-z0-9.+-]'; then
> -		echo "*** Error: Package name $name contains illegal characters, (other than [a-z0-9.+-])" >&2
> +		echo "*** Error: Package name $pkg contains illegal characters, (other than [a-z0-9.+-])" >&2
>  		PKG_ERROR=1;
>  	fi
>  
> diff --git a/opkg-buildpackage b/opkg-buildpackage
> index 719c9a5..b7c0e8c 100755
> --- a/opkg-buildpackage
> +++ b/opkg-buildpackage
> @@ -66,7 +66,7 @@ pkg_appears_sane_control() {
>  	required_field Description >/dev/null
>  
>  	if echo $pkg | grep '[^a-z0-9.+-]'; then
> -		echo "opkg-build: Error: Package name $name contains illegal characters, (other than [a-z0-9.+-])"
> +		echo "opkg-build: Error: Package name $pkg contains illegal characters, (other than [a-z0-9.+-])"
>  		PKG_ERROR=1;
>  	fi
>  
> 

-- 
Cheers,

Alejandro

