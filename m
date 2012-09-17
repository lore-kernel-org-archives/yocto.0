Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CEB4E0027F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 09:41:44 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so11877190pbb.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 09:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=6S6d9yGW8dBqbGoogAO7+OzLuF3/lrygSsCh1o01LWU=;
	b=p2GQHve4k96xy/p7Wtfy921aUJVJxBsWd+bHAWA4H83leDYqtWkRlVI4ZTSPleaDSg
	njymslo5PIAwcthOMba601/rJhO6pZ+rjqV4yAxUstso80kVIEBzk/0gMNEYXDLbjUXl
	a/enAxthkAltKrAs1LqDW8ttXM2VQ069w0s4HBAxiuWYtnpzfDl+SWA6cH5XycwKiukU
	dyH7A734wJXCqHHHudW/Go3yh924ilhIXipiX2daIH3bmShqt+KY+PugpEU06tv+iZzP
	bYdgrRsjEMffjytNvHdJ8rYbXI5aX0JxcxD+/ljt8EhrZuKW34C54os3aK7aYxxCDPDj
	l8cQ==
Received: by 10.66.78.97 with SMTP id a1mr20958443pax.34.1347900104056;
	Mon, 17 Sep 2012 09:41:44 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.108.162])
	by mx.google.com with ESMTPS id ou6sm7206210pbc.9.2012.09.17.09.41.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 17 Sep 2012 09:41:43 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <5056968D.4090206@windriver.com>
Date: Mon, 17 Sep 2012 20:41:37 +0400
Message-Id: <39044E97-D483-4A41-BB8C-26426C6D0E36@gmail.com>
References: <B9672221-8331-49D3-B853-E284CBCCA0B5@gmail.com>
	<A158BAD0-6C2D-4724-B13A-AAB54992904C@gmail.com>
	<5056968D.4090206@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: All kernel modules being built and shipped in images/modules-*.tgz
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
X-List-Received-Date: Mon, 17 Sep 2012 16:41:44 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

On Sep 17, 2012, at 7:18 AM, Bruce Ashfield wrote:

> On 12-09-16 12:49 PM, Elvis Dowson wrote:
>> Hi,
>>=20
>> On Sep 15, 2012, at 7:29 AM, Elvis Dowson wrote:
>>=20
>>> I just noticed that with the recent poky master updates, my =
images/modules-3.3.1-r00-virtex5.tgz file has grown from 4.6 MB to =
668.5MB. When I looked in the package, I saw that the kernel/drivers =
folder inside that package was nearly 1.5GB uncompressed!!
>>>=20
>>> My kenel defconfig was tuned so that I only used a bare minimum of =
kernel modules, and nearly all except for 2 groups (one related to =
filesystem and the other for networking) was built as a module. The rest =
were all built into the kernel.
>>>=20
>>> Isn't this a regression or an error?
>>>=20
>>> Also my build time has gone up from 40 minutes to 67 minutes, =
probably as a result of the increased number of kernel modules being =
built and shipped.
>>=20
>> Is there any way to prevent all the kernel modules from being built, =
when 99% of my kernel defconfig settings are set to 'y' and not to build =
any modules?
>=20
> You'll have to confirm in your kernel build directory and .config
> that you really don't have these modules enabled.
>=20
> Since there's no kernel recipe that I've seen that builds all modules,
> they just the modules specified in your .config are built and packaged
> by the kernel classes.
>=20
> But maybe I've misunderstood the question, or what you are seeing.

The problem that I'm seeing is that before, with the same defconfig file
the size of the kernel module image was only 4.6MB. Now with the latest
poky master, the same recipe generates a kernel module image that is=20
668.5MB in size!! :-)

I looked at the .config file in the =
tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r00/git folder
and find that a whole bunch of modules that were not enabled at all in =
my=20
defconfig-3.0.0 file (that's the name given in the linux-xilinx_3.3.0.bb =
recipe), got enabled.

The original size of the defconfig-3.3.0 file was 43.4kb. the one in the=20=

tmp/work/virtex5-poky-linux/linux-xilinx-3.3.0-r00/git was over 124kb!

This is with poky master commit id =
913944d904266bf90af0cad94b4f0fb3652bd29d.

This problem did not occur with poky master commit id =
2dec760b79bb7e2e79c33c5127fa64685bd86a18

Best regards,

Elvis Dowson=

