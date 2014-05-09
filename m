Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01B9FE00B66; Thu,  8 May 2014 18:17:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1711 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 18:17:19 PDT
Received: from mail-ie0-f180.google.com (unknown [209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85D1E00B60
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:17:19 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id as1so3454656iec.11
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 18:17:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=QrZbwRHjYjtO8u6K/3GTww8x9iwP1Em1nNcem7NN/IM=;
	b=FSK7TavKNNJKdWoHYV6+U4HVUxpePznEyc9xEHpgtY1fnUevSIz6tPgfk3UebLqkOR
	6jm5PSoAIms7FCJxXzvRacllWnm3dZo6wOZvNammTceuTf0cXTqqD8vSvZiRqOqN2yOD
	p7tV4uzUTQPPK8VmvTTC8JYU6W60uMTis3gYJYK3MJzOkyB5hgUHuZibkQJ6B26yFvkQ
	6ncYAaPxuUF3ZmSUCU4giZ0Ywk/Ep7Q/dZzf80bNi10DmH83O/czAxOhu1Z3H1Z+Kt39
	Vv4h11i8Wtcmf5vtpxS//8+TsTUR0J/NTQ7lJf58xixX03HSLeZCw4R60ghtWYyzoZ5N
	Io2Q==
X-Gm-Message-State: ALoCoQkP0bt4LgyokytrgZpWsf3qNj/6NgP+i5FsHEjl3IXKECj2iWjyiu2saTB+3OVcZI4dMV1v
MIME-Version: 1.0
X-Received: by 10.50.141.198 with SMTP id rq6mr2235709igb.38.1399596528329;
	Thu, 08 May 2014 17:48:48 -0700 (PDT)
Received: by 10.42.172.196 with HTTP; Thu, 8 May 2014 17:48:48 -0700 (PDT)
In-Reply-To: <536BF20E.6040602@mvista.com>
References: <536BF20E.6040602@mvista.com>
Date: Thu, 8 May 2014 20:48:48 -0400
Message-ID: <CANBf+V2b+TdDkPzH3QV5J5p29jYn++HGGn0XFXPkBYcQseyXMQ@mail.gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: "akuster@mvista" <akuster@mvista.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux] build issue
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
X-List-Received-Date: Fri, 09 May 2014 01:17:24 -0000
Content-Type: text/plain; charset=UTF-8

Hi Armin,

I'm guessing you don't have BB_DANGLINGAPPENDS_WARNONLY set in your
local.conf.  I'm working through some other build issues right now,
but certainly nothing like what you're seeing.  :-)

-J.

On Thu, May 8, 2014 at 5:07 PM, akuster@mvista <akuster@mvista.com> wrote:
> Hello,
>
> I am trying to build meta-selinux and ran into some build issues. I started
> by cloning poky and meta-selinux. I am using master on both. When I run
> "bitbake core-image-selinux", I get the following errors.
>
> ERROR: No recipes available for:
>
> /home/armin/work/yocto/poky/meta-selinux/recipes-core/util-linux/util-linux_2.23.2.bbappend
>
> /home/armin/work/yocto/poky/meta-selinux/recipes-connectivity/bind/bind_9.8.1.bbappend
>
> /home/armin/work/yocto/poky/meta-selinux/recipes-kernel/linux/linux-yocto_3.8.bbappend
>
> /home/armin/work/yocto/poky/meta-selinux/recipes-connectivity/openssh/openssh_6.4p1.bbappend
>
> /home/armin/work/yocto/poky/meta-selinux/recipes-extended/psmisc/psmisc_22.20.bbappend
>
> /home/armin/work/yocto/poky/meta-selinux/recipes-extended/augeas/augeas_1.1.0.bbappend
>
> /home/armin/work/yocto/poky/meta-selinux/recipes-graphics/mesa/mesa_9.2.2.bbappend
>
>
> Is this a config issue or am I using the wrong sources?
>
> regards,
> Armin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Joe MacDonald
:wq

