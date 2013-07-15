Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1EC0E01422
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 01:46:38 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id db10so9731854veb.12
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 01:46:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=We+lDjWwK5+8vQ9+SKWVjA1uilvdmFN8793Jxj7+Y7k=;
	b=BfterQ/gSvaSviNxraHahcn2KzwsZRTk6T4DbS3lOD3JKW0BwIuWUoBaqFSe302rG2
	glpaZiXPJBMf4GE68mpAYDYzEVENLiaFAUtN3g0EtzFWUi26ULhY/MoToSCL6kKW9a6h
	UvTDS9FRFY+spGu+NBmNGzQg/GuvubTBmVz9qEaWTJXeeaSgYb+wADVr+u41h3rlgZhm
	9B2Gb2avXBax5IuKsL474h0B+q9bZLFnb6zsbAMksXKNZ8iTwD254MzneJNzrwLcGbcy
	pdA+BX+FFrLYx5XQMN26vVUF95FGzWXOFLuxIqRYmJXdoLAN98kQ7Lvv0RPSXFLZb3Th
	UvZQ==
X-Received: by 10.58.219.232 with SMTP id pr8mr28270279vec.80.1373877997225;
	Mon, 15 Jul 2013 01:46:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 15 Jul 2013 01:46:17 -0700 (PDT)
In-Reply-To: <CADkTA4NYXP4O_gGMVkOtZ-xo76vJKRtAz0ZMWSbD21jv+UevRQ@mail.gmail.com>
References: <6E525492-7C48-4AE0-8F90-C910E194FD41@keylevel.com>
	<CADkTA4NYXP4O_gGMVkOtZ-xo76vJKRtAz0ZMWSbD21jv+UevRQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Jul 2013 09:46:17 +0100
Message-ID: <CAJTo0La6GSuc6T6h1ztt_0cEekuEo4-9xV-Hq4o3raKi1MKx9w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
X-Gm-Message-State: ALoCoQmnnjpn6Wd1PqfqyPZ1vq79HH2AkEuaNfY65aSlSbGvUOOeFwdVn5TZTkRLo6Sf/jeFsF3a
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: CONFIG_HID_APPLE
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
X-List-Received-Date: Mon, 15 Jul 2013 08:46:38 -0000
Content-Type: text/plain; charset=UTF-8

On 13 July 2013 03:30, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
> On Fri, Jul 12, 2013 at 4:39 PM, Chris Tapp <opensource@keylevel.com> wrote:
>> Can CONFIG_HID_APPLE=m please be added to the kernel defconfigs? Apple keyboards don't work without it.
>
> That's not something that most boards need. So it belongs in a feature
> fragment that can
> be activated via a custom layer (KERNEL_FEATURES), or the entire
> fragment can exist in
> recipe space (via a bbappend).

Though arguably it should be enabled for the generic x86 configuration.

Ross

