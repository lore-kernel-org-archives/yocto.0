Return-Path: <jakob.hasse@qiio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C77A8E0106F; Fri,  1 Jun 2018 22:53:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.41 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0041.outbound.protection.outlook.com [104.47.2.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1D04E00CDC
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 22:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smarthometechnologych.onmicrosoft.com; s=selector1-qiio-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=RQR57PzLgj/OO6B30zH8Y5DDSryoOKAjsNsFUJUbpZs=;
	b=KV5PNgA5X2AObe/0mNaZZ4w1e6D2pUdcHtAHLrTL0ygRgLuYK60Y1pWl4h/42RLSdEpM5L14CQLXwuB+UTVB4Wfg6Bm822d7OKeMzaQF1x/8KD1jd2w5afrLYYdLToBu8VQzjYLsWaJHQ7svqI3j/KG9KhQMmFgXUr8esRITDwg=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=jakob.hasse@qiio.com; 
Received: from [192.168.1.17] (84.74.160.243) by
	HE1P192MB0058.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:101::20) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.797.11;
	Sat, 2 Jun 2018 05:53:17 +0000
To: Yocto List <yocto@yoctoproject.org>
References: <783ff7cd-c1d8-1802-4b67-3aff339aae31@smart-home-technology.ch>
	<6391ddea-802d-7f4d-26b3-44a79556c8a0@windriver.com>
From: Jakob Hasse <jakob.hasse@qiio.com>
Message-ID: <440e68c9-8ea0-8546-0057-3359adfe82a5@qiio.com>
Date: Sat, 2 Jun 2018 07:53:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <6391ddea-802d-7f4d-26b3-44a79556c8a0@windriver.com>
X-Originating-IP: [84.74.160.243]
X-ClientProxiedBy: AM6PR0202CA0005.eurprd02.prod.outlook.com
	(2603:10a6:209:15::18) To HE1P192MB0058.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:3:101::20)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:HE1P192MB0058; 
X-Microsoft-Exchange-Diagnostics: 1; HE1P192MB0058;
	3:IETOgBTIu92titmc00MxfQwahW3NTvyKhVyx+7QqVf/AcYek7fUtx6U1XRWSo5gCTfmVjUDeA9XvJIK4jrRQ4MTtIcPcfmOjAbzB4HKQ9AzxwWQnojdx1IM8mVjFfodMFvTH6F2trZjvorpRYFVdfbyxnPsOSABDFm9I3crrkmmf/2W7CgTYHWA5CEVdwF+Pjfo6VGiYGPKLYFIPKLLzjw4BRKLkTwI5zhqlqFs+NBMVM7LF+nIETF2KSJPY5GUi;
	25:wJhE/UfsxWd2s8+Fy1hinL0lrbpN/Zx0BGi10eLRGD6b0F+QLXQRKTQtZAgXuDSgIxPw+LfXcKJSJpHzNNHSb60aNFPO5aTzBbHRmxB9pipwK1vTE//OIxdI1mQH4gvahaV2FRQ55QV/CDpqaNzrI5W3UYiz7AoBPaFKOmDBx+c54ZmSYi0qqGQmrr22c9n8Iz+sky1AmEfpKF+Fc13U4F8PSE2RQR9qleqgW42VklF8LV1WEr46a7SUdKDCO2AgYMqiLpYkumHTm4PGighI/A/dRewi/Rs6QvsA6f+WSBtaqYPbNwTqY3tOeJQjWXa4ATqzfSbOW0gLnEPZHrkz8A==;
	31:i8G3NTNJ4tEe8ZBlCTOok62uH/0McNzWwaVFN4RoVi4mvzDHSHE/MFC0BBn47IG8CdYwJw7B5XKGz5ix1+g4fEt/m/9cVesWScuPMRW809FLWOihmpwsbIy+5uQUlWq6Pn5huOFqyDc2nBYuDgTFKqcgLNCA4MhOYsloxYwfcAgirLlcomsVgaJa8yI6HfiE6W2OeeEU/1jp2Ti6ImrS3t4fvUEMXHHOnwyVqC7nThU=
