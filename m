Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 884E0E01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 10:56:20 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 05 Sep 2012 10:56:20 -0700
Received: by obbtb18 with SMTP id tb18so1006036obb.35
	for <yocto@yoctoproject.org>; Wed, 05 Sep 2012 10:56:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=eddR+L9mPo18ElOFtgUgo7GYrkkI8PtqsLmAE1mClzs=;
	b=JYggpADHMC/oPqOwzWjnlzBsuE0G30JkLkCyhcyVbdiTRx6HPnOVee5wOKF8dofc7E
	JEydreN7XhqkgmqDWr76MIeuL0/n/buO7H54tvA3cCLPehOkI7Lqemv66/tUybkTI44W
	kQCVHQV4n6sPWjVhviGpva9GCv9Ei4PJzdSdH9anO4Gjb4sePB5TbpbxkRNidcnMYnEy
	AclbKVr0kBwYhVUQAiFmdR2XAa0lFrRRTW7wl2+8Hi8Gl+ejpivlhSyNS07rtk4hXnyu
	bbdJCKQ5QeATd75lnHXaDRO3sISPk5jtUDWz/9VjZqA6F5fcSeTnebqRE/R8Lo3e4zF3
	KNJw==
Received: by 10.60.29.229 with SMTP id n5mr17610078oeh.103.1346867778906; Wed,
	05 Sep 2012 10:56:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Wed, 5 Sep 2012 10:55:58 -0700 (PDT)
In-Reply-To: <CAHUNapTnkzJtpfeXeqpTqB1yHd43gOwWFNpDnGZqQDU-fWPUUg@mail.gmail.com>
References: <5044EE55.4050208@communistcode.co.uk>
	<50451A77.1020609@r-finger.com>
	<50472249.1010009@communistcode.co.uk>
	<CAHUNapQmyBhDVfCHD2H2JO1NmSN6atW1XO7uQr+sH-nGJKgiKg@mail.gmail.com>
	<50477015.7010603@communistcode.co.uk>
	<CAHUNapTnkzJtpfeXeqpTqB1yHd43gOwWFNpDnGZqQDU-fWPUUg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 5 Sep 2012 18:55:58 +0100
Message-ID: <CAJTo0LZBb_LN7NhX6HJG6QjfurJBLkEFXri1bjf2qK8PCToydQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQnJzaMULl38rxFRay+RxuZtGac27QyW7GAob2vGN08C/vDOm1e5z3ZJL86a9/uijZWkdpMV
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building a Custom Raspberry Pi Image using OpenEmbedded and Yocto
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
X-List-Received-Date: Wed, 05 Sep 2012 17:56:20 -0000
Content-Type: text/plain; charset=UTF-8

On 5 September 2012 18:13, Trevor Woerner <twoerner@gmail.com> wrote:
> I also found that I had to add:
>
>     BB_DANGLINGAPPENDS_WARNONLY = "yes"
>
> at the end of my conf/local.conf since I received a:
>
>     ERROR: No recipes available for:
>       /home/trevor/devel/yocto/raspi/poky/meta-raspberrypi/recipes-multimedia/libav/libav_0.7.4.bbappend
>
> the first time I tried baking (even when using the exact commits for
> both poky and meta-raspberrypi as specified in the instructions).
> Maybe it's just me?

Not at all.  Guacamayo uses the meta-raspberrypi layer and does this:

# meta-raspberrypi has libav.bbappend, for which we do not have the base recipe
# meta-ti has a bunch of recipes with broken license
BBMASK=".*/meta-raspberrypi/recipes-multimedia/libav/|.*/meta-ti/recipes-misc"

Ross

