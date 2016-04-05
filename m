Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CBF4E00BFD; Tue,  5 Apr 2016 07:54:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0111.outbound.protection.outlook.com [65.55.169.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E0D1E00B8C
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 07:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=GhrMavNCkIb/NKJP5vM7zwrIDeJV0xqvyJIb+rzg054=;
	b=TKfgkiKNZQd+YAt1uwXXAhA5d3VM/Bvrw2R+UbZF4XfioLUUkyoGEmYVNcLgKRq0w7jndNEAKzmJmxya3xA8DaIN8pp8DlWehVuMgDqi4rJvvNvxZVZ5vQ7wEX9AmEb1hZmSBCrVtxIribnNO9V0/Q4REn05Ty/qyETVlHkJl20=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=ni.com; 
Received: from [192.168.1.76] (23.119.29.149) by
	BY2PR04MB845.namprd04.prod.outlook.com (10.242.38.140) with Microsoft
	SMTP Server (TLS) id 15.1.447.15; Tue, 5 Apr 2016 14:54:43 +0000
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>, Mike
	Looijmans <mike.looijmans@topic.nl>, <yocto@yoctoproject.org>
References: <1459459621-21610-1-git-send-email-anibal.limon@linux.intel.com>
	<56FE0680.9010700@topic.nl> <56FE8AC9.2040605@linux.intel.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <5703D194.3070701@ni.com>
Date: Tue, 5 Apr 2016 09:54:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <56FE8AC9.2040605@linux.intel.com>
X-Originating-IP: [23.119.29.149]
X-ClientProxiedBy: SN1PR0701CA0041.namprd07.prod.outlook.com (10.162.96.51) To
	BY2PR04MB845.namprd04.prod.outlook.com (10.242.38.140)
X-MS-Office365-Filtering-Correlation-Id: 6d2e2a98-e42f-472b-18eb-08d35d62395a
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	2:Rgm0BIl0tlpQlvO0RjD4Q0HHWn94Gc/1otl7V9AVGBJL2GFEMVOWLMQ7VohGW3ibzGe1+CBiFzx3gRg3NRRdQWvNyD6deQFvglllGBo9ZEgTdJ1rDiMRq54ReNxDrUEXw19ZclsudOwcdBy0tTyOQVMZNS7NEI3B4ASHfAQmKx+V4Tbl0XWdsehKtzlckJRd;
	3:hWaL7f1zNfEzAmIdKrxe4k/AW3U40w7G1fsIkwM544QHF9gV/iw8qG5sYrDd+tthobFL7oyYXeuDX+LkmfftLoid95U0J8T9ATmpmSXommRCfLcT4WnLUTTLUmgtRYZ8
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR04MB845;
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	25:K49pI/VkHI4DFohUGdJAsnNK0GV4HMCh6vLcYUBsBTbuX+pPTYtlvhpKJdmSQR1nJbf0ZQSf+9BdJXCcBYHeuiqDFGrmsXCmy2QGZmXtwP143lq8t/AIe/5/Cv8MtT3GsHdxokEG9tcRxQTh+zVCfoAuW0XyoFvUhbQZ2FHXdQWDM0rDjyszfOyKq1ALpWRbyHR9OnUfn/Dk5+OqoCRZYGrY5rJd1LQTl5XxXkQoLdJD2yUDHh2b9Ye0Y62V80NZti3PqQVxHlh2cdOLAuJlsn+pWHbPXPxf5DQNtD2AfIPydBPlNcHHDFIikp7RgHIoGD37MKF5RCA0n8m3G6g/eBsiJim7GNtEpFHlll+hR0BGuCUcMfdNQ/bUN3H6dS1B7fRHme4vVy6WSOAgK7GCzsjoscxPqMM1WYHpQ9OhIn8oscSCPFi4NwcVIGWsB5zdOvKVNXTfMXOqki/Wz17bU5LXwsC4XukvESihI2wyJL+Gh3xBRY4yxgZ1g5XCsj+tiEdkDPl/CroAdkUkapPjbYtO+FK4a5KRPnHVPrTn5qA3kop4TwOExqqyD4iB8AfujtuCVBnWRuwOm75/V892iJ5x82WJzfY2eHPK2v5GDXa7R2DLQy5pxVo71HJP6JuXuDFXNtdnDQtZVmZ5U9HZmbmQBTmd8UMY+lxlMdXx0Jyop8iNEpq6lLqmV9M8juHwDoH0N2bW4qiAxUKzjwg1dQ==
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	20:5ID6EIxILHK5mfJSIevisrSX37LwXfRbTCvuUVWHLkz+a5Tb8nNWU32atdJBFsB99SHi9jomlAW3V2LJLDJ8wsW9OVDSYLt4vG3CIBUYHj8aedJKPul4dG9j12QMHrqP1yuc/4mWpmtKlSKComBW/OlXa2/ZO7AwRZAvlTPVNJGCyjc6PwffwrA5MkFDvV2r8w1sFYhC+gQnxNpQn9a113jreI67st98vtHT0qoTYac7oxGF8/bhE5q9sOB9wieUj1Nb4lwjGkKwx58/6HO3uzjQOGaIYbrMDoZEdQdFJWpA7N+jqJN/yhbixj+8O5WNA4f30ntgRPpzO7VguWfgyduU0ecFDCc5uxlplksBGv+/t04s9mkxAv7IMOeF83unGlHFxT4r8N1ElME4+4t/JtzxxufXSNAP4ExT/BjtJ94NPRdFnVksJ9AvRquScHEKvnJcLUhB369n6HCjuI6DxFA0B7dltsbUir1rHHrIfUVwK+atmjp9YDPf0YWOp9zrX9cE4RaoNU+UGlxk3lly4PnQwGLbBRpxvK7n9XYXbe/+cj9sYt741IS4SUrQr8yB8ZM5lLjQvYfvwd51sFewRhiTjfy4NdRXTJmtc0P+3Ik=
X-Microsoft-Antispam-PRVS: <BY2PR04MB84553F43F1971F06BAD5F4F869E0@BY2PR04MB845.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:BY2PR04MB845; BCL:0; PCL:0; RULEID:; SRVR:BY2PR04MB845; 
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	4:IwF462CSU2xt4Mc9yRl19fZg/yNNxiIGpnH5OnnDR4v4c5iRb6Ughe0GLWK+oIQD/F9AyKUKdzDf73EMM4NLFs/FzVTQXod9to/mDXTCSj9YreGCwW7+4fn2kIbi6u/kZ+JfcYc74YIsvNa1pwNHkIIjbZ9uOvs3G2bLDrZNlSwCcCsI7w7W5XeV5pYGTE2WHErfYBDyGs3Yovh+p/9GoEez6c7ybaNj2Zturg6EKrM+AzXfVwSZi2P+Wt/OzLwerIvVJBCZsaCK/2oDxAV2KmeKrbNJSmt9qc4mSpJSEpb/G8RJQdMQje3+Wt6HDRXX3+A+I/Dw2Klc7POSvIipvLdh5gvTaxjJO+qCspE4X9Hi3rpg4Pk1Wv6S9wfz7LKL
X-Forefront-PRVS: 0903DD1D85
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(6049001)(24454002)(377454003)(377424004)(6116002)(23676002)(33656002)(65816999)(64126003)(66066001)(92566002)(3846002)(65806001)(47776003)(19580405001)(5008740100001)(80316001)(19580395003)(117156001)(5004730100002)(2870700001)(5001770100001)(189998001)(107886002)(2906002)(81166005)(2950100001)(87266999)(36756003)(50986999)(1096002)(76176999)(54356999)(42186005)(15975445007)(86362001)(77096005)(586003)(50466002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR04MB845; H:[192.168.1.76];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCWTJQUjA0TUI4NDU7MjM6aG5HTTU3d2dURzl2M3NPY2hURXB2MG91dXNX?=
	=?utf-8?B?WVJRL1NGbk9Pa3J0VHo0THRoRFpNdFpsNm1SWXgxSHpJcHRNRUFua1N2a1li?=
	=?utf-8?B?YjYwaldWWXFNR1NibElJZkdmTk4zTElQODlkSG16RitOTzB0RHVHZXdDRUpn?=
	=?utf-8?B?MkVrQUc1ZURkMGphOFhDNnFVazJqNWFGVS9Kdk1YNHRDcXgrVk16UlpscVVp?=
	=?utf-8?B?QmltdE5hcFUyV2t6aENWSmgzc3NQbm1GRGhGTjVhTWZxdjltallJQ1MzSWZC?=
	=?utf-8?B?YjR0R0ZTdW5TaTA0bExYY3dUTnFMazYxc3FWUFd4K01vMm5qWGp3WVI1WWxK?=
	=?utf-8?B?SkVJeFFCUmhMTUZRcDg3T2UxLzF5T2hXTHRLdXhCS250dG1VM0hSWFA2R09p?=
	=?utf-8?B?TXc1RlVJTld6Q1doNGk0ZFJUaGdob1JmbTM3REp2L3FnVVUrMUMzaktsbklF?=
	=?utf-8?B?TGxRYkNtMHNZUjR2K2RHb0dMNzBaUEFsZE1rRGQ4ZktWSXNtRlc1ZHhyRVBJ?=
	=?utf-8?B?alA1VFVmcFlQNFFlUGp5L2I3WEJ0Y0k2R2FyOGhUWjdjVHBIcVI3Z0ErdFpy?=
	=?utf-8?B?YzZIcVpucGY5dExuSHFOVFNKUVVJMFMvLzhFSXVFY1cyWGpXd2JhcDVqVTVP?=
	=?utf-8?B?VmdCaWNrSy9aRk81anVTZlZHNElLaXkrNVY0SlJhMDJxc3VJU3B1cXRGYW8x?=
	=?utf-8?B?ZUNjKytBNEdkbnMzYlQ4UEp6T2J1eUM0TFlHV3hicTFRV2lGVDF3RnF4K3pD?=
	=?utf-8?B?ZlQxeW1OaDZuOWRrcXUwdktFcTVpck5qTXRZN3VtZnl4Sk9RYzUvSXQ3R3FY?=
	=?utf-8?B?ZXNvbWhBQXNiaHk1Nk9zVU45NmltVmFGaE9VMlNlVGFMTldqOW1KWmlsTGN2?=
	=?utf-8?B?c0srTnpjZDRrMXFkWFZQMUJ4UmtwaFp4VXJZb3ByaW1YVGhFM0JPb3N0d1Bn?=
	=?utf-8?B?dXpSaW9zZjZ0NGh2VEloQ0dtWjNBMGlBd0RUYmgxemt3eVRSLzFUWVJOMmQx?=
	=?utf-8?B?MWFTMnA1R3JHelNRL0tIVG1sWjZ4bjZwTzRsLy9sWVlDckMvSTE1VVVBcWpk?=
	=?utf-8?B?ejV1VWFaQ2E5R3h0SUlQT0NrVC81VlFRWE5MWk8rT3ZYNkRaa3BQNzlNakcw?=
	=?utf-8?B?cHRqVnRVV3dKaFA1dWtpVEJnTnpGUWl5WHdmV3FvU1BiSkRCejkrTnhGcVNQ?=
	=?utf-8?B?STd0N25tdmhaQ29NUklWcDNjVzVKZ3JDVzA5NzlEcUtPbmFRSThRN3d1b1I4?=
	=?utf-8?B?d2FDS1UxZEpwVFlFR2VPTEZlUU1BbGs0Z0lyRHFkSGkxWFJqN0VBR1ZkRUJh?=
	=?utf-8?B?SzdicjUzQXo5YjR2a1hKVUlmTTRvWjd4QS9tMjh0TGM1STgvTUhpcTBDYkRi?=
	=?utf-8?B?R0VvbkMreEJXVytTbTlqeVZDTytrWXlXQURaUVA5R1dHMXJ0SnY4eUZ5Ulky?=
	=?utf-8?B?WmJmWkJPN3duNFljZ2pEWUY0Tnovc2tkSDErRnB1VWdHbU5qWGxaOHpmVk9u?=
	=?utf-8?B?UUx3PT0=?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	5:YZRmq/QfPe+kzflQi7lMXvN6psEqMb8jX/EfLHdHrnUKsX6hmYsMnkZzElT6fRbDvRO5S6uHaXOPhT2LMDK5nxwEW5MXZvw0NeU4j/A45BvaJWyjVXqECCyrv54c8wbZ3LD0grLh8SUZ5LfnI7DgTg==;
	24:SS0H6ofDXXp/UxUzs/gzf0Rap+m5z84BLLk41ZM7K6qgiLt6sA5hvFyYnkZ0PMUF+C4/m66r5ae2f2liE0Td8E1qjb76QuBsZNow0c8fTHI=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2016 14:54:43.6162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR04MB845
Subject: Re: [PATCH][opkg-utils] opkg-build: Exit when fail to list files.
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
X-List-Received-Date: Tue, 05 Apr 2016 14:54:48 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit



On 04/01/2016 09:50 AM, Aníbal Limón wrote:
> Hi,
>
> Comments below,
>
> 	alimon
>
>
> On 03/31/2016 11:26 PM, Mike Looijmans wrote:
>> On 31-03-16 23:27, Aníbal Limón wrote:
>>> We have an issue when ls segfaults in some cases [1] so it's
>>> better to detect the failure at this level instead of continue
>>> the build process.
>>>
>>> [YOCTO #8926]
>>>
>>> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=8926#c0
>>>
>>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
>>> ---
>>>    opkg-build | 8 ++++++++
>>>    1 file changed, 8 insertions(+)
>>>
>>> diff --git a/opkg-build b/opkg-build
>>> index 98008b6..a9ccad2 100755
>>> --- a/opkg-build
>>> +++ b/opkg-build
>>> @@ -53,6 +53,10 @@ pkg_appears_sane() {
>>>            echo "*** Warning: The following files have names ending in
>>> '~'.
>>>    You probably want to remove them: " >&2
>>>            ls -ld $tilde_files
>>> +        if [ $? -ne 0 ]; then
>>
>> Instead of using $? you could just use the result of "ls" directly, i.e.:
>
> Do you have any specific reason for not use $? variable?, for me is more
> simple to test the exit status in this way.

Using $? works, but I agree with Mike: I think it's cleaner to directly test
the result of ls (and avoids and extra line).

>> if ! ls -ld $tilde_files; then
>>
>>
>>> +            echo "*** Error: Fail to list files have names ending in
>>> '~'."
>>> +            exit 1
>>> +        fi
>>>            echo >&2
>>>            else
>>>            echo "*** Removing the following files: $tilde_files"
>>> @@ -66,6 +70,10 @@ You probably want to remove them: " >&2
>>>            echo "*** Warning: The following files have a UID greater
>>> than 99.
>>>    You probably want to chown these to a system user: " >&2
>>>            ls -ld $large_uid_files
>>> +        if [ $? -ne 0 ]; then
>>> +            echo "*** Error: Fail to list files have a UID greater
>>> than 99."
>>> +            exit 1
>>> +        fi
>>>            echo >&2
>>>        fi
>>>


-- 
Cheers,

Alejandro

