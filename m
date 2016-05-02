Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D7A3E00D5E; Mon,  2 May 2016 00:48:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F057DE00D57
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 00:48:53 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id x1so58569638obt.0
	for <yocto@yoctoproject.org>; Mon, 02 May 2016 00:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nPDLzGPp2fp60+SHsVdITAUkx73+OAeg8mpP/MVcJLs=;
	b=uQgiD2YWl3MNjgoz2AURhVauFFsOr16431545JZBr+SYmdm0VkN1e3HB12MXnRxdwb
	g2n3iUIakGIUrJGOK6QZvQsEF2DlGBBm/VdCukY5cKi+FFgjrOQjifKVLgJPxZ8N0472
	lWEST5Ye2+h9Hr90AEYHwrTj80trXQG7HUIkADNPkQEcxOSKVLKlkJutJ0M/wM7K58P3
	OkdHJwdOagffwLzCnrXC6btX8ZNw6s9mcLVUe+41srdo2DFAJ91yZsauX02TWBH42cG7
	z6rXofTPvWPZg3MVW0kLIDAYiOSuxO5TDyVUNAbvy34uOEfpwjH0KN9M1BEiV7sxVefk
	fgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nPDLzGPp2fp60+SHsVdITAUkx73+OAeg8mpP/MVcJLs=;
	b=AjfZmfo+eHkenbhMjDBu6V3NPOJ+1FxIIaNPmz4mTyFKElM+6zfBk5POrz8vmQ+d3J
	pkOUlhHVirL2e3ovwRv5PaMyEn95rUONLirx9X+zotfuDknOq4QxrtilFl4GDREozgHC
	fKxHu6D+h0c6eaw0vJ0WrmVx0ErT2k2nbpExbznyc5fhRxyf73V+1M4M9MmKKzxCDAvQ
	R10biiFLUbOEhdto5p5gILWsxolBatPN6u1KGWIt7Vasqbe3tosXZAzlSgBOQSmQcyCv
	EfL9soYX3G6GfC9vquEhnSoqV03qQIKG5msgfywNnK6kDvYoQvDGZmyLIl9JAxSxWPRl
	rX8Q==
X-Gm-Message-State: AOPr4FV7GpcFassbvA9mgICxb/0lvpd6+ngEgIONmxRysOfJZvf5O3CRz9ark5UT0Lmu7ksZS5uE3k1Vxpo4+oxL
X-Received: by 10.182.60.198 with SMTP id j6mr14732808obr.12.1462175332816;
	Mon, 02 May 2016 00:48:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.173.193 with HTTP; Mon, 2 May 2016 00:48:23 -0700 (PDT)
In-Reply-To: <CAJTo0Lbg14X-m8BarjZtD7SQW7_tTmSL0XvnOTTq-sawO+9iSQ@mail.gmail.com>
References: <cover.1461913316.git.jussi.kukkonen@intel.com>
	<50e502ee999733a064eb5b45ba87450648485929.1461913316.git.jussi.kukkonen@intel.com>
	<CAJTo0Lbg14X-m8BarjZtD7SQW7_tTmSL0XvnOTTq-sawO+9iSQ@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 2 May 2016 10:48:23 +0300
Message-ID: <CAHiDW_G+M+q9Jq6FXr=eqCcLcy7EEjHn-ZKjwHy09uN-oKs4sg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [screenshot][PATCH 1/1] Quick port to Gtk/Gdk 3
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
X-List-Received-Date: Mon, 02 May 2016 07:48:57 -0000
Content-Type: text/plain; charset=UTF-8

On 29 April 2016 at 18:46, Burton, Ross <ross.burton@intel.com> wrote:
> The stock ones look easy to fix, the device ones less so so unless I'm wrong
> we can leave those for now.

The grab code was trickier with current API (which is why I left it as
is), but I took another look and it turns out that code has never
actually been used...

So I removed _grab_lock() and _release_lock(), and replaced STOCK
items with text.
I've added these changes to the same branch (should now compile
without warnings):
  git://github.com/jku/sato-screenshot gtk3
  https://github.com/jku/sato-screenshot/tree/gtk3

Jussi

