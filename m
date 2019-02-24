Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95614E00C75; Sat, 23 Feb 2019 22:34:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C9D1E0097C
	for <yocto@yoctoproject.org>; Sat, 23 Feb 2019 22:34:04 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x1O6XeE4017511
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 23 Feb 2019 22:33:40 -0800 (PST)
Received: from [128.224.163.169] (128.224.163.169) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Sat, 23 Feb 2019 22:33:27 -0800
To: Khem Raj <raj.khem@gmail.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<BYAPR02MB600561B688584916C429A316B97F0@BYAPR02MB6005.namprd02.prod.outlook.com>
	<2c3baa056663af88ed9e15b89128802cfc686b4e.camel@linuxfoundation.org>
	<CAMKF1srCoMu28YEAN7kUNT0BBV33OxdguZ4LQ+Qvf_SMom5KOQ@mail.gmail.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <d901e2c5-b60b-8e94-98d2-edbd75f64003@windriver.com>
Date: Sun, 24 Feb 2019 14:33:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1srCoMu28YEAN7kUNT0BBV33OxdguZ4LQ+Qvf_SMom5KOQ@mail.gmail.com>
Cc: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	"lpd-cdc-core-dev@windriver.com" <lpd-cdc-core-dev@windriver.com>,
	"Zhangle.Yang@windriver.com" <Zhangle.Yang@windriver.com>,
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Sun, 24 Feb 2019 06:34:05 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2019/2/24 上午1:04, Khem Raj wrote:
> On Sat, Feb 23, 2019 at 7:29 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>> On Fri, 2019-02-22 at 20:49 +0000, Manjukumar Harthikote Matha wrote:
>>>> You might be interested in the yocto layers for tensorflow,
>>>> tensorflow-lite and
>>>> caffe2 on github here [1]. I'm not part of the team that developed
>>>> that work but I
>>>> forwarded your announcement to them. Perhaps there is the
>>>> opportunity for some
>>>> collaboration on the platform independent parts. The maintainer
>>>> details are in the
>>>> readme.
>>>>
>>> Thanks for the layer Hongxu. I agree with Steve, it would be good if
>>> you could collaborate with meta-renesas-ai and introduce the layer as
>>> meta-ai under meta-openembedded.
>> Please don't do the meta-openembedded part!
>>
> I would agree to not make it a sub layer under meta-openembedded, but it can
> be hosted on openembedded git infrastructure, I dont see much problem with that
> if thats the case
>
>> I believe that meta-oe is too large to be maintainable and that we need
>> a larger number of smaller layers.
>>
> There is a fine balance to be had, that I have come to realize over years now
> but AI is large enough and segmented enough to have a layer of its own.
>
>> Having tensorflow in its own layer which as a specific purpose and its
>> specific maintainers who understand it is in my view much more
>> desirable and sustainable.
> I think its a good idea to have various AI infras in one layer
> including tensorflow
> unless we have large enough dev community to maintain each of them so I like
> meta-ai conceptually.

I know to create a standalone meta-ai than meta-tensorflow is more 
reasonable, that's my initial

layer naming, but

- It will dramatically increase the maintainer burden, so I limit the 
scope to the specific framework

   name. There are lots of TODO in tensorflow and I am afraid I do not 
have extra attention to

   other AI framework recently.

- Tensorflow is standalone enough, its build system is google's `bazel', 
like bitbake, it has special

   rules to build everything from scratch. (I've already sent other 
unbazel built recipes to

   meta-openembedded)

- Bazel is built by java, if we do not create sub layer in meta-ai (such 
as meta-ai/meta-tensorflow),

   the number of meta-ai layer deps will be more and more along with 
other AI frameworks

   are added. For other AI framework customer, depends unused layer is 
not a good idea.

- For future AI framework integration, if the framework is huge like 
TensorFlow (another well known is

   Facebook's PyTorch), we could create a standalone layer and appoint 
special maintainer to maintain it;

   if the framework is small and light, or fundamental algorithm 
packages used by multiple frameworks,

   we could create a meta-ai for collection, or directly add them to 
meta-openembedded. (For TensorFlow

   integration, I added 11 fundamental recipes to meta-openembedded )

//Hongxu


>> Cheers,
>>
>> Richard
>>


