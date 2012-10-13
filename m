Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8EDCE0070B
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 07:46:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q9DEkwQb007999
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 13 Oct 2012 07:46:58 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.225) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Sat, 13 Oct 2012 07:46:58 -0700
Message-ID: <50797EE5.3060007@windriver.com>
Date: Sat, 13 Oct 2012 10:47:01 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
	<50797907.2060606@windriver.com>
	<34D3AD2D-1302-4F7F-B3F3-973FC0E95136@gmail.com>
In-Reply-To: <34D3AD2D-1302-4F7F-B3F3-973FC0E95136@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Any updates to meta-zynq in the pipeline?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 13 Oct 2012 14:46:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-10-13 10:43 AM, Elvis Dowson wrote:
> Hi Bruce,
>
> On Oct 13, 2012, at 6:21 PM, Bruce Ashfield<bruce.ashfield@windriver.com>  wrote:
>
>> There are updates planned, but with some vacations (mine and others), since
>> that last update things slowed down a bit. But work is proceeding,
>> I expect something in the next few weeks.
>>
>> In particular, as an initial item, the BSP can be bumped to the Yocto
>> 1.3 (3.4) kernel, and complete some work on remaining issues with the
>> layer.
>>
>> After that, SDK updates, and other enhancements would be in the
>> pipeline, but i don't have a complete visibility into those yet.
>
> I'm more interested in updates to the machine configuration and tune files for the Zynq-7020 processor. Are there any updates planned for these? The processor uses a ARM Cortex A9 dual core CPU, so I was wondering where one draws on from, in order to get an accurate representation of the processor. e.g. use TRM for Zynq-7020 and then look a a TI OMAP 4430 or Freescale i.MX 6 dual core machine configuration, etc?

AFAIK, yes. Xilinx themselves are gearing up to take over this
work, but I can't speak for them, and haven't heard anything since
before I went on vacation. I'm hoping that this will pick up again
soon.

>
> The kernel and u-boot recipes, I can migrate to the latest 3.5 and 2012.x versions, so that shouldn't be a problem for me.

ok! At some point the layer will become (hopefully) yocto BSP
compliant, and at that point we'll get some consistency in kernel
version where it will be on one of the yocto versions, LTSI, etc,
since spraying all over the map on versions doesn't help everyone :)

Cheers,

Bruce

>
> Best regards,
>
> Elvis Dowson
>
>


