Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38227E00B37; Mon,  1 Feb 2016 21:05:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D9B4E00AAB
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 21:05:33 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id d63so5175965ioj.2
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 21:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=iXg+8VMflumX5jXHpD/gQWdq+v5TmM7j+Lf65k41+dQ=;
	b=0bTsrAX3pwKP1X4c8SRnkIZWmtSIoy4+8VUkZV5gT6V2CoS4r2MjaqQX3bYesZQ7v1
	a0uP4GxLGEHQCkNV7uUoGmhj7DT21WRSciSxv14vnBLfSWYEeANTj8rtKs4Lt9zUI8uD
	GjKEuPs6V9UtiAzRn1wbr6BbyIoN3us4FbySqtBGIyWyFGYEYN/f1ihIM14XpoDAFsx4
	WGBOyxAVh4qTNzqmBFSnncH9JcSfmT0k8OKBy3NvPvfHjgPVLr8OipUE0Mci1O/3cee/
	TZW+tJ33SLY0z2qsA1nS8FlA/KhtMIiqmdppFQzGZ+El3KFGCDt0hq5tGd/mH7DMKOk0
	Gjcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=iXg+8VMflumX5jXHpD/gQWdq+v5TmM7j+Lf65k41+dQ=;
	b=ZqXKRj1pRYW0/GKtQcVURN5vL7fTtOaTv3KXBVRBChbpocvH1F/fCHNpj2mg2jIh4c
	c5w+H1MvPzEgCvcc0m66kKZopu9kkZZVoYzTU8XdEgVjYp+rKvmLUABu7if4IsmDzRPR
	1FKoIz7mY7K5KqhydrauUcxJ+tLg1Xjlnnw+s+6MAbVeWf6Osm+Cr+nRkMjxj5H+SIWB
	kmBBZkKQ+/QgLvdNQGpM+5uGgWcn6BlLqvyFrBwqkHvSt0scrl9SXrUXjBhlEBwljHB4
	j3GeLzeYU7RwJ0eH+2d3z9iuP6zSUtayW7vNqL2WTC5cgC7zP3IbFPdEEJ8hLVIg1lss
	hNVA==
X-Gm-Message-State: AG10YORc7+AXPQuXWiKSLML3aDWZN2IlSlqR32IvUj/IbguXwgqFW42kqVpVftAMAJ8Szmz4pagIKx7hY8Ilsg==
X-Received: by 10.107.9.211 with SMTP id 80mr20154002ioj.112.1454389532480;
	Mon, 01 Feb 2016 21:05:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.46.219 with HTTP; Mon, 1 Feb 2016 21:05:02 -0800 (PST)
In-Reply-To: <5AB091C9-E237-45E1-BD7D-FA5CA65B3199@nathan.to>
References: <f0bdfb388a6d44448446852d1ef2a8f2@serv030.corp.eldorado.org.br>
	<CAJTo0LbJj2MG8-mhyUYqdJVdtUAvrm_JmHm=-_oO-XN+X-NVxA@mail.gmail.com>
	<2ef4d1534eec41629c074c0ae55db0c9@serv030.corp.eldorado.org.br>
	<ED68D339-EFF1-4A96-B037-56F04ACBD020@nathan.to>
	<5AB091C9-E237-45E1-BD7D-FA5CA65B3199@nathan.to>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 1 Feb 2016 21:05:02 -0800
Message-ID: <CAMKF1so3icMJHEUL-AGCuNkNZis+8DThkQ085yfqCdxDRzcDWw@mail.gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: network drivers are not installed when MACHINE qemux86-64
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
X-List-Received-Date: Tue, 02 Feb 2016 05:05:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 1, 2016 at 8:48 PM, Nathan Sowatskey <nathan@nathan.to> wrote:
> As a follow up, I have just done this:
>
> bitbake core-image-kernel-dev
>
> And now I get the eth0 interface configured and active when I start the Y=
octo image.
>
> I do not have to configure and start it manually.

Can you check if relevant kernel modules are listed in MACHINE_EXTRA_RRECOM=
MENDS

>
> Regards
>
> Nathan
>
>> On 1 Feb 2016, at 13:31, Nathan Sowatskey <nathan@nathan.to> wrote:
>>
>> Hi
>>
>> I think I am seeing something similar. I only have video in my kernel/dr=
ivers directory, which is to say that there is no net directory either.
>>
>> I have been using the Build Appliance to create a qemux86-64 core-image-=
full-cmdline machine. When I ran that without any -netdev arguments at all,=
 on OSX, I was able to use -redir tcp:5555::22 to enable SSH from the host.
>>
>> At least, that did work a few times at least last week.
>>
>> Now, I have to manually edit the /etc/network/interfaces file to add ifa=
ce eth0 init dhcp, and then manually ifup eth0.
>>
>> I am sure I did not have to do that with builds last week.
>>
>> Regards
>>
>> Nathan
>>
>>> On 29 Jan 2016, at 21:59, Alexandre Freire da Silva Osorio <alexandre.o=
sorio@eldorado.org.br> wrote:
>>>
>>> You=E2=80=99re right, Ross. They=E2=80=99re present in modules-qemux86-=
64.tgz. The problem is that for some reason the drivers are not being copie=
d to the root filesystem.
>>>
>>> For example, the expected lib/modules/3.14.36ltsi-yocto-standard/kernel=
/drivers/net/ directory is not created in the rootfs.
>>>
>>> Thanks.
>>>
>>> Alexandre
>>>
>>> From: Burton, Ross [mailto:ross.burton@intel.com]
>>> Sent: sexta-feira, 29 de janeiro de 2016 18:52
>>> To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] network drivers are not installed when MACHINE qem=
ux86-64
>>>
>>>
>>> On 29 January 2016 at 18:41, Alexandre Freire da Silva Osorio <alexandr=
e.osorio@eldorado.org.br> wrote:
>>> When I build a core-image-lsb image for MACHINE qemux86-64, the network=
 drivers are not enabled. When building the same image for genericx86-64, t=
his problem doesn=E2=80=99t occur and all the drivers are enabled.
>>>
>>> qemux86-64 certainly ships with network drivers for the qemu machine.  =
What drivers are you expecting to be present?
>>>
>>> Ross
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

