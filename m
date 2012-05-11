Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C016E01402
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 05:51:12 -0700 (PDT)
Received: by dadz8 with SMTP id z8so4148018dad.35
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 05:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=7DXWJ0rAlEdgAjbeh7q+9eQh2UyIB9ZVlPGXxyj0ZZs=;
	b=ijZxYHDSBsOGG07OPdVqRjWQ986R0+wMyvh4/TQuF6ilqofYclkVqLwm8BJDuGxTft
	uSuErSc4e61AstWQ/ydpYYtZfQRzuKuQYaHO7vmWpyQ9YX+3BZ1rh5hihS8+ol9vnKvK
	4kz94otKq9x2MzjlZNwj24ZkCF8CSJtSCPRyBdiNO/5CnXt3Byy1kdBQfdUb8+dcDRi+
	vYLZFPW3z2N7V+cv8WlokFDzbRUkJ6w8KnnjHbiAwkHgSAHAWmipf3GRSNEu2TwwL7n6
	hc5aitcSzePDTONMdJ2nlxBBFhD/lnL3PIfdj+QToh24tAXLjGRZq78aI3BiCcEcb/Kc
	JlUg==
MIME-Version: 1.0
Received: by 10.68.136.69 with SMTP id py5mr31150996pbb.115.1336740671833;
	Fri, 11 May 2012 05:51:11 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Fri, 11 May 2012 05:51:11 -0700 (PDT)
In-Reply-To: <4FAD0855.4080209@windriver.com>
References: <CACW_hTYnH_ccSf7844bwwKeKH+otHopbbz7h2igrCMhUddN1tQ@mail.gmail.com>
	<4FAD0855.4080209@windriver.com>
Date: Fri, 11 May 2012 14:51:11 +0200
Message-ID: <CACW_hTarP91KOUOYRHTgPJhF5Q8jYgY4XY8xZCrUEciwNCniMQ@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel rebuild and bitbake -c menuconfig
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
X-List-Received-Date: Fri, 11 May 2012 12:51:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2012/5/11 Bruce Ashfield <bruce.ashfield@windriver.com>:
> On 12-05-11 03:07 AM, Frans Meulenbroeks wrote:
>>
>> Hi,
>>
>> I'm wondering how to do a kernel rebuild after doing changing the .confi=
g
>> using
>> bitbake -c menuconfig virtual/kernel
>> I've tried forcing a recompile using:
>> bitbake -ccompile -f virtual/kernel
>> that indeed rebuilds the kernel
>> However if I then do a bitbake virtual/kernel this does not result in
>> an image in my deploy dir.
>>
>> system info
>> host: ubuntu 12.04
>> denzil 7.0 software (from tarball)
>> target: ppc (actually for my own board but I did not do weird things
>> in my bsp, like adding extra tasks.
>>
>> It seems the vmlinux.bin.gz is still generated but the uImage is not
>> (which can also be seen from the log below where do_install is not
>> ran.
>> Additional proof:
>> f5ad9f2b30047a8d3493a1a2880a-r1.40$ ls -l ./image/kernel/uImage
>> ./linux-syrcxx-standard-build/vmlinux.bin.gz
>> -rw-r--r-- 1 frans frans 1609509 2012-05-10 10:19 ./image/kernel/uImage
>> -rwxr-xr-x 1 frans frans 1611499 2012-05-11 08:52
>> ./linux-syrcxx-standard-build/vmlinux.bin.gz
>> This si from after I ran the bitbake commands below.
>>
>> What is going wrong here?
>
>
> You are likely hitting this bug:
>
> =A0https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2256
>
> It's a known issue that is being worked on for 1.3, but the bugzilla has
> workarounds that youl can use in the meantime.
>
> Cheers,
>
> Bruce
>
Bruce,

Thanks for the reference.
I am indeed seeing that bug.

What I did was the solution of Darren that was listed in comment5, but
that did not work for me.
I was unaware of the cleansstate task.

Actually thinking of it, if in the flow:
$ bitbake virtual/kernel -c cleansstate
$ bitbake virtual/kernel -c menuconfig
$ bitbake virtual/kernel -c compile -f; bitbake virtual/kernel
the first two steps can be exchanged (so first menuconfig then
cleansstate, then menuconfig could force the cleansstate to run

(or menuconfig could run cleanstate befure doing the actual menuconfig work=
)

Best regards, Frans

