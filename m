Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C33D9E009CB; Sun,  3 May 2015 06:13:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EF5DE008EA
	for <yocto@yoctoproject.org>; Sun,  3 May 2015 06:13:15 -0700 (PDT)
Received: by pabtp1 with SMTP id tp1so137374681pab.2
	for <yocto@yoctoproject.org>; Sun, 03 May 2015 06:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=i5HvVOuqNof7zU/PBi5wtjrVS6vmw3BpWQeqZHHqp6I=;
	b=bxGAbwSk2mTtktyjVzGqN9gVJKYDJwUD0u9JH1GYFrMG29TEf4aN88DqZ2G+anCqxB
	VzyiFQHwnDVQbjeVVnTsBZRrLlnbjNbmoxRdv9vBgMkWL6o0KUjZU0ZM1mMyg1tp4vC3
	osFA6uaGTiGg1Mk5+V0pOAZHehaJbLkiIi6SP6Xe86/AVmU86gLglSbzw7D3PPamvHvo
	CTAaV70dKuUEAsZHf1MQfn5WG/QlWPm3EKXwgsco/Wqp53rTcQLolqBB16DCMmNdZ/LZ
	X+BabUQXvpkUkVLSz6xHIIQb/Sdy8rY2ieDM/Q9GgRBhg8FL9kWG6P+EtzOJS3B1owEh
	W8EQ==
X-Received: by 10.66.224.237 with SMTP id rf13mr1489653pac.131.1430658795180; 
	Sun, 03 May 2015 06:13:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.134.227 with HTTP; Sun, 3 May 2015 06:12:44 -0700 (PDT)
In-Reply-To: <CAAPegz0hY842i98AZ-xB7=aEbLZpMA9Wy0ChMHsrS+c6Lb+q9A@mail.gmail.com>
References: <CAF_dkJCc-fXhPLFxtRYSxSC3Q0DnWwX6k8gRUJiC-f-HP9vBmA@mail.gmail.com>
	<CAAPegz0hY842i98AZ-xB7=aEbLZpMA9Wy0ChMHsrS+c6Lb+q9A@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Sun, 3 May 2015 09:12:44 -0400
Message-ID: <CAF_dkJDB1nUQO_E+zZ17-drWLFoySks=aqrCx6QPR2ZkXHL6DA@mail.gmail.com>
To: Chris Morgan <chmorgan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto-ish upgrade-in-place strategy
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
X-List-Received-Date: Sun, 03 May 2015 13:13:19 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, May 3, 2015 at 5:51 AM, Chris Morgan <chmorgan@gmail.com> wrote:
> Is there a standard way? We've seen a few different approaches between
> android systems (phones), Linux distributions, and things like chromebook.
>
> In our case we are using two uboot, two kernel, and two root file system
> partitions with uboot environment controlling the active one. Squashfs for
> the root fs. Raw images for uboot and kernel. Overlayfs in another rw
> partition that we put on top of the rootfs where we keep system
> configuration. Media and other stuff goes into yet another btrfs partition
> that, like the overlayfs, isn't managed by the update system.
>
> Approach is to update the second rootfs while one rootfs is running. Swap
> env in uboot environment to point at the other rootfs and then when
> appropriate reboot. This lets us avoid downtime while downloading the
> update, we download in the background.
>
> We build everything with yocto but afaik we don't have much specific stuff
> for the update system because we don't have an upgrade partition but rather
> two sets of partitions.
>
> Thoughts?

Hi Chris,
Thanks for the description.  We do something very much similar to that
on one of our systems (except for the part about downloading in the
background).

As I have been thinking about this, I have been thinking about
something along the lines of creating a rescue/boot partition with the
following:

core-image-minimal
squashfs
ssh (for rescue operations)
kexec-tools

U-boot would boot that image.  That image would contain an rc.local
that would mount the active partition and kexec the kernel it found
there.  The active partition would contain our deployed application,
which would likely also have a squashfs rootfs (because I don't want
to trash the flash when the power goes out).  It would also have
whatever hooks we needed to upgrade images in place.

My thinking is that the boot/rescue image would be a factory/expert
image.  It (of necessity) needs special tools and/or access to the
board (JTAG header, USB rescue port, etc...) to be installed.  But
once it is installed, it is capable of booting whatever Linux I place
in the active partition.  I might make it smart enough to support an
"active" partition and a "fallback" partition, but I kinda feel like I
already have a "fallback" mechanism in place with the boot/rescue
image.

At some point, I begin to think that I am overthinking this.  I also
begin to think that everybody (in this space) has these same issues.
Why do we keep reinventing the wheel?

--wpd

