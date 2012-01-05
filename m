Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD77E00303
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 09:53:06 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so536129qcs.35
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2012 09:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=XNbHrsnnA9UsBcYZPWp55UurTS9tt7hla6z+TvYG1h4=;
	b=s6E9ZiAAYhGEfNe6FtuPzPNkZst25VFsWOhvY7Btavh8VHXwc2ENuLRVd8j0xjRRbS
	BZUwZRuobdg9KEOgZzUpVNCBkpADCBGOYPxt4/OkNoM9dLX2Oss+gVz9p/ZX34W6WCAT
	j4P/QG1zHNrA/8d1QpT477is2PIqK10MkPyjs=
Received: by 10.224.175.2 with SMTP id v2mr3859296qaz.69.1325785985264; Thu,
	05 Jan 2012 09:53:05 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.187.141 with HTTP; Thu, 5 Jan 2012 09:52:44 -0800 (PST)
In-Reply-To: <4F05D5BE.80706@intel.com>
References: <4F059C60.8020507@mlbassoc.com> <4F05D5BE.80706@intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 5 Jan 2012 10:52:44 -0700
X-Google-Sender-Auth: Gzkej1gru7Zg_ZVUqoKY4il5Woo
Message-ID: <CABcZANmKnCNjgieH--K3064-cmVFrJgZ6azpY=pCrYV2jicbDw@mail.gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Can't build util-linux
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
X-List-Received-Date: Thu, 05 Jan 2012 17:53:06 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 5, 2012 at 9:54 AM, Scott Garman <scott.a.garman@intel.com> wrote:
> On 01/05/2012 04:49 AM, Gary Thomas wrote:
>>
>> Using a freshly updated master
>>
>> OE Build Configuration:
>> BB_VERSION = "1.15.0"
>> TARGET_ARCH = "arm"
>> TARGET_OS = "linux-gnueabi"
>> MACHINE = "beagleboard"
>> DISTRO = "poky"
>> DISTRO_VERSION = "1.1+snapshot-20120105"
>> TUNE_FEATURES = "armv7a vfp neon cortexa8"
>> TARGET_FPU = "vfp-neon"
>> meta
>> meta-yocto = "master:5aabdbaff7b8be319a86c5e33cc2eb8c2e4aa2ef"
>>
>> | NOTE: DO PACKAGE QA
>> | NOTE: Checking Package: util-linux-agetty
>> | ERROR: Error executing a python function in
>> /tmp/poky-multi/meta/recipes-core/util-linux/util-linux_2.20.1.bb:
>> | AttributeError: 'module' object has no attribute 'check_output'
>
>
> Bah, sorry about this. Apparently the check_output method of the subprocess
> module is new in Python v2.7 (I'm 99% certain you must be using an older
> Python than that). I'm in the process of refactoring this to work with a
> more compatible API. In the meantime, please use Mark's suggested fix.

Afaik, bitbake master still only requires 2.6. You can use bb.process
(which wraps subprocess.Popen) for now.
-- 
Christopher Larson

