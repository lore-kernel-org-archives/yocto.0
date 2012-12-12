Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59F81E00348
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 12:14:29 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so1076142lbo.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 12:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HavSxNtqUQ7OXIScLvG7U5v7CCgbZDSluLs2QbwVYho=;
	b=UwPR0ZIpe4m5EDqlyDYpoeeOnH7mkbXlniquJQ4OJa+FMaLX+QDpZFILZgOTURt0Ni
	DrH9S1EzCA0gd1wFKModsYYrjNoySK+3vZq2FHuD6b0psaEhNdVZm8nVl6UX3o98Fspd
	42PTVAwDzG17sdPU0ULuR1j0ZgXPyO9V/iTegejY5lJaHvK89jVE0uvUg1/6BjFk7dI+
	HtRAs5dNyK7ilnVOz6+TPVsIy6+1/A9Pa+rvnl3D3etv1SXgUbAf2xooIANXf15dmPvy
	2/yMRaieTuDzFRRf9SX93h3HAXuwUrXd6M6BCVdYjkhV25f4wqhjn8CleLcVGR2HWjIa
	mxZg==
MIME-Version: 1.0
Received: by 10.112.84.168 with SMTP id a8mr932085lbz.75.1355343267849; Wed,
	12 Dec 2012 12:14:27 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Wed, 12 Dec 2012 12:14:27 -0800 (PST)
In-Reply-To: <50C8E206.6040203@linux.intel.com>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
Date: Wed, 12 Dec 2012 15:14:27 -0500
Message-ID: <CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: per-image ROOTFS sizes
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
X-List-Received-Date: Wed, 12 Dec 2012 20:14:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Darren,

On Wed, Dec 12, 2012 at 2:59 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 12/11/2012 01:05 PM, Trevor Woerner wrote:
>> Are per-image ROOTFS sizes (i.e. IMAGE_ROOTFS_SIZE_<image>) still
>> supported?
> Interesting, I haven't tried myself. Have you tried and run into an issue?


Yes. I had been trying to figure out why my:

    IMAGE_ROOTFS_SIZE_vmdk = "500000"

line in my config file wasn't working when I found the link I provided
earlier. Right now all I can say is that it doesn't work for _vmdk
specifically.

