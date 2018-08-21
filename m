Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F46EE0097C; Tue, 21 Aug 2018 16:46:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD2E5E008D9
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 16:46:03 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id 125-v6so47092vke.11
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 16:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=i1EjWfYJ/pzqQ8oXBM3IP/PAMYpHImyravS7M1j3ZSo=;
	b=OdM7iWfXtz5+kNh02McJ0TlgO6QaamVIvQNQ0hHFb+QXm/eEhqiGjiaGWy39/9xIRV
	fEDP3JOXiP71DqUEGHOEeyoGOkGMrZY16CmWFX7W4EC0R78HHc+P3nNhBdGgG548TNeh
	divYT65KKk73nYM+uraOP2Z6CM6lRZJvLWZqVfqupxjuy9cApAy6LGmJbUBNfYLPgoqY
	Mm0yNf1BOumQHQV9SkVfhq0MY/T2nmBoNqwu9MmGuXND7U8fb8dTzMyjG8lMVsKXdzy5
	422GOeWC19UzvPt+jV3thYiDVlVPUILic2X2mm4Vsf0XUGhST8wlwcKhsErn3zrLUZxL
	8XgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=i1EjWfYJ/pzqQ8oXBM3IP/PAMYpHImyravS7M1j3ZSo=;
	b=qyKXqZglY3rjdNUcT71qEd8GQctrUEKjiqRU64KxizL8wEEeP6K0pI04dhVXq942Vl
	a+sxRu45IaQixQZVXnpuUWP/OexjrJqJAeUdYD5CSTX/EAq6/yfzaPD3CEWNTKwbQ0gZ
	r+QzHeeOsxWZwkVWL8y8tDanfVGDTz0c6VoGJIOi1BsZnE0QiBNmj7Gdg4dRi1QCuj8u
	oFXBty6NBY+OThAVTbfydgE8P+aD157FZuFG41mp8GlcXWDXPLMCjQ47T3MQImshuuwB
	3a4Sukub3acFTVYClVyzGsOilYwpF46OJwxqNGx7XBZHVz8tMcDo2HerKPoT9qUX688I
	xCYw==
X-Gm-Message-State: AOUpUlESIQWOF5cI37ZFOt3zuPBQXP/NbDaJ/61wppfeCQ0qWI9wvtFx
	Tw9iLyugKKCw+2aOXML69ZY8SpFKWizraW82jNI=
X-Google-Smtp-Source: AA+uWPzYWOTiKOdZvnjkSn8EofO2HHjIZvp6lrxDMb7KPmpXfTybmb5gOjRiItSBEmqZwxy4ypPBh4P3qUDUHxaaFV8=
X-Received: by 2002:a1f:d844:: with SMTP id
	p65-v6mr35250987vkg.54.1534895163169; 
	Tue, 21 Aug 2018 16:46:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Tue, 21 Aug 2018 16:46:02 -0700 (PDT)
In-Reply-To: <CABxOuY_5=1XEg45janMNWmEidhkeB5b=7mfbQM4uAivhf1xfxg@mail.gmail.com>
References: <CABxOuY_5=1XEg45janMNWmEidhkeB5b=7mfbQM4uAivhf1xfxg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 21 Aug 2018 16:46:02 -0700
Message-ID: <CAJ86T=W=TF0y_hd7ULb8S=gjpPSzSgOZkyJqE8fz4FyKYuWmMw@mail.gmail.com>
To: Paul Sheer <paulsheer@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Cleaning out build without re-downloading sources
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
X-List-Received-Date: Tue, 21 Aug 2018 23:46:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 21, 2018 at 3:52 PM, Paul Sheer <paulsheer@gmail.com> wrote:
> Hi,
>
> I am trying to do a clean out all packages within my build due to a
> change in my GCC environment.
>
> I updated my GCC so, for assurance reasons, I want a rebuild of everything.
>
> However I want to avoid re-downloading gigs of source packages.
>
> I am hoping there is a way, say, to restart all packages build from
> the "unpack" step without doing the download step?
>
> This seems like a common use case.  Is it supported?
>
> The only help I could find is to run commands like,
>
> bitback -C xyz abc
> bitback -c xyz abc
>
> Nothing I have tried forces a complete clean out of all builds (nor
> the other options -- a restart from the unpack step).
>
> rm -rf ./tmp   works, but it also forces a download of every package :-(

It shouldn't - at least not unless you've over-ridden the default
location of the downloads directory and placed it under tmp?

The default locations are:

  DL_DIR ?= "${TOPDIR}/downloads"
  SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
  TMPDIR = "${TOPDIR}/tmp"

so removing tmp should not affect either downloads or sstate-cache.

> Thanks
>
> Paul
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

