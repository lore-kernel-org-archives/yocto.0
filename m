Return-Path: <Jef.Driesen@niko.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E33C2E00AB3; Mon,  1 Oct 2018 22:26:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.8.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 46885 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Oct 2018 22:26:56 PDT
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
	(mail-eopbgr80045.outbound.protection.outlook.com [40.107.8.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2344AE0097C
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2018 22:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nikogroup.onmicrosoft.com; s=selector1-niko-eu;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=SMXiAGHQpjeQPg7SMBL9Mwl35/vdnTKj6Ky7ZBZRQJY=;
	b=gvnOaJ/QtO3q3w10YUXNvdkQCyHetN6J6ROzyXdDncRNX+vHgcQnn9xaFOLjYlMlRB9VfII/4Wo1wNX3aUIvOPVjgyG0h7CZpZOJ8g8v80/MXZjLfQKDFt1jLBFsZajrRI8VcGueHUoBTbwh3haLV1Wi9WdZGHUjrLnA7paUI50=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Jef.Driesen@niko.eu; 
Received: from [0.0.0.0] (81.82.27.10) by
	VI1PR08MB0382.eurprd08.prod.outlook.com (2a01:111:e400:5829::24) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1185.22;
	Mon, 1 Oct 2018 13:51:55 +0000
To: yocto@yoctoproject.org
From: Jef Driesen <jef.driesen@niko.eu>
Message-ID: <efd194b4-ab20-ccfc-7697-ae8e370515a0@niko.eu>
Date: Mon, 1 Oct 2018 15:51:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
X-Originating-IP: [81.82.27.10]
X-ClientProxiedBy: VI1P194CA0051.EURP194.PROD.OUTLOOK.COM
	(2603:10a6:803:3c::40) To VI1PR08MB0382.eurprd08.prod.outlook.com
	(2a01:111:e400:5829::24)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2c90c46-3184-4812-143f-08d627a50caa
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021125)(8989299)(4534165)(7022125)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR08MB0382; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR08MB0382;
	3:hUUT18ibnNK1mKmpko/DdA0IUNzMrnYaeTl4fTryb7WB0BGY3GmDskJfcJ6jxujTYDQcEcVbBDqymqg9AWK0eB1rVNjnVMMbQ/c1X1UYxN17/vNm+2yKnYDejj3F06SON7K2csreQrMtd1ANnkQxEJWSLp2ROdCLcidaQUbHFT3X1W+PYUJlIwDrYspd22En1FUIcTuq2b0Dh5lLRaHNlCfxNm1OohRCET+DRDzYqZI9eJpCDDYpjTBXTSQvN/Ea;
	25:rfkk6nri+TdvjSqukX6huVmgxErKlUk9J4x7dwgfXww5608Nx98K+K1OtZwUvLfsXv3EoEKpcds5KrPbh/3B73KaVZ+0cy7s4cx2jKWGLo4zwiJ3LlcA2jM1yRy10OabOinrTgfWmzur9mnU8zcbgIeVR9dBqPjwPhqm/fEp0BefvXQUoYLyUgH8ss3Z+o7cMK+JKQwBbmULHOdcd/X/rYCbjdF1f5/9kNsjXbmrkEf/+9V2LOGGPjInvmcCncQxn698swLjPRfr0hvwHWEBHrA770HaempfPDQtbIXt5XKXSjDisyJbBmfAYIJAphqlMfXJ77Kfy1jWAaE8+L8EOw==;
	31:C9CqkFqAhPIXQVhUf4ld5rprlqSnG9WDT+MtX+lxyB9zcYflEhkedvzZuW9Y/EcpW1AN+t8XdRjnuPk/2ij2Bz2rxJAMD7thXkZRY8UWS72jZe8zYqMLXdaYLOavQDl7xw5G7CZCGhjyVREBLVJsgSLkBLZL/kX3pNG15Xu4Jp3pUD4YiKzpl4kRUysqdVPkBE+byfCtMBEhP0AWcuxWA8jjzGDCc0XBA7xIeMM7rf4=
X-MS-TrafficTypeDiagnostic: VI1PR08MB0382:
X-Microsoft-Antispam-PRVS: <VI1PR08MB03822C87BDF5629F423E00ACE2EF0@VI1PR08MB0382.eurprd08.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3002001)(3231355)(944501410)(52105095)(10201501046)(93006095)(93001095)(149066)(150057)(6041310)(2016111802025)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(6043046)(201708071742011)(7699051);
	SRVR:VI1PR08MB0382; BCL:0; PCL:0; RULEID:; SRVR:VI1PR08MB0382; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR08MB0382;
	4:I9WmxDXl1KQ0BsbP9kGqn31lw9qtf8Tk8Jq1irfuBlxaUGNa+5xIo+aaSlhKBMxvT3+6RyWreW0tqYJ8yULYU5Jj1r+xoxU+gV4nF5obrGh2AAN+xgv/9mKWm1bSwUqDXmM2pqiuafJoCAakF6I6h2dYJ/pYWj/EENaHnD2RYFjHLWPPuNspIcahFj2alaceUWajfSdfjcbd8A7y16QQjqZCbJcfJLk/GyDytoa86ZR3EXYu6JUpLNCvC7v9vyR1eXJwnYUodEWo9LINoPER8Q==
