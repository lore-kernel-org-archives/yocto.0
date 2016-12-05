Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76A5BE008D3; Mon,  5 Dec 2016 10:22:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 791A2E0086E
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 10:22:50 -0800 (PST)
Received: by mail-ua0-f179.google.com with SMTP id 20so357051856uak.0
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 10:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pMT/LPRr8GSRgQ/K7St1RwNSuHtjgxLfG655vuhVDBU=;
	b=kqOLw77yntoIkTho7I4ej2YyDXVdPOCeVkQVYgksB3eU6TLuKSmmqsmR+jZJ3t3Efh
	cJOMWyHNEB51nBaiDb9qtKGeqMvzR1uS0B1hiZAj1WaX9wD2XMZNIIw1f/E/iyUN5fQ4
	d5TU9CwiFMT1LrsOIvPzTrai8MIBmjlB3XRJBxq8S0usi9DgjnMUMx29mhmyjM7mau1u
	wWrp3+t1mf49MSDbUMd8PneTm4XRtN4OSj1q1geALs0lYP6EWXyE24suE6vsBgs1Tonk
	mAfqYeLcs/RMkCxWz0s5fCzxXRzCFeDwcJl1zWRVDMPUcHmII1nHbXYLU/f24uSAJsi9
	w7uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pMT/LPRr8GSRgQ/K7St1RwNSuHtjgxLfG655vuhVDBU=;
	b=XxOlKh1a0bnJ/P7u7WntGqFTmwhtMOvYQFHJdBq1ds/a+nSa+Pzh7BHajcaXGeizLn
	RAbCdDwRdxQWqL5xRi9vtaPppfKE0LKUwQC/UVGOd+wky+8QXY9/p1lMpmT8T+u/7UsR
	LvhF0wd2TZc/HnCZv65ylk8F60tEiQcIn19wmFn7MizulqWx1m7DhCyAysfiP0M4HtLd
	RUL6Cv7TDyag5eeTn6sVp96V2P3zMz7wVGZHo+MTl4WiueqKpQH3pRGmSGH0CPt7voQv
	Jzy1oO43qln7BPnv3ndOYSSyAutdk1GVbGvBa52hWoSh1zm6ed0X6ZlB+DhW+HrB+mdX
	YkMQ==
X-Gm-Message-State: AKaTC02yDK5LULbJ9PRxkfWjQW1090WpKqqebAMJdXBecJgQSldwrMkEpsd85z9ZKTCvZLA72OIDlLh2DaLdFA==
X-Received: by 10.159.55.142 with SMTP id q14mr46756702uaq.107.1480962169367; 
	Mon, 05 Dec 2016 10:22:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Mon, 5 Dec 2016 10:22:18 -0800 (PST)
In-Reply-To: <CAJTo0La8z_DDK3dGT4kh163oPdvkMdU=bPbXBW0ypnTORRPung@mail.gmail.com>
References: <46bab4e1-e552-12b4-5847-daeeaf93099a@mlbassoc.com>
	<CAJTo0La8z_DDK3dGT4kh163oPdvkMdU=bPbXBW0ypnTORRPung@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 Dec 2016 10:22:18 -0800
Message-ID: <CAMKF1srnjaSa314J7GJEuT8Gs8oy2swEWb=oq=Yeob1Wm+mFuw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi] X11 failure
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
X-List-Received-Date: Mon, 05 Dec 2016 18:22:51 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 5, 2016 at 3:15 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 5 December 2016 at 11:12, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>> What do I need to do to get libGL v1 so X11 will work again?
>
>
> That would be part of mesa-gl, but I'm surprised RPi X needs OpenGL (as that
> is pure software, not accelerated).

mesa-gl is used as provider for virtual/libgl when using userland
display driver.
if you use vc4graphics then you will use mesa for everything.

>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