X-MS-TrafficTypeDiagnostic: HE1P192MB0058:
X-Microsoft-Antispam-PRVS: <HE1P192MB0058D3E97BDBEA0955349E1B84610@HE1P192MB0058.EURP192.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(788757137089);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(3231254)(944501410)(52105095)(10201501046)(3002001)(149027)(150027)(6041310)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(2016111802025)(6043046)(6072148)(201708071742011)(7699016);
	SRVR:HE1P192MB0058; BCL:0; PCL:0; RULEID:; SRVR:HE1P192MB0058; 
X-Microsoft-Exchange-Diagnostics: 1; HE1P192MB0058;
	4:iuoEAXOiiH6NIVerM0JLt3xT/JETdbiU8ieFG1TIG6sP9CIV4AunHydGg1hDfP+Ez0oBW7kWerbw6L8hPJNJPKi0mdeGN20VkYSxfNyjKtz+4tuAr5YpBzrbHtOouKI49ZxeJpqgAs3S+hVuPfvV0jvh4hZiI9LOVXS+CzMBS8ny3ZEaSP2wSJoEnC2x4TuJIr6ryg8/WpeFm1h5IGFY4Jkiv3nvWu9r+SzCsrQcReyQnlGczV71Cd5XUoWN5d8dk2D2RfBBXEhY8lKvBy4rxRQd85dDDx79QmqVTCgXNrxHnh6mzsTa3352zdvkkj11
