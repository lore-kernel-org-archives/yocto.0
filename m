Return-Path: <pwr@iae.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65A3DE00D4F; Tue, 15 Oct 2019 01:00:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [213.75.39.13 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from cpsmtpb-ews08.kpnxchange.com (cpsmtpb-ews08.kpnxchange.com
	[213.75.39.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36355E003E1
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2019 01:00:33 -0700 (PDT)
Received: from cpsps-ews29.kpnxchange.com ([10.94.84.195]) by
	cpsmtpb-ews08.kpnxchange.com with Microsoft SMTPSVC(7.5.7601.17514); 
	Tue, 15 Oct 2019 10:00:32 +0200
X-Brand: /q/rzKX13g==
X-KPN-SpamVerdict: e1=0;e2=0;e3=0;e4=(e1=10;e3=10;e2=11;e4=10);EVW:Whi
	te;BM:NotScanned;FinalVerdict:Clean
X-CMAE-Analysis: v=2.3 cv=aMaOVo1m c=1 sm=1 tr=0 cx=a_idp_e
	a=ShNidqeCEQB33TAKUUzslw==:117 a=ShNidqeCEQB33TAKUUzslw==:17
	a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8SZ6bD3cDFYA:10 a=IkcTkHD0fZMA:10
	a=XobE76Q3jBoA:10 a=7now9POGesoIhv_tDZQA:9 a=QEXdDO2ut3YA:10
X-CM-AcctID: kpn@feedback.cloudmark.com
Received: from smtp.kpnmail.nl ([195.121.84.11]) by cpsps-ews29.kpnxchange.com
	over TLS secured channel with Microsoft SMTPSVC(8.5.9600.16384);
	Tue, 15 Oct 2019 10:00:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kpnmail.nl; s=kpnmail01;
	h=content-type:mime-version:date:message-id:from:to:subject;
	bh=afzBqqCXYKW8NjAROsM4n/w6g67/q5g7tdxdcBbfyrc=;
	b=K4vFJ3BfgHhaj57x1jXnr6gQp2q+XBNzL8S/4akhxFh2Je05Drgqm4AOGl2s+/ts7KsItpl+FffKr
	3Er0kqgUrgI7KchixEkUAEWM3hKneaIA3pRFVCGtnrLtczeJhq26oykQFnrWqaXCAFhQaOQy7L4Msp
	6n1bZzJ0expO3FOo=
X-Originating-IP: 86.89.1.39
Received: from [192.168.2.198] (unknown [86.89.1.39])
	by smtp.kpnmail.nl (Halon) with ESMTP
	id dc801a44-ef21-11e9-a62b-00505699b758;
	Tue, 15 Oct 2019 10:00:32 +0200 (CEST)
To: Ross Burton <ross.burton@intel.com>, yocto@yoctoproject.org
References: <d4ac9051-6d08-f41d-ad28-c0ae9daffae0@iae.nl>
	<51d72979-2472-aa84-40cf-7d9e31b05b1c@intel.com>
	<ab17dba3-e0bc-b735-6fe8-744c8ad2976a@iae.nl>
	<1683ff49-f5ec-937f-5561-1059a411431e@intel.com>
From: pwr@iae.nl
Message-ID: <8356f9d1-0d2d-3f87-ccf5-a670a4d28bbb@iae.nl>
Date: Tue, 15 Oct 2019 10:00:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1683ff49-f5ec-937f-5561-1059a411431e@intel.com>
X-OriginalArrivalTime: 15 Oct 2019 08:00:32.0529 (UTC)
	FILETIME=[9E534810:01D5832E]
X-RcptDomain: yoctoproject.org
Subject: Re: NooB: qemu-native compile error during bitbake core-image-sato
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pwr@iae.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Oct 2019 08:00:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB

On 15-10-2019 00:04, Ross Burton wrote:
> On 14/10/2019 22:32, myken wrote:
>> For future reference, how could I have found this answer? I searched=20
>> like crazy but never found any reference that qemu is "old" and my=20
>> kernel is "new".
>
> By recognising where the failure was, knowing that glibc changed, and=20
> that qemu needs to be fixed, then finding the relevant fixes already=20
> existed in qemu.
>
> Running unsupported distros means discovering stuff like this.=C2=A0 :)=

>
> Ross

Yes I know, that's why I'm asking, thanks.
Robert.


