Return-Path: <yukatharsanij@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84D1FE00B20; Wed,  9 Dec 2015 06:07:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.125.120 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 937 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Dec 2015 06:07:23 PST
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-sg2apc01on0120.outbound.protection.outlook.com
	[104.47.125.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78894E007B2
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 06:07:23 -0800 (PST)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=yukatharsanij@tataelxsi.co.in; 
Received: from [10.75.12.38] (59.160.207.5) by
	TY1PR04MB0671.apcprd04.prod.outlook.com (10.163.246.17) with Microsoft
	SMTP Server (TLS) id 15.1.337.19; Wed, 9 Dec 2015 13:51:43 +0000
References: <2413401446092375@web22h.yandex.ru>
	<SIXPR04MB0668A492F04048D5C7998873EC200@SIXPR04MB0668.apcprd04.prod.outlook.com>
	<CAMKF1sqfDA_FtZApDAgrB2g3n7peQVVnNWS3cEx1ejX4f_XLMA@mail.gmail.com>
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Yukatharsani Jeyachandra <yukatharsanij@tataelxsi.co.in>
Organization: Tata Elxsi
Message-ID: <566831EB.4050302@tataelxsi.co.in>
Date: Wed, 9 Dec 2015 19:21:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqfDA_FtZApDAgrB2g3n7peQVVnNWS3cEx1ejX4f_XLMA@mail.gmail.com>
X-Originating-IP: [59.160.207.5]
X-ClientProxiedBy: MA1PR01CA0001.INDPRD01.PROD.OUTLOOK.COM (25.164.117.8) To
	TY1PR04MB0671.apcprd04.prod.outlook.com (25.163.246.17)
X-Microsoft-Exchange-Diagnostics: 1; TY1PR04MB0671;
	2:CiK98AkIftHhVJtJM42L0m6q9qx9yBa2sbUVcWNgHhrBNHSObqbZfs+OJcVH4Vhw3TUCkvbsfHzT0j5tPIzNzt+5RVf0olkcLjyy45rnhjIZc0n1CPJ6GiEMdiwMI3dGWJg2eI+WK+ZDlOydrvtZ8w==;
	3:e0QGczFx/47JZ8Phcwc4UGGS61A4atRkPVgfboY4VUCdwAMJTjOA6AMhzwd+v8Wy+aSMGQ48CaTaNgTVtDbkhbM2Km3wTGi3jOiSQyPUX/on2jumbRv7UCdbwx5RrQQv;
	25:YW78CYlBWFEOUuTuHaY2et/MSx0HzOiu17fXev6jZ5T4hb0sdXpfvp0ye/iN6v/A6DrlJyqcm5ueNmQ5pnuuWulXGhTv0MSnUHa0xBmC9dZSahH4tS+aOlsYg7dOnv6yE6tMNnQmKKNyjfRCWo5ElXdB3XCmNWseJ2TZ94QYFFzSGWJE8+ec73+4ER6I1mk4vo3Eti1co9FafTU3unqUmgTb0oLLQu3ucy2Kk1TIS/QICzBmwZX6Mqmz247PsDbiJQisRJ7cPaETaTA3HI2V6g==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:TY1PR04MB0671;
X-Microsoft-Exchange-Diagnostics: 1; TY1PR04MB0671;
	20:qY4MXr8RG7HdW6dmMTeWucVEFh65xYV/hKBw75VjkM0g1Pf/7d7n34ta3WlN8Wbg0iYbC+ehhMwhg2lJOfu2PWrFPdJf7ic4i299Px1Rl4/73AvcniSHgErsJeCeLq7cEzL9bzKiCocz4S4jXV+g/9zWwNMG0qKGcjDbfp4kPUPYfDvL0DKpO+DYOwdAPKiAQDdldsza6ZGV+EdKvkPavjsIhqU1qCq29iU4QViK3YpwbLsVegHahoKjVxBWCao6Q8oSbQ0HgsePOC7Dmsah4fvGq/fIEeYTKSHwxm02gzX4t19UVw1+gGFvt6uPhMk4MomCCzffXF+sJ7uLGXIOZc/rJv/l8jUcSliEzqsP+jwQqtPZ71izN1Z9AurBseaYsl/4k1Z7DjxzKWvI4z4e6UOg0lELcI/wkYP80LonJKgg6W3p7PdeHTMhGFtFr+n/jaAmU5QPMaPqd7dgnj/5Ao0iN9t8Xbiv9kTsOdYGbfPtz235cO3y1K4PDiSU9Jso
X-Microsoft-Antispam-PRVS: <TY1PR04MB06718BBBC647A7DD25A1CC7EECE80@TY1PR04MB0671.apcprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(185590752853456)(90964069518039);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:TY1PR04MB0671; BCL:0; PCL:0; RULEID:; SRVR:TY1PR04MB0671; 
X-Microsoft-Exchange-Diagnostics: 1; TY1PR04MB0671;
	4:PiTKyum/4/dIsdvvJ5EOMOIOyPaO+TfmT9bEHBT2dfB+Cb7NnG+lrG5DHzQ4GFggcPiJDo2PMC6iJ1F73XcctT/PdXy/ZwNxxjHmgrb4n+QXHtX+Zfcy6WO1rhtP1fszX1exM1D8Rbc5olSdjkpjr0CJSeOcgD/iKc7oxcBEtsjbptBr/gzSneq21dwiVfBQe5zxeAAo2OYy6BbSGHjcR+HXW8OCsRL6ZYZvunH1UV3lmsd3R/ERE6p54zHMuofB8D6FHm8raeOwbUr71Mbor9RDW6p4sRAhn4pPFbGBeWAQS42S+NtfnDMeV5vkqZGTv3yxudTxsFCRtkUlsgy69bcev0D63V7W6zmM0C2h4I8V/f+Hlnue595mHI+3vPTCpwrbnckhugfUqt3LPqXJ1tUTtdzOO+WlaYGENPMuk5ItoIeve7zXAYzvgKVhho0ckbGxCO/8nWw3D31d+h9q8Q==
X-Forefront-PRVS: 0785459C39
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(6009001)(24454002)(52164004)(189002)(377424004)(199003)(377454003)(53754006)(59896002)(5001960100002)(77096005)(5008740100001)(4001350100001)(2950100001)(15975445007)(189998001)(40100003)(1096002)(5004730100002)(97736004)(74482002)(53806999)(110136002)(36756003)(230700001)(59246006)(65806001)(43066003)(5009440100003)(586003)(122386002)(6116002)(23676002)(47776003)(81156007)(3846002)(450100001)(19580395003)(87976001)(64126003)(229853001)(66066001)(65956001)(4001450100002)(83506001)(1671002)(106356001)(33656002)(65816999)(80316001)(42186005)(87266999)(99136001)(86362001)(19580405001)(50466002)(54356999)(50986999)(105586002)(76176999)(101416001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TY1PR04MB0671; H:[10.75.12.38];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:0; LANG:en; 
Received-SPF: None (protection.outlook.com: tataelxsi.co.in does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtUWTFQUjA0TUIwNjcxOzIzOjY2TFBGb0JOYm9CcHdZc1ZQRkozNTZaWTN0?=
	=?utf-8?B?OE40WlA2MklUTDRjeENSbGxsNTZkSThDbDJrRDZvQXBZQ3BlaHhNdmhoRWl1?=
	=?utf-8?B?NjRnalVsN2lScUloTXY3ZkdhdTAzMktlb2dJai9GWXJxdkJwUEJ4SzJNWXFG?=
	=?utf-8?B?cUtNY3VuRjFsRitGR0wyRDdrYXNKSWNUQk9EU3ZxbDhTNzZkQ0hlR0xLVDJB?=
	=?utf-8?B?VXpWWGI2OGhSTkNrMjdLY0YzbDAvQXpEWnZOVzg1RlAzR0s2OWt5aHRFMXBI?=
	=?utf-8?B?eTlIWGJHaG5nRmsrM1R3dVd1Z2d1TThZTTl3V0pQa1I1TExGQXZ0RmhrT1V6?=
	=?utf-8?B?L3RUdUFpY0FUZUZweE52cGNja1JDa0RuYmk4bEFWN3Z1TGlGakxLcitmd3dT?=
	=?utf-8?B?YWV2ZE5YOVF6eGZsS20zNVhOZXdVYTViOTZIVEdMMXlNeWpoOXhLUENIWGd3?=
	=?utf-8?B?SE1rWEUrSGdSTkJWbVlRWTBNQnBiOEdCZFZBSGVFS0YvekhEUVJuMDVzWXVE?=
	=?utf-8?B?MGQwK1VLdlB4QzNva2kzMnk0Z0VKWEw0c3VnT3F0RXdlbDgwakdCcHcxSUtL?=
	=?utf-8?B?djd5elY0WFVtOXQxZS81UW5MQU1IdmpHNm84anR5SDRqeVQzSEpoakcrZlJa?=
	=?utf-8?B?a2Nza1VQSmdhTG02Wmw2YmJMcWNIUCtPdHJLRkZvbFNtWFdUaHJoTGJhZ1FY?=
	=?utf-8?B?bHBEeDQ3SVlxNjZwL2E3OWxkWnZVQnlHdUdzRkg2ZVp3bGs1ZjlSY3hSYWdy?=
	=?utf-8?B?LytlK3pMQUcwQ09PV2dRSEdCbHJmSWx2TkNSUDJvSCtGMmhwbmtDeFpBVEla?=
	=?utf-8?B?cXU2T2NvTFRxTXlYUXU2RFpUdHlMT0J0SUZJbjR5Q0c1Q2NWOU5uaEN6dWNU?=
	=?utf-8?B?NHE0VGhuRW9OWCthWE9FSG9EdDFwNlNhdDhIbWdvcmVuRSt2ckRNTHVhUWVI?=
	=?utf-8?B?dnhIcVN0ZmJySk4yYmdWdlMvZnpKdmxqK0wyS0NXRTQ4cFhmeEV3eldTOHhm?=
	=?utf-8?B?S0lNQXZTa0hEaENPbTkxamtHNWhBaUNyc0ZYNFcwUUdHNVVaeXlFRHEzM0gv?=
	=?utf-8?B?anorU0p5alJYR21EMmFyUXk1eU0wMHBad0tNYzEwWWY1MkNvVStwbVhaT3VK?=
	=?utf-8?B?SlpLbGNCMGhjRHhHTDM0bi82a2JSMGhsc1Y0TDlGcEtYMHloMDM5T2tTSS9K?=
	=?utf-8?B?YmF1eCtRekpBVTcrcmhwUEs4SkJPZENhRi83UnRlRXVvcUFacnd4RU0xOVZa?=
	=?utf-8?B?QUMvd05OUFRHRENGZjJxNzNoWFJEa1VZbkFkbEVhaGJ4dlhoSE9LOGtiWUVl?=
	=?utf-8?B?YjBZRlNXSHhEOE53Q3BYc3FubkYybkd0NWxBdXREREplaTVZSlc5Z2d4QW9B?=
	=?utf-8?B?MXN6MTYzS2JCOXR0K29IMXBzdW40SzJqNFhmZFhmcmxYNnVLeFVJbDM2R09P?=
	=?utf-8?B?Nm5zd0xMbldiRDJmTGxtYVNzcEw3RGJWMXd4QWc5cGRlblBKeGtHRVU4SDE2?=
	=?utf-8?B?b0NmdmFhMnpyWjBTbkV0SmNMVm9USnJPR001R0VxT0ZkdEFmMy96QkFkakpI?=
	=?utf-8?B?Zk96YUpzei9lTU1oL0s1SXhoQnRzbUZjN0xPeWRFaEg4MXN1bktyYXNiMURz?=
	=?utf-8?B?Vks0Qm5IWkxHTE9lMERDcXo4RGRoTVlKRjVXOFNoZXltV0svaHFCd0tQVEVn?=
	=?utf-8?B?RWV3YnB4ZW9MMjEzRTc0VEVrVnBteTl3MzRFYkMvUmFueEtZNUdXWXcraXRC?=
	=?utf-8?B?OUdBZUpPVlRYRk10RmJkK3E2dHlXYlBMSThrL0xySEhML1RwdjUxWEFCakJu?=
	=?utf-8?B?ZVVIT1FnVjg5Qk94aHJ1V2Y1Y3ZzbDQxWkxhenVXZGZKclRGUTJwbnV2cHJr?=
	=?utf-8?B?TjFwSDk1MWFpMktFVGZ4S0luY3Jsaml5L3dNY1NFZktjRUM3UnVZVSt2Tktj?=
	=?utf-8?B?TTlxWkhjNkJlMmZBZFArNUlsZXhFTisycFp0RFlWeTdhN2lSYXQxTFBKZ21C?=
	=?utf-8?B?UmVvd0tScUNaNWdaSW1RYWp1c0VSb2lRbnlTYTNubXhCVEZoUGRpVmc4MlZ4?=
	=?utf-8?B?WjJFd1VQbXFnOGhSS1hiS3lLc2JqUjRvVHVtYzhaSlRQZWM4a05ITnBWU3RH?=
	=?utf-8?Q?DwJhdNWC6qXGNUgi0EMRVp2gPG/xFmAKh+TZsYz67m8b?=
X-Microsoft-Exchange-Diagnostics: 1; TY1PR04MB0671;
	5:QIpjyxXuoMaE+CnwLWr1kcU9fKsxM8K/u3iA+1HipNSvrMUCLrXL7VPI15whTu4jHNsjOzbltHzhTugM4yxCBG209nkn+tAvXIFV1gRtKqhYQLkFfHpburhoPAmhFD0UoTDONBCnuR+U4ZHopZ1X4g==;
	24:P4YVSsyXMMxcxpUWy4XbFFm49QzUuQ2HNBoFi/DHfO8d1oov+7BTEUo7T3gEengFbK56a1Xhbsod1NfuR33NMPtw7udaCRaWkt5zCje746U=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2015 13:51:43.1371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PR04MB0671
Subject: To Customize the toolchain path in meta-bsp layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yukatharsanij@tataelxsi.co.in
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Dec 2015 14:07:28 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

          I am trying to build my meta-bsp layer using external linaro 
toolchain path.
           But i am getting some issues since i set EXTERNAL_TOOLCHAIN 
path in local.conf file.
           Is there any way to customize my meta layer alone to take 
external linaro tool chain not other general meta layers.

Thanks and Regards,
Yukatharsani J.


On 29-10-2015 11:19, Khem Raj wrote:
> On Wed, Oct 28, 2015 at 10:15 PM, YUKATHARSANI JEYACHANDRA
> <yukatharsanij@tataelxsi.co.in> wrote:
>> Hi,
>>
>> I am trying to build kernel image for new hardware.
>>
>> So, I prefer to use my linux 3.x version with specific changes.
>>
>> I want bitbake to fetch the local path of my linux.
>>
>> Is it possible to specify the local path in SRC_URI.
> yes. use file:///path/to/linux.tar or even you can use externalsrc and
> point it to your tree during development.
> read through
> http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html#building-software-from-an-external-source
>
>>
>> Thanks and Regards,
>>
>> Yukatharsani J.
>>
>>
>>
>>
>>
>> ________________________________
>> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on
>> behalf of Andres Sagot <andres.sagot@yandex.com>
>> Sent: Thursday, October 29, 2015 9:49 AM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Kernel Version Dependency in BB Recipe
>>
>> Hello Yocto Community,
>>
>> I did a search and found a great deal about layer dependencies, but I am
>> still not clear on how or if it is possible to add a kernel version
>> dependency to a BB recipe. I would like to bitbake to report an error if it
>> attempts to build my custom package with an unsupported version of Linux.
>>
>> Thank you and best regards,
>> Andres
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> .
>


