Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60B79E00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:33:37 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:45388 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tis3k-0001vP-E1; Wed, 12 Dec 2012 14:33:36 -0500
Date: Wed, 12 Dec 2012 14:33:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Rudolf Streif <rudolf.streif@linux.com>
In-Reply-To: <CA+gsK-onggLFhVYTS3zwmrdvwkS_5oFDy4ai_A4WKzmZfyHdHA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212121429160.13445@oneiric>
References: <alpine.DEB.2.02.1212110801200.23904@oneiric>
	<CA+gsK-onggLFhVYTS3zwmrdvwkS_5oFDy4ai_A4WKzmZfyHdHA@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should users be able to run yocto's pre-built images standalone?
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
X-List-Received-Date: Wed, 12 Dec 2012 19:33:37 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-951184524-1355340815=:13445"

--8323329-951184524-1355340815=:13445
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: 8BIT

On Tue, 11 Dec 2012, Rudolf Streif wrote:

> Hi Robert,
>
>
>
>       a basic question -- is it supported that users be able to download and
>       run yocto's pre-built QEMU images without having to download an entire
>       build system, and set up bitbake, etc?  theoretically, of course, it
>       can be done, but it's not set up to do it conveniently (if it even
>       should be).
>
>
> IMHO that is exactly what the ADT installer does. OK, it could use
> some enhancements but it lets you specify what pre-built images you
> would like to use and sets it up, including QEMU and the related
> scripts.  

  ok, i haven't poked around there yet, i'll look at that later.

>         first, one can't get yocto's qemu-related utilities without
>       downloading either oe-core or a toolchain.  is that really necessary?
>       how hard would it be to break out the QEMU stuff into a much smaller
>       tarball if that's all people want?
>
>
> I think you want at least QEMU, the scripts, the user-space NFS
> server and the cross-toolchain. Quite frankly, what do you really do
> with just QEMU, scripts and images? Either you want to build your
> own images then you need Poky (the build system) or you want to do
> user-space development then you need images and a cross-toolchain.
> Just booting an image into QEMU seems quite boring to me. 

  good point ... i originally envisioned someone perhaps wanting to do
nothing more than just downloading and running the pre-built images to
see what all the fuss was about.  if that's really not considered a
useful example, i'll forget about it.

>         and if that's done, certainly, the help messages from runqemu can be
>       updated, since those utilities clearly assume they're running as part
>       of a build infrastructure when that's not necessary.
>
> Fair enough, but if you could provide more details outlining what
> the error message said, what the root cause of the problem was, and
> what you think the error message should say, it would really help
> the developers to make the improvements. Unless you are inclined to
> rummage through the code, fix it and submit patches.

  ah, that i can provide.  in the runqemu usage message, you see the
suggestion:

 $MYNAME qemux86-64 core-image-sato ext3"

but that assumes you're in a build directory.  of course, using the
adt-installer as you suggested might make all this moot.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-951184524-1355340815=:13445--
