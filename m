Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62EBAE011C5
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 08:48:05 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id w16so2829887vbb.8
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 08:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=hMuO93YxyfwCcVtAEzsvNONH+Yh+UM3jRa9Pa5eTIyQ=;
	b=uEq2XioAZ8FRXB/lVo57ygg8DxH9jrF+i5W7UKeEYYhACZx9uFmvFI0YQcgn0HKwCC
	XVlVSiXmR43lSvBFff2CluiIxKvkm3UVGV5HyrYaSTbTSUE1LjYrTIX/ebPnNxoBTuKV
	gaTnjYe6mtOXQBF0cD+QM9jXgNSnE7VnmADNvYi2QgfZbimQyfPy+iD5uV4PxRTNTBQb
	qOYzCtdrtJ08R06BxJnMh3bQjEWef/W4iCBI5Qu4D5OADfGzB+YFbNatBRKOF5LnKd3q
	itHb1wXtsLe9T9wJ1RmKND6yDJ2LiHQJDWDPuAfv1vEwsLMjGPpQ7aBjtnUqRAKAwCd+
	YHxA==
X-Received: by 10.52.169.227 with SMTP id ah3mr775885vdc.45.1381506484382;
	Fri, 11 Oct 2013 08:48:04 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.49.71 with HTTP; Fri, 11 Oct 2013 08:47:24 -0700 (PDT)
In-Reply-To: <CAK18fxHeeE5UWPcNhg2pw+QPHeS-PVwkmOugDFsVivCSPe7eow@mail.gmail.com>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
	<1377018158-2983-7-git-send-email-andrei@gherzan.ro>
	<CANyK_8fT9cf__rs36niVD5mkhXySbioVT16653Zr0tQvwJkh3w@mail.gmail.com>
	<20130823122632.GD3544@jama>
	<CAK18fxHeeE5UWPcNhg2pw+QPHeS-PVwkmOugDFsVivCSPe7eow@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 11 Oct 2013 16:47:24 +0100
X-Google-Sender-Auth: sEyH8Vi7--cPKJ4W0TNalTNwVx8
Message-ID: <CANyK_8eRQRCS0o3b6=Y0Q=-W6AjEtb2nWyd3NEJMUVZmfQNzaw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 07/11] mesa: Use libgl from mesa for raspberrypi
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
X-List-Received-Date: Fri, 11 Oct 2013 15:48:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 24 August 2013 01:02, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Fri, Aug 23, 2013 at 3:26 PM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
>> On Fri, Aug 23, 2013 at 11:59:10AM +0100, Paul Barker wrote:
>> >
>> > This really needs to check whether MACHINE="raspberrypi" before
>> > changing anything. I keep the same stack of layers and just change
>> > MACHINE when building for raspberrypi and beagleboard.
>>
>
> That's definitely a good idea. Already merged the patch but will rebase /
> add a new commit.
>

Any plans to add an 'if' here? If not, I'll add it to my todo list.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

