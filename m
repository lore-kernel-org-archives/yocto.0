Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 487C0E013E8
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 07:50:38 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id ox1so3221558veb.9
	for <yocto@yoctoproject.org>; Mon, 05 Aug 2013 07:50:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=6ChV8Aju/sXnqt+5wCDoO5huke3ahfKC5v5tXFw5nYA=;
	b=JxmXLKURNJvZ5xYGmN2I9u375XKja4+M07ZQFGtbM9GkX2WFlg9yd1RhOQiDMnnCvW
	j0NWXxNctSYgDJNLXwZl3SM4N31akpITe/vOBDU9xEOFywotRhgd4jeYRSGI+J0nZzuy
	nKfXv9/MNQo9em9zf0yhIqAvaWpu4tZkXxsUS6KDx+8iYcwGSNtHi6NKV4ch2PdBa8QD
	eosYNOvxt05Vgb2oS1k4wyhkCg3p+LriFXh/qgFc30gzr/P40q7BLObF477vPW9w1TPD
	LQEMgqXD7V3mUNBsn3xkE4UMra5lWUFVnnFUqqUWMOaCIHXEThOkqRVYTTNN683KIgTn
	FkbA==
X-Received: by 10.58.118.70 with SMTP id kk6mr5866718veb.1.1375714238175; Mon,
	05 Aug 2013 07:50:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 5 Aug 2013 07:50:18 -0700 (PDT)
In-Reply-To: <51FFB335.1040902@mlbassoc.com>
References: <51FFB335.1040902@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Aug 2013 15:50:18 +0100
Message-ID: <CAJTo0LbCUFz4cSmcORyfe7c+nhJDJoWURPHVVMnfpBZ9JwmYMQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQnPvADHbJ6guVf6VmV8msANYWEpEZrIUHVxsc2TFi7LuNBiXOHcU6Ngm3TYGz0IHaK8txsJ
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: X11 without a desktop
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
X-List-Received-Date: Mon, 05 Aug 2013 14:50:41 -0000
Content-Type: text/plain; charset=UTF-8

On 5 August 2013 15:14, Gary Thomas <gary@mlbassoc.com> wrote:
> I'm running a system roughly based on core-image-sato except
> that I've disabled the matchbox desktop (I only have a single
> application).  Some things still seem to want the desktop
> to be in place though, in particular I don't get a popup
> keyboard on my touch screen until I see this message:
>   Timeout waiting for org.matchbox_project.desktop.Loaded
>
> The problem is that this timeout is quite long - maybe a minute?
>
> How can I fully disable this or adjust the timeout to be shorter?

That's the matchbox-keyboard init script which waits for the desktop
to say it's loaded, easily patched out (the intention was to serialise
the final stages of the boot so the desktop appeared quickly and then
the keyboard loaded in the background).

Ross

