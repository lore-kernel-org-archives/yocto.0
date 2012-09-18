Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD832E00344
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 06:26:49 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 18 Sep 2012 06:26:48 -0700
Received: by obbtb18 with SMTP id tb18so13552695obb.35
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 06:26:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ZudDDG35O8GzzXS3uRlVhMTB7vjglEDsPisscbWBc2c=;
	b=ditCbsOpQWLeF247Z6HVupIjbxr636FxwCg8m48SqREHzCRtTYXQGAc2kgWWAuEH5p
	1B0CnTHrWA1C1A6NVBUTX15fn2gl9Zpz/dI43GtGiM35omtc9ySZ0+KUol5UGJXhrrEz
	5qDwicQo1V0Hd1Ba8sd9qoWdbWVG01mU0MqvqI/pYBVlIo/p6c98woii5jYvs+k4J82r
	iDk8ACP188dM2mfLeh6Ag3xONLBjm16wUFnhsr7JbdkxwFExaEw7LLEmIcGc9Ah88gIg
	/lRe5mqJLE+U5RQzVuZc1Jb4cEJmBvGcIc+IV4YNcVKpRVyK/raMRXWZdCu4FPnwQDy8
	wVrQ==
Received: by 10.60.29.72 with SMTP id i8mr267031oeh.26.1347974807677; Tue, 18
	Sep 2012 06:26:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Tue, 18 Sep 2012 06:26:27 -0700 (PDT)
In-Reply-To: <505866C9.5000605@gmail.com>
References: <505866C9.5000605@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 18 Sep 2012 14:26:27 +0100
Message-ID: <CAJTo0LYCGn4kGUhLgs54AxBA+21LCWUFjD-RXc4QQiGPuWhBVA@mail.gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQlRoGOL9z0q+WnqdKsO5a5+APEH3h877GiZvj4FjdLn7ZuT3RLTnvX1kNYmjOwqtvktQjvl
Cc: yocto@yoctoproject.org
Subject: Re: SATO video player app
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
X-List-Received-Date: Tue, 18 Sep 2012 13:26:50 -0000
Content-Type: text/plain; charset=UTF-8

On 18 September 2012 13:19, Jim Abernathy <jfabernathy@gmail.com> wrote:
> Is there a way to configure the GUI video player to include the right
> pipeline options?

Not really - the video player can't know the pipeline to use for each
specific video.  GStreamer's playbin element should have constructed
the pipeline that you specified.

The video player really is a toy and no more, but I've just picked up
a Cedar Trail netbook to fix issues like this.  I'm about to leave for
a conference but I'll bring it with me and see if there's anything
obviously wrong.

Ross

