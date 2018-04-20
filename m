Return-Path: <Martin.Hundeboll@prevas.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF402E00994; Fri, 20 Apr 2018 04:12:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0103.outbound.protection.outlook.com [104.47.2.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89A52E00823
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 04:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=prevasonline.onmicrosoft.com; s=selector1-prevas-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=mCmALMoGN2ipnTeKkT+dyp9n0jyefxdMeSTqG92plfE=;
	b=KNffNbIECH4zaY4E1F2s3Wr/5QHz16D58zpEpk9EFUyJOCQve3NLAMysJKCefguuqhPtXWRvC1i/IJob7JFJAk8EKQVAL3L9YPIVhql/ZMAAagLjc6eR2M58Nd0rYQ7NtwJNZK6XNHBxWiNf/4N+yfgtN+9acgAIpQO4GZSO54M=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=prevas.dk; 
Received: from [172.16.11.2] (81.216.59.226) by
	VI1PR10MB0127.EURPRD10.PROD.OUTLOOK.COM (2a01:111:e400:c54a::25) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.696.13;
	Fri, 20 Apr 2018 05:39:18 +0000
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <52faadaa064043c086cefaab5a3e17cf@sakuraus.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <mnhu@prevas.dk>
Message-ID: <9ac9ec01-17c1-83d1-91fe-bfc461550442@prevas.dk>
Date: Fri, 20 Apr 2018 07:39:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <52faadaa064043c086cefaab5a3e17cf@sakuraus.com>
X-Originating-IP: [81.216.59.226]
X-ClientProxiedBy: VI1PR0401CA0012.eurprd04.prod.outlook.com
	(2603:10a6:800:4a::22) To VI1PR10MB0127.EURPRD10.PROD.OUTLOOK.COM
	(2a01:111:e400:c54a::25)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR10MB0127; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0127;
	3:raYYBFg9rwNkH79LAF0ela7j80YMXhGedTVgWBmD2xieuA76csTZdI8IDn4rSIw4CuNdPtcpzyRvkPi/Fp7qGrZ0D3SaKsH4NY39vUz1+jbCm8UrWs6wAdbQGmru9yRzDLtenJKR1+k5htqQVT2xzF41KEOD1KOfo1V6xTsvUr57WdLSfVNuoLu1b/wseRyUPZRlsmzqb9w1StIytAVaht3M4bHqJmMkEbWHRPEy8ZDCHxRL5MAm4O7VKZZqEado;
	25:nCNd0QfpQius32I+R2o47F4RDwR+N13OBWH8lcRrSXbFpbRD+tCmjpQtUYTVBeI7o3TwnvfufjFUXHY/khUVrNpm7k9S5TncYf2plXfoZS/t4vzdPMAI+qkKCYY3M4iG7P5etOunmfJa5fKtHBzGSD3g9tmMcmFYPWm9r860Rk2YR5EYQOuSLzITLLk1nTPG7OqTZC8cetCnEMeJ3U0xTqeJVF8O7xA28r2a4Pb8Zgu2PSEVN1wmB2jWvdQh2RTWxvmSz+f9PkKTMIF1PdhqxFUUgAbZFgDy3lQkI6X7Hi5tMLrkiaLLsn73FOVnr2Py1radtc77eWuUk2yRRrlPjw==;
	31:LNxhaJpRtbjysqewDM6h+L1hhhKhJv66IhXIzzIXQnKavRqSw6QA/FmEdmqeMAr64IgW76y1C4xa0TasIg+WaLYeJG2kNj6mWwzs4w9P8x7+iv3w8kIrP5hC2mzY08tMR1SCbcqeLe8jvWFw8gEwMpwfupYvPSzsFOjOzkXtdpL59GYBlewK8ok5MWvyfecKfT2vnRbfI4f4EIEOumdMnHvwVwdKpj67lDCc36uCVMo=
X-MS-TrafficTypeDiagnostic: VI1PR10MB0127:
X-Microsoft-Antispam-PRVS: <VI1PR10MB01275D888A649904D20BF4DE9DB40@VI1PR10MB0127.EURPRD10.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(20558992708506);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3231232)(944501390)(52105095)(93006095)(3002001)(6041310)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123558120)(20161123562045)(6072148)(201708071742011);
	SRVR:VI1PR10MB0127; BCL:0; PCL:0; RULEID:; SRVR:VI1PR10MB0127; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0127;
	4:LEwGTkRYecym42N5QIGcy9RqBxz08qLWoVKELMLteF6kaw7rT91z77xDICLt+7OOKtaGWMbIS1i/TIfJAXBNqApSla+b7VR9ROihAvKorDbXjfS+BnOD06SI6hJnWTCtcJhJV5l83ZBREUC8tcqhI+qHeBsk+LwGsF76E6HoRi6ZuU4ZkYcgiqJB0kCQQjQA3OoKqfIdDJ/Kku8ir8pas5BTU/had+6pJPnodBVC0OSXHSWYBxanJwdk2hCKw67TzGkdfWOTuNkVsHvqZTxM/u8dEbUgrxFRVpvURL6dHb8Wb57rVFCmtX8wBjwbHpEb
