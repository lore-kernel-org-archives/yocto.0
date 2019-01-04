Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53D6CE00C71; Fri,  4 Jan 2019 07:52:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C504AE00B43
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 07:52:08 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id x124so1597568itd.1
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2019 07:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=gVjRso9mCYlc2l2KpEpX2OQTcb8rzaJ6vcjrSGljWbs=;
	b=ecIsIqsfIVS1u9WRxpb/M9JcJIur39CKjg22lVdgmLrfeEyD80IaxafT9ammiXd3wg
	V1yxhqoVurL/AHo6X+QIU7ASjgLe/KRFYIkE5hn1J+ENCDwuKhvCoB5PrX/qov6CGqGn
	+3oSY7yCO+DdUjXiIls0W6T/NkH9Vm2BBkvH5uxET7CKXTcP2+PXDVRUgCVIUC7bYP9K
	PHoX0ONebK1Ux3tV6a2wLnwyDPpbXhiJcyliGxSdDN4iAPAPVaODP4TlE6tmSie0baZ+
	H7fxsLOcQw1EValDJc4yB9EJNCbb29rqFYHzcRKwqD37rnoRddXFXDYgpmHQH9oMqiG5
	XRSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=gVjRso9mCYlc2l2KpEpX2OQTcb8rzaJ6vcjrSGljWbs=;
	b=c6jJ0sNIkxRqnnapwLP+M8GbkFITxZ1c8vplXF+POA/vnDYwSWPUXkSyW5cQEwVhpB
	pKG1nd2sdsbN1FDVCK/OC90F+9OZnALnUnj0ifLd7Qx54T5IkYpkZBPa/nCozwOBtqSE
	mYaVRqMAQTHG7KP5ZNIighGrC9cE6spXRCsidMn3JcMGZu15dIjyVVmf83YjxbmAdOFy
	0iv3pw5QmCkpbIwqNGkcq8Mg6IPNfKcaq1e5s7TFHSqujSyGHlq9ynx6dVPVYHIzTb70
	xhbP8SuKVEb7TqhTNDS4xAGHfj+vi33hriLzN6NUrfzgWlXT4g2hdCVjFP+ZBczWDy1j
	hlgA==
X-Gm-Message-State: AJcUukdkAXb42/7uToXF41cvBwvtvw6SOesT61tg2TQQcjOF41yQ8c+Z
	H+zd41klZz1a6ajwMwY06D92yV6IHFIwy4bDZA6sUA==
X-Google-Smtp-Source: ALg8bN5hMC5Vr3gm/5opkQuRVNhjTChDdYQQNUNSiJvYBKH47c+z+1g5QhaotpYsCjBl7vXTKbr83azJbiP0id+oMRY=
X-Received: by 2002:a24:c601:: with SMTP id j1mr1395780itg.130.1546617128141; 
	Fri, 04 Jan 2019 07:52:08 -0800 (PST)
MIME-Version: 1.0
References: <CAJgxT38ryEhJKQ1_CN79nKPBLUiOca-xHVVKUnGrOQoUq027hA@mail.gmail.com>
In-Reply-To: <CAJgxT38ryEhJKQ1_CN79nKPBLUiOca-xHVVKUnGrOQoUq027hA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 4 Jan 2019 15:51:57 +0000
Message-ID: <CAJTo0LZK0Z_HA4aXecD4NEkmHaFY1S8yVh+zKg2WGa54iCKAOQ@mail.gmail.com>
To: Matt Hoosier <matt.hoosier@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Using prelink in Thud and subsequent
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
X-List-Received-Date: Fri, 04 Jan 2019 15:52:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Don't use Poky?  Your own distro configuration doesn't have to include
security_flags.inc.

Ross

On Fri, 4 Jan 2019 at 15:50, Matt Hoosier <matt.hoosier@gmail.com> wrote:
>
> Hi all,
>
> With the following change, position-independent executables became the de=
fault in Poky:
>
> commit 491082c56ce34f3fd644f8d4457ccd52af951087
> Author: Khem Raj <raj.khem@gmail.com>
> Date:   Fri Jul 27 19:46:14 2018 -0700
>
>     poky.conf: Enable security flags+pie by defaultEnable security flags+=
pie by
>
>     This has been an opt-in for so long, some distributions e.g.
>     poky-lsb uses it by default however, since most of linux
>     distros have started to default to these settings for security
>     enhancements, time has come for OE to make it default too
>
> This carries the consequence that prelinking no longer really works. What=
's the recommendation for users that want to keep applying whole-system pre=
link optimizations (that is, image-prelink.bbclass)? Manually resetting SEC=
URITY_CFLAGS to the empty string after including poky.conf will come close =
to undoing the effect of security_flags.inc, but there are a few places its=
 effects will still leak out.
>
> -Matt
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

