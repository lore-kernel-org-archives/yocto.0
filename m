Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC42EE00D22; Sun, 28 Feb 2016 19:49:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4664AE00D0B
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 19:49:02 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 5CC8F68A019; Mon, 29 Feb 2016 03:49:01 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 61C3268A019;
	Mon, 29 Feb 2016 03:48:59 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 1E68467405E8;
	Mon, 29 Feb 2016 04:48:58 +0100 (CET)
To: yocto@yoctoproject.org
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<3327973.x6IgOsuVxr@peggleto-mobl.ger.corp.intel.com>
	<AAAE6561-746E-498D-A499-C5A0E2668D9C@gmail.com>
	<56D3BB9C.8090105@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56D3BFA9.9080200@mlbassoc.com>
Date: Mon, 29 Feb 2016 04:48:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56D3BB9C.8090105@gmail.com>
Subject: Re: [Openembedded-architecture] Standalone image writer
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
X-List-Received-Date: Mon, 29 Feb 2016 03:49:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/29/2016 04:31 AM, Trevor Woerner wrote:
>
>
> On 02/28/16 20:46, Khem Raj wrote:
>>> On Feb 28, 2016, at 4:17 PM, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>>>
>>> (changing subject line so people don't miss this slight tangent)
>>>
>>> I'd almost completely forgotten, but the part of what we wrote for Hob to
>>> write images to a USB stick or SD card (bitbake/bin/image-writer) is actually
>>> a standalone application. There's not a lot to it - pick your image file and
>>> then the device you want to write it to; it has some logic in it to not let
>>> you accidentally write to devices that aren't USB sticks.
>>>
>>> A few points:
>>>
>>> - I'm not sure very many people know this tool exists, so it's likely it's not
>>> being widely used. Having said that it is a nice simple UI that does the job.
>>>
>>> - It shares some code with Hob, but mostly not the bits with code quality
>>> issues, though it is still GTK+ 2 based.
>>>
>>> - It doesn't support the advanced SD card writing functionality that has been
>>> implented within wic over the last few releases, which is pretty important for
>>> devices where a special partition layout is expected by the bootloader.
>>>
>>> - Toaster can't really have this functionality in it because it's web based
>>> and the web server might not be running locally, so writing to a local USB
>>> stick or SD card isn't going to be practical from there; about all it could do
>>> is provide instructions on how to write the image once you've downloaded it.
>>>
>>> - I believe there are other equivalent tools out there that various distros
>>> use for taking a downloadable ISO image and writing it to a USB stick. I
>>> haven't done a survey to find out if if any of them work in quite the same way;
>>> I know some of them actually unpack the image and then re-create a filesystem
>>> on the device, which isn't the right thing for our images.
>>>
>>> - We do have a command-line equivalent in the form of scripts/contrib/ddimage
>>> in OE-Core. Of course it's command-line and thus less friendly but it does the
>>> job (and also has some safeguards against writing to the wrong device).
>>>
>>> So what do we do with this? We have two choices really:
>>>
>>> A) Drop bitbake/bin/imagewriter along with Hob; we could potentially
>>> resurrect it again later if desired
>>>
>>> B) Preserve it along with the shared modules that it requires
>>>
>>> Thoughts?
>>
>> Option A. There are USB writer tool in your favorite distros and OSes, and I have
>> seen people use those tools more often.
>
> Some platforms, e.g. Minnow, use their own image writing script (i.e. mkefidisk.sh). If there are other platforms which
> need some special tool that isn't generically available from the host and the hob tool could be made to accommodate them
> all, I'd prefer to see one tool that can do all of them instead of a bunch of tools, one for each platform.

As Paul mentioned, each platform seems to want to do this "their
own way" which is troublesome at best for embedded systems.  I think
it would be much better to maintain one way that works with what we
are building (OE based embedded devices) rather than relying on the
whims of others.  So, if it's not too hard, I'd prefer that this
ability be kept, even as a stand-alone script.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

