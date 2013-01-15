Return-Path: <blloyd@familyhonor.net>
Received: from mho-02-ewr.mailhop.org (mho-04-ewr.mailhop.org [204.13.248.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA2FEE0047F
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 09:38:46 -0800 (PST)
Received: from [98.142.68.251] (helo=lloydserv.familyhonor.net)
	by mho-02-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1TvATG-00088z-5q; Tue, 15 Jan 2013 17:38:46 +0000
Received: from [192.168.0.33] ([98.142.68.251]) (authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	r0FHchms017091
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO);
	Tue, 15 Jan 2013 11:38:43 -0600
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.251
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX18K5sbNUIMEkzAaxArzOut5j27k4KufdlY=
Message-ID: <1358271523.2479.14.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: Patrick Turley <PatrickTurley@gamestop.com>
Date: Tue, 15 Jan 2013 11:38:43 -0600
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C35D457@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35D457@GV1HQPEX03.babgsetc.pvt>
X-Mailer: Evolution 3.4.4 (3.4.4-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK environment LDFLAGS problem?
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
X-List-Received-Date: Tue, 15 Jan 2013 17:38:46 -0000
Content-Type: multipart/alternative; boundary="=-LC46JKgGuYEhHTJ4raBT"

--=-LC46JKgGuYEhHTJ4raBT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

The kernel is a special case, where the SDK is really designed for
developing user applications (which the kernel is not).

I found it pretty easy to create a kernel-module-MYMODULE.bbclass file
and build the kernel and module in the OE/Poky build system directly,
and then have it included in the image made for the device.

See
http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules for details.

Brian

On Tue, 2013-01-15 at 16:52 +0000, Patrick Turley wrote:

> I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it. Here's an interesting line from the environment setup script:
> 
>   export LDFLAGS="-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed"
> 
> All these linker options are preceded by "-Wl", which indicates the SDK is *expecting* them to be given to gcc and then passed on to ld.
> 
> If you look at the help for the ld command line, all these options are available, but with the "-Wl," omitted. In fact, if you use these options exactly as shown here, ld will complain that they aren't recognized and fail.
> 
> So, the SDK is giving me a value of LDFLAGS that *cannot* be used with ld. Of course, the C compiler driver can link and produce executables, and that muddies the issue somewhat.
> 
> Here's an example where this is causing me real problems…
> 
> I'm building an external module against the kernel produced by Yocto. Here's an extract from my output:
> 
> 
> make -C /home/pturley/yocto-mpu-build/tmp/work/dm8148_mpu-poky-linux-gnueabi/linux-ti81xx-psp-2.6.37-r0+spawnlabs+r0/git M=`pwd` ARCH=arm CROSS_COMPILE=/opt/poky/1.3/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi- \
>                 EXTRA_CFLAGS="-DUSE_UDEV=1 -DMAX_POOLS=128" modules
> .
> .
> .
>   LD [M]  /home/pturley/z3-work/z3-centaurus-dm814x_RPS-20120626/ezsdk/component-sources/linuxutils_3_22_00_02/packages/ti/sdo/linuxutils/cmem/src/module/cmemk.ko
> /opt/poky/1.3/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld: unrecognized option '-Wl,-O1'
> 
> 
> As you can see here, the kernel Make files are interpreting LDFLAGS as something that *can* be given directly to ld, so they fail.
> 
> 
> My questions are:
> 
> 1) Has anyone else run into this before?
> 
> 2) If so, how did you resolve it?
> 
> 3) Since the Yocto kernel build is *not* failing, I infer that it is *not* using the ld options the SDK gives me. So, the Yocto kernel build has its own pathway through which it computes its value for LDFLAGS. Why would Yocto use its own SDK in a way that no user is expected to?
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 



--=-LC46JKgGuYEhHTJ4raBT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=UTF-8">
  <META NAME="GENERATOR" CONTENT="GtkHTML/4.4.4">
</HEAD>
<BODY>
The kernel is a special case, where the SDK is really designed for developing user applications (which the kernel is not).<BR>
<BR>
I found it pretty easy to create a kernel-module-MYMODULE.bbclass file and build the kernel and module in the OE/Poky build system directly, and then have it included in the image made for the device.<BR>
<BR>
See <A HREF="http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules">http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules</A> for details.<BR>
<BR>
Brian<BR>
<BR>
On Tue, 2013-01-15 at 16:52 +0000, Patrick Turley wrote:
<BLOCKQUOTE TYPE=CITE>
<PRE>
I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it. Here's an interesting line from the environment setup script:

  export LDFLAGS=&quot;-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed&quot;

All these linker options are preceded by &quot;-Wl&quot;, which indicates the SDK is *expecting* them to be given to gcc and then passed on to ld.

If you look at the help for the ld command line, all these options are available, but with the &quot;-Wl,&quot; omitted. In fact, if you use these options exactly as shown here, ld will complain that they aren't recognized and fail.

So, the SDK is giving me a value of LDFLAGS that *cannot* be used with ld. Of course, the C compiler driver can link and produce executables, and that muddies the issue somewhat.

Here's an example where this is causing me real problems&#8230;

I'm building an external module against the kernel produced by Yocto. Here's an extract from my output:


make -C /home/pturley/yocto-mpu-build/tmp/work/dm8148_mpu-poky-linux-gnueabi/linux-ti81xx-psp-2.6.37-r0+spawnlabs+r0/git M=`pwd` ARCH=arm CROSS_COMPILE=/opt/poky/1.3/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi- \
                EXTRA_CFLAGS=&quot;-DUSE_UDEV=1 -DMAX_POOLS=128&quot; modules
.
.
.
  LD [M]  /home/pturley/z3-work/z3-centaurus-dm814x_RPS-20120626/ezsdk/component-sources/linuxutils_3_22_00_02/packages/ti/sdo/linuxutils/cmem/src/module/cmemk.ko
/opt/poky/1.3/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld: unrecognized option '-Wl,-O1'


As you can see here, the kernel Make files are interpreting LDFLAGS as something that *can* be given directly to ld, so they fail.


My questions are:

1) Has anyone else run into this before?

2) If so, how did you resolve it?

3) Since the Yocto kernel build is *not* failing, I infer that it is *not* using the ld options the SDK gives me. So, the Yocto kernel build has its own pathway through which it computes its value for LDFLAGS. Why would Yocto use its own SDK in a way that no user is expected to?

_______________________________________________
yocto mailing list
<A HREF="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A>
<A HREF="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</A>

</PRE>
</BLOCKQUOTE>
<BR>
</BODY>
</HTML>

--=-LC46JKgGuYEhHTJ4raBT--
