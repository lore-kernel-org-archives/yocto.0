Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3E674E01545
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 06:01:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r28E1Akn024555
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Mar 2013 06:01:10 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 8 Mar 2013 06:01:08 -0800
Message-ID: <5139EF18.9090605@windriver.com>
Date: Fri, 8 Mar 2013 09:00:56 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <CABTzgQ4aGxsRgpFMBZf0t7KVfmBYihePSbkD_D8azAGdCpTgiA@mail.gmail.com>
	<CA+gsK-osjB9NK4gdMBuJU98d3RZiZqJ6yZBh9jR21hJrkx3gkQ@mail.gmail.com>
	<CABTzgQ6pWQD8Rs=NRCvemTy1WWfeH_Rvb2+XaeSLVx_urXkw5A@mail.gmail.com>
	<CA+gsK-rp8LOrmJ6k+3Xja-j4Acu559g9BE1-eJT5-kZOi7457Q@mail.gmail.com>
	<CABTzgQ6MuY=+-63b5jwxQzaFa3F8pV-jXWyKqLCtwb7oBd2BAw@mail.gmail.com>
	<5130B1EA.4040004@windriver.com>
	<CABTzgQ4cZf6YUmgB52oA39rRoRqo9=C=CJ7vjMj=Q+o0XsuEzg@mail.gmail.com>
	<CA+gsK-qrq5LjQ9tzxAyxM_fn1gr8cRW-n4CLNQFsr5BrHDvf2Q@mail.gmail.com>
	<CABTzgQ6W3ymW_-gQEo3Rja0VeKLo-3Q8K9kgWXWv3ozkjun0vA@mail.gmail.com>
	<E4068A04-BF47-4052-BA07-F14EADCC3564@gmail.com>
In-Reply-To: <E4068A04-BF47-4052-BA07-F14EADCC3564@gmail.com>
Cc: Satya Swaroop DAMARLA <swaroop@weisser.at>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: uboot.bin and rootfs but not uImage
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
X-List-Received-Date: Fri, 08 Mar 2013 14:01:21 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-03-08 03:46 AM, Khem Raj wrote:
>
> On Mar 3, 2013, at 4:12 AM, Satya Swaroop DAMARLA <swaroop@weisser.at
> <mailto:swaroop@weisser.at>> wrote:
>
>> hi Rudy, hi guys
>>
>> Thank you for the chnages to be made. I always do in two steps, I
>> fetch all and then compile the image...
>> After fetching then I renamed the file to defconfig. but can you tell
>> where should I add "do_fetch_append". Should I add in
>> linux-skidata.bbappend (if here where should this append file should
>> be?) or in linux-skidata.bb <http://linux-skidata.bb/> itself?
>>
>> An other important question is how does the kernel decide about the
>> device compiler tree... I have several device tree compilers and I
>> want to know which parameter is used to and where should this
>> parameter be placed so that the kernel and uboot use the right device
>> tree compiler. I think this would end my troubles on the whole and I
>> can start playing witht the kernel in the near future :)
>
> for device tee you would
>
> require recipes-kernel/linux/linux-dtb.inc
>
> in your kernel recipe and then in your machine config
> data define KERNEL_DEVICETREE = "${S}/git/.…."
> this is the path to dts file and you can have more than
> one fie each separated by a space in above definition
> resulting dtb files will show up in deploy_dir

Thanks Khem, I had meant to reply to this myself .. and then managed
to forget!

Bruce

>
> HTH
>
> -Khem
>


