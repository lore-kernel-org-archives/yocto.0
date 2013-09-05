Return-Path: <jc@vtkloud.com>
Received: from mail-bk0-f43.google.com (mail-bk0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D205E0155D
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 06:10:03 -0700 (PDT)
Received: by mail-bk0-f43.google.com with SMTP id mz13so737179bkb.2
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 06:10:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=P8Bhg3ky6N3VWAMsWsLIQxp3Wb4G3Gcdk8JJUbCiPVI=;
	b=RyjZNmXsE2jG3/bZ9HPLi19awcw7tdLA+tXGXpbE4fdGrXlq31NmFRjzFLE/MKSwON
	h2+zJZ+Kl4h7MM5O094BN16FQQS4/eFNPeKCBG83FebOBA2qBxPEkRjszsl8hNOrB/m5
	9tjjnxO/GOH8zBjbswT3d0aB7T0HDGcGzrSJc+ZhlAqpO3eOirRac+bMx6FuYiY/Y5PH
	0VMwdCrrlTcn0n8I05nboGtm0aNieqsVx6Z/RbPI4rSd9RhfTZpk/j8yfdGqXU244kaz
	xGRmgamQznfAaP2ucRZnPlG2dLZs2Ndq1Z1cJ6+bACMl+GTX6fUsfMce3BYQwJy47nL8
	dsyA==
X-Gm-Message-State: ALoCoQmkncb828+e9QKK4kxWhphaOrJLU0sNpxQeaP8umbBLBEejBmhr9Z0b8zB4zbswi7FmMNS3
X-Received: by 10.204.123.199 with SMTP id q7mr7337543bkr.10.1378386602571;
	Thu, 05 Sep 2013 06:10:02 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id jt14sm7956797bkb.0.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 06:10:01 -0700 (PDT)
Message-ID: <522882A7.70901@vtkloud.com>
Date: Thu, 05 Sep 2013 15:09:59 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <522782E7.8080509@vtkloud.com> <196913219.mMcczBtVSS@helios>
	<522852B6.5010309@vtkloud.com> <1788175.gQRx6AnBKQ@helios>
In-Reply-To: <1788175.gQRx6AnBKQ@helios>
Cc: yocto@yoctoproject.org
Subject: (solved) Re: adding specific config files
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
X-List-Received-Date: Thu, 05 Sep 2013 13:10:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul

On 05/09/2013 12:00, Paul Eggleton wrote:
> On Thursday 05 September 2013 11:45:26 JC wrote:
>> On 05/09/2013 11:32, Paul Eggleton wrote:
>>> Unfortunately we have to have a fixed configuration for smart during
>>> do_rootfs, so it has to be written to. I think though that rather than
>>> trying to install a configuration file for smart using a separate recipe,
>>> I would suggest modifying the smart configuration at the end of do_rootfs
>>> to add the configuration elements you need. The way to do this would be
>>> to define a shell function that you can add a call to in
>>> ROOTFS_POSTPROCESS_COMMAND that will run smart:
>>>
>>> add_extra_smart_config() {
>>>
>>> 	smart --data-dir=${IMAGE_ROOTFS}/var/lib/smart channel --add rpmsys
>>> 	type=rpm-sys -y>
>>> }
>>> ROOTFS_POSTPROCESS_COMMAND += "add_extra_smart_config; "
>>>
>>> You can put the above in the image recipe itself or in a class that your
>>> image recipe inherits.
>>>
>>> Cheers,
>>> Paul
>> Thanks, I'm going to try it !!
>>
>> Assuming I don't want to create a new image (i still haven't exactly
>> figured how to do this in a clean way), where should I append this code ?
> To be honest I always recommend people create their own image recipes
> whatever they are doing since image recipes are usually trivial and
> almost always need to be customised. The easiest way to do this is to
> copy an existing image recipe and name it and modify it as you prefer.
>
>> How can I make it dependend on the "package-management" feature?
> If "package-management" is not in IMAGE_FEATURES the smart config gets deleted
> anyway so this will have no effect. However, if desired you can use an inline
> python expression within the shell function to do things conditionally, e.g.
>
> if ${@base_contains("IMAGE_FEATURES", "package-management", "true", "false", d)}; then
> ...
> fi
>
> It's important to realise though that the evaluation of the inline
> python happens when the expression is parsed, not when the shell
> function it is executed; by the time the shell function executes the
> expression will have been converted to its result.
>


This worked perfectly. Just a slight append : your need to "install -d" 
the /var/lib/smartpm directory, otherwise it seems it's not created. Not 
a big deal anyway


Thanks again !!

Jay