X-Forefront-PRVS: 0648FCFFA8
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(366004)(346002)(376002)(39380400002)(396003)(39850400004)(377424004)(72206003)(6306002)(52116002)(31696002)(6666003)(47776003)(74482002)(66066001)(77096007)(26005)(8936002)(386003)(6116002)(3846002)(76176011)(5660300001)(81166006)(305945005)(2501003)(67846002)(50466002)(8676002)(53546011)(42882007)(36756003)(966005)(2616005)(446003)(476003)(2906002)(11346002)(65826007)(16576012)(7736002)(478600001)(6246003)(6486002)(23746002)(956004)(230700001)(16526019)(31686004)(25786009)(229853002)(186003)(53936002)(110136005)(316002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB0127; H:[172.16.11.2];
	FPR:; SPF:None; LANG:en; MLV:sfv; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; VI1PR10MB0127;
	23:MOtDYJZAMMS6cSJ01aEAmwAuQ3CbCyBC4rruR?=
	=?Windows-1252?Q?zuMiWSnpZoppr6BqM7fNNMjMsi0VBa7ufp1bseAbKGQyaK3CNf7sDUq9?=
	=?Windows-1252?Q?5wqoDsI3o10nU0z5I9byvVmnGiBAAJ33wVwH/x9QMrP0QV2CEucivYbK?=
	=?Windows-1252?Q?RPiSOoFE2Au7PeHBvsidyFmod8PJ7B32NNxSEtTqwbChdW8UWIPXfOLY?=
	=?Windows-1252?Q?GV3CxAeImzaGRWHKaIBEz5vINCjMOFEw5GKSDqsf68fnPf2ELobNGoh4?=
	=?Windows-1252?Q?6GlojQ+8yZLdzBZeB+hflehPncs9/WtzvQJL0sj0PuKLnCMZXFtxpg6A?=
	=?Windows-1252?Q?vDjZqmR+c/yIL8ZgexOTOV1WXz3liZr+kc+uLHlTSBIxxBuPtKId5D01?=
	=?Windows-1252?Q?0lz5YP87B0SinGl2GvBoFXhJbl7T6zS05wr3ySn9+iahT9jtJYJf/BMS?=
	=?Windows-1252?Q?nIPqWJ4HO9oF0ucKnHL3IM4jTSOb2/IDnc0s5SArd+Ir/xYLqRRVlpzK?=
	=?Windows-1252?Q?TZp9310N59PAkN4k6ZnSJ/kKhm4XC3bacO1m+qvBZNbqAsH/wyt805tB?=
	=?Windows-1252?Q?jlwBJptBKaqUvipZ5S7e518kX6tvnyLTlIiHq29AtuyG0ZP7cvXzPsIz?=
	=?Windows-1252?Q?Nzcf/aCbvuIaNi3P5XI6Ao3bxZK+OKtYRlSJxWxHkhpSrenk1zCX0GP+?=
	=?Windows-1252?Q?JU2RKmj4OhOgyEMG5PLLJBdyybPZrWm0z+XcUBTdreJv7StuJHc6QftV?=
	=?Windows-1252?Q?RTelLIypDqyUh8il2LYM+pm6WNgZ44fMnxC6wIl8gnyA4pyiQyiQkBke?=
	=?Windows-1252?Q?s2WcW02H8WSrNtUybZytHQqVkxsLq4DU0dTeEoeHbBlfvMPTG1v9wpbI?=
	=?Windows-1252?Q?rvemZ2rrkbF1L9Zi2+ixzDCT0qemjSN1vAVe12EvEf8lpnsP/4gbyKzQ?=
	=?Windows-1252?Q?KggaUmzYOOA76BDClRdrYY50tTEKzQUosV4A/jtYuS7rf+Gh8AmNolnZ?=
	=?Windows-1252?Q?Fv1Vtnb4RIhe4k87IpdPTfNtXKdIf2zK3ZqTA0jynMnwJjtoXxBHA34f?=
	=?Windows-1252?Q?S4zY99j1FJcdAIVl6cTyzcLjHz2+4S5TgxT/HVYy4wtEEcISHpNCJkF9?=
	=?Windows-1252?Q?cxPJsoVsX+o24lbn5ZiTNz4VLmgQfHRoW0b6oyrfR6lRmTl1dOBRjJBp?=
	=?Windows-1252?Q?eFvYUHLCq3EwsB1HtW5QOCGcgc4zxFvXEfskYK+w+S6JMAsBNXYyVfVS?=
	=?Windows-1252?Q?7H2ysef4CQ9wTHCaLLB0xpVZmqgAnApLatpX5vr7j4tNEvkiK+GEXiRp?=
	=?Windows-1252?Q?9JkP6C6uGtegbJJ3siFaDUMsg=3D=3D?=
X-Microsoft-Antispam-Message-Info: B/2TJoqCUp3ylo8ecYHVPziiG/yPqb606JzRY7a6unH5EjltWMpr2UmL41dwlSKknyJmfMaY1cAW1FiRnWgb5sgp/lYqe/WAq4AOfUUL3qTH8gPjcSZ0m4ej6q7SU1EASae1kFMCBdbntTy7rU09QZUAUWB8NinfFt9lxTmweOEQHaDBcovB/RB8Y8ZoDw9G
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0127;
	6:KhWn/FCEjE61ZMyB8qUvJV8yzl3PyIk64cFtbg+CyfhQGQREReYdCNgFaO0dTV4liuYfElwKAXRmi4xoFueX95O5cyZjP8cEpT5smAkfPYPKVBv9TZuQ9nCyR+nUBbbWnbb8bDS5rgAoWVoc/K+rX8mCfshdUV+WjlbTWWEyZatUGNDtpj0egDVlPDlj0dJg49DrTmbXk7KEX7RNGNATGunyf0Mu+CkgVEpr1bv8tE6RwGIowJ+DgnIGEBGCRj6tlrdOuGRdDNOyjgBUOTUWjXMFZVC70IFoQs5+vpLYeialGXjKKH/NyG7IGl4VgIyguuVMN6gFsJiOTUDANWp9C3e0V8HNM6gsxFXTyr/qz4P0DhYUwn4WWlYEdaCJpP0pWgkjQAPin8mESpqBLnLLH8yMGTAwJojFGGIUBmW3qyNQpUlzs3TJAn7ceTl8E4/CQ9523SqSNo3dWiNFYkI1qw==;
	5:MTGcUxc84slHvc09w+CdZ1thJBPiLgo0DW9JF+oJdWs1rdjBJofDVuiWKdBBY2+vOqDotyy48jRJCcxsadod20XUye6WXGKUv9aMnSCAeTAFSex7VIdmgArnod7aDx4gFlEh91+8Ha41IVtZCeElycAOoVReq50KGwQf4EfnRc4=;
	24:xGFaSp8HE1ux14VlpkuI+POcP4qUEFKb+B9eGqI6ddqlkfJcLZviwtMGpbiJxbr6NvsuQapzZWY+UGyfZ5vAquqAzjQysI3VBDoB3fz9pbg=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; VI1PR10MB0127;
	7:LohNxuv7rucM5SR8oFAfaYcCQdb1vKUaGSKbVzGHu1s/o2DlezG6zcpgKevxeT4TmzfCgbBSc2DI4z2XVprq2sY2xAhY/MfrVV0n+miumzJm8sKGTq3UKUoVLONlceJjpE6sr9IEomWX0DZI+7ByBHQP0aeHMvWvjgrTKk+24tu7tS/VjdrsPomG7T+KoyroXPkS6zPN+3SvFyJCXynb2AOjdTja2EMF5kKVUPQPN0rQ6SRri5gN+urH1BfrG/Bb
X-MS-Office365-Filtering-Correlation-Id: a3336e5b-0e0d-4541-47d5-08d5a6810fc3
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2018 05:39:18.5897 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3336e5b-0e0d-4541-47d5-08d5a6810fc3
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB0127
Subject: Re: How to patch a file in mysql recipe
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
X-List-Received-Date: Fri, 20 Apr 2018 11:12:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Greg,

On 2018-04-19 00:06, Greg Wilson-Lindberg wrote:
> I need to patch the my.cnf file that is part of the mysql/mariadb 
> recipe. It lives in 
> meta-openembedded/meta-oe/recipes-support/mysql/mariadb/my.cnf with the 
> mariadb_5.5.52.bb file one level down.
> 
> I've set up a mariadb_5.5.52.bbappend file as:
> 
> FILESEXTRAPATHS_prepend := "${FILE_DIRNAME}/${PN}:"
> 
> SRC_URI += "file://my.cnf.patch"
> 
> # need to enable auto startup
> SYSTEMD_AUTO_ENABLE_${PN}-server = "enable"
> 
> bitbake finds the my.cnf.patch file but reports that it can't find the 
> my.cnf file to patch. I've set up patching of files that are downloaded 
> as part of a source tree, but never tried to patch a file that is part 
> of a recipe, and apparently I'm missing something. Is it possible to do 
> this, and if so, can someone point out what I need to do to do it 
> correctly?

External sources usually lives in ${S}, while recipe local sources are 
placed in ${WORKDIR}. To make OE apply the patch in ${WORDIR} instead of 
${S}, add the "patchdir"[1] option to the SRC_URI:

SRC_URI += "file://my.cnf.patch;patchdir=${WORKDIR}"

I haven't used this myself, though, so I might be wrong...

// Martin

[1] 
https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-patching-code

