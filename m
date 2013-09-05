Return-Path: <jc@vtkloud.com>
Received: from mail-bk0-f49.google.com (mail-bk0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11653E01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 02:45:30 -0700 (PDT)
Received: by mail-bk0-f49.google.com with SMTP id r7so629989bkg.36
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 02:45:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=DZoPFcmeba5ZJfJPpl1zw/CeL/EjecgxqDKvyY0TfXQ=;
	b=ZqXVDZeyVdy1DdBDXhXHELOLgRpFMU8C4GooIkfhnPc6BTtwh67xlEC1QwkLoMWCqQ
	qag4EWdbBcKhludjKEPwWbwQGZfQCAqusUt1J5Pols+Ws0HKT5l0a01sEYdaFLzjhNAP
	LQdHyY39tR/CcmGTFBeAkVuPzDHx4XV1VXYJceqgW8SntkwAAOlK0gGO7aeObPT/1BhJ
	9FhR1Rlg8Y+9n7mX83V0eebxJUnGRVR5bk+FDWFa+RRTKE9gRqRT2ZkpMO4b3V/v8jmv
	BOVMaHQdPSV4u/g83Jd39GjTEY6SkSVgZE66gOXBOwyk+FJuWwUUqK5j5JX0JGrsJsXZ
	+3/A==
X-Gm-Message-State: ALoCoQn+Hx1a6Umq8HYGHxbFpAOHcffhy09A0CEQi2ozuWzeQEuwH3IffBzjZDIk4UnmIjgulpZ/
X-Received: by 10.205.99.129 with SMTP id cs1mr903490bkc.35.1378374329889;
	Thu, 05 Sep 2013 02:45:29 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id qx2sm7635326bkb.16.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 02:45:28 -0700 (PDT)
Message-ID: <522852B6.5010309@vtkloud.com>
Date: Thu, 05 Sep 2013 11:45:26 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <522782E7.8080509@vtkloud.com> <522790E3.5080708@vtkloud.com>
	<522793A2.3000207@vtkloud.com> <196913219.mMcczBtVSS@helios>
In-Reply-To: <196913219.mMcczBtVSS@helios>
Cc: yocto@yoctoproject.org
Subject: Re: adding specific config files
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
X-List-Received-Date: Thu, 05 Sep 2013 09:45:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/2013 11:32, Paul Eggleton wrote:
> Hi Jay,
>
> On Wednesday 04 September 2013 22:10:10 JC wrote:
>> On 04/09/2013 21:58, JC wrote:
>>> On 04/09/2013 20:58, JC wrote:
>>>> Hi,
>>>>
>>>> In my project, we have our own rpm repository and we use smartpm on
>>>> the target.
>>>> In order to have the target setup with the repo out of the box, we of
>>>> course have added "package-management" in IMAGE_FEATURES. Now I'd
>>>> like the target to have our repo address already configured.
>>>>
>>>> The best way I found was to create a recipe in my overlay and hacking
>>>> the system a little bit this way :
>>>> do_install() {
>>>>
>>>>     if
>>>>
>>>> ${@base_contains('IMAGE_FEATURES','package-management','true','false',d)}
>>>> ;
>>>> then
>>>>
>>>>          install -d ${D}/${sysconfdir}
>>>>          install -m 644 ${WORKDIR}/config.in ${D}/var/lib/smart/config
>>>>     
>>>>     fi
>>>>
>>>> }
>>>>
>>>> where "config.in" is a simple copy of the non-human readable version
>>>> of smartpm config file, generated manually on the target.
>>>>
>>>> I was wondering if there would be a better way such as do not test in
>>>> the do_install, but rather make the recipe dependent on the
>>>> "package-management" image feature ? (so that do_install wouldn't
>>>> even be considered if the option is not set), or any other smarter idea.
>>> Actually I _need_ a better idea because mine doesn't work: it actually
>>> creates what I want (/var/lib/smart/config) but since do_rootfs also
>>> uses this directory to install packages, it wipes it out at the end of
>>> the process... so my installation is removed :(
>>>
>>> I'm sure someone else did something like this (but succeeded) ?
>> The guilty line is in /sources/poky/meta/classes/rootfs_rpm.bbclass
>>
>> 145:         rm -rf ${IMAGE_ROOTFS}/var/lib/smart
>>
>> :(
>>
>> Whatever I want to do with packages, It'll be removed. There's probably
>> an alternate way :(
> Unfortunately we have to have a fixed configuration for smart during do_rootfs,
> so it has to be written to. I think though that rather than trying to install
> a configuration file for smart using a separate recipe, I would suggest
> modifying the smart configuration at the end of do_rootfs to add the
> configuration elements you need. The way to do this would be to define a shell
> function that you can add a call to in ROOTFS_POSTPROCESS_COMMAND that will
> run smart:
>
> add_extra_smart_config() {
> 	smart --data-dir=${IMAGE_ROOTFS}/var/lib/smart channel --add rpmsys type=rpm-sys -y
> }
> ROOTFS_POSTPROCESS_COMMAND += "add_extra_smart_config; "
>
> You can put the above in the image recipe itself or in a class that your image
> recipe inherits.
>
> Cheers,
> Paul
>

Thanks, I'm going to try it !!

Assuming I don't want to create a new image (i still haven't exactly 
figured how to do this in a clean way), where should I append this code ?
How can I make it dependend on the "package-management" feature?

Thanks again,
Jay


