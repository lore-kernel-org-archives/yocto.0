Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2456DE009C8; Tue,  2 Jun 2015 09:30:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 650E6E007B6
	for <yocto@yoctoproject.org>; Tue,  2 Jun 2015 09:30:40 -0700 (PDT)
Received: by igbsb11 with SMTP id sb11so92316206igb.0
	for <yocto@yoctoproject.org>; Tue, 02 Jun 2015 09:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xwiJrLiyUqh+9w06EZhdLIdgbSonRgFj3A08r+dopTw=;
	b=ybKRzdEcE7enNQaaHndq0y6qplFNNL8wX/y5ffPWuFOmAe6Rm6Vd/Vb0M2v1dyNyYn
	TcydH/SocwM2VvtwOCclzZs+sDSU3N3DvPVBh/vQImdkWcWElo8dIx+rrs3Y7PJHityv
	v758HTvETZ1D53OdiCk9mzLDIPSNBKJxVFFoTQai1bcccV4RfEJiS4ZhglJ4JGZeA8Lk
	dweaavcdGvIKjLO5D+MD6nPu8rc81W5SYf0OJzyf370ui7cIPIdCE3aREpcSFNfiXuoZ
	hsRqYEDbIsHSjGgITBH5yJ6C5YsDIszqLFV9Xt3Ixmg3KnsgA778spWCRrXDkbd5Wcid
	GPSw==
MIME-Version: 1.0
X-Received: by 10.42.93.17 with SMTP id v17mr12131350icm.42.1433262639795;
	Tue, 02 Jun 2015 09:30:39 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Tue, 2 Jun 2015 09:30:39 -0700 (PDT)
In-Reply-To: <CAJTo0LZqH+u5fNKF_vVVuyw7kaXRMdLteNai1UCPz2-UEpbXxw@mail.gmail.com>
References: <CAK5mteyg4FSKmzrDoMmvx+-fwJEhybHCa+MA9bokQuJt5m-H_Q@mail.gmail.com>
	<CAJTo0LYmV418_39HBjj+VoYs1O8qHQCwOWfd9YdotSwcGdHvsw@mail.gmail.com>
	<CAK5mtexC81Yi9C2YA6O4SuKZ=vQ6wk8=cUYNZ8mYOQ4uAoZ+qw@mail.gmail.com>
	<CAJTo0LZqH+u5fNKF_vVVuyw7kaXRMdLteNai1UCPz2-UEpbXxw@mail.gmail.com>
Date: Tue, 2 Jun 2015 11:30:39 -0500
Message-ID: <CAK5mtew29B5e88HjkmjbNhc4U7G8vnTOi6pPqBn4xELTt_MOFg@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build hello_world.c in yocto
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
X-List-Received-Date: Tue, 02 Jun 2015 16:30:44 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 1, 2015 at 7:22 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 1 June 2015 at 13:08, Victor Rodriguez <vm.rod25@gmail.com> wrote:
>>
>> EXTRA_IMAGE_FEATURES = "debug-tweaks dev-pkgs"
>
>
> As the documentation says
> (http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#ref-features-image),
> dev-pkgs is just the headers and library links for the packages you've
> installed.  No tools come with that.
>
> Ross

Thanks a lot Roos that did the magic.

However I realize that it also includes many other stuffs ( pango for example )

Is there any way to make it with less features ?

The part I am developing is MPI (http://www.open-mpi.org/) in Yocto.
RIght now it works ( I am about to submit the final patches for tuning
, but it works :

root@qemux86:~# mpicc mpi_hello.c  -L /lib/ -o mpi_hello
root@qemux86:~# ls
hello.c  mpi_hello  mpi_hello.c
root@qemux86:~# mpiexec -n 4 ./mpi_hello
Hello from task 3 on qemux86!
Hello from task 1 on qemux86!
Hello from task 0 on qemux86!
MASTER: Number of MPI tasks is: 4
Hello from task 2 on qemux86!


Now this image will go to an embedded system ( minnowboard ) and would
like to keep the image as simple as possible :)

Do you know if there is any other way to just include the minimal for
gcc build ? ( if not do you think it could be worth to have ? , I
could work on that )

Thanks a lot and regards

Victor Rodriguez

