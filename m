Return-Path: <Martin.Hundeboll@prevas.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35531E00C19; Wed, 18 Apr 2018 09:25:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0107.outbound.protection.outlook.com [104.47.2.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89CDAE009C9
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 09:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=prevasonline.onmicrosoft.com; s=selector1-prevas-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=2PKhtUsJwzZQyaeGCIAJQvqDZQlTO3S5AdmFumyuEvk=;
	b=nsuxEGTVbZBoYxg5zsUBku9eAsyFTDta5b5/a9gCH2qKHDhld5R6/2n5+C4wzhUVBHif1osq9hvtqxap8uX+Pvr1aVvLTgftbkv6XFA6BuPLWimJ00ywecsWbp1LlVVO5EjehkrP2kQuJ4drkOgZIwX8tfPh2RGkTeIpbqMkgws=
Received: from [172.16.11.2] (81.216.59.226) by
	VI1PR10MB0125.EURPRD10.PROD.OUTLOOK.COM (2a01:111:e400:c54a::23) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.675.11;
	Wed, 18 Apr 2018 10:52:21 +0000
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <a3c2c1bf378440259497841cd4807320@sakuraus.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <mnhu@prevas.dk>
Message-ID: <dc54ef45-6b21-5de5-54c3-b4ab28263734@prevas.dk>
Date: Wed, 18 Apr 2018 12:52:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <a3c2c1bf378440259497841cd4807320@sakuraus.com>
X-Originating-IP: [81.216.59.226]
X-ClientProxiedBy: VI1PR0502CA0027.eurprd05.prod.outlook.com
	(2603:10a6:803:1::40) To VI1PR10MB0125.EURPRD10.PROD.OUTLOOK.COM
	(2a01:111:e400:c54a::23)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR10MB0125; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0125;
	3:C5NNJ7aCCLo0FwvsHiuwb1hUGOs7C4bjQVKY8SDxsYjRTPYuWH0Je+CsIRhojR5l2ySsFi4vn0gNFLG/y6PnhJkxEhZWPi8FEjWhkDK/MB9VTcN/lHIw3OIateofD7kN7rKj7/ekKiBLEKAJRH+c4ocPPvANLGq12Y0dTyfQ2EbKGhEI7NMIEaGiHfhzSQdD1YP2ikPYVQpT7RfjCn2XmwLjteZBgY1uWs+srAxkPpn1V0jMJym59wv8QutOUdCD;
	25:5yMec9hvRM+bkyCdIAavwiNqOYSFLbHrXWXtibHKKiZmsaSHRkPpieURsa5y3g8ITQad6W5ONrYCv9LkfP7coJVO7VygbGhd+AaQlUVKzceLMyJ8vRozyxOME4QRpkgID5Tvl3qTLz2METDYwZH0gsmFtrbTzzcWAgCNEvQo+f2eMBe+kNmTIwJqy7/MP3wx1Zt97aYG7DoqLAVXWYTfbs8c5eg7YCaZCWMJ9b/JJJO1SXRrhHix6/CRoyRsNdwENdGjnb3lG+58dp8yG4MdxKU1ko5Hk8cP74oEZkA58VxmJXlyCvGKhqJ5YA7VezLDKb1GSvaRnwMauFiNOXJS1A==;
	31:ylufO1BCjBpm88u5nOM4niJFI2/4yQEBNkqMbi0RcPHKwhe4U2zs8v5MJPNMxf6O5Jm/1+8mhJ69gOv3utrEMOaYsTcNDGg25kVJgR0/tbWl5/5/nfPVqDI8OuNOMSJxOSO4JFZ81iWh9/HauR7IS8+DTpePa5a5etfun4mh0YIATd46euin7BA/8OE6iCR3U+GEw3N5V2exCC1+bTNcZn3PBN57x5sL5ZxGt7r9eyw=
X-MS-TrafficTypeDiagnostic: VI1PR10MB0125:
Authentication-Results: outbound.protection.outlook.com; spf=skipped
	(originating message); dkim=none (message not signed) header.d=none;
	dmarc=none action=none header.from=prevas.dk;
X-Microsoft-Antispam-PRVS: <VI1PR10MB01250D374EE23F0C9D00E2EC9DB60@VI1PR10MB0125.EURPRD10.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(21532816269658);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(93006095)(3231232)(944501368)(52105095)(10201501046)(3002001)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(20161123560045)(20161123558120)(6072148)(201708071742011);
	SRVR:VI1PR10MB0125; BCL:0; PCL:0; RULEID:; SRVR:VI1PR10MB0125; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0125;
	4:H6hhRIAFlCEHi6hoyfweF7rTktDLmouqsppu9PQRML8El4vhqM3Hl8XqgZfe1XXgx6DZIcpUENz5eTtf7NKrL9wMGDOd9gINKFmbuZ9u88z/ft/FSKDzApLH5zPRx2ni2YJbxF6gwi8hlFHsIX5vTiythikF28Zzr3+QW39akZ2PR7z/G/gH3PKs3wZQF54NIWgPZYcLbh2C3EqblOhNkGkjAidrrRVF2Z7NRuFXdKu2HPXP77XlpHWOQvgPYzZP9yJUWZsc8rU/myPmzI1h0Rqb1zCh8hLbFXu+EYd0FMz1R1mmICl/RxIFt8aZiC2q
X-Forefront-PRVS: 06469BCC91
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(39380400002)(366004)(376002)(39850400004)(396003)(346002)(377424004)(16526019)(5660300001)(50466002)(305945005)(65826007)(74482002)(42882007)(6486002)(23746002)(230700001)(77096007)(186003)(2501003)(26005)(6246003)(8676002)(81166006)(53936002)(11346002)(2616005)(956004)(16576012)(72206003)(58126008)(110136005)(316002)(476003)(36756003)(6666003)(66066001)(6116002)(8936002)(47776003)(446003)(31686004)(2906002)(67846002)(53546011)(3846002)(478600001)(25786009)(76176011)(386003)(31696002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB0125; H:[172.16.11.2];
	FPR:; SPF:None; LANG:en; MLV:sfv; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; VI1PR10MB0125;
	23:u33p+vSSk01Ksji79fyXuE85a+sUngR303gIB?=
	=?Windows-1252?Q?sxJgayHg3qrbGJZNh9m/0e1B6wtnJjjsSmt+HUWUS/APUXJfRiDbTpJZ?=
	=?Windows-1252?Q?mwLJb1qNy8/4zysgGXe7zXTaE37KZXJPmkzxzwada1qPgxB1HHDccIfB?=
	=?Windows-1252?Q?DPHUF+hX3QZMvaRVjEh7BG073ge5MdXQ/mEP374PGcNYTwmnsQx0m3uK?=
	=?Windows-1252?Q?w+KVzp3eflvc+uNaxGfzyJ7eC8yRa2/VfXZWLNUf9Rpy6FOUv6v0uYGl?=
	=?Windows-1252?Q?qvA3WTWSTJSf1W8Ql6joP3X7Ze0xywPnWs4Uj6ujwTPUpgI06+qkMy/g?=
	=?Windows-1252?Q?2OittJ/F8NIGkDrjqMRw/4shT4Nc2KUfohcyvKezMtNvcomQvHuR6ni2?=
	=?Windows-1252?Q?pPHf3OtP+6fObtRwgiYK0erqbtaM32a4OdDFFZ0Ih7qkQmlUCNyfTp7Z?=
	=?Windows-1252?Q?GosJo0cxyVnHAoeNd0NFuXu7ckHantPMCxqcyzWLB3Aw08dhPsJEHjtt?=
	=?Windows-1252?Q?/0nBfjiA1XE3EWd6dnMhCgNECkSyJYFo69WE+iFvynqEHNg68TIZ4nHn?=
	=?Windows-1252?Q?nwjdEHGgqhLQjg0yD/phJ/WIT7yHKHq/MFrvFsbHbfgr8jf0eO3E2y6k?=
	=?Windows-1252?Q?36gy3lwtWFDY5Y5uYwFD0hXNashW1Rti5QG+/+BfGNuY7123Qj02/NRA?=
	=?Windows-1252?Q?oLQ2L6tvKkJDz7iTxIsNFcP4THfyunmJ0dMUv14Nx29DrEye8sGlTkTi?=
	=?Windows-1252?Q?GlV+O+70IIL91l9trSaq3EYAZkMzCfKMsa7I2E+GEj6yl8j6r5Wo1vEi?=
	=?Windows-1252?Q?PVTtrM9txje3/aBUZW4vLdz7nV3HHO0IQTtVwd3PCvO8QpPyufLc+Kbi?=
	=?Windows-1252?Q?uXeqPnXQUVu+aTnIiltGyijNqcRS7WrFvgM6NoqV5w9whNUvnsSkAYPl?=
	=?Windows-1252?Q?J1TBWVxk5Sdncc6qzpVhpc+dN3Pt2Mf1ILwq532hNkymY3qMH1Mdz9pE?=
	=?Windows-1252?Q?3Kz77emRAZkqpcrnuTP2Wsbh9flYpLOuuSUOW8ni9KgXAazaq4keanYx?=
	=?Windows-1252?Q?9U+1B8fTZvDPJpchyONulZr+0K7cdG86YVw8zB6om/NvYJkSuLMMeanu?=
	=?Windows-1252?Q?rZTFD3pdNMTTUJbXQKurymfW8pswMBo4roba4wmtj4hyKA5tV0B4FUo9?=
	=?Windows-1252?Q?mk+6+7fpgNgYcBKrdvh/dl5IhSbKnacOf9XpGIexVgObbOtU1cVrgL9z?=
	=?Windows-1252?Q?/Rsnt1vpRbYBk2un5Ra2WJjH/B6kl+ne69vCrE=3D?=
X-Microsoft-Antispam-Message-Info: EAYfoORdvVNW16Upm8juKCckBgX8MkeDgCvhZZgy4wqj3RmhJhA2sa01fLGl3onCKosPf+Xv5qhyzqBTMQjQld/+T5Y5iPF7x48SPlDzYjogAZzC3ai8U45qTr2SWvisct3AIyEP7/P0kGsxtz9YN8JHWjNt8BSHdoIYJYXaHIXupIPtUXaPGLs4JVN217HW
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0125;
	6:gsksxRm/iy/uPQSHdNT5zrnTU7vs+JEwEP2omDFkX0yKq6QnBgpHbCRUufXVSwJvyM3bh8aYQa0G69fQfqOgViY9tudM+awRM14IhFUJIY2Twy4u+UhaUh/ER7OrRyRxHEmxLi+Y2EaMR3RgV2uacMNGNKg9XH5Y9WwEchCKVgAtMl8u19addNVLlWcycH7VMzx+7okSe22zj+T+3rILU/NEoP2H7qtXXaUvAum8+OesC0VdAVrPuefcb8vSf8xSjsg/5XSl5Mr6LGWzZiMfEnmLexgcxfJAJjECX1Nie4ItcR1Do6//bly9anq1md4IA74TVozOm9x87K+gsT7x1l0yw3i9l/RauEdKjlUyPjp8ClAE8It+y/UfC3mSIevI9l9iDmxsOdbFBwPG1ekWwnZnc2KXDOpVdAnAegJKxsrcQ2PPGj33KQ16zFFdw9C3cbSI/eg576hRNVu6Ksgbiw==;
	5:3EfoYjHPAHvqIIvFsJ+LxYG0sRwI3T0gsFlsyL1ve4DVSvui5GgL1twbN4lGKdvruqoA0cI6VKRagaDOHdvHPBGkoNnW8jZCgN3ftyfeer9JASzVJ3svfEPjQ5sDNsqOMNIpo+QM7TZTFMYDsNTv+VDxRFbFJ1yIMKGYG017a1I=;
	24:kE8iu9GIezVPGLNiRZNOMAY2z91YLadOkEUocatJeGOf7JE8aFTxsU9o23eB6SRFb7R8/qMdT3IBcIbH9cbHj9Fchz1cWNwTUMeCSGJmPqU=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0125;
	7:Jw7GHyKuC8hk60wHj6r4BDmQTegGxwZc/tBbrRiUN1c/WyND3ewhEGR+HhivLQ4kE5yLjCK99kgQ4eFF1JWMF6lQE9BH/ggCD6HNv3CpqWwBM+VpRY1BF9NeQAiAoUi3Xdl5kyUwmnHa4ECmuQdN7nNxewyNl1WzNUiKfJFNOaEuWS82aeIo3lfGyWTtxRe2LkNw+goH7SbdXNopYzgUhZHB8xmzOWeC/v3mnlPGgbfUDvCYYWoX2ZpxX7780QxH
X-MS-Office365-Filtering-Correlation-Id: 285f6e04-fc4f-40fa-947f-08d5a51a7687
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2018 10:52:21.6935 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 285f6e04-fc4f-40fa-947f-08d5a51a7687
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB0125
Subject: Re: Connecting to mysql/mariadb
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
X-List-Received-Date: Wed, 18 Apr 2018 16:25:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Greg,

On 2018-04-17 18:50, Greg Wilson-Lindberg wrote:
> I've got a Yocto system that I'm working on that has mysql/mariadb 
> configured but I can't connect to it with MySQL Workbench from another 
> machine. mariadb is running, the network connection is live, but when I 
> try to connect using MySQL Workbench I get an immediate "connection 
> refused" response. I've tried user root, & mysql, same response. I'm 
> using the default configuration from Yocto, so maybe I'm missing 
> something that I should be configuring.
> 
> 
> If anybody here has any experience with this I would appreciate any 
> enlightenment you can give me.

By default, mysql only listens on local interfaces. To make it listen on 
"external" interfaces also, change the "bind-address" setting in 
/etc/my.cnf on the target, and restart mysql.

// Martin