X-Forefront-PRVS: 06911FE69E
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(346002)(376002)(39380400002)(39830400003)(396003)(366004)(199004)(189003)(44832011)(31696002)(58126008)(16576012)(54906003)(6486002)(31686004)(65826007)(6116002)(3846002)(106356001)(105586002)(97736004)(7736002)(2870700001)(81166006)(446003)(86362001)(11346002)(575784001)(64126003)(316002)(8676002)(8936002)(81156014)(2906002)(47776003)(305945005)(50466002)(52116002)(966005)(59450400001)(6246003)(68736007)(67846002)(2616005)(25786009)(5660300001)(956004)(76176011)(117156002)(2486003)(52146003)(23676004)(486006)(476003)(53936002)(6306002)(6916009)(66066001)(65806001)(65956001)(6666003)(36756003)(386003)(478600001)(16526019)(53546011)(77096007)(186003)(26005)(4326008)(229853002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HE1P192MB0058; H:[192.168.1.17];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: qiio.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtIRTFQMTkyTUIwMDU4OzIzOkFtbGdNODBmOWlJSXVON0hFL2dKSFJXMDVO?=
	=?utf-8?B?eHFVSk50RGswTnhlWWV4YVpTTytZWmVaaHVQQUZyV2Q4aE4vL1ZuR1llRWxO?=
	=?utf-8?B?VkZsam4rK3NQWXZrSERsMlhHWHdnT0kvZndINTVQYTVaaTZPQnpDcytVM0cr?=
	=?utf-8?B?NjRKZUdkczBCMkxJSkZxR0tvYWg0Nkw3cVIvOG1wd2pCYkJuVHF5Z25lWFlF?=
	=?utf-8?B?ZmhBMnhiSzF4YkVyU0tLUTB1T0JzOGxYOUE3ZXI3L1ZtVU02WTF2azJLa2pp?=
	=?utf-8?B?NFU5d1gzdXAvcWJYMnNlNEhJeGNsbjY5bUtuTUlaczBsUXArYWpsUG93ZHc1?=
	=?utf-8?B?MzZBYkVScXhlN0VXaHhNZXFRVDRoeFFmT0d5b3hoTndUQjRFY090alQ2dnVY?=
	=?utf-8?B?WVdFV3VGeVBxdk5Yb0RGdlJTNjVpSWtXR01PV2RzS2wvWVVYZ2doaVdiYVRX?=
	=?utf-8?B?QVlMam8vTWJBNnd2VVUxL1JhSFM0aXRWWUl3Z0VkNU5Cd3BxK0I2SWhlZ2cy?=
	=?utf-8?B?R1A0NEl1MXBHWklvci9GMFl2blNNNEdWSmpFMHozT2hVUWF4UTFTZDI1STJo?=
	=?utf-8?B?aFBlaVZ3ZzlIOVhxb2lWUFp5QmVDRC8zMG00SGJaSiszSENCQ0kwZGFnRDM1?=
	=?utf-8?B?WUJaR2RQQlphYU5lL1lYNTd6eUxkYzJVQVlYdDA5Q3d3UU5pOWFkc0dVUkdW?=
	=?utf-8?B?VWRZa0prdEFKYllzMHl6U3pPUS9qMGlsZFZ5emVzdGRYUGhVRElZN0djU0lh?=
	=?utf-8?B?czdNVEJJc0owaDR4YVQ2Z3Y3bVFGaFA1cStjQjIrYjE3ZW5FNDM0UlBWL0Ni?=
	=?utf-8?B?ZHlPa0JXSklaRVRFNy9OZWJuTS9KWG9LR01STkFsc25ndlN4QWk2eUFHcWZu?=
	=?utf-8?B?TCtrV2VVdDhkZFZNZjlVMkpoMEh5UWZNdVRRQ25IdE1icTk3LzlHT1lqQ3BV?=
	=?utf-8?B?dVE0dThHcGxxcXQyM2RQNy81b2dxTG1kWEVpb3NZbGhVUVZQNHp0bThtdkd6?=
	=?utf-8?B?OFo5QmtXakYrNXBwTzZ4Umd3K21Zckt2OE5ZZXVVZE5ydmxwTno1TWd5ZENt?=
	=?utf-8?B?czlTOEUrY1c5UVVMby9PSjdRZmJQbnpHdUloREFDREJkY2E5ZnhNL0d4Vnp3?=
	=?utf-8?B?cUVjWWhzc1cxZGl5UmFraW1aaFYrby91dXFhTXlEVTJEMmRnSGJZWXBUSEVz?=
	=?utf-8?B?VVdZaGwwbk5wM1VtQitEOHVBcG1SeUZVK1ZTL08rNXNpaktuVWpaU1ZpOE1n?=
	=?utf-8?B?RitkUFZxVitjYi8wZ3IwTWRtZFZCRC9OWGorNlFZREsvZG1VSy9vRDk0OUt5?=
	=?utf-8?B?MnNaMGVlUXRaRElHTkhYdUx5aFo5TFgzc3JtdGdudmZEckdzcThuMUtzSzBI?=
	=?utf-8?B?SlZ6N29BcUcvMjdYYUlwT25RbG9INFBnajZqZDN1S25UbkZWV0JJczJSZ3hn?=
	=?utf-8?B?QVV5WHdZVEw1SkFWajhLcFYrU1ZwWFUwRjlDZkVpZVFsRGFTa2Q0RzZiS3VS?=
	=?utf-8?B?S2t2Y3JUWEJhb2xWRDVyNU0zdGZTM215bmpKcFJraVdxZmJzd01IZE1JSUE1?=
	=?utf-8?B?cGpZeWV5M2tBVS9GOS9wZlV4eWFobllpUzQ4a1h0cFJaSHFNZFdyVHZsUHdt?=
	=?utf-8?B?NnAwd0lESmtTZHE4RWkrK25xVVAzVWlWRlpzejlycEQwQmxHWTBVK0ZsVW9D?=
	=?utf-8?B?bEJMODJZNDJhU0R2c0JacXNiM05aaURnU3JUMWN5K1ZkQm5iejRFdlh2emFW?=
	=?utf-8?B?VVhIWEllZ3hxOHA2M1dHelZhb0RLQ3A3ZEUvT1FHNmltbGRJOXVPc1pMY3Jt?=
	=?utf-8?B?T1RQYzlWYjdCRjYvQVBFd2tpdFhFeDZWSk9wempwdmpiOTI4bHpOMVZoM1p6?=
	=?utf-8?B?em9obThvL0hjYWthVXIza2FDWnpzT3lFZ0ZGK1VlWWhKS2NCcmVuWVhIRWd3?=
	=?utf-8?B?SU5jNXFCT0l0ZVdZOXRrRjNsV0liTFMya1ExZ1V2bmFZTmdMN2JBWUhQWGph?=
	=?utf-8?B?OExxT1pkU1B2alpXRDA4eG1KWGZrbG41U1UvU1FZUExaai9vbUlsTHhIZlFE?=
	=?utf-8?B?YlRRelZWcVgvNTVQTmVtcEk4Y3l4MXducS9yR3g0ODN5YzlPcmNjd1VYMTAw?=
	=?utf-8?Q?AOWUuBIb0H+WhAhkgmlDLL3A4mtDCP1dBvP0X8DWUzwa?=
X-Microsoft-Antispam-Message-Info: UsBYLzFFU+GmBsStFByYBV045muAx+9pHGX1I49kxty/6qpZHlUAVMu1HmtlZLiUWiW7Atw3Nmbqy9Ca3KIcb1ryUvE50VAzqhQfBBXy7v2x0uCmssRV1bfqC0Qs095g8fIVYK8HTPT3iTg1yKfHh6SxArQFMBP2vjGp1wAXsFJjD/wLXb/u25Y28h3NsZfI
X-Microsoft-Exchange-Diagnostics: 1; HE1P192MB0058;
	6:i13H8GWA2VpdMb6KrwN7A7zn/KkX2M/a8gDB/iYSr35BsRA0qijRGxqp4dphVSsULpG9lfDEsy3NnaoioleCavUxSx+appseZqEkeLFuzY3uVRGAXSK1mDijmGtyqdTa98dTUZwR8DD/LdApwqv/r+K2rpgmikVOdAyfDVB9BE67boEi1yTzEtGF7sdUeHcS6nkxUj87Opto8miNYCCqxkdwKdLYsmUO401HctI2PaMzDKalgothaVhZ/ycsW750AIWg23peYKBHIt4fs1bl4+xgMJpUbWY9mfnjb6Rx8PDMU5p+GBef3dk1sI5Xl139KJ7GeXhYGFgbEy2zD8UpzdiYJMTAwQFH3n+5qohfYkYfayOzz4hRysouTMVsYTu8Yn0jmaU/R3J6Aekcda1yGFT8L5z9wsVe7Y0gcRdlvKCE497q3MR7EdTH9sFqEkCWrU1fJUoXLuHMvALfAecgKg==;
	5:Fwd6I52jQ2s1C4m6pBZk80+FUEDrR/VEaeQ0gPnmPUeQVvS26B8SZcnxTxQxHwzq8H80GI0IdxZO/6gHZvCffllhcxEdObHWafst2yV1nLUsiMBcJ9P4IFLTRzp5SFJcuP30Sbp1N/ZYoU52fetalW1+iaCiMP+347iL5VlWkyg=;
	24:NwgA+Mdxa27oHRWtX13TkkY8bCfok+ji9DaCnyXfF/zQgfGVHmSz1ac/6ytYCTrH7T3BJSqS5lo6EGwS/9fI9S83ODWnVPl5X9+1+h8mxE8=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; HE1P192MB0058;
	7:VDF2OZ8qChy/A5LKNZI55PCICHVh4TK8WPrvqYvLWIgxdrKd6yPsz420bysny+9mpzbZVtTcqEV/dTqHB41lu7KT8mJeaZMdZ/urg+YNaEWx16n2ondbN5RJmc/kUA1Js9hipHHhI0ySGSNEa5es6SnwGl1Tq/8vJsePZHSjbRr4CeDjzDTKUSKEhXoBh3DxIXyWlCl6GOn3RrcXqVASoA+eahjMW2a5wF+8+Ujiic6+MWU/W6CSYFxH6I0Ct6Yl
X-MS-Office365-Filtering-Correlation-Id: 6b4b6576-b112-4397-8cd5-08d5c84d2385
X-OriginatorOrg: qiio.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2018 05:53:17.1628 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b4b6576-b112-4397-8cd5-08d5c84d2385
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7110674e-f830-4f7f-87a8-a46973e4c75f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P192MB0058
Cc: "meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>
Subject: Re: cgroups and iptables problems running docker - maybe my config wrong?
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
X-List-Received-Date: Sat, 02 Jun 2018 05:53:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: de-DE

Hello Bruce,

Thank you very much for the quick response. I tried to built in the 
kernel changes. But the iptables error persists.
Eventually, I tried to enable systemd again and it still breaks my build 
-.-:

test$ bitbake core-image-base
NOTE: Started PRServer with DBfile: 
/home/build/test/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 40169, PID: 
2335
Loading cache: 100% 
|########################################################################################################| 
Time: 0:00:00
Loaded 3023 entries from dependency cache.
Parsing recipes: 100% 
|######################################################################################################| 
Time: 0:00:01
Parsing of 2194 .bb files complete (2193 cached, 1 parsed). 3024 
targets, 146 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.36.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-dey-linux-gnueabi"
MACHINE              = "ccimx6ulstarter"
DISTRO               = "dey"
DISTRO_VERSION       = "2.4-r1"
TUNE_FEATURES        = "arm armv7ve vfp thumb neon callconvention-hard 
cortexa7"
TARGET_FPU           = "hard"
meta
meta-poky
meta-yocto-bsp       = "HEAD:3befe6d7b7fa8c8481519aa8dd0cae52207ad339"
meta-oe
meta-python
meta-networking
meta-webserver       = "HEAD:dacfa2b1920e285531bec55cd2f08743390aaf57"
meta-qt5             = "HEAD:cfe02f26de53e5c20e6f9555059cbaaf5ab9b22f"
meta-swupdate        = "HEAD:6e4eab4f475b0129d6510815a3bbc4748c97dbbe"
meta-freescale       = "HEAD:d6141ea291a1ac9ab8fb1dd1110d408f840fda57"
meta-fsl-demos       = "HEAD:0ec6d7e206705702b5b534611754de0787f92b72"
meta-digi-arm
meta-digi-dey        = "HEAD:1246ecff2cecea9247d94f36385608ac844d7abb"

Initialising tasks: 100% 
|###################################################################################################| 
Time: 0:00:04
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: core-image-base-1.0-r0 do_rootfs: Could not invoke dnf. Command 
'/home/build/test/tmp/work/ccimx6ulstarter-dey-linux-gnueabi/core-image-base/1.0-r0/recipe-sysroot-native/usr/bin/dnf 
-y -c 
/home/build/test/tmp/work/ccimx6ulstarter-dey-linux-gnueabi/core-image-base/1.0-r0/rootfs/etc/dnf/dnf.conf 
--setopt=reposdir=/home/build/test/tmp/work/ccimx6ulstarter-dey-linux-gnueabi/core-image-base/1.0-r0/rootfs/etc/yum.repos.d 
--repofrompath=oe-repo,/home/build/test/tmp/work/ccimx6ulstarter-dey-linux-gnueabi/core-image-base/1.0-r0/oe-rootfs-repo 
--installroot=/home/build/test/tmp/work/ccimx6ulstarter-dey-linux-gnueabi/core-image-base/1.0-r0/rootfs 
--setopt=logdir=/home/build/test/tmp/work/ccimx6ulstarter-dey-linux-gnueabi/core-image-base/1.0-r0/temp 
-x udev-cache --nogpgcheck install locale-base-en-us locale-base-en-gb 
packagegroup-core-boot packagegroup-core-eclipse-debug run-postinsts 
packagegroup-dey-bluetooth psplash packagegroup-core-ssh-dropbear 
packagegroup-dey-network packagegroup-base-extended 
packagegroup-dey-audio packagegroup-dey-wireless rpm dnf' returned 1:
Added oe-repo repo from 
/home/build/test/tmp/work/ccimx6ulstarter-dey-linux-gnueabi/core-image-base/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:00 ago on Fri 01 Jun 2018 03:49:44 
PM UTC.
Error:
  Problem: package packagegroup-base-1.0-r83.0.ccimx6ulstarter requires 
packagegroup-distro-base, but none of the providers can be installed
   - package packagegroup-base-extended-1.0-r83.0.ccimx6ulstarter 
requires packagegroup-base, but none of the providers can be installed
   - package packagegroup-distro-base-1.0-r83.0.ccimx6ulstarter requires 
packagegroup-dey-core, but none of the providers can be installed
   - conflicting requests
   - nothing provides busybox-hwclock needed by 
packagegroup-dey-core-1.0-r0.0.ccimx6ulstarter

ERROR: core-image-base-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: 
/home/build/test/tmp/work/ccimx6ulstarter-dey-linux-gnueabi/core-image-base/1.0-r0/temp/log.do_rootfs.2380
ERROR: Task 
(/usr/local/dey-2.4/sources/poky/meta/recipes-core/images/core-image-base.bb:do_rootfs) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4106 tasks of which 4105 didn't need to 
be rerun and 1 failed.

Summary: 1 task failed:
/usr/local/dey-2.4/sources/poky/meta/recipes-core/images/core-image-base.bb:do_rootfs 

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Seems that the introduction of systemd "confuses" dnf. I found a quite 
similar description in this bugreport here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12025
only that I'm not using different machines. This bug doesn't seem to be 
resolved yet.

Our Yocto-distribution is DIGI Embedded Yocto. So non-standard.
Shall I still log a bug against oe-core?
If someone here has some more helpful ideas, I would be very thankful.

All the Best,
Jakob


On 31.05.2018 13:44, Bruce Ashfield wrote:
> On 2018-05-31 7:00 AM, Jakob Hasse wrote:
>> Hello,
>
> Make sure to cc meta-virtualization on questions like this, since
> that is where you'll get more eyes that are running docker
> all the time.
>
>> I ran into trouble running docker on our target.
>> 1. When I want to start docker, I first have to re-mount cgroups:
>> root@target:~# cgroups-umount
>> root@target:~# cgroups-mount
>> Otherwise docker would produce an error:
>> ERRO[0002] Failed to built-in GetDriver graph btrfs /var/lib/docker
>>
>> 2. When I then start dockerd, it complains about a missing nat table:
>> root@target:~# dockerd
>> INFO[0000] libcontainerd: new containerd process, pid: 929
>> WARN[0000] containerd: low RLIMIT_NOFILE changing to max current=1024 
>> max=4096
>> INFO[0001] [graphdriver] using prior storage driver: overlay2
>> INFO[0001] Graph migration to content-addressability took 0.00 seconds
>> WARN[0001] Your kernel does not support cgroup memory limit
>> WARN[0001] Unable to find cpu cgroup in mounts
>> WARN[0001] Unable to find blkio cgroup in mounts
>> WARN[0001] Unable to find cpuset cgroup in mounts
>> WARN[0001] mountpoint for pids not found
>> INFO[0001] Loading containers: start.
>> WARN[0001] Running modprobe nf_nat failed with message: `modprobe: 
>> WARNING: Module nf_nat not found in directory 
>> /lib/modules/4.9.81-dey+g2c6ae4c`, error: exit status 1
>> WARN[0001] Running modprobe xt_conntrack failed with message: 
>> `modprobe: WARNING: Module xt_conntrack not found in directory 
>> /lib/modules/4.9.81-dey+g2c6ae4c`, error: exit status 1
>> Error starting daemon: Error initializing network controller: error 
>> obtaining controller instance: failed to create NAT chain: iptables 
>> failed: iptables --wait -t nat -N DOCKER: iptables v1.6.1: can't 
>> initialize iptables table `nat': Table does not exist (do you need to 
>> insmod?)
>> Perhaps iptables or your kernel needs to be upgraded.
>>   (exit status 3)
>>
>> Our configuration is as suggested here: 
>> https://wiki.yoctoproject.org/wiki/TipsAndTricks/DockerOnImage, except 
>
> I've never seen that wiki page before (or at least I don't remember
> seeing it), so I can't confirm or deny the validity of the content :)
>
>> that I don't include the system systemd stuff  (it lets my build fail) 
>
> If systemd is breaking your build, make sure to log a bugzilla against
> oe-core
>
>> and connman (using NetworkManager).
>> Furthermore, I added the following lines to the kernel bbappend file:
>>
>> # remove old defconfig
>> SRC_URI_remove = " defconfig"
>> # replace with new defconfig
>> SRC_URI_append = " file://defconfig"
>>
>> KERNEL_FEATURES_append = " features/cgroups/cgroups.scc "
>>
>> I also added a lot of configurations manually to the defconfig 
>> (mostly via menuconfig) to enable NAT:
>>
>> CONFIG_CGROUP_DEVICE=y
>> CONFIG_IP_MULTICAST=y
>> CONFIG_IP_ADVANCED_ROUTER=y
>> CONFIG_NETFILTER=y
>> CONFIG_NF_CONNTRACK=y
>> CONFIG_NF_TABLES=y
>> CONFIG_NF_NAT=y
>> CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=y
>> CONFIG_NETFILTER_XT_MATCH_COMMENT=y
>> CONFIG_NETFILTER_XT_MATCH_HL=y
>> CONFIG_NETFILTER_XT_MATCH_IPRANGE=y
>> CONFIG_NETFILTER_XT_MATCH_LIMIT=y
>> CONFIG_NETFILTER_XT_MATCH_MULTIPORT=y
>> CONFIG_NETFILTER_XT_MATCH_RECENT=y
>> CONFIG_IP_VS=y
>> CONFIG_NF_TABLES_IPV4=y
>> CONFIG_IP_NF_IPTABLES=y
>> CONFIG_IP_NF_NAT=y
>> CONFIG_IP_NF_FILTER=y
>> CONFIG_IP_NF_MANGLE=y
>> CONFIG_IP6_NF_IPTABLES=y
>> CONFIG_IP6_NF_FILTER=y
>> CONFIG_IP6_NF_MANGLE=y
>> CONFIG_BTRFS_FS=y
>> CONFIG_OVERLAY_FS=y
>>
>> Apart from that, I added virtualization and aufs as DISTRO_FEATURE in 
>> local.conf and also enabled it in menuconfig.
>>
>> But I still keep getting the above mentioned iptables error when 
>> trying to start docker. All this hassle makes me suspicious, 
>> especially as I'm quite sure that I once had docker running already 
>> with an image on our target and it wasn't that hard. So maybe it's 
>> just a misconfiguration and I need to add something in local.conf or 
>> the kernel recipe? Is systemd necessary? Or am I missing some 
>> life-or-death kernel configuration? It would also be nice if I could 
>> avoid the cgroup re-mounting before starting docker.
>
> What release branch are you using ?
>
> I'm running docker from meta-virt every day, as are many others,
> but you have several differences in your configuration.
>
>  - most use systemd as the init manager, I know that I do. That
>    is going to impact how cgroups is set up on your 'host' image.
>    You shouldn't need to touch cgroups at all if systemd is used,
>    since it is correct out of the box.
>
>  - You are using a different kernel and kernel configuration.
>    linux-yocto + the configuration fragments in the layer are what
>    is routinely tested. Are you using linux-yocto, or something
>    different ? If it is different, all you can do is run the various
>    checks to make sure that the docker prereqs are in place.
>
>    The errors you see in dockerd tells me that the options you are
>    turning on, are not making it into the final kernel that is
>    running on target.
>
> Cheers,
>
> Bruce
>
>>
>> Thanks for every answer!
>> All the Best,
>> Jakob
>>
>

