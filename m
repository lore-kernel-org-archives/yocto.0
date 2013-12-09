Return-Path: <david.c.nystrom@gmail.com>
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF22FE006C7
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2013 07:15:17 -0800 (PST)
Received: by mail-la0-f53.google.com with SMTP id mc6so1418720lab.40
	for <yocto@yoctoproject.org>; Mon, 09 Dec 2013 07:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=U/R/mfLGMb9MVddErid46CpWilRYm6SHf79rAZy2eTw=;
	b=QQBbmJQpISmNPZnyq2VjhS9yY8mK3MabrIrhjvrgR7xHc7ZdP4aWGqWnUtYAzlY5jW
	92LJ46rR2gIvI8FxdlXVvTj91eX2EXB92Q+IOiJoOHn+/DRBrfh3KJiuEi1T1hV5z9bf
	AEW0jARE4Ygdvo55GV+gGljJ6eb0vg6yabhFsGu/MyoIMR9DH7fGvlc5gv9rV8wWdSA+
	05wxr6ftBS84m4BxOgV6NDT1D4jVu9nokd1937pXmjng+Je4TEcEN4QXQppqUA0yjfl1
	fEfRTa3WT534VJIjbaxHk3LZPbVBJcMgPWNfuqijgt6KRHPgInuU+HhEkTByaM5Hqkkk
	U1FA==
X-Received: by 10.152.183.194 with SMTP id eo2mr344684lac.81.1386602115661;
	Mon, 09 Dec 2013 07:15:15 -0800 (PST)
Received: from [172.16.141.147] (sestofw01.enea.se. [192.36.1.252])
	by mx.google.com with ESMTPSA id e10sm15145721laa.6.2013.12.09.07.15.13
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Dec 2013 07:15:14 -0800 (PST)
Message-ID: <52A5DE80.9070602@gmail.com>
Date: Mon, 09 Dec 2013 16:15:12 +0100
From: David <david.c.nystrom@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@linux.intel.com>
References: <1386254684-26972-1-git-send-email-david.nystrom@enea.com>
	<52A1CDEA.5050303@linux.intel.com>
In-Reply-To: <52A1CDEA.5050303@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-docs][PATCH] Revert "ref-manual: Added sdk-pms to Distro Feature list."
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
X-List-Received-Date: Mon, 09 Dec 2013 15:15:19 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On fre  6 dec 2013 14:15:22, Rifenbark, Scott M wrote:
> David,
>
> This patch did not format well when I sent to my Linux box.  I cannot
> apply it.  I can apply it by hand or you can try and form the patch
> again and re-send it to the yocto@yoctoproject.org mailing group.
>
> Thanks,
> Scott

Hi Scott,

Hmm, I don't see anything wrong with this patch, I double-checked by 
saving it from the ML
and it applies cleanly to with "git am" to both poky/master and 
yocto-docs/master

This patch is a clean revert, and would be the same as issuing
git revert f8076f1916cc52647b129922c1b1646ad6df8ff9 in yocto-docs.

Br,
David

>
> On 12/5/2013 6:44 AM, David Nyström wrote:
>> This reverts commit f8076f1916cc52647b129922c1b1646ad6df8ff9.


