Return-Path: <VINEETHC@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 882EFE00D84; Mon, 11 Dec 2017 21:51:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.69 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5538 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Dec 2017 21:51:18 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0069.outbound.protection.outlook.com [104.47.36.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1E79E00CFF
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 21:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=mYZeW7KF4gXW0aTBTAPlqUSRyrbp1kBtYgdjoKTcJuw=;
	b=kINOtVP/0APKV/2Q1bDSoPVDuTvU+wEPb1aIOUkCTo813Epes68pA3F03r7j4cbgNBLrvvLjXT50tAePw5dHxknzharzgRayime0XuMT5rbSCrP6IyBTGIsQjQbx+Y7ETHd9AYpooFiZMFUCu0U9uXxlTLGzMnVA1yJsPjVsGvQ=
Received: from BN6PR02CA0047.namprd02.prod.outlook.com (10.173.146.161) by
	CY4PR02MB3272.namprd02.prod.outlook.com (10.165.88.155) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.302.9; Tue, 12 Dec 2017 04:18:59 +0000
Received: from BL2NAM02FT030.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e46::205) by BN6PR02CA0047.outlook.office365.com
	(2603:10b6:404:5f::33) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.302.9 via
	Frontend Transport; Tue, 12 Dec 2017 04:18:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	BL2NAM02FT030.mail.protection.outlook.com (10.152.77.172) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.282.5
	via Frontend Transport; Tue, 12 Dec 2017 04:18:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1eOc1x-0003ka-Ie
	for yocto@yoctoproject.org; Mon, 11 Dec 2017 20:18:57 -0800
Received: from [127.0.0.1] (helo=localhost)
	by xsj-pvapsmtp01 with smtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1eOc1x-0006P5-Gv
	for yocto@yoctoproject.org; Mon, 11 Dec 2017 20:18:57 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	vBC4IrbS013282; Mon, 11 Dec 2017 20:18:54 -0800
Received: from [172.23.16.149] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethc@xilinx.com>)
	id 1eOc1t-0006OM-L5; Mon, 11 Dec 2017 20:18:53 -0800
To: <yocto@yoctoproject.org>
References: <CAOLNbFanXur1zRF7KtVpdN4n6Pyx5JW7P2xhfc+74UmTabyicA@mail.gmail.com>
	<fffb74b4-80b5-60fb-0b4b-71878e29a622@mvista.com>
From: Vineeth Karumanchi <vineethchowz.chowdary@xilinx.com>
Message-ID: <5c9ed8b3-48dc-eca5-250f-972da6df9810@xilinx.com>
Date: Tue, 12 Dec 2017 09:48:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <fffb74b4-80b5-60fb-0b4b-71878e29a622@mvista.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23522.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(376002)(346002)(39860400002)(2980300002)(438002)(24454002)(199004)(189003)(47776003)(2870700001)(9786002)(31686004)(36386004)(59450400001)(65826007)(5660300001)(81156014)(478600001)(8676002)(50466002)(229853002)(31696002)(83506002)(356003)(65806001)(305945005)(81166006)(106002)(64126003)(77096006)(53546010)(6916009)(2351001)(36756003)(76176011)(106466001)(2950100002)(2486003)(316002)(8936002)(58126008)(23676004)(2906002)(72206003)(6246003)(63266004)(65956001)(67846002)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB3272; H:xsj-pvapsmtpgw01;
	FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com; A:1; MX:1; LANG:en;
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02FT030;
	1:Xt/G6rkcH0FViKEeLZhtqV6qKC0dOaYiqUN7wMxVQaHvFzKsHotyfuOuAL9SHjW7bhPhfUsM0Xle09nkYN1Zolj62q/0JtsgUrQfrz10FwxBhEEmjNLDae8sFb+aiSUI
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b1d14801-6e6c-4be6-8665-08d541177752
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(5600026)(4604075)(4608076)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603307);
	SRVR:CY4PR02MB3272; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3272;
	3:9T+HTRIwxQNWwEDyWDvpQmJQllOgu07+N9hJ0eeC/AVlw+zH32gJZPZbd29svMMhZJ7aD+7Jwad23g4FO9rreSPAfTKZtBGSMobSLURqDWkvR7EduVjI7AeNK3OghOSqvm3ixp4VvTyDcymqI7LF97nwADQtBEH42EBiZklCAIZKglIuHHE6v8dXU4c4tebtkvJV3+7JghPbQxwAxgje1dC0u10oVtBMXr+oZUGf7+8MUmYmY7cj8ndbltGLcDZfo/5YyK56cunc9c+x1WmqPC27sU3/zPrGc5N1AoAlk/M2ea/WUu5O9UCj0ZC8Y2HW28QefRrPVnGlmvs9rvM5WpsTRLwj/rW0x7udp/Nf0xY=;
	25:HHZ1dG7zgRAl8g5AXafklO+JUd1zW8aaW8JSWS198a45lFkyxFqzwKdKY5Nkw1Jb3e5r3JQsxzGMSX5SMZQY0GoiGGaz1ImIGiCaLBBkyqCHa6IJeddZfEHfIM3qeSd1DXs7216VCVFJLhPvsjGd8naCMSfr6bwtdEoN2aG0yOQSrWWoxRqu2SRI1E93WQGrh+2nl6Ltc+PZJ4AQpeD4RVY7q7ytHJKM1imkf+EtxDAlVWF132yYj/dPjg0UW4XHGiTzJGvCwUuIUK2NmeA75wz+Mb2vFV3gAMZlglTOZsIcrcEuVEoB/IYLJOhhFk609Sfz30bcHfWpU+8FUpkbug==
