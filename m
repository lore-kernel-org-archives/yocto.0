Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 597D8E00CF6; Tue,  3 Oct 2017 06:55:11 -0700 (PDT)
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
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01D70E00CF3
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 06:55:09 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v93DpE3T026896; Tue, 3 Oct 2017 08:55:08 -0500
Received: from nam03-co1-obe.outbound.protection.outlook.com
	(mail-co1nam03lp0019.outbound.protection.outlook.com [216.32.181.19])
	by mx0a-00010702.pphosted.com with ESMTP id 2dc7s81ss8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2017 08:55:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=tm8ZG7rGckHsBkR9gcHhWgaGOrjGcRORPHJLwlw1Nvs=;
	b=PqqfLWLViQggLr//Yhael+MLb8dQYyR1huha3xIDjQRDC6wzsCT6692uiPPiX+Zbu1XoRmuxW0mekD4ZjRuNICwhSIqoiY/EKpl3HmAcE3Lu4WmKTX+u4MTTMdvfzCaKowVhLDA6MUbyNlVgKlWGU4FSg+ecrJkr854fhhegopY=
Received: from [10.0.62.35] (130.164.62.108) by
	CY1PR0401MB1321.namprd04.prod.outlook.com (10.161.213.13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Tue, 3 Oct 2017 13:55:06 +0000
To: opkg-devel@googlegroups.com, Jeffrey Pautler <jeffrey.pautler@ni.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DM2PR0401MB12954FB72F09E9F56E39C758967D0@DM2PR0401MB1295.namprd04.prod.outlook.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <8c7afc52-d6a3-9e1b-ddca-36cd6789964a@ni.com>
Date: Tue, 3 Oct 2017 08:55:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <DM2PR0401MB12954FB72F09E9F56E39C758967D0@DM2PR0401MB1295.namprd04.prod.outlook.com>
X-Originating-IP: [130.164.62.108]
X-ClientProxiedBy: BN6PR1201CA0011.namprd12.prod.outlook.com (10.174.238.21)
	To CY1PR0401MB1321.namprd04.prod.outlook.com (10.161.213.13)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a5cf9746-0607-4df0-b2f5-08d50a665a8e
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:CY1PR0401MB1321; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1321;
	3:gyH01R9cAZx1H8/8ViZ/O27fBCoBO/PKjax+fSKl9R1FVlKMKGCcOjKRAOS2epP+9gSKZYBjJWic3Du4E2dbLfJQ0vtCzu6SVN22dTnzLCrpG3jAMzd98TaMv3LCDGNCGG2qxnSn9uwMmKszlGuaSpj0dwoY7+f778KYaKJotbn+d7I3WvHlCNjfwV+J4AGEYZH/VzZHKzix+FgheGmxmvw1MFRU/eu4UlQipHGy2EIqr0J1f2H0F4+iBusj0tRu;
	25:+CpT10tuIbOL7Dc6//dQGRtryWFq4A121B7AGSG4hiT2DHiUgQV6+GQHFmMLTZNgl2Tvz6qAOWH1LTEy02t9GiCdkDTKvnNhL87Ogr2Jl+x/4RD3yMnkXLIX1uqb/iZJHUGSzNm4ayVGLoaISluXH7DBKABY3mAvpP5PkRZzJ/Qy/Hw5c3Q0ugIv5P8qjQ7UtkKxkKxorb2uj3D8aqjb5VoRcMQz4/EvAK/OO5BBPRIhEACtSS67WIM1FxUm8ltQ4DpyDqA1KcqyLdmcwsXrgymsPgJfBHhUFOHZ89ZxPN4OTNboWXBBweS5l3qzoBlx/WdQec/cwGRwDKrG49ruYw==;
	31:FQ2pv1encdY+D5fAMh9MYSx5AE7cfBj70r2zWyPHGzB1QRpOVzSt0ryY6AEk1UGl11l4OtjI/9lxW99jcaZnpq8mS87PDIC3xgSpCax1NvYFKRbd8maoeIi6+UV8G/ZVdTOfNjN3UqKgx7I6H8HXPWuTTNn3kpj1AtPpws5es4iPZr/INeAK4bgz6vMyiKhSEg9fuRo7aAQ+CdyAUznI3SyT5gWZGdaLIMbDJI6nFX0=
X-MS-TrafficTypeDiagnostic: CY1PR0401MB1321:
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1321;
	20:gT0xZ82LuuKf3X5q99ThtVIUXT3JG43UadmsHO3cs0ettDEsJ0xtmOUXQczY1pUX65E0VQ5TcQ+EwRk80MMxDjpEHoZlUY1qgU4ShR6H1iDwrs/2JEH6KMeINnVakthiEgvlHvb+MG3znk7i3ODRNmomWTtqaZ/GP/uYNJbcOvlMwBsfF+diVj9vRI+Ms0Z2AiICP+C9rYpY/NY24qqZ+eouP4unKgBT7ocrTuIxqV9+kVa36YU/BFLVIA9230KBQBn0XPHlghqaD3MtXmZbvFXEkpdDp980wH0IW3GxilTw4eEXdlTT5hgT84Q7jpgoeNu9tb1jWP0zs3hxHkXKSeGWYSrGd9KVMmxRsBm8EKX74h2zicdOKZ277eXSjjlB5LE97YCjhYZRdAhWDouDl+2DMEjvOdjNIJhNwRZWcLItE52IMnYk+e2bzZXHj1d+2EfymjP7jjNRAc9wLeRwWj1hCvvBmaSauIjAbp3dT8b/G71WkdZIQpbsxCFkxQOXogmrarSgTMwYKrmdvxzWiogLfPbUjiinA4EVi5C5a7H4Ab7HC3xNvvr4fm8V0NIw0SgGLoQh9/5txN2qe8B/aOMYonx9tswJ/zmkYgCEFvk=
X-Exchange-Antispam-Report-Test: UriScan:(215639381216008)(10436049006162)(228788266533470)(211936372134217)(145744241990776);
X-Microsoft-Antispam-PRVS: <CY1PR0401MB1321747F2B1AEFFA6BEF654886720@CY1PR0401MB1321.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(100000703101)(100105400095)(10201501046)(3002001)(920507026)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY1PR0401MB1321; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY1PR0401MB1321; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1321;
	4:S+NKW/wSYdsl1MSI8WYQSRmo5QrOTy9IM6XnbmVJ2BbNJ2uH0Ef7AL6fPtCLWxkr88OZpDShLBM1dl1SZqCNb7um3T9uiEZoF+ClEEzGToK1TpAjt+oSZ8Qz9WQVfrvENYqTaEfF7guOO4qpjpK+bjEtdTZYpZcqfCkzmblyrwnaE3DfGzkIP93B179WTIMC6zNi3/yBP0n6s3zCQvXoKIicDFeEst3D7097Aj1xVrYHYk1/B1Qem6njzvBlBBBnzJMLLIQ155dwBbaqvQCGgFZhDxcubtnySw68gEfijnl20gwJZAyVoltBkEhefLOfYBtUfOA46bki8QSQDRb6yNGxRgmCvqXq9t5L4DC9sRkF8edHwsGpvvDySvn9GH133k7VnymYn2TQzFDitMHhtx6CvV1vA4afk4nIZjU9yIVF3zgD4J5ws/wsUDMEtSX8
X-Forefront-PRVS: 044968D9E1
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(6009001)(6029001)(346002)(376002)(24454002)(189002)(199003)(377454003)(68736007)(5660300001)(65826007)(53546010)(6116002)(3846002)(2501003)(86362001)(53936002)(6306002)(575784001)(31696002)(58126008)(6246003)(101416001)(81156014)(81166006)(8676002)(25786009)(8936002)(31686004)(2950100002)(110136005)(36756003)(97736004)(76176999)(50986999)(54356999)(105586002)(33646002)(2906002)(189998001)(966005)(23676002)(478600001)(77096006)(6486002)(2870700001)(34040400001)(6666003)(65806001)(7736002)(65956001)(106356001)(83506001)(47776003)(305945005)(16526017)(64126003)(229853002)(16576012)(316002)(50466002)(90366009)(66066001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0401MB1321; H:[10.0.62.35];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTFQUjA0MDFNQjEzMjE7MjM6dG52VlR0QWsydTQ1cFBYdjZPY0tHMXVz?=
	=?utf-8?B?K20xbGZyMXUvV1RrbHlnWWU2YW9YZzRHWmI3K2xmaHJNVmhQWm1OcmliUWtP?=
	=?utf-8?B?alJaekgwYSswcEcrTkl6a01UT1lOdnRMK2xNd2dGck5XT3FHVEJaVXVJWi9v?=
	=?utf-8?B?R1Q3SlZDT1JHQVhRV2hGRDJvZFlleUd4M2VHSlBtbjQ3bEg0WHBhRVYxN2lD?=
	=?utf-8?B?bjRuVXVZbWoyaitEM2NFWHNaV3NmVzNZa1FoQVpzc2RnVlBZTHMyeWs4dHVs?=
	=?utf-8?B?M2xuMDNhaGlsOVphSk9xUzNSdzNUKytLdUhSanBUZHcwd2FXdHVVM1Era1hs?=
	=?utf-8?B?TUh0UjMwZkVwcjg5YkszYmFhOEpCV1JkU1NYa2hlQzZ5NGgrYS8wa3ZHQ1Z1?=
	=?utf-8?B?U1d0RFg4dDVxNXdBYXJxOFowN1p5eFZiaDZpNXZ3QUFhRExEM2dRKzI0c1Qy?=
	=?utf-8?B?R0dNSWduVS9BNHdhUUpaUnZ5U1RVN0hPUUYzbVB4d2MvKzEwTWZaQk92NEZV?=
	=?utf-8?B?MGlDblIxM1Z6UThnMVI2NExxTmFRbEJwQ1d2VFN6bU1xbk11RTVpaFVsWk4w?=
	=?utf-8?B?b2I4R09Ka1Z0Q0hwZXVMMndoRW5FQk0xcjlUOFkrbDlrSkR4dm95d2ZKMG54?=
	=?utf-8?B?M3VJazJXTVNkTmFDRzU5NHc1Rnh3Um14OE1CVUJ2TUNhVFVHVXlSd1h0bFhY?=
	=?utf-8?B?UFVjMEg0c2N1Y3l1eDFEcVBFUHNGcDZZSmxjdUhybHFvWGs1OTFROGlGM3Zy?=
	=?utf-8?B?SUROK1owMU9LeHlVcUhqSmJVR04zY0dRMlpkMTZkbDJyOTMwNGkxd2I1OWlN?=
	=?utf-8?B?VWhBMFBVbERJNVQyRVdrRW4xMjcxbElSbWc5Vm1hM0g0OE8zeCtQL1hnbklh?=
	=?utf-8?B?MXZUQnFiVTVuekI2WWo1dTNvODVvZk1OQVZqZFZhNFYvL002VmFiV1IzOUR0?=
	=?utf-8?B?NTc4dTkzS09DUlFGOGNpK3NncWxHckFWdHFUWi9uWVR0b3pKVU5OVW1qR0NQ?=
	=?utf-8?B?bE53eVNUUlJ6dzAydHRzMTdDTlVuSWw1LzVlZWxndHlsOTdzdE9wWUV0SDlP?=
	=?utf-8?B?RVM5MStieVdyWVEwd0p5WHRsamkwazlEQkxvaEM0Sm81d09xbXVoTTRiR29t?=
	=?utf-8?B?UW9BV3ZpTVNJbzZwZmNnYnlxZnJFU05OU0N3VlArOGFYWnIrQ1FWSldSOGF0?=
	=?utf-8?B?d1Q4SjZTeXZ1aTkyallJS3ZvWjhidWRMaWk0Y0MyL2EydGY0UkRlQS9mQzRO?=
	=?utf-8?B?eFdVNzU1OG9xdWEyRjF1MytVRXp0OWlGOGxZc1ZzTVAzeGxySGw2aEJUbUNz?=
	=?utf-8?B?bVNCWWJvU3NQTmNHSVdjQkw4blVVTjRhaWpyVVQwdmR1K0NkR0VIVFhCcTRW?=
	=?utf-8?B?bERiQ3h3WkN5Q1NwRkdpaG5OSjYwcUlxTUErWUZ4QktNMkhSZFR2VThwTTZj?=
	=?utf-8?B?L2cxSEo5ZWQvUGFQYWtpczZUQzk1RGJLUVAwZ0FLbVhKK0NTeE9XK0preVdj?=
	=?utf-8?B?V3ZQRU1JYUhibURSd29lVm5tYTMyeUJSVmRCSFVhNnYzdkZITHl2TEpVdFQz?=
	=?utf-8?B?Y1RQNGN3bUM5by9UT1BDeDFFUFhtV0l6MUdrdHJubnJKL21TM1M3cnZkYVBC?=
	=?utf-8?B?WFNHQUpwRTVpNkQ2NWYxcjVBajFEWmIzcFFKTXB5Zk04Nk5aNVJKUjh6c1NW?=
	=?utf-8?B?bEZBMEs3blpPMGxPc2NWWVBYLzNyaGJoR25tSldOdU1JTDBISEdYeVQrWU0y?=
	=?utf-8?B?OHVyREE4aWtDWThCczQxQ3hwSjBLUm4vL25KYjZ5WFpHeWhvc2ZXa01kS1do?=
	=?utf-8?B?ZVpEVGV4MTFnekhyWWx4dUhydzRxbDlqQzNuM0s5dFBMV2c3UUFoRTVySnUr?=
	=?utf-8?B?U3gyc3ZCQ2hsNHpzQzZVM0dxSkFaclRzdDJRbVVHd0pTMWlKZVRWMUNHa2Fp?=
	=?utf-8?B?VHh2aXdPWG5FZVFkQ2cxQ3gvRVl2SzEwaHQyNDN5QzJIVURxMktOeUJSbGd3?=
	=?utf-8?Q?gGxmOTpm?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1321;
	6:p1MZeU7DaLn0na/i7xvhYbs11VVQq7l8XCp9O8+PrruYg9hCizweRas7CK1vm9+oI98fyvumOoOTQcM3LFIaHdnXg4nR+KsMaRCcSANKhWD4XqeJB4te3LALibXU+zgQ/qp/orKmSl543W0btvvzclqa57cub2+Mo8backZii7Og52SzWCzw6KMYmHsS98IgsQBFw/4CaJIm220oS8IdB3g/iSVgdy1Lo4eGe0b86AC7NxQrboazDRjDCNWAgy1bMhdBP6I7TJnPpCx+012qq/bFIHrnE9T9UvJ62Chpnn6am/EB1FRhkWfTeiIDrWjja1HJeTW8hZbDZsYUuU3Atw==;
	5:3Mz87sMkDJTq6UCAs1rklc9hXetYXjInVBHqjEFUh2XW1rIqqblyf4lrB8p0/rA+G7GvnPVxhGbBdBgjObz/M8LyCP8I80kc+EaZaRSI7KLV1B1UMcKO2LAxM1dzZOwPZCmDvQOuBzy7/TbzksOOzA==;
	24:dObiNX6HazqG3w+Y6836G/JTlYHw6z+loIfVyIPc0gedqSS1y7PCAyuP1GNTnlPRireAGjto+FrNliWs+yeZcPn8ShiyIgEYPKdiQYo/RkE=;
	7:ypAPPC6MppIggyBTFKtyATDnwih1iUSL2VhW9nX6ZVB6MGsTE3lOW9C/w6yDw5uqs1dHAlRQSUNDG49D423y6gNtVvS+NPPqR4UWr8xYb1iGESXbkwzXpmTIlYpxlk/oANLIzwTPuF8Uet87gqtA5DN032hrfw4ChO5x8wJ5TtS4ywU2tNzWCnsGKhJ48TcBfCh8l0GECvy/QfD8Ex11V90kIVZfH83iFOGrxdrS43o=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2017 13:55:06.0505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1321
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-10-03_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=2 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1710030200
Subject: Re: [opkg-devel] [opkg-utils PATCH] opkg.py: Fix run-time error in call to ArFile
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
X-List-Received-Date: Tue, 03 Oct 2017 13:55:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

ouch...this was clearly wrong

opkg-utils is badly needing an ATS to prevent this bugs from slipping in...

thanks a bunch for the fix! (just merged it into master)


On 10/02/2017 02:37 PM, Jeffrey Pautler wrote:
> Signed-off-by: Jeffrey Pautler <jeffrey.pautler@ni.com>
> 
> ---
> 
> opkg.py | 2 +-
> 
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/opkg.py b/opkg.py
> 
> index 4d6f020..9131755 100644
> 
> --- a/opkg.py
> 
> +++ b/opkg.py
> 
> @@ -168,7 +168,7 @@ class Package(object):
> 
>                   tar = tarfile.open(fn, "r", f)
> 
>                   tarStream = tar.extractfile("./control.tar.gz")
> 
>               else:
> 
> -                ar = ArFile(f, fn)
> 
> +                ar = arfile.ArFile(f, fn)
> 
>                   tarStream = ar.open("control.tar.gz")
> 
>               tarf = tarfile.open("control.tar.gz", "r", tarStream)
> 
>               try:
> 
> -- 
> 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google 
> Groups "opkg-devel" group.
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to opkg-devel+unsubscribe@googlegroups.com 
> <mailto:opkg-devel+unsubscribe@googlegroups.com>.
> For more options, visit https://groups.google.com/d/optout 
> <https://urldefense.proofpoint.com/v2/url?u=https-3A__groups.google.com_d_optout&d=DwMFaQ&c=I_0YwoKy7z5LMTVdyO6YCiE2uzI1jjZZuIPelcSjixA&r=wNcrL2akRn6jfxhHaKavUrJB_C9JAMXtynjLd8ZzgXQ&m=Wm0EzbF29YO9rmdZItSR6b3lsUZz4IyVr_dHT4u24do&s=Y2jGR3ZjJi8xIFNm57GqunDXAZiBeXTuDl3n22kTX6g&e=>.

-- 
Cheers,

Alejandro