X-Forefront-PRVS: 0812095267
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(366004)(39850400004)(396003)(376002)(136003)(346002)(199004)(189003)(16576012)(6916009)(6666003)(52146003)(106356001)(67846002)(74482002)(386003)(23676004)(2486003)(47776003)(36756003)(2351001)(65826007)(97736004)(105586002)(72206003)(26005)(2906002)(2616005)(86362001)(508600001)(49976009)(316002)(486006)(31696002)(65956001)(66066001)(58126008)(186003)(16526019)(65806001)(956004)(25786009)(64126003)(230700001)(8936002)(6116002)(3846002)(44832011)(476003)(52116002)(81166006)(81156014)(8676002)(31686004)(68736007)(50466002)(2361001)(305945005)(7736002)(5660300001)(34290500001)(53936002)(6486002)(28096004)(78286006);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB0382; H:[0.0.0.0]; FPR:;
	SPF:None; LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: niko.eu does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtWSTFQUjA4TUIwMzgyOzIzOmMzVkcyc2o1ODdmamp5YUhMMFc0NVJUcXBY?=
	=?utf-8?B?aTNERWpCSkt1bnRMQmhTRDg4Qmxva05SSDM1R1pYY0w5aG1DNHlSZXo0cy9M?=
	=?utf-8?B?L0JqdVRHRWd6TUFDRWxVS1dhNkQ2NnM1eXVaTkZ6MWVzeE9HNU1WTmNlbnRS?=
	=?utf-8?B?Z296OHRkcVFKaXMrRkdndjM2dGFlYWdZcklIWVZaS2xrb05hMlZ0T3NjVmQr?=
	=?utf-8?B?SDFtWmh2L1RONGxEbi96TStYVEtRMmtzdnRoOVFMT1BPN0JMRjJ4aDQya0Vr?=
	=?utf-8?B?MFZzc0xhdU5HZkdXUldhM0pQWlY3SDVBYjN2Z25FVXgzREkrNGUwSGFrN2JI?=
	=?utf-8?B?V3RVR1lmNWlrdnptOGNhaDJNeGVUN1VaYy8rQ2VwN2p4SUg3Y1lBd05oRkZR?=
	=?utf-8?B?bWQzMjVPU3VwdWVPdUR5L2dScW53ams1VGhzMGZ6NElCSmpkNWUvZ0Z0V1Zu?=
	=?utf-8?B?UnNGNHhpMmgwQzlTS2l3bHpNbWRnK2ErRC9xdVFVTzRUSGlkbGRjMVMyNXhD?=
	=?utf-8?B?QW9SQ0x2Y3B6eXg2c2ZHZGZmS2I4U2VnY3Z4Nkd6SVNzZnkxbisxOVloTlli?=
	=?utf-8?B?c2I4a1MxWFdqcHhlY2V6N1RYcklkUENDblQvSVMrZTJURS95d0xZUnFMZmZO?=
	=?utf-8?B?SkNzQ2ZTbURVeGNnVkNEa0NXTmgwOHpXamZxZXI3Qzh4K1J2QWxDUGVIb096?=
	=?utf-8?B?eUNCREM5Mnp5b2tzZ05BRlBkSlFub1dHQzFmK3VpVndUalloMWJUbVg4cUEx?=
	=?utf-8?B?SEVXK3VneFlQMW5RYkV3N2lPVjhKcjNXdjhKTVp1UTkzRlFHOURNSDBzczh4?=
	=?utf-8?B?WkcrYTM0dXN3OGYzT2MxNVhoVll1M3JrRVptZFhiNHYxME5wWnA4N28vY1Rh?=
	=?utf-8?B?NkN5Yit6dHVnRGk5ZnNjcmFWOHVDNlo5WG9ZMU1xV2R6anZDTU1iRjZOdzNS?=
	=?utf-8?B?YTlxOThiQ2FUQXdQYnhDQnJ1c0RVV1hEbklpT3F5WHBiM05iODhZdHEzQVRJ?=
	=?utf-8?B?VXpSSGl1ZmdHZDFRRGlTNlJyZ1c1SWMzVkpySng2QmwxWGhJTlBSTERKQmIx?=
	=?utf-8?B?dXVHZXNDOXZNVlF4a29HQkhIbUV1eE9qaVgzTEZhaHNOQ2R1b1hUT3VvTm9q?=
	=?utf-8?B?WUhwSjhrZVRNUUdSRXVoZXFhR1J5dXRYRXZlUGFUWC9rUDAvZXBxdWpMbm9G?=
	=?utf-8?B?dGlCVG5yVWM1aU1sL2x0dG8rRGgvVEFsVk5hNGk4cFNzUkZocDBKTjNoTlZL?=
	=?utf-8?B?bERhcDU5NW16MWxRZk5RM2NEd3VBekVRUkxKc0trQ2YxdU02K1RIcXNTL3R6?=
	=?utf-8?B?bHk1WGtrWlN3SEpBbllMZTgvenBKcFlmbWhvWXhWM1dNSFNUVDArTXBUSGhw?=
	=?utf-8?B?S1ZHTCsvbUViUkdLM0NwWHNLZyt6aXdJNnV5cDFNY1lVcjJYcVVseGJ1WXZK?=
	=?utf-8?B?NndZR2FlUHVBRWdLWGlWcFR3ajBwUTIzaGU4dlYzakt5bWU3L3BQZk11ZWs4?=
	=?utf-8?B?Y0RZcDdTWWhZNmdYRnZ0L09XdE5IV1ZaZXdKcU04Sk1BL3dCSVZkck1FUDQ2?=
	=?utf-8?B?S0U2Y21yc1NzbU9VR0lsMGwrUHU1V1lOYU9VOEFyVkZOV2FadWtsNGQzdzVQ?=
	=?utf-8?B?NjhFOXlvcGhrbVN2R0tZS1lWdlZQOCtoZ0h0SXRiaHdOdTVXRFFBM0gyUVov?=
	=?utf-8?B?L0hybWl0RDZZSGlKakVYd0NlWGFnWWR5ZjNVUnY5dE1tTmlYWXV2ZEJnUFlS?=
	=?utf-8?B?T0VHQzRpUzUzYVNKWStwYWZwNnhkQ2VkVGNkS3FjWjR3cVE2T1p6aDBzMmhl?=
	=?utf-8?B?emtIT0ZDSVFuWG9WNWhGcjhvZ0xlUmtweUErU1NvVXIxZnIzU25WZ3ZhUkpy?=
	=?utf-8?B?c24vTzQ0QnZoeXRuaU5uWEF1S1dJTmxqeEJuZnQ3U0VLazZ0cTZQbmtwVjVH?=
	=?utf-8?B?V00zL2VUSEUrblN6MGtHQlNtcTlyU0M4K1ZRMUg0czM5NnQ0bmlFTnNIQ2do?=
	=?utf-8?Q?wb1qXw?=
