Return-Path: <flavio.alves@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65533E00716
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 12:15:44 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id c14so7950995ieb.14
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 12:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=LRu8l3pqWslatipaSdpO4vgVLazP8B8WioPL5CJPdMg=;
	b=jfSxiSetec0AFO3haNGtYu9OAwvBfiybPQ5TCZWFowEqK3SU88rC+3hpZ/Bq2iKmOf
	VX+7g2Stw4x/iEyWblhZ1H5kAeH4/VbhkmNzWq1CnfyWVU2lDc9e+oQ+qn/Q7MYX4GOm
	kjlvIyWOfZfrLaZFrY3zBrualEba8Ru69Lb/YU+0dBOxqINk7yc8Ylyt2mYXAtJTLVEI
	wXJtOq6q3O/83CSMzSd9y7M6/WGUm5Hpyc2UZtEFFj8ILFuspv/fOH3fdxPq7gFJEGQA
	xT1Xa8YVa/Kt0JiT7w1xIqvQG4s7z9YdlHgAg70GWXyYKJ5Rxd96NINQtMdQqTVqofva
	bXCA==
MIME-Version: 1.0
X-Received: by 10.50.91.195 with SMTP id cg3mr5521141igb.57.1358626544057;
	Sat, 19 Jan 2013 12:15:44 -0800 (PST)
Received: by 10.42.127.141 with HTTP; Sat, 19 Jan 2013 12:15:43 -0800 (PST)
In-Reply-To: <546EF617-BE24-4442-B74E-29A61364E9F4@gmail.com>
References: <546EF617-BE24-4442-B74E-29A61364E9F4@gmail.com>
Date: Sat, 19 Jan 2013 18:15:43 -0200
Message-ID: <CAFNBfteXwY-pL-NX3fM2t8GcZXTX3n7FsuNKnYW8Y459SK_kBA@mail.gmail.com>
From: Flavio Castro Alves Filho <flavio.alves@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Eclipse IDE Plugin: Configuring cross gcc
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
X-List-Received-Date: Sat, 19 Jan 2013 20:15:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Elvis,

I believe that Yocto ADT plugin only supports Autotools based projects.

Common CDT based cross gcc projects do not detect the Yocto environment.

I suggest you to load the environmet variable before launching Eclipse
and add, by hand, the cross compiler prefix when you create the first
CDT based project.

Regards,

Flavio

2013/1/19 Elvis Dowson <elvis.dowson@gmail.com>:
> Hi,
>       I've build meta-toolchain-sdk and installed the toolchain on a separate machine. I then installed Eclipse, Linux tools, and the Yocto Eclipse IDE Plugin.
>
> I configured the Yocto Project ADT to use Standalone Pre-built toolchain, and pointed to the correct toolchain root and sysroot locations.
>
> However, when I try to create a simple HelloWorld project, and select cross-gcc, it doesn't set any of the cross-compile prefix or toolchain paths.
>
> I have to manually type them once again.
>
> What's worse is that the environment-setup-ppc440e-poky-linux script file doesn't seem to be invoked.
>
> This causes the gcc sysroot variable not to be set, causing errors during linking.
>
> What is the correct way to use the pre-built toolchain, with the eclipse IDE. I want to build on the host, and direct compile for my target board.
>
> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
Flavio de Castro Alves Filho

flavio.alves@gmail.com
www.linuxembarcado.com
Twitter: http://twitter.com/#!/fraviofii
LinkedIn profile: www.linkedin.com/in/flaviocastroalves

