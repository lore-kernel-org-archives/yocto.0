Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AECE1E0123F
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 15:28:08 -0800 (PST)
Received: by lagw12 with SMTP id w12so3674104lag.35
	for <yocto@yoctoproject.org>; Sun, 05 Feb 2012 15:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=zggNAqfUd4+XNhUwzggxWzZkYBmYFUEJg4feWjufvF4=;
	b=e7z95LBWsZpVy1MCPu9wnOKXELzsRSCrzNB1XMDplFEHGvRVpe7JnMw1kotl53x5zN
	VZnC+i3RCzfwEkNnnhjJE23f9SezwBG14JZp7QWiZw9pbqRVdLQZPh8cYPF9HTysRTXk
	UBbl7no1YwZFfoo511Qb4aVrDnWXhZqPnHthE=
Received: by 10.112.28.169 with SMTP id c9mr4090510lbh.42.1328484487333; Sun,
	05 Feb 2012 15:28:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Sun, 5 Feb 2012 15:27:37 -0800 (PST)
In-Reply-To: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
References: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 5 Feb 2012 15:27:37 -0800
Message-ID: <CAMKF1soAx4QmE8cAPJoAjAyCDorFP_s=rxm=pPJOSmiWTz5uFQ@mail.gmail.com>
To: Sean Liming <sean_liming@sjjmicro.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
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
X-List-Received-Date: Sun, 05 Feb 2012 23:28:09 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 5, 2012 at 2:27 PM, Sean Liming <sean_liming@sjjmicro.com> wrote:
> Looking back at the build process, one error calls out a package that cannot
> be downloaded:
> http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz

it should have had yocto source mirrors in your setup

