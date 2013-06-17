Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A988E0152B
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 22:23:25 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id 10so6050030ied.0
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 22:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=zMBsG5wOsMvI6qcvAwy+fLqve9pBAqDRqXddl+zJvDY=;
	b=uf/PPe5LPQE9WQhn0AwXPoYAPgx+Wqmqg0Z/rQ7w1GKCAHdexj5vcnmgpJw421rFl1
	WTzBfU4/ThYZaFVtJQKvz+IxQqCeJb8k12hbs5E/I8EY4hUjDE/YqoXY4wQoS7dqyT2I
	9raj6sAq7AzVPi3YsMvGdnJoUXRxMBTqocGLgiLv8Hc2HFimb60yqkfQvl2MiMX7rxpP
	WVWkWx00lphlMjcW4y5uC9VL5+XO/6JghmbJfTRxj/MVClKhSaq9ZpNoj4awRP2QEbfB
	gc56lYh0XKHNaETxeoCuhKgw+/4V4sna03X7/rFwjgbgQ8WYZmEgSB129nTV5e64jtDO
	ziqg==
X-Received: by 10.50.78.100 with SMTP id a4mr3837176igx.102.1371446604579;
	Sun, 16 Jun 2013 22:23:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.4.168 with HTTP; Sun, 16 Jun 2013 22:22:54 -0700 (PDT)
In-Reply-To: <CANwz6ny8-LnE7-weEJnp5BAyR=j4Gbs4HXb29EPM0e4uNx1X4A@mail.gmail.com>
References: <CANwz6ny8-LnE7-weEJnp5BAyR=j4Gbs4HXb29EPM0e4uNx1X4A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 16 Jun 2013 22:22:54 -0700
Message-ID: <CAMKF1sr474Z7GXRueV7S2Op=jL3ap7zmjynrifNmaXn62X7mUg@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libstdc++-static impacts yocto builds fedora18
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
X-List-Received-Date: Mon, 17 Jun 2013 05:23:25 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jun 2, 2013 at 2:35 PM, Edward Vidal <vidal.develone@gmail.com> wrote:
> Please note that libstdc++ static is needed on your host to compile
> icedtea6/7-native
> (install libstdc++-static on a Fedora).

is that still valid ? I dont have it installed and it builds without
issues. may be meta-java/readme should be updated.

