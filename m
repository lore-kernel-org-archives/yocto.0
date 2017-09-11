Return-Path: <fzhang@sgl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DDCAE0078E; Mon, 11 Sep 2017 08:37:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from webmail.sgl.com (mail1.sgl.com [209.87.231.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EBB2E0078E;
	Mon, 11 Sep 2017 08:37:55 -0700 (PDT)
Received: from [10.1.20.15] (unknown [10.1.20.15])
	by webmail.sgl.com (Postfix) with ESMTP id 8C1111D233052;
	Mon, 11 Sep 2017 11:35:43 -0400 (EDT)
To: Robert Berger <yocto.user.mailinglist@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	meta-xilinx@yoctoproject.org
References: <b2971216-bfa5-20d3-9cdd-ceee0afffb76@sgl.com>
	<2169f5a0-7166-1ff0-6b43-611167a8cacf@gmail.com>
From: Fan Zhang <fzhang@sgl.com>
Message-ID: <eac81ff8-3b9b-7307-11f5-eae0dba0e4b5@sgl.com>
Date: Mon, 11 Sep 2017 11:37:54 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <2169f5a0-7166-1ff0-6b43-611167a8cacf@gmail.com>
Subject: Re: [meta-xilinx] How to include Xilinx DMA driver
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
X-List-Received-Date: Mon, 11 Sep 2017 15:37:56 -0000
X-Groupsio-MsgNum: 37789
Content-Type: multipart/mixed; boundary="------------9625EF6E21D30CAFC96B5932"
Content-Language: en-US

--------------9625EF6E21D30CAFC96B5932
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all

Thank you Robert for the guide. I tried option [1] out of tree driver. 
Got it compiled, and loaded when image boot up. My understand of the dma 
driver is that Linux DMA engine depends on the Xilinx device driver 
(xilinx_cdma.c) and then dma_proxy.c driver depends on the Linux DMA 
engine. Am I correct?

It does seems Xilinx_cdma is loaded succefully, but dmatest didn't. Here 
is the message I've got:


root@microzed-zynq7:~# dmesg | grep dma
[    0.202348] dma-pl330 f8003000.dmac: Loaded driver for PL330 DMAC-241330
[    0.202370] dma-pl330 f8003000.dmac:         DBUFF-128x8bytes 
Num_Chans-8 Num_Peri-4 Num_Events-16
[    0.202654] xilinx-vdma 7e200000.dma: failed to get axi_clk (4294967294)
[    0.202679] xilinx-vdma: probe of 7e200000.dma failed with error -2
[    2.609417] xilinx-cdma 7e200000.dma: Xilinx AXI CDMA Engine driver 
Probed!!
[    2.635552] Modules linked in: axidmatest(O+) xilinx_cdma(O)
[    2.659271] PC is at xilinx_axidmatest_probe+0xd8/0x418 [axidmatest]
[    2.916646] [<bf00522c>] (xilinx_axidmatest_probe [axidmatest]) from 
[<c03905c8>] (platform_drv_probe+0x50/0xb0)
[    3.028812] udevd[674]: worker [687] failed while handling 
'/devices/soc0/dmatest@0'

 From these message, I'm guessing there is an issue in configuration of 
the common clock framework. Is the clkc.c needs to be built as an out of 
tree module to be used in Yocto?

Fan

On 08/09/2017 12:20 PM, Robert Berger wrote:
> Hi,
>
> On 2017-09-08 19:00, Fan Zhang wrote:
>> Hi All,
>>
>> 1. How to include xilinx_dma.c driver in to the poky image build?
>
> In case you want to include out-of tree drivers it could work like 
> this[1] in case you want in-tree it's just a kernel patch similar to[2].
>
> Apparently you will need to turn on kernel config features. You might 
> try something like this[3].
>
> For Yocto/Xilinx specific questions you might want to ask on the 
> Xilinx mailing list[4].
>
> [1] 
> https://github.com/RobertBerger/meta-mainline/tree/pyro-training-v4.9.x/multi-v7-ml/recipes-zedboard/xilinx-dma
>
> [2] 
> https://github.com/RobertBerger/meta-mainline/blob/pyro-training-v4.9.x/multi-v7-ml/recipes-kernel/linux/patch/4.9.x/patches/zedboard-zynq7/zynq-qspi/0001-zynq-zedboard-non-mainline-qspi-support.patch
>
> [3] 
> https://github.com/RobertBerger/meta-mainline/tree/pyro-training-v4.9.x/multi-v7-ml/recipes-kernel/linux/config/multi-v7-ml-base/features/zynq-qspi
>
> [4] https://lists.yoctoproject.org/listinfo/meta-xilinx
>
> Regards,
>
> Robert
>
>


--------------9625EF6E21D30CAFC96B5932
Content-Type: text/x-vcard; charset=utf-8;
 name="fzhang.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="fzhang.vcf"

begin:vcard
fn:Fan Zhang
n:Zhang;Fan
org:Sander Geophysics Ltd. 
email;internet:fzhang@sgl.com
title:Electronics Design Engineer
tel;work:(613)521-9626
version:2.1
end:vcard


--------------9625EF6E21D30CAFC96B5932--
