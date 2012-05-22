Return-Path: <jfabernathy@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FF28E01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 10:28:53 -0700 (PDT)
Received: by qabg27 with SMTP id g27so3158806qab.14
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 10:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=VnieOELq9o7lW+DvQTlWmXXuiq75V3IzW+yqKfTCbgA=;
	b=BC1jxX81y3uOaKhL+vIKnYyufSjr4eZ61oAF92Y2mXF+LNkhH00kZnhHnYCS6F65eG
	4xzGgU4xWlSDMRB5Q+/CNk0baqoxu6XI/tyKsKy9jHaHwMt6tZkOeJMMfAr9oTW7CSiu
	jQCi4gSJttbUKn4KKS0C7Uv/zyKgpFyPpxJHJrTEuDJrbJvcme//kKu81l2rI4gg2H89
	kk0kD9ME/zd0juUguGGi6zCjsbSa224gkPf5UFLrCUi3iDhJzEcK+Xp5n/jHVkoYxBbA
	4SdXaymHhdLfGww9454SRTAkw0v2EqTqWySP5A36qdL2bW8B+mUUjYyc5dJLwrHPDqWI
	TCRA==
Received: by 10.229.106.33 with SMTP id v33mr12697343qco.47.1337707732775;
	Tue, 22 May 2012 10:28:52 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	dx8sm13167987qab.8.2012.05.22.10.28.51 (version=SSLv3 cipher=OTHER);
	Tue, 22 May 2012 10:28:52 -0700 (PDT)
Message-ID: <4FBBCCD3.4010601@gmail.com>
Date: Tue, 22 May 2012 13:28:51 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAExZvuOOdBRz3=zeko8gbdnXOQDaQ5mzvLNXFCi-uW3mduYNhw@mail.gmail.com>
In-Reply-To: <CAExZvuOOdBRz3=zeko8gbdnXOQDaQ5mzvLNXFCi-uW3mduYNhw@mail.gmail.com>
Subject: Re: sending ioctl 5310 to a partition!
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
X-List-Received-Date: Tue, 22 May 2012 17:28:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/21/2012 05:18 PM, Emir Elkholy wrote:
> Hello,
>
> I am trying to install an image of Yocto to my CRB (cedartrail). After
> creating the bootable usb with the new image on it as a usb-zip
> (because it is too large for the hdd method of install), I insert it
> into one of the usb slots of my CRB. After turning the CRB on the
> prompt says "boot". At this point if you don't type anything it just
> runs the image off of the USB. This worked with no problem. What
> didn't work was trying to install the new image on my CRB. When the
> CRB starts with the USB attached, it prompts the user with "boot"
> which at this stage i typed "install". It seemed as if it was
> installing because it was outputting various text, but then it just
> stopped after outputting to the screen "sending ioctl 5310 to a
> partition!". Hopefully someone on the mailing list has seen this
> before. Any advise would help.

If you want to put the image on a hard drive use the .ext3 image and 
follow the "how do I" on the wiki at:

https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F

Jim A

> Thanks
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


