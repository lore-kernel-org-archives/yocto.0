Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B115BE015ED
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 08:09:58 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id w16so1703131vbf.21
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 08:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=eUj6UZSHwcSzjzA70+mZdqeYRRodZ5+4VbB1E+9PVxM=;
	b=FpvnewJuP6eCJuwHfDVAZRl6Cl7jC348IIO6OHyM0adf8G+wHpIpIBV4p2Jrpc9ZaM
	r8iXQ34bW7GfDIH8jjO/bhK581yO1hpVlJMsqT4sQiRFtgBfjrDF7oguuQjb23lZ5ffm
	U0YUqKAHoYTwPKCxzNN2EyXVBCOe/KWTWsdR6gi3GselbCLCn9XHlXyf/WVQqCkEL94D
	yuNo+WX06hOsCym3qyyZSgsKZzDOCYvBfKF0jRe1Gdl37dDyG4EYGeAqSd+CJSyJYWsG
	UuFcVYrtMCjFuEvagu5G9t8zBLFruDeZdMa90EFRi48T1M5Hw7FOoHvpmQhnHUhbVMbD
	1PTg==
X-Gm-Message-State: ALoCoQkRXA9OKC5VFHkLypCvdT6AUh05NjRDxn6NG9RDni27N1gLHfSLYj89gAExi6hc2FHwxP74
X-Received: by 10.220.77.141 with SMTP id g13mr7911228vck.79.1381417797461;
	Thu, 10 Oct 2013 08:09:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 10 Oct 2013 08:09:37 -0700 (PDT)
In-Reply-To: <CA+JN8xP7dhToPUhpor-C3LJOVY9ZyYP5giOTJjwUMfKNSfOkrQ@mail.gmail.com>
References: <5255F1CF.8020203@gmail.com> <2034055.AmVRsnPTrY@helios>
	<CA+JN8xPBG_V4MMGxnQv49FC8qC3WJNwgOFKKvkqE73NnnFAWXA@mail.gmail.com>
	<CAJTo0LaNxxcuLPtwoh-ryLObhp4sVV4ESj_VnUhx4-Q=y=ciRw@mail.gmail.com>
	<CA+JN8xP7dhToPUhpor-C3LJOVY9ZyYP5giOTJjwUMfKNSfOkrQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 10 Oct 2013 16:09:37 +0100
Message-ID: <CAJTo0LY_q=zpNvZqbVHhFvxYiqNs2jg4PqREg2gF0EbZ7=n21w@mail.gmail.com>
To: Seth Bollinger <seth.boll@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipes that update a shared file
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
X-List-Received-Date: Thu, 10 Oct 2013 15:09:58 -0000
Content-Type: text/plain; charset=UTF-8

On 10 October 2013 16:02, Seth Bollinger <seth.boll@gmail.com> wrote:
>> You need to use $D so that you're not attempting to write to the *host's*
>> /etc:
>>
>> echo test >> $D/etc/inittest2
>>
>> In a postinst $D may be set, and if it is then the postinst is being
>> ran on the host at rootfs time, and points to where the rootfs is
>> being constructed.
>
>
> Ok, I changed to as follows:
> pkg_postinst_${PN} () {
>     echo "testtest" >> ${D}/etc/inittest
> }
>
> After that I do a find and the file is only populated in the recipe's image
> directory, not the rootfs.

Use $D instead of ${D}. ${D} will get expanded when the package is
created but you want to use the environment variable $D.

Ross

