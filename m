Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49696E00796; Thu, 25 Sep 2014 21:20:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D62E0076C
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 21:20:23 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id rd18so10262045iec.30
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 21:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2IV4CJB4byQO5P2fqSaQ8bGjj0A5SO7r8neSLiuoJGE=;
	b=tP0zeTTyr8+8udRPb43uQYPCvD+FBTo7v/CzlioMMV+LYdjmnX8e38W3aqWnOmpHrL
	JdxNfoRvOiOWIQ4GzMBo1UN738UKh+QMNuMpQyvliKMMAUxYdqSpDKkZfnr6/rjPzCQ1
	Vy5fAQlRxiagT/pJGSREZE62axhrPc8NSu74ZVKZg67A7XFTfcx0j/Q5Ej/gJlK/4eH/
	KfDbXuXBYIHHd2iM5mN/4sH0iaHIKMOFhurAvHAX4i7nJx/aBgERaDIkJgbSAUE3V8OI
	T4ZUg+XKWf5brgef3Rv2k6Xc6MlmpEnjUveEENfNsTT7geQ8gw52kv6drKkv9aO93xSs
	XbjQ==
MIME-Version: 1.0
X-Received: by 10.50.6.68 with SMTP id y4mr9817853igy.47.1411705222455; Thu,
	25 Sep 2014 21:20:22 -0700 (PDT)
Received: by 10.107.7.95 with HTTP; Thu, 25 Sep 2014 21:20:22 -0700 (PDT)
In-Reply-To: <5424E7FC.6070403@mindchasers.com>
References: <CACjDgAMYTpdLF5YSJNVkceaYMXCVT1n-th1nJuTc=nYFu7EPDg@mail.gmail.com>
	<CAJTo0La-_4byM=QnF8-_wT_JBaPs=P-vUjqvxHfBTBo2boaO-w@mail.gmail.com>
	<CACjDgAO+390wcoRYGkcPOSMeXNmjgATskfWhyFTzP7y60CgV-Q@mail.gmail.com>
	<5424E7FC.6070403@mindchasers.com>
Date: Fri, 26 Sep 2014 12:20:22 +0800
Message-ID: <CACjDgANZ=-ZW+8_fdM=cLhBPwbAPuLhhCb8XMGj8NJcXKtMpCg@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding OpenEmbedded layer
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
X-List-Received-Date: Fri, 26 Sep 2014 04:20:34 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Thanks for pointing out the correct way of doing things.  I am a
script kiddies (not that good with git and linux cli yet still
learning).  Basically needed more of a step by step method of doing
things.     Thanks again.

On Fri, Sep 26, 2014 at 12:13 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> On 09/25/2014 10:11 PM, Albert K wrote:
>>
>> Hi,
>>
>> Thanks for the information.   I removed the previously cloned
>> directory and re-clone it with the following command and now it works.
>>
>> sudo git clone -b daisy git://git.openembedded.org/meta-openembedded
>
>
>
> FYI - you could have done a
>
> $ git branch -r
>
> and you would have seen the remote daisy branch. After that, you could have
> just done a:
>
> $ git checkout daisy
>
> and it would have created a local daisy tracking branch for you.
>
>
>
>
>
>
>>
>>
>>
>> On Thu, Sep 25, 2014 at 6:18 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>>
>>> On 25 September 2014 11:00, Albert K <alberk@gmail.com> wrote:
>>>>
>>>> ExpansionError during parsing
>>>> /yocto/poky/meta-openembedded/meta-oe/recipes-support/lzip/lzip_1.15.bb:
>>>> Failure expanding variable do_fetch[file-checksums], expression was
>>>> ${@bb.fetch.get_checksum_file_list(d)} which triggered exception
>>>> MalformedUrl: The URL: '${SAVANNAH_GNU_MIRROR}/lzip/lzip-1.15.tar.gz'
>>>> is invalid and cannot be interpreted
>>>
>>>
>>> You're using poky 1.7.1 but meta-oe from git master, which depends on
>>> some variables that have been added to poky master.
>>>
>>> Switch the meta-oe clone to the daisy branch, and it will work.
>>>
>>> Ross
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

