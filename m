Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0CAEE0096A; Fri, 26 Jun 2015 13:27:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B828FE006C6
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 13:27:42 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C0F2AF811DA; Fri, 26 Jun 2015 14:27:41 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4929AF811DA;
	Fri, 26 Jun 2015 14:27:41 -0600 (MDT)
Message-ID: <558DB5E3.5030109@mlbassoc.com>
Date: Fri, 26 Jun 2015 14:28:19 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAF3SDA76D5CjH8s0BGSovUXqgaKkGDy0YMD7No1qZujJd69yBw@mail.gmail.com>
	<558DAD7C.4060409@linux.intel.com>
In-Reply-To: <558DAD7C.4060409@linux.intel.com>
Subject: Re: Avoid creation of .sdcard images.
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
X-List-Received-Date: Fri, 26 Jun 2015 20:27:47 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-06-26 13:52, Leonardo Sandoval wrote:
> On 06/26/2015 02:45 PM, Daniel. wrote:
>> Does any one knows how to avoid the creation of .sdcard images? This ones
> The variable controlling the type of output images is IMAGE_FSTYPES, so you can redefine it under your local.conf. To see the current content, you can do
>
> $bitbake -e <your image> | grep IMAGE_FSTYPES

Just add this line to your local.conf
   IMAGE_FSTYPES_remove = "sdcard"

>
>> takes a lot of diskspace and I have to delete it periodically, which gives
>> headaches about cleaning everything every time. A have an 50GB partition
>> and from month to month I get out of disk space. :(
>>
>> Thanks in advance
>>
>>
>>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

