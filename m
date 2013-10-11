Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52CADE01426
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 08:51:17 -0700 (PDT)
Received: by mail-vb0-f45.google.com with SMTP id e15so2939236vbg.32
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 08:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=F3SD0cbE6L6iP1nGcd7OxzV/rXy+gT8loAaaqJiOY1Q=;
	b=VFCDdSUq5dNTz1HP18xmR2hJ0zhpGMfi97Tex6pyvE6FAyaSXeWFNpGhWHmcahs4qH
	CjHAiq19TLs/AxmYIsSOwdmu3yGNeHnASIZtu/BauN5+P+bgrGCppwI2M0ev2PmM/+hi
	ynISKQgxSF97v9GIF8Gfp6+j6hPMkcw8zti/Fe3U9zbDE4dj801ek8ZeHcR3BL0qJpaq
	IS9TgiqK148kT57/xhCIDDd2GRaZYjFKaY/10yxZeGsGi0YahbIpQncNX7kODVq41FEg
	zYcd5nIJU+xdqOdqi/Syhi+1ic3iaDPVkx8p1bNhuucYso8V0kflEsV4wr5LkcRU6fov
	YKng==
X-Received: by 10.52.33.44 with SMTP id o12mr18317857vdi.7.1381506676760; Fri,
	11 Oct 2013 08:51:16 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.49.71 with HTTP; Fri, 11 Oct 2013 08:50:36 -0700 (PDT)
In-Reply-To: <CANyK_8c3uRru9_nf+r-6LmKzsMo1WrPrFT_E7WORienNoxWbUg@mail.gmail.com>
References: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
	<CANyK_8edT=meYgopAMkSJvYUn-VNLYqZiDVmuqcNf=7dn-bRjw@mail.gmail.com>
	<CANyK_8c3uRru9_nf+r-6LmKzsMo1WrPrFT_E7WORienNoxWbUg@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 11 Oct 2013 16:50:36 +0100
X-Google-Sender-Auth: erzYGJVOfdO5EKxmHNtyjRQNyp0
Message-ID: <CANyK_8d7cPPsTF4njZq1XqM9NSxBTFDLW-=i_J4YaMsfv=d8Kw@mail.gmail.com>
To: Philipp Wagner <mail@philipp-wagner.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/4] Refactor kernel recipes
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
X-List-Received-Date: Fri, 11 Oct 2013 15:51:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 13 September 2013 18:06, Paul Barker <paul@paulbarker.me.uk> wrote:
> On 11 September 2013 08:29, Paul Barker <paul@paulbarker.me.uk> wrote:
>> On 10 September 2013 23:36,  <lists@philipp-wagner.com> wrote:
>>> From: Philipp Wagner <mail@philipp-wagner.com>
>>>
>>> Hi,
>>>
>>> as follow-up to the discussion in
>>> [yocto] [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.8.13
>>> I've refactored the kernel recipes a bit and included all discussed
>>> kernel versions. The default is now 3.6.
>>>
>>> I've left linux.inc as-is, as this seems to be copied from meta-oe. Should
>>> we include this directly instead of copying it here?
>>>
>>> Philipp
>>>
>>> Philipp Wagner (4):
>>>   Refactor kernel recipes to reduce code duplication
>>>   Remove tabs from recipe
>>>   Make Linux 3.6 the default for Raspberry Pi
>>>   Add kernel 3.8 and 3.11 for Raspberry Pi
>>>
>>>  conf/machine/include/rpi-default-providers.inc   |   3 +
>>>  recipes-kernel/linux/linux-raspberrypi.inc       |  34 +++++
>>>  recipes-kernel/linux/linux-raspberrypi_3.11.0.bb |   6 +
>>>  recipes-kernel/linux/linux-raspberrypi_3.2.27.bb |  33 +----
>>>  recipes-kernel/linux/linux-raspberrypi_3.6.11.bb |  33 +----
>>>  recipes-kernel/linux/linux-raspberrypi_3.8.13.bb |   6 +
>>>  recipes-kernel/linux/linux.inc                   | 174 +++++++++++------------
>>>  7 files changed, 140 insertions(+), 149 deletions(-)
>>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi.inc
>>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
>>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
>>>
>>> --
>>> 1.8.1.4
>>
>> Testing this now with PREFERRED_VERSION_linux-raspberrypi = "3.8%".
>>
>
> Builds and boots happily.
>
> Tested-by: Paul Barker <paul@paulbarker.me.uk>
>

Ping on this series as well. Think it'd be really good to get the
newer kernel recipes into the repository.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

