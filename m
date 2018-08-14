Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F5C5E009E7; Tue, 14 Aug 2018 02:01:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wp465.webpack.hosteurope.de (wp465.webpack.hosteurope.de
	[80.237.133.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D000CE009C2
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 02:01:40 -0700 (PDT)
Received: from p578ab399.dip0.t-ipconnect.de ([87.138.179.153]
	helo=post.iseg.site); authenticated
	by wp465.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1fpVCr-0008Ks-OL; Tue, 14 Aug 2018 11:01:37 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id 475E64C004B;
	Tue, 14 Aug 2018 11:01:37 +0200 (CEST)
To: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
	Ross Burton <ross.burton@intel.com>
References: <6f61f2a3-4825-2c6e-ece7-39a78e324c1c@iseg-hv.de>
	<CAJTo0LZdRG+McpEEvmwxdsQRtX-UF7V3DySuOCyH+15SzsEDew@mail.gmail.com>
	<CAPybu_2rqfLYQFN33tnytvaiUz-UCnw-x4u5Z+4wUgjtRDJ2Hg@mail.gmail.com>
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <77d0ac5b-d5ec-4a7e-2b4c-f1880ffcd4c8@iseg-hv.de>
Date: Tue, 14 Aug 2018 10:57:13 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAPybu_2rqfLYQFN33tnytvaiUz-UCnw-x4u5Z+4wUgjtRDJ2Hg@mail.gmail.com>
X-bounce-key: webpack.hosteurope.de;yv@iseg-hv.de;1534237300;e36ee647;
X-HE-SMSGID: 1fpVCr-0008Ks-OL
Cc: yocto@yoctoproject.org
Subject: Re: custom splash screen using psplash
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
X-List-Received-Date: Tue, 14 Aug 2018 09:01:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hi Ricardo,

We already use systemd, but didn't use psplash before (so you had the 
pure console messages on screen).

We didn't think about progress bar so far, but maybe it would be nice.

Can you think about a way to use a progress bar with a custom picture?

Thanks and regards,
Rajesh

Am 13.08.2018 um 15:53 schrieb Ricardo Ribalda Delgado:
> And also note that if in the future you decide to use systemd, AFAIK
> there is no progress bar there.
> On Sun, Aug 12, 2018 at 8:32 PM Burton, Ross <ross.burton@intel.com> wrote:
>> The easy solution would be to not use meta-poky at all, but if you
>> insist then you'll have to set the layer priority so bitbake uses your
>> layer instead of meta-poky
>>
>> Ross
>>
>> On 9 August 2018 at 15:43, Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
>>> Hallo,
>>>
>>> I would like to overwrite the poky psplash splash screen [1] with my custom
>>> splash screen.
>>>
>>> I copied the psplash_git.bb recipe from
>>> openembedded-core/meta/recipes-core/psplash/ to my custom layer and changed
>>> psplash_poky_img.h to mycustom_image_img.h in mycustom_recipe/files/
>>>
>>> But during the boot the Custom splash screen displays along with a progress
>>> bar from poky splash screen. (I noticed that the psplash.c source file also
>>> contains progress-bar.h file included)
>>>
>>> Is it possible to remove or overwrite the complete poky splash screen files
>>> with mycustom_splashscreen?
>>>
>>> Thank you,
>>>
>>> Best Regards;
>>> Rajesh
>>>
>>> [1]
>>> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/psplash/psplash_git.bb
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


