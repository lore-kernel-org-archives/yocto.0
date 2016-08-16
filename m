Return-Path: <manjukumar.harthikote-matha@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A94A4E00D07; Mon, 15 Aug 2016 18:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.60 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1067 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Aug 2016 18:18:51 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0060.outbound.protection.outlook.com [104.47.38.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07F8CE00CFF
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2016 18:18:51 -0700 (PDT)
Received: from SN1NAM02FT023.eop-nam02.prod.protection.outlook.com
	(10.152.72.59) by SN1NAM02HT035.eop-nam02.prod.protection.outlook.com
	(10.152.72.193) with Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id 15.1.567.7;
	Tue, 16 Aug 2016 00:46:26 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.100 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
	SN1NAM02FT023.mail.protection.outlook.com (10.152.72.156) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.567.7
	via Frontend Transport; Tue, 16 Aug 2016 00:46:26 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:38857
	helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bZSWN-0007Ku-UJ
	for yocto@yoctoproject.org; Mon, 15 Aug 2016 17:46:23 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bZSWM-0001oo-UL
	for yocto@yoctoproject.org; Mon, 15 Aug 2016 17:46:22 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	u7G0kMqD019903
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2016 17:46:22 -0700
Received: from [172.19.74.183] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bZSWM-0001oi-7A
	for yocto@yoctoproject.org; Mon, 15 Aug 2016 17:46:22 -0700
To: <yocto@yoctoproject.org>
From: Manjukumar Harthikote Matha <manjukumar.harthikote-matha@xilinx.com>
Message-ID: <ebf6a9f3-caad-9d46-b949-d91cbd4dedf7@xilinx.com>
Date: Mon, 15 Aug 2016 17:43:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.0.0.1202-22514.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(2980300002)(438002)(189002)(199003)(106466001)(107886002)(50466002)(9786002)(450100001)(31686004)(33646002)(64126003)(23676002)(11100500001)(7846002)(586003)(86362001)(63266004)(36756003)(110136002)(305945005)(356003)(8936002)(50986999)(189998001)(31696002)(83506001)(230700001)(65956001)(87936001)(2906002)(54356999)(92566002)(229853001)(4001350100001)(2351001)(65806001)(47776003)(8676002)(81166006)(81156014)(626004)(77096005)(65826006)(107986001)(5001870100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1NAM02HT035; H:xsj-pvapsmtpgw02;
	FPR:; SPF:Pass; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com;
	MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02FT023;
	1:CRvD/wlMykC6MHZeXgtMEaXWwMWTOPfgTMZr0Dcbha/XTkWQ1UVl6g9LSJLjUf1DQ0O207EIwUKAboHuMPU1TcIwxH1eL+0PwGn7dBCDg53EGaGO9hZulEyEbc2Y1T3XVH7KPrHT1fW3xc7D5voBCeTKiwW3eHmJqgB5Z5iusIGyyPw9OpMYlVETY0lzX1U9E0S7/LOGiMV4OXvVtPjiHOY/odxzY9c379tGq+mPQ3Ck8E3HqYis0vPMhswi6kaxw1eMBR4qhVCW0dA89kEq7LRWq+efuuS1FrDJ1zbL6EFw6aWJlKnlYtSe3eJWsCqlLr/xYDxySVp14HLkn23BR/MyRnV00rP3Y8gVX0G3K6Yy3Lk+YlRIVjPPFdbtMrwDEu1gNIu9zCRsknkxCB/pyeM2QMAWLUiNCQL0cFm/TZSPKbNFdCmfXHRqlItuo4s/bLlm9pNvJ22TB3P3WA9nmHPppi+WZWRnnQEFo9p4Ajmut24yWi4DdQzLlHLRQ1A7rcIv+FYjCUytJZupyT+GV/2WNcCGsDgTBTFE7uv0mt4ZFUIuLLYfsDbfeik5WbJQ
X-MS-Office365-Filtering-Correlation-Id: ab0871cd-a71b-4e8b-6053-08d3c56ec112
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT035;
	2:9i5jq4WmXCfknbBkyYEncvO0QgmYDw82+JC10SnTGOQ8ir4pcf3ZUSGp4CQez00R44XZJWXpv2no00BU/zCuiANzL1mm4TXSwgPVcYI5wTEMIBzR6ZNcff8fafcdQs/L+pFXq+RHAu6yhe0XMnClosJhuN2IRz+/3IyEJN1g2fWXsWFMDsyrvhNWEdCmfmDo;
	3:lzb6bpR0kdUsoErVSaVxVMG6OUBq0hw9MLGydqvAbug1Sn3TGIHAZEMrsgbMkIOyDyug56+kSBpNZd7oA1djgblAMGTD1BaNHiVLqMdNtn9SKYlVDdjPmDLE4BHmCwtLst3DTg/9+CYD5h4z6w44su6e8ERFrm/XRfaoywjPX0KOdqvXTBuE80i8Gcr0u4irGRN312f5LtY+3GS27luIEwip7O5PuOg9PkxORKuTeTueiKUvh/lVxLEsFLlQeKWSuXD/ryuUJJL1ozos4COYQQ==;
	25:nbuUuoJ2QMvDKSSycqeWWUaW0LHr5mHPfdSYVeqqE7Srit02vUHc98fGsH70Bb4VqQRPlJxQ15Ky56rEn4HoAAWpLaRAeuJlZY0jf0TQGsgk22z4ISxAW2yDeGzMDd03Mgoq4uOI5uXs0g0DTRtedv+Bi30TxgBv34lNxLJV/L7QAe06HkKwZ9ue5DOEvas13IUoP2RFu5Kds+lKp57ovHeHy+LB1cJPVV3M0ByBoZRMuBeZaNsnrMm+fsylxMzyV1bdZ8jIF10H6qXImqeQJNhN47xtN+HCfdPHqQuI2bHXrBNIN4Me5vi62VI6aZSfwjn0XjJWoaeuZQGU+snxIcadIK9GA4kXs+B2bkde2f2j6OlGjs1zPy239B6gLPtw6C9848W3CLTJ7GmNMn3bJCkw3vBSziCivrSDTnwF4Lg=
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:SN1NAM02HT035; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT035;
	31:04RFtyZQwxNxSKjh5OAFyBwef7SEiOZt7IVhDzSrBO+C4Sq7sAD1bjqRsOYS02IgAysYvzTdkKF35JMfpEuRjYbYZxcpNbFDqsV+apGpcgWgIBxxvSAOMTPddkJ2ZIJ2OH1Fzab2hxJnoIrnET6xczQEG3AVhHGbZH/R6TTEbEKHtknyFFyKA8+/nuX7kxRllimPCBu0ezmwipLcQ26qC3Y7wQIp9rCXjOn3VZ1H9vE=;
	20:Dx5mJv34+KTVbaL4wBInL8peewavMEGqUmUH/1gmKobn2XzeH4BLdym5szSGkU6qSOnbVGAVk6JhvFQI6xYu4C02o3u3vhLQbXPB1IRlB6hfcIiIjhI4808QKj8iuQ9pBmlLK0hjO/ITlAfRwE4PacXZTotIgRz8o5hjzOuwBE/g/I0KXqswzPfVokqG7bSCE69nK2McDDxk6rm+15Fv3ISEfxZAsGwAY6Mpd6GcI3YprKMkAiLCNJm51FgUQFcyWt1sRpIf0yzyNvlMLjbUZEkpZ1dmfDSr2w2nAXLkgEteD2BWyUYuhpSsprC7uJWsBmNXOZ+ncITY59qhTueyPVk9cuOJ/jhsl/T90gUS8cZAjx1X8BRCep28R/x+u8axuUk8SbWO2Z118QQKVOhStuQXUSY+6B6wnfpMm4kkzfDBQkTOBkGZLCK0YSBUbl1y9zkN9qnDUNvW2Hp4Hhi3Da1ZTH7mJ1eCDPW/ZogFMDMO6p8yGYW0N0uuCjXloBjF
X-Microsoft-Antispam-PRVS: <4ae51d4dfc0940aca0ec20ad7561d7ab@SN1NAM02HT035.eop-nam02.prod.protection.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(13018025)(8121501046)(13015025)(13023025)(13024025)(13017025)(3002001)(10201501046)(6055026);
	SRVR:SN1NAM02HT035; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM02HT035; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT035;
	4:kzPF9SbG8cpqvd6g0j/YZLeG7NY6R+bbNa+qt63IrQdGykmFCnQXyrFYCQbTA1RtS8XpTYnKHsBqJwCpItNjX/oESqERZPFuw1VfcmJvyp66xiMBrl3ZM2l5DBP/CsvSucl2+uWPzcc50wmsLKepJnb8tpcN01U2yJa8WAnjmYHFJEhDUDeLU46I/T6ylzEDoj3cTpnkqY6QQ0RB3pSOjB8/siS6zCESj/odVmMflc73W1eQ3XKH73F0418cVbOwkiUPIXqSw6Py3fUoCOM9IxF2fwMR4SkahE+3DU0MNDumDv3azbGIisgWQgefjEyBjZmQkZkGxS0TWvA8vEi889joZLjCyNmgUNdZr5S99RsNu1w0dM0I3fzNCuTUEqFc3HNYoDXpGKUOGMbu4S8ojzKnVG4nmZKqemHNHIsQgRvV6hq67CuHyrhrzSZSvt+T+SmUlizLX0t/0I8hjRC8IDYoUSsyocDj7DY8SSUGZHYONt5NdvTNp+n3Vq4fpnuV
X-Forefront-PRVS: 0036736630
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtTTjFOQU0wMkhUMDM1OzIzOjMrUTdKbTB3cnAwNE51L3ZwM0h5K3RiNzhu?=
	=?utf-8?B?NCs3czQ5WWp1N01WdW1Ldzg3ZC9QT1NNdXhKRjZTZVJsNXpwTld2WHFhQlJL?=
	=?utf-8?B?TjVhZ3JzTjEvVEFsSWdvZ0U0RGpUb0I5Z2R2ZXNQUTAwOFF3K2x3SkMyanpv?=
	=?utf-8?B?cFhja0FZM1hnTHJ6azZ3a0c0WDJkRm5mRDZNTStybGQzMWxVRVJ0bjlwQk9U?=
	=?utf-8?B?dnVkSUtNSXF5MzY4N214bWVaWGN2YzR6SE1wcUZzQ0lmVEdndml4dVFqN1Vx?=
	=?utf-8?B?eEt6R0NrOG00eEJUTWsyWXhxN1dHWHY4Yys1SmNybUlRQkN5ZTFsL2pZSDU2?=
	=?utf-8?B?T3Q0Sm5pWkhRYy94ajVxeDEwQ1UwZmlpc3lpYTJjcmxsRDdWQjZzUldxWHhE?=
	=?utf-8?B?L3JCUjYrOUl5NzI5T0kzTHdVeHJQZm1WcVloNFpSdzVGNUV3eVltOGtwN0Fs?=
	=?utf-8?B?eUJiK0wxQURaOG1aWW93Z2twWHM3VEUrSG1YTUpMaUMyZjNyd004OWxyLzJl?=
	=?utf-8?B?UUlib1pUOUZxR00vRHVEZ3ZpVCtaSWZvT0hLWG9yNC9HR0tUemU2Nnd2N3Nx?=
	=?utf-8?B?SzM5UTZnL1pISHpYMVJxanhpTllIakVaMWtGcEg5YkJwWERWTm94Y1Mwb0V2?=
	=?utf-8?B?WFUxdmRWUkJwTnVKUFZMbTdUcnRPazdtK0VFZnc5YjVYU1laNDRmN0wzNGpr?=
	=?utf-8?B?NlZsUno5bGZMcXAvVEZrUkkxOFZrUGF3a2ZzbHFPVUxzU09Yb0tFblJpWkZj?=
	=?utf-8?B?cm1EcjkxbUFKZWFjK1VPd1Q1SUZoRTBsSUtEQ1Z6OE45YTJJbjRtZVFqMjdi?=
	=?utf-8?B?NTlLb2MvZjVWK1BvcnYwTHI2NXFaQmMxaWd3SkZoWnpsRXV3c1VCUjE1dytW?=
	=?utf-8?B?WGdCUFVOR0ZGY0hHS1FGcGozR0lOUWcrUHQ0K2lMalFKVHN1ZE9NWDZGd0k0?=
	=?utf-8?B?NVlUTThvWUVtNGxVRnBJSGVOUEptYkt0WW0vc3VSU1Q1SmRFNFZDdDliMlpo?=
	=?utf-8?B?K2s1enN2Snp0bHRlRDBEUjlBbGNRbWlNdU8xa2J5UUNuUFVCK21ONUp1d2xS?=
	=?utf-8?B?VEluNlE1SjlKOFNvcU9ya1FTeHBSSEl6YXBQRWxNdkQySWpYOWNkMUk5K2hl?=
	=?utf-8?B?S3ZkVzVqSDRvTkhNQmRwa2t5dlNLakhYb3drcFFvT3ZuMEtVZ0JoVmV5cWlM?=
	=?utf-8?B?bTVrVHVrSEhISzc3bU9Hb1hhUk1SdkRTQ3Q2ZjNyZ0JnY3M1aEZRdjFNUTJH?=
	=?utf-8?B?ODY0bjNqaUoyVTlNckZEbVQrVmFSdEVSZkhiTEhrT0FSeWVxM3hwNnJEdnVz?=
	=?utf-8?B?MWFsQWlGTEw0YnZDSjh5UENteXB6Z2NvSlpzQkkvTHFYYmhpZ2lkeWY2Q01u?=
	=?utf-8?B?bVFWWWJZeW1HWHZMdHQveUgvMVBRcFNwbm1VbU1WT0dkaVphVVVzMVVlUVRw?=
	=?utf-8?B?eXBBWit3NzBwNXA5bjhsaU4vZ1dZWmZxdTQ3ZVRUY1IxWHNlS3ozekhYL1BL?=
	=?utf-8?B?R1dJMW9qTUF1SGJjVytRc3ExcytVcEFkQURhTjcrNFdqZ2RobGErU3ZoVTVp?=
	=?utf-8?Q?wf0iP98LZtc7SmDoW6kJ3a9LUz2qAWPBrjru8wxiPAjI=3D?=
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT035;
	6:eJwDor/J8E9cLt6yYk0PINs835lioDFZb6UlSFvbSuvsgmggeMXW8i2ccPLSGhdd65p2ky7eb+GWJ40aZMryytCuLfRp1tN4hZ4YFTS13rTmfZLUWFayByP2UdtCEzGfP3kZArXrQua+IglTnmFrYah9VZY517FnwUnWSxXCL5nL6GPIbisrJumP1D5cwY2rbsjYDbkP9K9Bb/LNKZwZaWRrbwxz0wVXQVH9rUEfURHp5qGH3naVdiMalZoSHaPp3ylDK8BqynEFOeWBWmmfzcsttpySkyjB+eyndBWy1KZK7DDS185+4GtUviKcXExi1ufzT6fbIob5LOU+UEN2Ig==;
	5:+zpFWRo+phPGFj7uILImXTblLtfma2M24BHFcZmw4CZuLoyJy2f2hkwzlNbE7kefPTLrqJpbxxFUta8ZbbGXjr+w94/xzM7cq8RlvM1D+X2IDypl7PN6TDmVGds6i70Uxo8JE5JSwFlcYmaTJ78v9A==;
	24:wigaOpz/ts7yEeELYSx2kUo2rEIXnn73aNhdRs7UpkqYCUSTIvszE8qZNqla0Ly/JYClWgsHu6WkVwRVY5zF/I1osgpadyKPg1Tjz1u1B8c=;
	7:yL8dunmPtX+v5l0ofmqAv5xbnkoa0LujKD0mdi86P+9N+gLkfAEz+UcHtBwllkIjqYqywIhSk01qeU3WXr8kxU3QJvPPysOLtfRCt4aa5LDCFq/Kr290M8Yl6cz/i1wJpmGF7FCvSuVUaatIDn97rRZ2VK3v3gmBZInMza4CNqmmxFvSlQEYvCGjm6nDvFVn27/2fW6TsAfysTQi021A/BxCed/jcySQUOFkWOvwurH+vltRbXrAd64f36Hd0QYD
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2016 00:46:26.4246 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.100]; Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT035
Subject: eSDK errors and sstate signature issues
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
X-List-Received-Date: Tue, 16 Aug 2016 01:18:56 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

All,


I am trying to build Yocto eSDK with OE_core and meta-xilinx layers.

Having issues while extracting the eSDK, it warns quite a bit on 
signature mismatch. Can this happen due to the fact that I am using 
external tool chain??

And eventually bails stating
ERROR: Unexpected tasks or setscene left over to be executed:

meta-xilinx/recipes-kernel/linux/linux-xlnx_4.6.bb, do_fetch
meta-xilinx/recipes-kernel/linux/linux-xlnx_4.6.bb, do_unpack
meta-xilinx/recipes-kernel/linux/linux-xlnx_4.6.bb, do_kernel_configme
....

How do I go about investigating why set scene was corrupted or not 
executed correctly while building kernel?

Any help is appreciated

Thanks
Manju


