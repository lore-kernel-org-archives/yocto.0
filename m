Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BA75E00BCE; Mon, 14 Sep 2015 10:41:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFDD0E006F6
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 10:41:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t8EHf5Rn018945
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 14 Sep 2015 10:41:06 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.235.1;
	Mon, 14 Sep 2015 10:41:05 -0700
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <CBE84E2773C74A3AB4EA3A80074BCFB3@PAULD>
	<55F6D5A6.2000607@windriver.com>
	<17509C1F9D0D41DE8575215D4D609FBC@PAULD>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <55F706AE.6080208@windriver.com>
Date: Mon, 14 Sep 2015 13:41:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <17509C1F9D0D41DE8575215D4D609FBC@PAULD>
Subject: Re: Warning about auto generated BSP description
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
X-List-Received-Date: Mon, 14 Sep 2015 17:41:17 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-09-14 01:38 PM, Paul D. DeRocco wrote:
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>
>> The tool may have created these files, but the question is ..
>> What release are you using ? If you check something in the kernel meta
>> directory, I can tell you if the warning is wrong, or something is
>> really being missed.
>
> I'm using Fido.
>
>> The reason I asked about the release, is that the location of
>> the kernel
>> meta directory will be in a different place between the various
>> releases. But it is always in the kernel source directory,
>> whether it is
>> in work-shared, or in work. So if you head to that directory and look
>> for either .meta or .kernel-meta, you should see a file
>> "top_tgt" in that
>> directory.
>>
>> Look at the contents of that file. It should point to those generated
>> files you referenced above. If it doesn't .. they weren't used, and we
>> need to figure out why.
>
> The file
> "/home/pauld/yocto-fido/build/tmp/work-shared/chroma-bsp/kernel-source/.me
> ta/top_tgt" contains
> "/home/pauld/yocto-fido/build/tmp/work-shared/chroma-bsp/kernel-source/.me
> ta/cfg/scratch/obj/home/pauld/yocto-fido/meta-chroma-bsp/recipes-kernel/li
> nux/files/chroma-bsp-preempt-rt.scc". That referenced folder includes a
> copy of all the .scc and .cfg files I mentioned before. I guess that means
> that they are in fact being used.

Yep. If everything was copied, then you are good.

And now that you point that out, I recall a bug that when I created
that warning, that it was catching the yocto BSP generated files.
I swear I fixed it, but obviously not. I'll need to track down that
bugzilla entry.

Bruce

>
> Does that mean that this warning message is spurious, and can be ignored?
> My kernel is hanging during the boot at this point, but I suspect my real
> problem is elsewhere.
>
> Thanks so much for your time helping me to figure this out.
>


