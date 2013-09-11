Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93F58E013AE
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 00:29:52 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id jz11so5521608veb.11
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 00:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=STOPgzzev1BJKuU4qBCHah8sYpsMTEz9vGfO/KYGsSQ=;
	b=EQkUzULZXLeHhU1Rxsim7r3Du8vik7QXqRJlg3Prh7LZ5uKErJ4Fn0PjKc5X75/7AW
	5BkRV7mfA+AJ6I5pHztgnJh3rOl53j9sjtyPW9CKu73ZzYNVGDNkZ9LLbeaYysijEDCQ
	E0XPIvX/kEvXJWFHTs72Az/OyZd+1pfjjCRtIPxXrlxAtE91F50527wljQdFcnjVRt0j
	TPAiRz8aup+0ly0HOwBfeVSqQsIrkVdlM5e9x/x5Q0XDbHgg7zl2qkOJkZplquW7yn5k
	H9GKdHGtL9KQ2w2vc3xAklMDkkI1HbcIg7gIBz5LxW1oVgMyhdhnfeRjstjcYjcYiF3e
	WggA==
X-Received: by 10.58.28.147 with SMTP id b19mr41753veh.27.1378884591568; Wed,
	11 Sep 2013 00:29:51 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Wed, 11 Sep 2013 00:29:11 -0700 (PDT)
In-Reply-To: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
References: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 11 Sep 2013 08:29:11 +0100
X-Google-Sender-Auth: B8TjDEpHrLpqW3O8I0rbXQ4k_f0
Message-ID: <CANyK_8edT=meYgopAMkSJvYUn-VNLYqZiDVmuqcNf=7dn-bRjw@mail.gmail.com>
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
X-List-Received-Date: Wed, 11 Sep 2013 07:29:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 10 September 2013 23:36,  <lists@philipp-wagner.com> wrote:
> From: Philipp Wagner <mail@philipp-wagner.com>
>
> Hi,
>
> as follow-up to the discussion in
> [yocto] [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.8.13
> I've refactored the kernel recipes a bit and included all discussed
> kernel versions. The default is now 3.6.
>
> I've left linux.inc as-is, as this seems to be copied from meta-oe. Should
> we include this directly instead of copying it here?
>
> Philipp
>
> Philipp Wagner (4):
>   Refactor kernel recipes to reduce code duplication
>   Remove tabs from recipe
>   Make Linux 3.6 the default for Raspberry Pi
>   Add kernel 3.8 and 3.11 for Raspberry Pi
>
>  conf/machine/include/rpi-default-providers.inc   |   3 +
>  recipes-kernel/linux/linux-raspberrypi.inc       |  34 +++++
>  recipes-kernel/linux/linux-raspberrypi_3.11.0.bb |   6 +
>  recipes-kernel/linux/linux-raspberrypi_3.2.27.bb |  33 +----
>  recipes-kernel/linux/linux-raspberrypi_3.6.11.bb |  33 +----
>  recipes-kernel/linux/linux-raspberrypi_3.8.13.bb |   6 +
>  recipes-kernel/linux/linux.inc                   | 174 +++++++++++------------
>  7 files changed, 140 insertions(+), 149 deletions(-)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi.inc
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
>
> --
> 1.8.1.4

Testing this now with PREFERRED_VERSION_linux-raspberrypi = "3.8%".

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

