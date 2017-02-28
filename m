Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1193DE00546; Mon, 27 Feb 2017 19:08:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACE09E00519
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 19:08:17 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id v13so234201iov.2
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 19:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=7RSe4wdY5Pt5YSLZ7E4qXfLbI6lNlP+Yy/2byxq97Iw=;
	b=iRAUvYwyzHhVn7t86Jj4QwL2nmFsWDmL9CmUunrLh0AJzBIZkKG0JjvLE3lTXSVm+j
	PPn4l4Wx0XHOg7hE3NJ1jQhwkWeaTLr/VTGQoCa1GQm8f3jNFlmf979JepPj3Nbcntsf
	jdtaDzks37m7oL91JZkdm3/YzbLakcjPg9kpFFAKwf3O2xe7/Nebc4jms/VDI5lLBolo
	L9GPkjf8+jJN9Y5WzLODbZd9yOCQ3gRtOz/vDwYcLfkeilF4NNVZB0r2OordSiTelew6
	t6vN8gdnljvDPV1LN1Nljo0v6C723+oNHqBRzHJBmMa6KQ0qxWEJ2z2Ok9GSnKPOBhVM
	7lOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=7RSe4wdY5Pt5YSLZ7E4qXfLbI6lNlP+Yy/2byxq97Iw=;
	b=ORP5At3U3i3hEmb4CWHKKYvOgrRB+DEoJqwyUEkXwm6VGQfUHvuGo8Yq4T/fE4Zkt0
	h+T7mNBUyyi3Nhd5nvZcfdpMcm0Zm+iIsGq71p59TK7vQl2BJoxzJ1hZID8xditkOLSm
	BJi4z0ZkFt3eqsevsbRAADnPcLVc/fbzPIhJupJQB5qmGPyVqzLgpJ1El6F8iRt2LFiZ
	m7eaAsXrVvtV5eg5jeDrKkE7ChPhvNnzWv8T20D7PujlPxGxAsn0bJgHYPg6HbCcBePy
	+fh5k/YOzRswviy3smwt4UuronT8CLOJJ+St6MoKbCAIYMx/xLHrd5ysxp37Wf9U3SWO
	OfiQ==
X-Gm-Message-State: AMke39n0l3p9kErvSLL7Sp2E3f06ED8UK8dad6zHGyTwvixgUWbU3uuElDnCDHrBjDP0Nw==
X-Received: by 10.107.4.132 with SMTP id 126mr465712ioe.191.1488251296880;
	Mon, 27 Feb 2017 19:08:16 -0800 (PST)
Received: from linux-uys3 ([45.72.250.10])
	by smtp.gmail.com with ESMTPSA id 141sm311357ioe.58.2017.02.27.19.08.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Feb 2017 19:08:16 -0800 (PST)
Date: Mon, 27 Feb 2017 22:08:14 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Message-ID: <20170228030814.GA8559@linux-uys3>
References: <20170227192056.10830-1-twoerner@gmail.com>
	<20170227192056.10830-2-twoerner@gmail.com>
	<CAJrj+DPQFRDxsF=2=T6sfdfhiHvHD6n0KbH6jS0nJfLjA2NxPA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJrj+DPQFRDxsF=2=T6sfdfhiHvHD6n0KbH6jS0nJfLjA2NxPA@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [meta-rockchip][PATCH v4] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Tue, 28 Feb 2017 03:08:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Eddie,

On Tue 2017-02-28 @ 08:48:16 AM, Eddie Cai wrote:
> Could you also copy ${BOOT_IMG} to ${DEPLOY_DIR_IMAGE} . That is much
> earier for people find boot image. In case they want to flash boot
> partition alone.

All of this work is always done in DEPLOY_DIR_IMAGE.

	$ bitbake core-image-minimal -e | grep "^DEPLOY_DIR_IMAGE="
	DEPLOY_DIR_IMAGE="/z/rockchip/master/build/tmp-glibc/deploy/images/firefly-rk3288"

	$ bitbake core-image-minimal -e | grep "^BOOT_IMG="
	BOOT_IMG="boot.img"

With this class file as submitted in v4, if I build my first image I get:
	$ ls -lh tmp-glibc/deploy/images/firefly-rk3288/
	-rw-r--r-- 1 trevor users 137M Feb 27 14:05 core-image-minimal-firefly-rk3288-20170227190504.gpt-img
	lrwxrwxrwx 1 trevor users   56 Feb 27 14:06 core-image-minimal-firefly-rk3288.gpt-img -> core-image-minimal-firefly-rk3288-20170227190504.gpt-img

If I adjust the image then build it again I get:
	$ ls -lh tmp-glibc/deploy/images/firefly-rk3288/
	-rw-r--r-- 1 trevor users 137M Feb 27 14:05 core-image-minimal-firefly-rk3288-20170227190504.gpt-img
	-rw-r--r-- 1 trevor users 137M Feb 27 14:06 core-image-minimal-firefly-rk3288-20170227190628.gpt-img
	lrwxrwxrwx 1 trevor users   56 Feb 27 14:06 core-image-minimal-firefly-rk3288.gpt-img -> core-image-minimal-firefly-rk3288-20170227190628.gpt-img

As you can see:
- the images appear in DEPLOY_DIR_IMAGE
- the first gpt-img is still there
- after each build the "core-image-minimal-firefly-rk3288.gpt-img" symlink
  always points to the latest gpt-img file

Is this what you were hoping for?

