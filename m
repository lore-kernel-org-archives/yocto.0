Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EE79E006C3
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 04:17:09 -0800 (PST)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 12 Dec 2012 04:17:08 -0800
Received: by mail-oa0-f72.google.com with SMTP id h2so2841029oag.11
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 04:17:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=bPuX9eSCzGxB3anDtvGGzg9dMV0QTVZthDx4zXZkUtE=;
	b=Jqma5y/2IgaVFFvXlV/SZrSLzUUV1krJCyx9dN4eWXsiVrfk9Xj68lk+7eZzCGqtla
	TGiE3rvJa9pw5IVROo1b8B1jjuEOEGg7NGl+VFg99sVqZMSNv1tcjH39R/9ZqieP86X7
	TOuQkH0FJOI9xQkmPCHzC5iLDsH1DOl6CMTV5tMEkU2Z5XzC+kHVP76Timty3/k0CkVM
	iP0RWZdQ/BlZn+iWQHntrJIg4196l6+iQtnxb8CAfzHwT4cgij1CTELkZRsM2YOXtnYh
	eFSR44v7XPTXALQ+28yfDfWgAeEDPqDU37lJ+esVZvjxFJxO7SgRyvjp0pi3C9OGrvk6
	3v6Q==
Received: by 10.60.12.99 with SMTP id x3mr385715oeb.71.1355314627357;
	Wed, 12 Dec 2012 04:17:07 -0800 (PST)
Received: by 10.60.12.99 with SMTP id x3mr385708oeb.71.1355314627202; Wed, 12
	Dec 2012 04:17:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Wed, 12 Dec 2012 04:16:47 -0800 (PST)
In-Reply-To: <2D72F639-44DB-41E5-A1E0-223072FC1AA3@coote.org>
References: <C56AD576-BC63-4357-A090-C0DA3D5398C1@coote.org>
	<CAJTo0LZPSPeKkTcDQ+F_i8w=wUvNxEQeU7T6x4g5aE4cPz4G+w@mail.gmail.com>
	<A994F48C-F169-4B59-9706-891A05CDB785@coote.org>
	<CAJTo0LYQe6NRA+3FZOrsB0Caun7DVi=58re1jMO2baTuxKrQSQ@mail.gmail.com>
	<2D72F639-44DB-41E5-A1E0-223072FC1AA3@coote.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 12 Dec 2012 12:16:47 +0000
Message-ID: <CAJTo0LYGY5x6CwB6ozGWROD7eeb=rEEAeGGsCrAj8XxZZfdPzg@mail.gmail.com>
To: Tim Coote <tim+yoctoproject.org@coote.org>
X-Gm-Message-State: ALoCoQkfy2+DHlh3G9LQujN79JL9tzNfRKj5ZSRnR5oCEu3UFX5XzMWinJsa23Y+aMBTRLNcO88qw+I638TgKrRoNOXmmAjCmPDJzoV9NE1ObrmR7bV11VxGovif0Ac5l6/nA6u43aOyJsTssrvnA39XINdUg6KHFw==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adding package management
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
X-List-Received-Date: Wed, 12 Dec 2012 12:17:09 -0000
Content-Type: text/plain; charset=UTF-8

On 12 December 2012 12:07, Tim Coote <tim+yoctoproject.org@coote.org> wrote:
> don't suppose you know if there are material differences from a packaging/dependency point of view between rpm4 and rpm5?

Not sure, I prefer opkg for Yocto and am a Debian user for my desktop.s

> is there an eta for smart in the mainstream core?

The patches are being finalised right now.

Ross