X-Microsoft-Antispam-Message-Info: z/zUBMCp2yDHbnsuUY3zUoSJgFoksMuMfmpZ6Kk0jW8axW3oNq0RyZD4Z5YndyZHkXGnjPHi9NzYm7qFjdgTXujY7L7FMTmjBSXCyVBehHJ3aW+TEDGu0DCGEr9d2TEoVUq7ZvXxwollauDC59H0sh8SwK1eDzHYCx12n1brCjtAWC58mZ9Wp8R9mle0JDi/e3BlIrBlj4WPjlCh/qqjbH2TQzsHQX42btY0pgwDJt0ZAW7QHYx+Bji45A2S6615651iL/Z8Em0O9+TzpBag9PI9o97OGQenamj3O57UcLPI2b8BijPFR/YbaoU54D07n8Rtv189iZMsJSSKmfNQLLyLY0donHPVFL5r/2EKYy4=
X-Microsoft-Exchange-Diagnostics: 1; VI1PR08MB0382;
	6:d1pdp4876UQhEsJVMqy59F+XQqi6x0RtqJzW+z/V4AoXhUpnv/FxdJ2Ud3c0w5UF2ZHdVGui/hEmlRIo58quZ0k9afgMk0LOoQG7d7jhNKzIEQrMjxRalQq+ddpz2ggemhK5sRGg/p02plcD+/SwQvSxeO89Py48ec6lvwbIQqpuRf6yBfahCAxHIOQ1kCFQdUfGEb/bMDnvAJ/tt7SVohEdmXsO3dowSRBgDAhExxQ9SDk9cwXDiamS/IxhqagyLaGD9sUa3yorjZe1hiu7KVbMW2fEvzd3q5ta0iZNvHuyR4pLDXrwxEnUOIh9RUc8VQwm9hKubCEZ3N3Rr1Z6bi4z/+e4GSdY5LwHoOmjyCStANgaj2ZtCGF1gZiuJhUcPNU0pZ8uZy2qWxDrFIzpEWEXFiZwUgRmgtyop+tdVIcmXpYsfOce30mqTJ7d/ePpCHPulFsEbGQuq6uPkv/DIA==;
	5:auZb6Bek9xhmD2sxCYAc79q+X8wOsaZqN45DHpMY7DQKEjj8SM6wr/vRqblTZ1mcDSQS5gZd28KGbWRA+U3UO01ScU7F/SWjsP1+onR90neiPuzjx147+v6br2wN8b9RrFlRaojgtH8RXuMfzJ2b3/0mH4f+5TEHqbIv2F4WFdo=;
	7:exEmkW50py9Nhd5ReFuJ5Fk2Q9zSm145JRnRjqU3dM5bESPp+oIlU9g2WGlizSW70p4csMk1nZx6J50imXwO3lkKchkqVh7KcWDWtE9wNxtJ7jy1v1DMkNmxDjqTxsHVtI1bTIlKXAtkISFR7axtcA7P+JqwydsIGFTsAiLRZI/B0Q5YK4xzEhN1Rh9LpWmk8w2h9BMySv6G8la/lhi4ASUV2SnftUrUh+BXsZtwolRdHkdKK/CJ+/CVZ68nY6mO
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2018 13:51:55.2251 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c90c46-3184-4812-143f-08d627a50caa
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB0382
Subject: Custom image type with dependencies
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
X-List-Received-Date: Tue, 02 Oct 2018 05:26:58 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