X-MS-TrafficTypeDiagnostic: CY4PR02MB3272:
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3272;
	31:zgeJgqRlKPPAkxjv5Gu4XZQE864dhzhCRQOVRx+odgOlpWAOWqmszQxWfXFfANb7J7a7bvp8ATzAxPnJDIlyN5FIJYnLgw3E05cYSwR8AWq7n7BmgL2WRvRqMK7RaqPQ6Zyz+YCy32KAOQ6eHCPua3f/vt0L9cFwvGQQSA4TUtzmdkNeGwvWRGl1xWNi3csMMSOe4wOfvyLIPpbr7/gKIZDxkv7l5n2Asj1sNE4kkHY=;
	20:jgnPQoi2B7d9oxLArTxrF8GCCxoQ1lKenYtiogG34MiDPPUFjwgc/uJ0IJ/qxn72MikR1DfjhInPJpEPFDbKQyWs5df2oLLsQ/V+H/JEN9foQ7qLEhi2RSIXSQL5UL37vYY+l1fnMzfBmFIoessInxGdNQebhFxsOtzYvlSixbqNBEVKzIQgwKX3TAXe5EKK11EKGQJQLy1PdpfSBYPdSR28ZhzXHma5Kd9jk1AcndqkhfFLgFSq2Rtj9JVLE1DiKm65Ph+8nzPvQJOmOUHWbIyTtb4IPNi198bmkShWgRVbgDAtUEfPcXZvGyumT4xO0hTCDeovpwzOGUWBgU4GgE0hiqCu5+OguZCHjQWLaREz+8kMe9P3ahZuua2b8rKZN+lcwp9ZZgJTIdNVaUTAeRE1fWA4twOPB8pyxDQdy+sREtIP3XrlqD5qYJpWlZ5fU0X1oBrR2W8EIHdGnGC2V/37bDM/qpe02bk00Wm7qegfY631qMVaQOUwBihMD0uE
X-Microsoft-Antispam-PRVS: <CY4PR02MB3272138EBA18122A3693FF94B9340@CY4PR02MB3272.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(209352067349851);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(10201501046)(3231023)(93006095)(93004095)(3002001)(6055026)(6041248)(20161123555025)(20161123562025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123558100)(6072148)(201708071742011);
	SRVR:CY4PR02MB3272; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CY4PR02MB3272; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3272;
	4:0hu/HVJSRNw49Ih89ClrUCvLe8k8xLSdCpPX770gwRUrQl7LjXLdZQ3Hyv5Zvlw38/PqFRb1uF1bg4FrrHkG80J/dN0jBzCTXZBRovEhD05y5B4ZUi7Y+H7chUx7fntyVZDIpVYRtU+2bbRpNj7yOE+niz8NHi8Eyp+UJtdyVjaUgMX6BYQ/A3c1NnAsQpI61xP6gJePqToi5OqiAuu6JZKyr6RkOVf6PCJKUz4nL7eHMHnEOUvK2ji7q2OmE/WgpbNyq2Q1wOxEkZsR+/hzPK2UWBHZm+1LpDFqTW+OwRSX/+C6cIfrypG5+NWj9ZbU
