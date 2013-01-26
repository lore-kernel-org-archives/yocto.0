Return-Path: <thaytan@noraisin.net>
Received: from noraisin.net (198.23.233.220.static.exetel.com.au
	[220.233.23.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4FBAE006DC
	for <yocto@yoctoproject.org>; Sat, 26 Jan 2013 03:13:39 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by noraisin.net (Postfix) with ESMTP id 6283E33801D0;
	Sat, 26 Jan 2013 22:13:37 +1100 (EST)
X-Virus-Scanned: Debian amavisd-new at decorama.com.au
Received: from noraisin.net ([127.0.0.1])
	by localhost (mail.decorama.com.au [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id VQsr59YINZLW; Sat, 26 Jan 2013 22:13:32 +1100 (EST)
Received: from [192.168.11.41] (113.94.233.220.static.exetel.com.au
	[220.233.94.113])
	by noraisin.net (Postfix) with ESMTPSA id 321983380170;
	Sat, 26 Jan 2013 22:13:31 +1100 (EST)
Message-ID: <1359198809.5495.66.camel@shorty.home.>
From: Jan Schmidt <thaytan@noraisin.net>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 26 Jan 2013 22:13:29 +1100
In-Reply-To: <CAK18fxGkua6-mOKt_c1h+GujWmpApB4-i3no-2WZyeMt4YT5cg@mail.gmail.com>
References: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
	<1359120805-25408-3-git-send-email-thaytan@noraisin.net>
	<CAK18fxFcUy4Vc40PitX5u+f46V0VpOn0anxg1wSyaWFHFZ-Xbg@mail.gmail.com>
	<5103997b.a3e8440a.60aa.ffffa1c8SMTPIN_ADDED_BROKEN@mx.google.com>
	<CAK18fxGkua6-mOKt_c1h+GujWmpApB4-i3no-2WZyeMt4YT5cg@mail.gmail.com>
X-Mailer: Evolution 3.4.4-1 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/3] sdcard-image: Use the size of the generated rootfs
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
X-List-Received-Date: Sat, 26 Jan 2013 11:13:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2013-01-26 at 12:26 +0200, Andrei Gherzan wrote:
> 
> On Jan 26, 2013 10:53 AM, "Jan Schmidt" <thaytan@noraisin.net> wrote:
> >
> > On Sat, 2013-01-26 at 02:19 +0200, Andrei Gherzan wrote:
> > > On Fri, Jan 25, 2013 at 3:33 PM, Jan Schmidt
> <thaytan@noraisin.net>
> > > wrote:
> >
> > >
> > >
> > > This is a good idea but you will have to align the new ROOTFS_SIZE
> > > to IMAGE_ROOTFS_ALIGNMENT.
> > >
> > >         +       SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
> > >         ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})
> > >
> > >
> > > So you are actually removing IMAGE_ROOTFS_ALIGNMENT space at the
> end
> > > of the sd image. Why are you doing this? Nothing stated in the
> > > comment.
> >
> > Sorry, yeah - I forgot to mention it. I removed it because it's
> > pointless. It's not actually aligning to anything (it doesn't
> calculate
> > an alignment based on the difference between the ROOTFS_SIZE and
> some
> > target multiple). Instead, it was just arbitrarily padding some
> > megabytes onto the end of the image file.
> >
> 
> Makes sense. I added that because we had a strange bug where the final
> sdimg file size was not enough. Maybe this was fixed now - something
> related to parted. Please add your comment and modify the asci
> partition layout in the bbclass file too.

It may have been the use of the inherited ROOTFS_SIZE, which will be
slightly smaller than the ext3 fs produced, because it measure the size
of the contents of the fs.

I'll re-send the patch.

> 
> Thanks,
> Andrei
> 
> 
> 
> Thanks,
> 

-- 
Jan Schmidt <thaytan@noraisin.net>


