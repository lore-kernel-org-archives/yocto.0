Return-Path: <flavio.alves@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 407BBE00716
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 13:23:25 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id e13so8008400iej.32
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 13:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=TuUhNJEfdTQKMm6b0O9ms4WGwbKrdAP01SBY/m63qBs=;
	b=xIDx1o8F3ZtWUtlY//h5K5OJGMOnkQqT6U9CJsPT4LCcyZNkNj0JXTiJ186NXggqjk
	iRZ80UtEODwmubnSlZ20py+NiawmRYydDZe1fmtiDmwFWfduvVkwt3UdYR8Mn6a7WcIy
	n1gMCtu1Q/s1Z5NIEFxb53ZeJr2AVW7bDLrWzXNMk+jN9q2AnF7YhI7MkR7VCVCH7HVj
	svkIFpM2sxBluoopTVc+qSUHG1b5YVRyHNDjYWJAKY9lE8SAJfnR2De+ryu+6KZwcT2R
	qEZVxlCTAD2DsA4mkIPkBanRVXOgRA7GwlqLmQXAxHexJtA3BuHc+0nCPGsJtqatoYm0
	JzEQ==
MIME-Version: 1.0
X-Received: by 10.50.34.193 with SMTP id b1mr5711504igj.89.1358630604708; Sat,
	19 Jan 2013 13:23:24 -0800 (PST)
Received: by 10.42.127.141 with HTTP; Sat, 19 Jan 2013 13:23:24 -0800 (PST)
In-Reply-To: <EB9FD54A-F463-4015-8C61-15B83038CBE7@gmail.com>
References: <546EF617-BE24-4442-B74E-29A61364E9F4@gmail.com>
	<CAFNBfteXwY-pL-NX3fM2t8GcZXTX3n7FsuNKnYW8Y459SK_kBA@mail.gmail.com>
	<EB9FD54A-F463-4015-8C61-15B83038CBE7@gmail.com>
Date: Sat, 19 Jan 2013 19:23:24 -0200
Message-ID: <CAFNBfteshWwjvNfJEepdsv6UsnEoVwNp3-vcTbw7p=QDMwuAdg@mail.gmail.com>
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
X-List-Received-Date: Sat, 19 Jan 2013 21:23:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thank you for the observation.

Probably that's the answer from the problem that I'm facing with Eclipse:

https://lists.yoctoproject.org/pipermail/yocto/2013-January/013846.html


2013/1/19 Elvis Dowson <elvis.dowson@gmail.com>:
> Hi,
>
> On Jan 20, 2013, at 12:15 AM, Flavio Castro Alves Filho <flavio.alves@gmail.com> wrote:
>
>> I believe that Yocto ADT plugin only supports Autotools based projects.
>
> I tried an Autotools project with a standalone toolchain sdk installed on a separate machine.
> It was able to reconfigure and build the example.
>
> However, I noticed that on the machine where I built the toolchain, the autotools
> reconfigure project did not work. When I type bitbake meta-ide-support, it
> generates an environment configuration file, but the sys root variable is not
> pointing to the correct toolchain x64_64 something. It is pointing to my
> machine configuration folder, e.g. virtex_5_ml507_powerpc440
>
> This cause the reconfigure steps to fail, and give the same error while configuring
> the project, i.e. the configure step while attempting to detect the c compiler, and errors out
> saying no c compiler.
>
> Best regards,
>
> Elvis Dowson
>
>
>



-- 
Flavio de Castro Alves Filho

flavio.alves@gmail.com
www.linuxembarcado.com
Twitter: http://twitter.com/#!/fraviofii
LinkedIn profile: www.linkedin.com/in/flaviocastroalves

