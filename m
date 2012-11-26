Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 069BDE011C0
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:58:45 -0800 (PST)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 26 Nov 2012 05:58:45 -0800
Received: by mail-oa0-f72.google.com with SMTP id h2so50616983oag.11
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:58:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=537TGaKdTiBTp1YrZttqfGoPqLTSM63SGQt4RtW4trY=;
	b=HQ1wrFGPfr9TMJsM68Y8A/3jm6WTMA/07HNH7DRtaf3aRRkn9+wDNnPEIlsCOgpqKS
	WBOSSSr+LXSIDCsGBrizl5jnnf3LtCn5Af4V6MjnvIGYBDXALBcAWlKdTBWHcE9flULk
	65K/KoF5b4Y9XuW69FlvKazyKhZvchYl8aAPvEHED5JZVjezgOKmwN4uucixMyUbAeXo
	39NKrZdcI/H/uLxYUYiy7w2S/tCC3PCl+PTYme6PunbVYldEXaAArVyBYcXdjmY2SjGF
	X/AJz7z8lypO9FveEny4u7MGd88JCnm/9tz/lSiI/4Er0vsaUnbAVt3EOtsxuUcalb2Z
	SmfA==
Received: by 10.60.25.132 with SMTP id c4mr9245897oeg.63.1353938324323;
	Mon, 26 Nov 2012 05:58:44 -0800 (PST)
Received: by 10.60.25.132 with SMTP id c4mr9245893oeg.63.1353938324235; Mon,
	26 Nov 2012 05:58:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Mon, 26 Nov 2012 05:58:23 -0800 (PST)
In-Reply-To: <CA+QkY1DG+xEOrsJ_Xx8BEOB2RYsNnCdU3raSnuLHnt+mw2bPBA@mail.gmail.com>
References: <8754B3FC-739C-4344-8D24-B31A5D86D48F@keylevel.com>
	<CA+QkY1DG+xEOrsJ_Xx8BEOB2RYsNnCdU3raSnuLHnt+mw2bPBA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Nov 2012 13:58:23 +0000
Message-ID: <CAJTo0LZZabOquwvqQwhVxt2=BuWQmdQHQT_VBjtk1DJaRQ6rcA@mail.gmail.com>
To: Jerrod Peach <peachj@lexmark.com>
X-Gm-Message-State: ALoCoQnefEyY2/qYp3RjPR4PhkiYJOOMhkzvaaTT+LzsT5v2n/ICZnD0h95x0ha7W5Oqqk3AS+Wut1Y+qMBvZnYOwxAJhJT78GBNbmq9kaTlvq8MrGBe12nFMx6kTBu0AjfmlFsSnfRH0HZgPLXWQIIWFo4bJMOnHg==
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Best way to support multiple versions of Poky?
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
X-List-Received-Date: Mon, 26 Nov 2012 13:58:46 -0000
Content-Type: text/plain; charset=UTF-8

On 26 November 2012 13:55, Jerrod Peach <peachj@lexmark.com> wrote:
> build-bundle (git repo with our layers + tools)
> |
> +-- meta-ourstuff (git submodule, i.e. separate repo locked to a specific
> version within build-bundle)
> +-- poky (another submodule)
>    |
>    +-- poky BB files (i.e. within meta, meta-yocto, etc.)

Guacamayo does something similar, although meta-outstuff isn't a
submodule of build-bundle.

Being able to branch a "next" branch that switched the poky revision
to the danny RC instead of denzil was very convenient.

Ross