X-Forefront-PRVS: 051900244E
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTRQUjAyTUIzMjcyOzIzOkV2bXg3blJnRUN1YkFpQ2NKYjE1VEcybXJi?=
	=?utf-8?B?eVh5RTc3VmNnLzVtNk9KWnY0SnN3SEJWYVdFZnhQT2dsSE1Vb0Q1UkVXOXBj?=
	=?utf-8?B?R2VPVk0rM3JoczNoL3QyQzBzNG0zR25CSnE2eHFSSVM0d21NcVNKUlducTd6?=
	=?utf-8?B?NzdEZXNCdkRHSUhpMEJwM3FOOCtObmJJNnVOcDFLOWwvWDJJOUtqaEdyeFVX?=
	=?utf-8?B?UmZRd21uR2Q4VDFhUG0zTUNRanlZUENOdlgybGhoL1NLQzNpUlhZUUp6S3Ux?=
	=?utf-8?B?S2N0NVNJdFFHbkhYVXRzSThMRlJGcEZOZ0JyNWNBT3B3UVQ3OU5OWnJqR1VK?=
	=?utf-8?B?b2NsTzUxUlBkVm5iQk1pNXlYejNUZnBWUU1ZUDJSZmxPNVV3bWt6aWJJMlNh?=
	=?utf-8?B?WktEcmZSajhZTGZOMFNvUnBwMGJEeS91VUNObzRoR0VSYTdSdXpnNzRmVG85?=
	=?utf-8?B?b0V3USt0VlJoVW9WWEpsY29VU0NZV1pwVG41MEU2ZHZITUlxbEthMEZhOFd3?=
	=?utf-8?B?ZU9ndndySzJTRU9Xb3RhTTBPejg0UWx6d0FkdDF1Z2MwSHFwVmhtNk9Oakhp?=
	=?utf-8?B?SUo3TkdzNlBNanZkcFRucENWdkVCSVdIY094Y0g4UVVzd1BBd1V1eThobGdT?=
	=?utf-8?B?SzVERnBXZk5PeUt3dVV0ZG9VTzhVKzltUDZPVnhmRkRvQ3lXSFZWcUwwMjd5?=
	=?utf-8?B?T3ZzR0ZmbSs2OHZEVTlFY0hIdlVzTjFXOWx4QWJVaGYwVDNhNDNndEtmZ2xs?=
	=?utf-8?B?K2NycXd5eWxNUGtoUjBNUUNyb28zNFQrUUNLTnB4VEJRQS9UTWF0ZzZlU3Zh?=
	=?utf-8?B?T2xxTEJaS0ZwYnFPNWkzdkFvcFpqUEdER05oa281ZVp3dCtLTTlpWmhFVmU1?=
	=?utf-8?B?ZklyUDJLSW03V2x0MmsxaU1lYnM4NGdYeFlTYnVIVUhNNXptOTM1TWNkeHRp?=
	=?utf-8?B?dmltSmc3czMrRFRVK1A2M1R2VXB3b08yYnJOa2JjZWplVlh6MVV6bUp2by93?=
	=?utf-8?B?aEY1cWVNNWsvcklmWTZpVFh5b3didGZiQVorZmhEUXZUTk84ZU8yMkRYNWpH?=
	=?utf-8?B?SjUvcStIeGdaazFrV0Z5OEtTN3lPUHphOU80cGxEckkrb2pycDdQYTJET2wy?=
	=?utf-8?B?b3BwYko5aVgxdjJsekRldGljQ2tuNGcrWGJ4aTcwNnk0WjVzbCtVdjdSTGhN?=
	=?utf-8?B?N3phTWMybnJnRzBLQlV0dFN4QnIzQlhYWEhac3I5RThzeFNldW45djhYaEor?=
	=?utf-8?B?T3hwL21hOHlQOVFaREM4NGtpQUF6ajhGdkx5ZFBCVUtJZEt1cFZ2QnRlMzhW?=
	=?utf-8?B?cEV2cUV4ZFdiR1ZuYkR2TElTR21ZZ2NIZCtOZEZFREZMbEVyOFVSUSt2Zmhz?=
	=?utf-8?B?VW92MEwwdTd5TnQzZ0k5MCszdGh2L05LRUhITUJWZ01CYUtlSEFnSmdlbWxj?=
	=?utf-8?B?b01rUmFxUE9HSlgzQWpZTSs3SXFUQUlKYU5ONEZNcm0rS0NkRUtpbXpFVTkr?=
	=?utf-8?B?YTNJNnB2NTVIMTB5ZExaa0dBdytCcnl2Q2h3SGdOYnk4ZVhjRGxWd1NCVTZ5?=
	=?utf-8?B?NVdiQS9TRlJ1SzNOY1RaTXpvUEpyM3c9PQ==?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3272;
	6:8pMgGHdm0jK8aqbqiNhUP4Ci6ySsMg8UoB1Hq40GU5fFigq9UJh5vhi33+2PNa74wqlWQ2jPiUKktewkdv+Mxu0oAVu78YNZ8LbVRtBmMLmrcGb2z/NPiHhMKgi/Ws4LWm74GO4bWu2k1Zd0PIK9XrOVADxt0Rso3VFvdj4yEq4GbIiZYTJidEgCzUcROXxzFIJyB6LInV6KItMa+mUwVq4WS75eb8EHyvS0+3QF1Hj0SDq4UxVIfjkc9e5rpKxCYgz93hgJdyJ0gO05myRG5RjPGn4g2o+BsMRYM8NTnscBHhEZvah6OV0HhQg9Ykjh0YzGhuGyIxsgaUFPackBAdrGVt6vQ/SXK8Qb+MbmPVY=;
	5:NTq11K6FB5i5u+pQrnpi01q0EV0lAjNHa5YTHxch2uQGXbf+jsn0IIA/i3VBJNCXBDqiwi5tF7hCJ5iTmfe+HlmpnJ93JC3ujpTo6JnGLyqupVW3sXffTUqugjMDIq7nhn6NTsq8sU7+jBweO6ZJl4xaqiRVuaTtUgWaXSDdrKg=;
	24:pVLEk0W/qxmduUyeTnzlJ90ACkHpc7brJ+ya3kH1dFTtZTgTrb1M3esCDJXnfZM0Vk/ZktU/G4CDap3vTYmBPAN26/t20LrHD0kVnKPRKY0=;
	7:39sfZxSDXpPNYnxbw7VNWDFNHjbEQkK2UkGON3eWiu/BcNJPs1JOv9CEF7T82V16TGx+dVUwpyTwx7HL3qPlUA5dkqG/t4TX7nhZLzs2rrKIkJN0P/Y5lYlVDCDVYW4fxhyuRf/FVuP/Mv+gnUXM6MxZ9OagojvggbyTp6iN9I7SUhXv3elFezmSyic6x9MnVXr8rf9RpXL7N+8xBs3rml/SWrmhRFmtOmcNkgJTYX7fLFBf1S8551/XTeJGa9Gp
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2017 04:18:58.2868 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b1d14801-6e6c-4be6-8665-08d541177752
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB3272
Subject: Re: executable depends on the library that is built in the same recipe
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
X-List-Received-Date: Tue, 12 Dec 2017 05:51:20 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

