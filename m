Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12430E01544
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 04:27:57 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id ht11so356045vcb.18
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 04:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=/KusWtjr2Ht2y8Jry4jIv8cenSfEhOcaKJ9Ovn3fYMQ=;
	b=VEXm64y6a3aHw4OpM/xjPRiJyJK+6W+/8Y5u0EfU49S3C1HhexNars0mMUzKaRvzu+
	ns56So99qying1Hmzv3bxAhed+e1I6pK7BgyC/ZpBeDG2/woZCnxHUV0Nd90mO9VbrH+
	BXjEzL0JG2vmcbtvGM4Pj3ox8kD2A5VPOMZEXqW3Xa130qM8KLDgTUcummZm4yC33vFb
	Qhzo1C7VFEDUtpGHIguNpeRQDwWlKGYUcVBXk04/Y0Aj8KuS9Md7FntgK7p1y7QsWYaP
	yGE4+3WEexy3GfsT7elv8TMRTTqQ2HP+AZifVdKNWGxvQVL1e7eMul/cvMMA/iZT8OA2
	9hdQ==
X-Received: by 10.52.32.37 with SMTP id f5mr1708996vdi.28.1367494077433; Thu,
	02 May 2013 04:27:57 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Thu, 2 May 2013 04:27:37 -0700 (PDT)
In-Reply-To: <CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 2 May 2013 12:27:37 +0100
X-Google-Sender-Auth: EHjbysgW3xJ7vErNHF5Y0c5IFYE
Message-ID: <CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Thu, 02 May 2013 11:27:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 1 May 2013 20:37, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> That's something we should take a look at. It was introduced before me taking
> this layer and we need to tweak it a little bit (dependency too). If you cat
> take a loot at it would be great. Never tested it on board actually. And we
> need to make it work with systemd too somehow. I have it in my queue.
>

I've took another look over the actual script (first-run-wizard.sh)
and I've found the first run script that Rasbpian uses
(https://github.com/asb/raspi-config).

I think this sort of script is going to be by nature very dependent on
the distro choices, what packages are installed, etc. The current
script still references OpenPandora everywhere and points at files in
/etc/pandora. I don't personally feel it belongs in a board support
layer.

What would be useful is a first boot task which resizes the rootfs to
fill the SD card it's on without prompts. Should be easy to do with a
postinst script and fdisk. Would be great if it worked as an option
that could go in IMAGE_FEATURES. It also might be applicable to other
devices such as the Beagleboard. I'll take a look when I get chance.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

