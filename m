Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B787E00A0C; Fri,  3 May 2019 18:42:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10881E009A0
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 18:42:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x441fOM9015746
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 3 May 2019 18:41:34 -0700
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Fri, 3 May 2019 18:41:13 -0700
To: Khem Raj <raj.khem@gmail.com>, Emily S <easmith5555@gmail.com>
References: <CAAV2bM2O7ve9ZvhqjFtcUysaKbKZxYqRV8idqg03Mp2-v+RFMQ@mail.gmail.com>
	<CAMKF1squhLTh7nQahUuwb9mweGTB35vqu6OrKOfFVf9eCARWcQ@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <513502f9-202e-f548-d4ef-493041207ef0@windriver.com>
Date: Fri, 3 May 2019 21:41:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1squhLTh7nQahUuwb9mweGTB35vqu6OrKOfFVf9eCARWcQ@mail.gmail.com>
X-Originating-IP: [172.25.44.4]
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Incorporating Xilinx DNNDK into Yocto
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
X-List-Received-Date: Sat, 04 May 2019 01:42:02 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 5/3/19 7:36 PM, Khem Raj wrote:
> On Fri, May 3, 2019 at 2:09 PM Emily S <easmith5555@gmail.com> wrote:
>>
>> Hi all -
>>
>> Xilinx has the Deep Neural Network Development Kit (DNNDK) that they just released the source code for in the last month or so. They have the code written nicely in the form of yocto recipes but it doesn't appear to be an actual layer: https://github.com/Xilinx/Edge-AI-Platform-Tutorials/tree/master/docs/DPU-Integration/reference-files/files . Is there a possibility of creating a layer for it? Or should I look into other options, like adding it as a submodule to my custom layer meta-l1calo: https://github.com/kratsg/meta-l1calo?
>>
>> Or if anyone has additional options, suggestions are appreciated!
> 
> I think we need meta-ai

or add to:
    https://github.com/nnsuite/meta-neural-network

Is most of the code Xilinx HW specific?
If so then a general layer may not be appropriate.

../Randy

> 
> 
>> Thanks for the help!
>> Emily
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


-- 
# Randy MacLeod
# Wind River Linux