using this might help

oe_libinstall -so

On 12/12/2017 1:24 AM, Jeremy A. Puhlman wrote:
> Given it is looking for libMyTool.so and not a versioned library, my 
> guess is that the shared
> library is not setting a proper soname when being built. All libraries 
> should be built with a soname,
> and if done correctly should be versioned.  The .so file generally 
> shouldn't be the runtime library
> but a link back to the versioned library, so you get something that 
> looks like:
> 
> /usr/lib/libz.so -> libz.zo.1.2.11
> /usr/lib/libz.so.1.2.11
> /usr/lib/libz.so.1 -> libz.so.1
> 
> 
> On 12/11/2017 11:45 AM, Rail Shafigulin wrote:
>> I have a recipe that builds a library and an executable. Executable
>> depends on the library which built int he same recipe. When I run
>> bitbake I get the following error:
>>
>> WARNING: mytool-1.0+gitAUTOINC+3e2b76e330-r0 do_package_qa: QA Issue:
>> /bin/mytool contained in package mytool requires libMyTool.so, but no
>> providers found in RDEPENDS_mytool? [file-rdeps]
>>
>> I tried the suggestion given by the bitbake putting mytool in
>> REDEPNDS_${PN}, but that didn't work. I also tried looking online for
>> the solution but didn't find one.
>>
>> Can someone help out?
>>
>>
> 

