Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62FBB4C800A7
	for <yocto@yoctoproject.org>; Sat, 12 Mar 2011 19:30:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so591439pzk.35
	for <yocto@yoctoproject.org>; Sat, 12 Mar 2011 17:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=pzh6RU03tng8USdCNL5XonWzH5Quivg0V84gxn+3LKI=;
	b=yBNdBFTo5V9YAJLZ2HuTzfpPGmyznzWdEAzHhuwXVVOV5GXkNbsGRevJxHN6zVSxGM
	1XLADALTZNqA92dpZ9QiYUjAHNsnynyJ8m4DBDDgUOcNYWhlq3QXHsgFPPAc13mrRFjw
	OCLbdRiCMFVHCQGCYP3b8JH7PCHMhg4uroG9I=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=R6VlFu82lyY9YJbc86NK7yfatbIdcwSVocdhsfj088yCNjpEyIj079f1tu5cHFD+2u
	iAPnIL5g5MZkkTcV3CJr0w2gc20xdxZv8vhv4iMlW+P9bgLMZwFk41NawtWbRnBOprPQ
	AzdM8vPwrJdpfHIFqRWQZCDuNXkhql1PnyWRo=
Received: by 10.142.156.18 with SMTP id d18mr8881452wfe.224.1299979831882;
	Sat, 12 Mar 2011 17:30:31 -0800 (PST)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id w27sm7811012wfd.4.2011.03.12.17.30.29
	(version=SSLv3 cipher=OTHER); Sat, 12 Mar 2011 17:30:30 -0800 (PST)
Message-ID: <4D7C1E2B.9070606@gmail.com>
Date: Sat, 12 Mar 2011 17:30:19 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <AANLkTi=CS=_V1kd+RzzE6xMLmbd2kFt+6uCJb1JLvJmK@mail.gmail.com>
In-Reply-To: <AANLkTi=CS=_V1kd+RzzE6xMLmbd2kFt+6uCJb1JLvJmK@mail.gmail.com>
Subject: Re: Eclipse plug-in does not detect my target
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
X-List-Received-Date: Sun, 13 Mar 2011 01:30:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 3/12/2011 3:08 PM, Leon Woestenberg wrote:
> Hello Yoctonians,
>
> I created a custom layer with the PowerPC e500v2 architecture and
> machine, host tripplet "powerpc-linux-gnuspe".

maybe -gnuspe is problem ? try powerpc-linux-gnu and see if helps

>
> After building a target package, pciutils, so that the tools were
> built, I wanted to test the Eclipse plug-in. After selecting Poky Tree
> mode in the Yocto Tool configuration, I could not make it detect the
> target; the drop down box remained empty.
>
> Which part of the the Eclipse plug-in code detects the target?
>
> As per the video on YocToob(tm) I selected the build/ directory of my
> installation.
>
> Regards,


