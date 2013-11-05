Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0A58E01779
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 04:14:12 -0800 (PST)
Received: by mail-ve0-f176.google.com with SMTP id jx11so2361864veb.21
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2013 04:14:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fqmXleb1Ta6rMDjjB3yZzdoaNy8v/djZKgXJapuTTnc=;
	b=JLpqKWN/gdIZzPjJotRk9n3OCpFd89ly24+bHb0lcvyEHM21KZj9v2TNvEaCFGapDA
	3bfvfNyiY40RvpMc+gWMNlmNEozv0ItLu7Z+G+ulSDUqevwM910PhyrMt42p7zyP/pcm
	iG7TO6an/6xvriKqEIOEqYxX+0hHykpf7RG/FVT5UcLBKdfJuKmq5SEwbZwaKwXKwdu1
	VKPWTNU2HaLMURLPVUyLnVRTBE7r0cwaK8mN5EIRAJwsAxAOxk6bErv6FChDMEbGp9zG
	MoJsdRyFqpVPBP6bo0kV4HkH3sio6f9tvzVt1PzwWZLvbvj/HoQX9qaw+3tzKic2se2K
	Ytog==
X-Gm-Message-State: ALoCoQnZ5n2ILNHPhhc3vhMkY5ElS4Yt/VlkmX4KqbYtMYh5QKKvPtggbfVGrTg5+15+ehQilgRD
X-Received: by 10.58.217.130 with SMTP id oy2mr5563254vec.24.1383653652039;
	Tue, 05 Nov 2013 04:14:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 5 Nov 2013 04:13:51 -0800 (PST)
In-Reply-To: <1383556645110419500@horus.es>
References: <1383556645110419500@horus.es>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 Nov 2013 12:13:51 +0000
Message-ID: <CAJTo0LZgV-=w5mbtLSb3=tQSZYrkwO9-LTA_MuqPjxGPM0Q_HQ@mail.gmail.com>
To: Diego Gonzalez <diego.gonzalez@horus.es>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Change Sato theme
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
X-List-Received-Date: Tue, 05 Nov 2013 12:14:13 -0000
Content-Type: text/plain; charset=UTF-8

On 4 November 2013 09:17, Diego Gonzalez <diego.gonzalez@horus.es> wrote:
> I was reading in the mailing list how take control over Sato theme. If you
> see this :
>
> https://lists.yoctoproject.org/pipermail/yocto/2013-February/014360.html
>
> you will see that they are talking about matchbox-session-sato.schemas which
> I can't find it in Master or Dora branches.

The schemas file isn't used any more.  The matchbox-sato recipe has a
postinst that sets the default theme (and some other keys), so you
should write a recipe that does the same and install that instead of
matchbox-sato.

Ross