We use a gpg signed tarball as our image format. This is implemented 
using CONVERSIONTYPES:

CONVERSIONTYPES += "gpg"
CONVERSION_CMD_gpg = "gpg --batch --yes -s ${IMAGE_NAME}.rootfs.${type}"
CONVERSION_DEPENDS_gpg = "gnupg"

And then in the image recipe:

IMAGE_FSTYPES += "tar tar.gpg"

This works, except for one thing. The above is a simplification and the 
actual signing is done by a script. It does not only sign the tarball, 
but also adds a few extra files.

But how do I fetch the script, and those extra files? I tried to use 
SRC_URI, as you would do in a regular recipe. But that doesn't work 
because image.bbclass contains:

do_fetch[noexec] = "1"

Next, I tried to create a native "gpgsign" recipe containing my script 
and its dependencies. I then added the dependency:

CONVERSION_DEPENDS_gpg = "gpgsign-native"

assuming it would put my script in the native sysroot of the image. But 
that doesn't seem to work. The only thing that happens are some 
gpgsign-native files in these directories:

./recipe-sysroot-native/installeddeps/
./recipe-sysroot-native/sysroot-providers/

But no files are added in:

./recipe-sysroot-native/

If I do the same with for example xz-native, then the xz binaries are 
added to the native sysroot, and then compressing the image works fine. 
But not for my gpg signing.

What am I doing wrong?

Jef

