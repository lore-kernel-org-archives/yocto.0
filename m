Return-Path: <VINEETHC@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 669DBE00DB6; Wed, 24 Jan 2018 23:05:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 2035 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Jan 2018 23:05:20 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0084.outbound.protection.outlook.com [104.47.40.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52879E00B78
	for <yocto@yoctoproject.org>; Wed, 24 Jan 2018 23:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=9MDawyNuiE+QVV0zj4H62meexh1beUS9l+DmyPik/FU=;
	b=fiZ2anCvLXLVHySHeJVrwpPwPQtML7WmvztMkOvplyzZ38ZMzia+tVOjVVOeOxcotoxcFbgRpDGioRJkpUnGsKpF9d5cemcBI1NSH8cXjniJ85ee5R5Rq62MEYg/wWI/4hGrn34rPXTtw25sTtS+A0yilp7zEt8Z8sQFVlMnlhU=
Received: from MWHPR0201CA0050.namprd02.prod.outlook.com (10.167.160.27) by
	CY1PR02MB1333.namprd02.prod.outlook.com (10.161.170.24) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.444.14; Thu, 25 Jan 2018 06:31:24 +0000
Received: from SN1NAM02FT011.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e44::207) by MWHPR0201CA0050.outlook.office365.com
	(2603:10b6:301:73::27) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.444.14 via
	Frontend Transport; Thu, 25 Jan 2018 06:31:23 +0000
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	SN1NAM02FT011.mail.protection.outlook.com (10.152.72.82) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.444.13
	via Frontend Transport; Thu, 25 Jan 2018 06:31:22 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1eeb4D-0004MG-Qb
	for yocto@yoctoproject.org; Wed, 24 Jan 2018 22:31:21 -0800
Received: from [127.0.0.1] (helo=localhost)
	by xsj-pvapsmtp01 with smtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1eeb4D-0002wd-FZ
	for yocto@yoctoproject.org; Wed, 24 Jan 2018 22:31:21 -0800
Received: from [172.23.18.73] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethc@xilinx.com>)
	id 1eeb46-0002qo-46; Wed, 24 Jan 2018 22:31:14 -0800
To: Yocto Project <yocto@yoctoproject.org>, Manjukumar Harthikote Matha
	<manjukumar.harthikote-matha@xilinx.com>
From: Vineeth Karumanchi <vineethchowz.chowdary@xilinx.com>
Message-ID: <f95febbb-179d-edc4-f05d-a610b9362347@xilinx.com>
Date: Thu, 25 Jan 2018 12:01:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23616.006
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(39380400002)(396003)(39840400004)(376002)(346002)(2980300002)(438002)(189003)(199004)(53754006)(72206003)(478600001)(9786002)(50466002)(8936002)(8746002)(8676002)(81166006)(81156014)(64126003)(5890100001)(186003)(2906002)(83506002)(106002)(47776003)(316002)(67846002)(336011)(58126008)(65806001)(36386004)(65956001)(110136005)(5660300001)(356003)(106466001)(6636002)(31686004)(59450400001)(77096007)(63266004)(6346003)(26005)(36756003)(305945005)(2486003)(23676004)(31696002)(65826007)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR02MB1333; H:xsj-pvapsmtpgw01;
	FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com; MX:1; A:1; LANG:en;
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02FT011;
	1:bhFPfwAIktUC7Y6lc48MamAP8jaCFWQn36Zku5WIKQ5uE/idwWBpXNK+GZSE4KgWBJSj8RPnfbDokGEbXTF3zUcqiHIJTMmZm+2uGYd4nw2LkgCBPEY41HuW9QsSQwiI
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bf58614-a47f-43a7-6577-08d563bd40db
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(4608076)(2017052603307)(7153060);
	SRVR:CY1PR02MB1333; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1333;
	3:XebfEY0a+VCfnyxWUUdgfZ4FsKWrB47BkRZ5rJ+U3q+ixavoRmI2BDBPEwSxGtuH7bXc6wVyfBdnwe0zTa/Riz+XIiGi/ooAXD1DX2OZY2gn7xas6MSs0Gx4bvH5prS+8R10afbGNdN11VprWdXLGlyf2OY/KoZuh5IEwqMUDcMqTmtew8FqI3uSHQYEBedm34iCKMaET8+RAyoZaKNkvqFVICCGoTHeKnm0A67N5FB3ELiTToic6NoatKBk6i0nre8uNqsYvJkHoPAEJoL/9G6Y7UPuIiuWmE+ecf9exY4Fd/GhHuNbM9lusQ1CF7xhNbqJdmmHyLc+YC1in2FeD4xEIAz4fLVCuHSjVwwmVRU=;
	25:X95aB9NcszMX2rCXHttpZiJzmhOdDfKJ5/STXY8Joam1vdmA6X9HFibC5kwF6/5utrOvkZzpD1SxxRBv0qkktzvm3TsjchSFD0rb5ojTUXhtjw0SOJ4dc2DyyosEQ7L/cq+HzEhBsogEKXBr7bsj7bQN19he0w//gvnpLz+wW09lo8po9nzlb57VsirykVRsSpWNT+rYgboamHNiAFw+0MiVPMovckUwwJhuFap+LWT7RrwTTwLYUNiYnZKMnJEzYXijTpobSo4ozopvqNm58l+jEu2/Rd4UYkVjUcGFbeecYz4sRG7pkd4o0c/ka+4zml0jMK/Ah0cI8hgR5xkyAQ==
