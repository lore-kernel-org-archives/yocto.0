Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FEE1E01602
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 11:03:06 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id el20so6062234lab.26
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 11:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=jbbqibD7F9qUPRP/ZMLc+yOsP4k+tr1cRm38gPZcZEI=;
	b=bYW28y0D+9zvMhRKZgmHRG/rkSVZPJHJoZftxBS7MueWxxoSaONv+aZYvHztast+VM
	7Le7kfivFY2K0NBMur4ZY5rVl7w/A8ejudB65eRCsD+0lAfCCwizEa/x5Z0t5dYoP0W2
	23f1pgQ5lp3FgoNwCCNOSimePMxiK9uCXJyPkwbsSfrgQJDEu/zPYU1WIwf0sRDQl7xJ
	CtUWtcZvBYr0s3rMjR8gu+DkwfjbVB2cb4w3E75/zmQQWAsl44xkVOnzhTk4r1RbVETS
	yy1X1/2AHFq8dspS0EcRPYss8zBVgCURGX8Nr6MxvA/yGs/F2WBrzjCAIpmoIRjou+M9
	O0YQ==
X-Received: by 10.112.156.166 with SMTP id wf6mr27715209lbb.13.1380650585377; 
	Tue, 01 Oct 2013 11:03:05 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPSA id u18sm4787586lbp.4.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Oct 2013 11:03:04 -0700 (PDT)
Message-ID: <524B0E56.3040903@gmail.com>
Date: Tue, 01 Oct 2013 20:03:02 +0200
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <CAFyqS9qRodbORexXqZNQESh+iiXyhs9Zi+pHBOLdxiipR0_aAQ@mail.gmail.com>
	<DFDCC371-D349-41A8-BE06-CDD2F7996BDF@gmail.com>
In-Reply-To: <DFDCC371-D349-41A8-BE06-CDD2F7996BDF@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem finding -lgcc when using SDK toolchain
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
X-List-Received-Date: Tue, 01 Oct 2013 18:03:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

On 2013-10-01 7:35, Khem Raj wrote:
> On Oct 1, 2013, at 6:16 AM, Hans Beckérus <hans.beckerus@gmail.com> wrote:
>
>> Hello. We have stumbled into a problem when using ld directly instead
>> of going through the gcc frontend.
>> A simple operation like this fails:
>>
>>> ${CC} -c hello_world.c
>>> ${LD} hello_world.o -lgcc
>> arm-poky-linux-gnueabi-ld: cannot find -lgcc
>>
>> And yes, I know -lgcc is not required in this case to compile this
>> one, but this is only a simple reproducer.
>> The real issue was discovered when trying to build U-Boot from the SDK.
>>
>> To resolve this problem we are forced to provide
>> -L<sysroot>/usr/lib/arm-poky-linux-gnueabi/4.7.2 to LDFLAGS.
>> But that should not be needed, should it? Anyone else bumped into this
>> problem? Are there any "real" solutions.
>> I am starting to think it has to do with the hardcoded installation
>> path in the binaries maybe?
> I doubt that infact we try hard to keep it relocatable. The problem is you are interpreting
> --sysroot option to do more than what its supposed to do. when linking it only affects INPUT,  GROUP
> and SEARCH_DIR linker script variables and if you look at the linker script path to libgcc is not
> specified in SEARCH_DIR, thats where gcc driver comes handy in figuring out where the right libgcc is installed
> and sometimes when you have complex multilib environments thats very handy. linker does not know
> anything about libgcc its just another library for it.
Hi Khem, thanks for your time. I am sure I put too much value into --sysroot, but what still strikes me a bit odd is why the simple reproducer I showed before works just fine using the local host gcc and ld? It seems to have no issues in finding libgcc.a?
So what you are saying is that it is actually expected that U-Boot build will fail when compiled through the SDK toolchain directly without adding additional options to the linker? Is that also what the u-boot recipe is doing? After all, it works fine to bitbake u-boot.

> however you could do  something like
>
> ${CC} -print-libgcc-file-name or ${CC} -print-file-name=libgcc.a
>
> to get to the library
>
> and specify that in your linker cmdline
Ok, guess it will simply give me the same path as we are currently hardcoding, but if the toolchain moves your solution is definitely to prefer.
Thanks for the tip. Did only not know about the --print-sysroot command until now.
> -Khem


