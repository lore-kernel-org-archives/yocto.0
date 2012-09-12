Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55303E014B6
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 04:49:11 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 12 Sep 2012 04:49:10 -0700
Received: by obbtb18 with SMTP id tb18so3077183obb.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 04:49:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=b8+xXPNis6xYuGKa15mw562SneC9t/ZNQOj0yAjBuJY=;
	b=aOSp6EogCGDmn7rDJONzP/eT/e2l8GlAasMcfTd1DIktVTz5mM7MwoBPfStXnxbdIx
	B1mM9sn+hE3q/y7nJ98+zjcpsq0kBy22UyXbKWs9vFGvm+jY5JugUOBjnwWIP6Y8OYKa
	w7gDuodVnapRCa8pMKsTvkLUtJhEAO/p0ieHYhCzOcJgY1x0m+erK6YUkk5LPGjtZ3kn
	Fc0Li/RzBUvgtGD8tApLmeShQbccu1WfdRPgJjQDNafxemk8kM+OZoJv/s07orC1D23+
	2X1nUeO//Qpq6T/nyPHxCFxIdt/42oUAWaSx/p8tq/w5N+SSez7IT0p+/sgUlrqhx/tj
	harw==
Received: by 10.60.171.174 with SMTP id av14mr22386030oec.61.1347450549231;
	Wed, 12 Sep 2012 04:49:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Wed, 12 Sep 2012 04:48:49 -0700 (PDT)
In-Reply-To: <87627kcjd6.fsf@sonatest.com>
References: <87627kcjd6.fsf@sonatest.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 12 Sep 2012 12:48:49 +0100
Message-ID: <CAJTo0LbUHH8D08KWYGfJZf=5hLh26P9-md4rPUNknJF3-5Ja_g@mail.gmail.com>
To: Marc Ferland <ferlandm@sonatest.com>
X-Gm-Message-State: ALoCoQkom6Skcyrg+u27Rpzy6oiLP3fOEaKx0/n0/9aU34Aw+mC7NUNXJf7IxFCgQs2Onc+TXwW3
Cc: yocto@yoctoproject.org
Subject: Re: Replace netbase with connman
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
X-List-Received-Date: Wed, 12 Sep 2012 11:49:11 -0000
Content-Type: text/plain; charset=UTF-8

On 11 September 2012 22:58, Marc Ferland <ferlandm@sonatest.com> wrote:
> I'm trying to replace netbase from my image with connman and I need help
> on how to proceed. So far I see that:
> - udev includes some event scripts that bring up interfaces
> - netbase is included by default in core-image (which I use).

You don't want go get rid of netbase as it includes critical files,
but you do want to install an /etc/network/interfaces file that only
defines lo through a netbase bbappend.

Guacamayo is probably a good example -
https://github.com/Guacamayo/meta-guacamayo.

Re NFS, no idea. I have seen patches on oe-core to stop connman from
re-configuring the network when it starts, so you'll probably want to
find and integrate those if you are not running oe-core master.

Ross

