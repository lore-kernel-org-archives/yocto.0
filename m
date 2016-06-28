Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E082DE00C40; Tue, 28 Jun 2016 05:56:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.249.122.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ld138.inmotionhosting.com (ld138.inmotionhosting.com
	[192.249.122.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B12D5E00C2E
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 05:55:59 -0700 (PDT)
Received: from [124.193.174.202] (port=37010 helo=[10.168.1.200])
	by ld138.inmotionhosting.com with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-SHA:256) (Exim 4.86_1)
	(envelope-from <richard.zhang@pica8.com>)
	id 1bHsYU-00063v-7u; Tue, 28 Jun 2016 05:55:58 -0700
To: "Daniel." <danielhilst@gmail.com>
References: <57712C4E.6060400@pica8.com>
	<CAF3SDA4njst=j_=hwa+xx3rTK21ct7NDXovvHQQeJ06b4zwreg@mail.gmail.com>
	<3097479.6HfBUUWWdS@peggleto-mobl.ger.corp.intel.com>
	<CAF3SDA4PHS-msDQ3JyHhh2i2OEb4awd2DmwooYHpfN+HSKNyAg@mail.gmail.com>
From: "richard.zhang" <richard.zhang@pica8.com>
Message-ID: <b07a0f78-5f89-134c-ddfb-64259bf78e19@pica8.com>
Date: Tue, 28 Jun 2016 20:54:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <CAF3SDA4PHS-msDQ3JyHhh2i2OEb4awd2DmwooYHpfN+HSKNyAg@mail.gmail.com>
X-OutGoing-Spam-Status: No, score=-102.9
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - ld138.inmotionhosting.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - pica8.com
X-Get-Message-Sender-Via: ld138.inmotionhosting.com: authenticated_id:
	richard.zhang@pica8.com
X-Authenticated-Sender: ld138.inmotionhosting.com: richard.zhang@pica8.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to add recipes to images not RPMs.
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
X-List-Received-Date: Tue, 28 Jun 2016 12:56:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Fine ,its work.

Thanks


在 2016年06月28日 20:28, Daniel. 写道:
> Ops, Yeah, you right Paul! IMAGE_INSTALL_append***
>
> Thanks
>
> 2016-06-27 22:30 GMT-03:00 Paul Eggleton <paul.eggleton@linux.intel.com>:
>> I think you mean IMAGE_INSTALL_append.
>>
>> There is a section of the manual covering this:
>>
>>    http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage
>>
>> Cheers,
>> Paul
>>
>> On Mon, 27 Jun 2016 11:22:52 Daniel. wrote:
>>> Adding this to your local.conf?
>>>
>>> INSTALL_IMAGE_append = " your packages separeted by whitespaces"
>>>
>>> 2016-06-27 10:38 GMT-03:00 richard zhang <richard.zhang@pica8.com>:
>>>> Hi all
>>>>
>>>>      I try to add some ricepes to meta layer.The do_fetch and do_compile
>>>>
>>>> things are fine.
>>>>
>>>>      But when I went to image,there is no packages just added.
>>>>      I find my packages in build/tmp/deploy/rpm .
>>>>      How to add these packages to image.
>>>>
>>>>      I have do this when I use 'hob',but i don't know how to select them
>>>>
>>>> without 'hob'.
>>>>
>>>>
>>>> best regard.
>>>> Richard Zhang
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>
>


