Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B4F8E011DB
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 09:38:37 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id 17so11874955iea.2
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 09:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=fKkwETs6WBxSZjUhsZ1P7GpD09wDWOS6OO+eCiaU1Fg=;
	b=HwdzF8TZmj/87wFhbV1ZsACkOjUtUCima+Nkh6jKTUx3s5VKvQXriGTB3INarxY/J0
	ScK46s84Hi2KpGgoQHRxDiUFsavWTv2FHHTMnKQSs7tJMg+0Qq5+k4puKaVa4bZtx2a0
	m3VpcJ6xz0LGJ82Qi4CWY7zs/2CyGj1UD7hWQJVnUdJcK9wGmM+m8h9y+WI2X8WB4aAB
	QJozrFaTI/wXqxK6VmwAMjHi32F4UzTIbeKfFCL4l5V9lNq9EaEwvkbPa8xyYmwcAcnk
	gOH8VRNHBqkU0HruBd/q0uOLN+Nq1TmZHSR2DXU1tpO9fCkuSdzApa52IEFEia5gLOSn
	AYug==
Received: by 10.42.63.145 with SMTP id c17mr24319474ici.22.1356629917252; Thu,
	27 Dec 2012 09:38:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.136.229 with HTTP; Thu, 27 Dec 2012 09:38:17 -0800 (PST)
In-Reply-To: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
References: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Thu, 27 Dec 2012 12:38:17 -0500
Message-ID: <CANge7vWDaQj2+eYJpRnbhQ0NQ_V8A4zE0sBhXTnvGQDCC5MTHA@mail.gmail.com>
To: yocto@yoctoproject.org, navani.srivastava@gmail.com, 
	navani.srivastava@lnties.com
Subject: Re: Remove unwanted package from Qt
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
X-List-Received-Date: Thu, 27 Dec 2012 17:38:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

>>
>> Hi,
>>
>> I am compiling Qt-4.8.0 with poky-denzil-7.0 for arm1136 architecture.
>>
>>
>>
>> At the time of integrating qt-embedded with rootfs, I am getting qtopia
>> directory in usr/share path of rootfs.
>>
>> I tried removing qtopia directory through qt recipe but ended in
>> compilation error. Please suggest any idea to remove qtopia from share
>> directory.
>>
>>
>>
>> Thanks and Regards
>>
>> Navani Kamal Srivastava
>
> I ran into this as well after using a bbappend to disable a number of
> Qt features, including the building of demos that get staged in the
> aforementioned path.  In my case, that qtopia directory (and any
> subdirectories) wound up either being empty or containing files that
> were unnecessary for my build.
>
> My quick and dirty solution was to just to add a install_append()
> containing a 'rm -rf ${D}${datadir}/qtopia' in my bbappend. (Be sure
> you don't have anything important in there!) I'd be curious to hear if
> there's a better approach to this as well...
>
> Regards,
> Jon

Oops...just wanted to note the typo in my above response -- I'm not at
a machine where I have access to my recipes.

That should be a do_install_append(), not install_append().  I'd also
double check the qtopia path, as I wrote that from memory, which may
not be reliable. ;)

Apologies,
Jon

