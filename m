Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02647E00994; Thu, 29 Mar 2018 13:37:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f193.google.com (mail-yb0-f193.google.com
	[209.85.213.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECA33E00529
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 13:37:26 -0700 (PDT)
Received: by mail-yb0-f193.google.com with SMTP id d7-v6so2185913ybn.9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 13:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=0dHFL57Yo+z16U64vAE44q51r0BJfK7Ah+fXpDLbQzE=;
	b=pFcxBks3fY5vzk8FUBsCqtNOPga5bfg4J8EuwkQj/OuA/SspH9mjCUfTdN6kRnNw+9
	/Jrn8ooWA0ehsq6P4oE1sEazphToyUyTJZ2d0OToFwoQd0LK8cY5r8s/gnGp3pNKNJC5
	wnVk63MB/hW1mLz/ROQsAZNDqO04+g908X7F3sjhHQtE62Fv+dSPFowx5S3Y/mJ6TpJ6
	XEHVgbE40nY9IlbYapHW0zSXjxEr/Yn+56yhBsAZUYdy82ExVHZIiYsInDJy8/SDonhU
	ROHqnHM+cTwjXA4ATyyYfW8WMrGN0Zn2KoXLKutpLWEthRqEikGHNHlOGyfr6MD60K7t
	ixpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=0dHFL57Yo+z16U64vAE44q51r0BJfK7Ah+fXpDLbQzE=;
	b=irZem3U5ySBj0+zMYmMNph4ty/Qx3g2zHQksrcjkaG2Kd5uUhxdwcd4BJYlyLzOZx4
	MPw2Q0nEudcbiL3orc0Sy87El09dONj6IpP6v8hYRQQCp6iV4RkPtX3FCFornsNyXSUX
	7TXTUXTE+nZjFXu7Qm2KK+TB+VjjXuR7SBh+h+mIHbniPux6I6rOfS8AtCma++wa19Ms
	nr44nk+Hh88YeVZJVxxCC57VqrD/YJuwGpyrXptrZsK9Av5xgHocYi+RySCTEgphk14F
	oUFhT3TqmLLJsBAkGARPs6Wuhcgw0a1U63fJeM2DtRocvU/jdsz31hpqYRSN3DoVZ2id
	igXA==
X-Gm-Message-State: AElRT7HK7vrbC9ECJwRmR+JtdpRRZi+G8KY9IHo8I5sAPkJCMrYHegnH
	PKO0PFvLMjRTqIhCd6zquW+9mwRl+ZoGYiMpa7Lm0g==
X-Google-Smtp-Source: AIpwx4+ROlRzYyVQSH1MwY/zadxjwZ0iD0hEHkURHV4HNuWaoXir/ZJP8GO+6wxrpHcOB5t426kliPF7bJBA6q51OEE=
X-Received: by 2002:a25:8c3:: with SMTP id
	186-v6mr5878644ybi.145.1522355846197; 
	Thu, 29 Mar 2018 13:37:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP; Thu, 29 Mar 2018 13:37:25
	-0700 (PDT)
In-Reply-To: <CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
	<CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 29 Mar 2018 22:37:25 +0200
Message-ID: <CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Thu, 29 Mar 2018 20:37:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 29, 2018 at 10:23 PM, Andreas M=C3=BCller
<schnitzeltony@gmail.com> wrote:
> On Thu, Mar 29, 2018 at 9:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> 64bit with mesa yes, for 32bit I usually test on wayland+Westeros+WPE
>>
>> 2018-03-29 12:26 GMT-07:00 Trevor Woerner <twoerner@gmail.com>:
>>> 64bit RPi or 32?
>>>
>>> --
Have a bit more information now:

By the update I moved from mesa 17.1.7 -> 17.3.7.

I git diff'ed  around a bit:

* Tiling was introduced (or just reworked?)
* the error message is created in vc4_resource_from_handle. The handle
coming in has modifier DRM_FORMAT_MOD_LINEAR (0x) but kernel says 'hey
I support tiling' DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED
(0x7000000000000001) [1].

With this I'll try some hacks and then ask at mesa mailing list what
might be reason for it (a really bad timing for this...)

Cheers

[1] https://cgit.freedesktop.org/mesa/mesa/tree/src/gallium/drivers/vc4/vc4=
_resource.c?h=3D17.3#n745

Andreas

