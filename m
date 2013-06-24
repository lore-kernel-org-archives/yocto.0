Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E8CEE01408
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 07:08:35 -0700 (PDT)
Received: by mail-vb0-f52.google.com with SMTP id f12so8085927vbg.25
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 07:08:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=FDTWrWNUbPiKQgWYGo3fIeQc1gVO0cJmkFfHPgMuB3s=;
	b=FVHmI2ycZAG/5EJvcvqx+io91Om+YEa1jqw70FBCTGBL2SWz37aQM0PJZ5Z9oYGRjW
	4GrlO/EuoBjtrtC5/b8QFwj7eUEzcG3HuIVDlbbxvcZ6adeV5LdHp8AzuA/sQe+dsMmb
	BrFPQHJB+iHDdpzb1tml57D+eb5vUoTEV1ZaGQtklnvlKJ3wkJHClqC9NyMGnR/7HaAk
	bL+iNvCkjnJ2pFM41a8QzBycWlUMx3yqaC/cz5KBzOuYq35Mj/v5RDY4lNi70yIhDOex
	LPuU35cjcmUL5owbndSS1AbBjFGgzkt22De+T48sxj+/c84jFhHUK+hC9pxKvHY5k52J
	e44g==
X-Received: by 10.52.21.232 with SMTP id y8mr9479535vde.6.1372082914079; Mon,
	24 Jun 2013 07:08:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 24 Jun 2013 07:08:14 -0700 (PDT)
In-Reply-To: <CA+QkY1A5haUkuhPGteJuyEE11JZ1Gdsr2_wA6x_ajzYbWzko1g@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1A5haUkuhPGteJuyEE11JZ1Gdsr2_wA6x_ajzYbWzko1g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Jun 2013 15:08:14 +0100
Message-ID: <CAJTo0LZtUyRpov4Czi8C7TyZutXxfDpv2ovBoU_vmYKcJYTBTA@mail.gmail.com>
To: Jerrod Peach <peachj@lexmark.com>
X-Gm-Message-State: ALoCoQmxHdEp9CvYaAiP3JzJLjaqkjYXCEzjCmXGG5bYD6AI3zQFrtxwVRfNmExIzNYDE+93H3Gs
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 14:08:36 -0000
Content-Type: text/plain; charset=UTF-8

On 24 June 2013 13:59, Jerrod Peach <peachj@lexmark.com> wrote:
> auto.conf (That's not even present in my 1.4 workspace.  Is this going to be
> something new in 1.5?)

auto.conf is read along with site.conf and local.conf, and is intended
to be automatically created and maintained by autobuilders.  That's
why you don't have it locally.

(I only discovered about this file when we were talking about inputs last week)

Ross