X-MS-TrafficTypeDiagnostic: CY1PR02MB1333:
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1333;
	31:e82Iq8CgB2HMvhMQ6e9WpVtswcgEUG2RTLsBrXHh3JcVrAKivUXYK/kMalMyx9EFhvSztWoR9QVdfsOJILCTwIEmtAqgqiteAhd9t7SAt0eIB7RIamVPeVWJmgY6HHx/prIXOWwVuqRFPimZxsOPDsQVntPtzQaZzAVBNFpoU8ltb7Cd98Fd89+cHwIPQseLrtScLGordKo0Pp2lVPJ61p0SZiCfPVoHQmHm+P5djJc=;
	20:Rlzm8En0+Yh8coB2vgRpNWvA+Hd5+9AuxcCg2g43KIuAKbg6eV9v1SRQPr+C9Zn0OWf7QHWWWmIFDG1nsYvEknEeZLSYrR7Ob+rWBXKQSgKlZf1rQJh2Qq0aRAXA6ZXbIT4Cq45xunFqpgusclJzS+QfK++3gFrEUXWMHZ9uSASzFb6+44ZTz7D/c8Dp7RIwzOZ06oMHTUgIvPCe6PfX9dsT61Swp9D0ky7Y0au/elQ7p9VPe6r6xbB/4tU168Co96jTE/mntalVJdQTTnLUqtdj/3rMftIS15OU+2ylG0q5phP2WFd1BLi8cHCa/dF9GmGIXAuVa11Y1iEwXrhYb5E2IiSENkdRsU10AdD/cc/D+AxtdQBzCtknu4iAi+TaZjuRZchH4dh4Pdleg69+W1qkNIGO+SJSwh8Ls360dBGALgLe/sS4yBAcfXnxPePyn40cyzdbJomBfGJZyr92siD2BhDKMAayqSvlU4wHKZsKjhon7CUP1GC3KaxFgpK9
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <CY1PR02MB1333732D1BB02B8ADAF0A1F0B9E10@CY1PR02MB1333.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(3231049)(2400081)(944501161)(10201501046)(3002001)(93006095)(93004095)(6055026)(6041288)(20161123564045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(6072148)(201708071742011);
	SRVR:CY1PR02MB1333; BCL:0; PCL:0; RULEID:; SRVR:CY1PR02MB1333; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1333;
	4:gaJdPDE1WBD6ING0Oh+Icgz9W9kQbnghLPeY6ECEnXBzIfjQn9ga4UEs/XtBblACKVJ/BUwP2wVrgFgwjpHL3m2uELTbZfP+qdr8Vbrbx1MRC3qHPd/klFziJ2YNdnJvEf2Yik8y6BMPiAOzeknMExi1W8lC5PESSj75Br+e2IvgePlzcN+pU9EXSw2i/Fevea+qxp4f9/1bEELeCVPnsZN5lMQdqK6pNt3FwvrJrtpUEyn/Hw6npdwr5U1FptNHyVL/bX4KDc39Lgsu7RxwbA==
X-Forefront-PRVS: 0563F2E8B7
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTFQUjAyTUIxMzMzOzIzOjVwb0RpdkpESmN4VGtZajRHRjk1cGxBTHFQ?=
	=?utf-8?B?eVlKQW41QmVKZ2lFSnhPMkk3YkdWSnpWVitDSGxZZS9rdlVsMWNXeU42VDVI?=
	=?utf-8?B?Um9Mdkh5R1hubnNFa2QrNTZIRllwMWdIRDcwM0VGQitLdmRNR3pWb3hTeGM0?=
	=?utf-8?B?Z3VuY0lqd3BvM3VHb3I3Zi9YS2ZQbElYNVgrak0rN3ExaVNnbWp3Yy9MRkhq?=
	=?utf-8?B?c1RsYmNFcWlOYlR6b05lODlselVxT3A1RnRWM2lnSFg4aytyN1J2Q0FqRktW?=
	=?utf-8?B?T3dRTnVjMlFmVlFTRkg1QkMrOHdNeno1V21mRHJ5WjFpbm0vYW1WcHNSK1Zu?=
	=?utf-8?B?MEFiWWpHZ3Vab2RsVldKQlpQM3BEdVpldzBwN2pTMXFRTCt3azNTbDYrdHRq?=
	=?utf-8?B?bENKYTlOT1IvNWJGK3Z4RlhpU3FySE9EaVFteS9hVDhMTmRwQUpnekFlL0dR?=
	=?utf-8?B?Q2JhODJkbENtckdCUWplaklYUGhudFp6aTFqemdnM1BaTXhVWE93S2sxZGtW?=
	=?utf-8?B?MUNCQzdwVDcvc2NsZTZOenZKWElOcGQxZ0dtTXlRQnljS0ZSeGVXSFVjRUln?=
	=?utf-8?B?OFFzNFJUcWxucHVJMzlJSHBlTmd0WHJHVXZtWElrYzJEYnI4TUhmbU95clht?=
	=?utf-8?B?NmhxYWpYMCtlVC91Rm1OUVlsUzN3VzFidTJCT0ZYdlN4VlMwYWZTVk5ZOGtK?=
	=?utf-8?B?OHZWUDIxQklPdzRZV0FFS2g5RmdXL3VNL1BxdS9QWFAvYk90S3MzY0tTWm9i?=
	=?utf-8?B?bGhCQTA4NnJwS1RGUjZWUnFoam5nMXhxVUtBRHdpRXdNV1lrWkxRWkxpcXhU?=
	=?utf-8?B?Zy83SWpEK0pSNVlacjBxZmllYzR0b3FTUHBTZDhBbWlTOUlrd0xqUjkrSks4?=
	=?utf-8?B?WXhGaFdKMEhzS0ZIcUp4QXd3aTFmTm5oK2pEUnM3eVBBREw4L0h3ejVCdFFC?=
	=?utf-8?B?aHMrNmQzSFhQKzlySVNpU0F6YzVCc3l2aTR1T21YVG5MeDlJZWtUaXhHb3U5?=
	=?utf-8?B?dHJyYUhJK1k4UjE3WUdKNGszcXZ6dFlIOWQwQjFiVk9KTEhoVVAyeVpndTRx?=
	=?utf-8?B?QkNSNzZ0WVV1Y056dWJUMXNKUEhvU1c2SHF5aTEySEtqOHkxcXNJVytiQWwx?=
	=?utf-8?B?R29RaC9zZDd3UFRBWlNlM1BQMS9rYWNIb1BHSnN6T3JHSzk2bEtaTnFvNXZp?=
	=?utf-8?B?bm5FOFVydjJyYkpwclZ6enJOM0ZCL1V6Qm9rYWJ4cEhnR1dnUVBkZXBvUWVv?=
	=?utf-8?B?TWNsNnZDcnFscDFJWWdNanJ1aU9jTGEzV1JnTDcwczlxcjBMMjdCQ3BuNFRF?=
	=?utf-8?B?cThzNUFzd041WldnMmRCc2NLZ1JwdnZHZFVERnI3RktLUmtiN29IMWRrNnUr?=
	=?utf-8?B?dTZxLytISE92YUJTTEdBZzVUS24ya1BuYmNCYUI0T1ZLNE5kNXVUQ1orSXY4?=
	=?utf-8?B?MElHS05NSW9ZcFptOUM1TWY3enZQU04wbmxvRGpuTEp0RWs3ejlqYzRBL3Az?=
	=?utf-8?B?enMzVFpMZkRBQlNEQ01kRnlWZzNMNnB3UTZPZTdEd0NHZkJWTldkL3hnZmt6?=
	=?utf-8?Q?zNDYFp52zg5rPvp6gpcsf1FSHFWf4LR94/k6trPJcue0=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1333;
	6:wHGsAQetChwzU9YZgBpqrMusI2tRS78BE1kHPscwWLDujJXhZX9u2ElcP8ISFgAyFAlBUdTGKZdfM8TGtH3p30Kh1MA/4hwXl9fHSa1MwcfrbMcB/OLkkTPV5XQ6CGSQiT6VwkGDq4WTwtbsCYsF1HLP911bLJb7ylmlmsQ/90Out37iv2oP6YmDiKo4Loxxfly+PXecV69Mm2hRVHirnusiwukkGxevvQIL0u0ItCepLidZ8YWuifMJr/PjsvZhL4Bm7IbOsoqHHhAsVMbQzFKss6YYYbtR2QKl8V17aPzJ/kU9lXUGjdN9WuKQzzuzcg2HrQb96V6h3kF5S3LSEaZPnXPvfX2Dof6Xs0HVYIY=;
	5:j0ITllHP49+ME3r+j9SZlJtN3iAkCq1bQYSQRXhZDjcN5U+ZQhNvBctrNKM15YO//cDYIvkRIM4hrkN9ssruLjn+iCJERxnRKEWXC2bKei0AHNmcc7gN8x8oHqy3NSNMvIaVyraFCzgJI4jKex5FnvASDuKqMVGdxKpCMtMKtHI=;
	24:74lz8DijAzLm4P1LoSQt9e6NXN5upx1Frp7I7qOascy+LnhudKy9m+KFRigGuSws69UYi4wzEKgVm776RK1oXgW5sr/CTGNcuojjuectqAo=;
	7:AOgOvMGqgp8fier7PE3HmIaGGw58OJnESmPcZHL1VIlm8/rjsfLOFFSfuZhRDSMsy1wXnmmMPueuBGRxiijdReE6O1+FJTwB12SvNp4G3+CkE8iOTovAmSXQvtdbkgO/bWMpxR2OCHJTqobZ6oI6qZWbk0nHYQDyqaIy+Z7GhjneVuA4aoOrewavZKsua+0AZ7sNHFK4DsKHzdSfcovNL7NirqGUP5/VwxKZBxZnNDBkB8NC+RD2K/9LbtN/2946
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2018 06:31:22.6507 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bf58614-a47f-43a7-6577-08d563bd40db
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR02MB1333
Subject: Soft link TMPDIR to build/tmp
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
X-List-Received-Date: Thu, 25 Jan 2018 07:05:22 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi All,

I am running yocto on NFS pointing TMPDIR to local storage ( /tmp/mytmp ).

T created softlink for TMPDIR in local storage to <myproj>/build/tmp ?

Is it legit ?
Is there will be any issues ?


Thanks
VIneeth


This email and any attachments are intended for the sole use of the named r=
ecipient(s) and contain(s) confidential information that may be proprietary=
, privileged or copyrighted under applicable law. If you are not the intend=
ed recipient, do not read, copy, or forward this email message or any attac=
hments. Delete this email message and any attachments immediately.

