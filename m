Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14858E00798
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 04:53:15 -0800 (PST)
Received: by mail-vc0-f172.google.com with SMTP id lf12so9444680vcb.3
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 04:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=e+TsrqgEMCL4CWZE+P+aghjIJY26i+Dkfq5Qww4oTEg=;
	b=yAVgUjfaA+1hqG9Imn0WfTQuMyzZniF9Hndcb09hyE2Pl/m+pWIZXqNSqLNqUmUobH
	khlgbBzNAyl8jW4xTsvJARyB0XBVZ+qDyuLTXr2X+1hNzomznhCyoCbyEA3q9wlqQ+g5
	JTbSPmI74hxsBv8H6QCguGJTjOsRkWd1N5KU8DpbXBED5subTvAeJRc0EaPL6z8NWzwn
	2bgLGnjy2XFjffsy3arh4eeanxksDq0Z7AwRP7dHXPQGh56GyXvrnGwgoDC0T4gJHQ45
	+Scq8af4Dtg5GfFeydpq2oX7mCQxRfKfRHcEtCodCN7D5UpsLQUwbQI2jeGp5R4Zq0JO
	hcBA==
X-Received: by 10.221.37.1 with SMTP id tc1mr1097319vcb.32.1392382394763; Fri,
	14 Feb 2014 04:53:14 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Fri, 14 Feb 2014 04:52:34 -0800 (PST)
In-Reply-To: <CADYp-eEwpi1gcz4nT4_6cfgBOMba3D6v7KMH7vVrDB7L5AWVkQ@mail.gmail.com>
References: <CADYp-eEwpi1gcz4nT4_6cfgBOMba3D6v7KMH7vVrDB7L5AWVkQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 14 Feb 2014 12:52:34 +0000
X-Google-Sender-Auth: XWZXMS_Bk0ctZS0hMzdEUhU5zNk
Message-ID: <CANyK_8f2v9oGSPdWN6+YGM76-jVHZj9Wyc8NjDu6RmoTFoduug@mail.gmail.com>
To: =?ISO-8859-1?Q?Laur=E8ne_Guelorget?= <laurene.guelorget@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [opkg] Problem with the package manager opkg on Intel Galileo
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
X-List-Received-Date: Fri, 14 Feb 2014 12:53:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 13 February 2014 08:01, Laur=E8ne Guelorget
<laurene.guelorget@gmail.com> wrote:
> Hello,
>
> I am using an Intel Galileo board with a linux distribution
> (LINUX_IMAGE_FOR_SD_Intel_Galileo_v0.7.5)
> and I want to install new packages. I think opkg is the package manager o=
n
> this OS but I don't know how
> to use it. I have an internet connection on the Galileo but I don't know =
how
> to add a repository url to have
> more packages available. For example, I want to install openhab on the
> board, where can I found it and
> do I have to add it in the /etc/opkg/opkg.conf file?

This sounds like a question about whatever the default OS is for the
Galileo not about opkg. I could tell you how to add feeds to opkg but
I can't tell you what URL you'd need for each feed.

Do you know what the default Linux distribution is? If so I might be
able to point you in the right direction at least.

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

