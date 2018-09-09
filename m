Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89DC3E009A4; Sun,  9 Sep 2018 04:15:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7530FE00942
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2018 04:15:05 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id p84-v6so35057628oic.4
	for <yocto@yoctoproject.org>; Sun, 09 Sep 2018 04:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Y2PSbJYjuCdi0S8J2Ebw1gO5CBTplpuYN6nXJeK9kEA=;
	b=Tf3aimi3XbwRmz1hOeunSFvYeaCg60AfZdcXsB93nblIZcYfGTWLI7gLXBohCs4F11
	5B7wXxgeSuCthbX3j1F1k5RQw3ZXyRpymejOGaFCUaLnb8TGXHYUvyg1y6J+mI3daA70
	KVqgzErwGdLR3/J4xEoZnMd1n8UfPYBT5ucUC7n0Y4yYRreeTpBiNWwT0Iapy/gZCJAd
	TC6OMEpIupBAROvqDYcP4FcejveaFxCQSm+EYMNYsFdu9U16unuQacWszPG5KrQFsIF0
	CzXFmnpE/UhJNIVLbdGDdZ2rYDl9HBbw+SpcIdPfh+a+FiMtREo7hAakKYijVAzpqSUE
	krGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Y2PSbJYjuCdi0S8J2Ebw1gO5CBTplpuYN6nXJeK9kEA=;
	b=jxlvVbYdtLjltDTRfnA5W0qIhekONCj6O75C9WsMs5hMUgPVLoa0DxnUKwn8SbNWWB
	yoHurvE6VHbroT5oJnLp0QXvAnl7gN/A8Z7MC8ZscSwro2ZDGdwCoC/uSPKLxxh+ENhS
	2RulxHj7dlFD0l4ufTFSXj8wnmW2WSX+BK74pko++5LSdSAcKEaVLF4iiatEV0thlUqo
	UgoLYxPlKIeoA8hKKQHLQdvlP+kGmtjYg/XPhRx0lNMBYmii20IkLr6A7xKZQFd2EHdf
	6gyzqT+7RMrvcLv8oFd2l75ReRfVB/MACVp7UYaSchsRHJLLSsKaDZkbgWPyGZ1bBArR
	g/LA==
X-Gm-Message-State: APzg51B9lzLouz3Xo+YUNDk1oG8hhPskRZYiU8zZe3ARG3MwWwLtjJmS
	Vs2kmFf2ad8cIvMo2pD35ZCbvoYVq0Ja+sHlGps=
X-Google-Smtp-Source: ANB0VdYqK5bAhEcdXsqA3jVaJaBOqVaSFY/G2Dx4PtvpMdVaXFWk333IZK++/qUHhRGexP4Mq4CGQoPYPd7JoOaXJX4=
X-Received: by 2002:aca:edd8:: with SMTP id
	l207-v6mr17405317oih.65.1536491704883; 
	Sun, 09 Sep 2018 04:15:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:b48b:0:0:0:0:0 with HTTP;
	Sun, 9 Sep 2018 04:15:04 -0700 (PDT)
In-Reply-To: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
References: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 9 Sep 2018 13:15:04 +0200
Message-ID: <CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Postinstall scriptlets of ['coreutils'] have failed
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
X-List-Received-Date: Sun, 09 Sep 2018 11:15:06 -0000
Content-Type: text/plain; charset="UTF-8"

It's right in the message?

ERROR: Logfile of failure stored in:
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709

Alex

2018-09-09 10:58 GMT+02:00 Jens Rehsack <rehsack@gmail.com>:
> Hi,
>
> I got following issue when building an image for live-debugging:
>
> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall scriptlets of ['coreutils'] have failed. If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
> ERROR: Task (/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updatable-app-dev-image.bb:do_rootfs) failed with exit code '1'
>
> I can reproduce it using core-image-minimal-dev
>
> WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst returned 1, marking as unpacked only, configuration required on target.
> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall scriptlets of ['coreutils'] have failed. If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
> ERROR: Task (/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_rootfs) failed with exit code '1'
>
> Any idea where to start debugging?
>
> Best regards
> --
> Jens Rehsack - rehsack@gmail.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

