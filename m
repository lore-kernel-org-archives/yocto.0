Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 438B5E009E4; Wed, 29 Jul 2015 07:47:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 906E3E0096A
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 07:46:53 -0700 (PDT)
Received: by qkdg63 with SMTP id g63so5501311qkd.0
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 07:46:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vqchaJAj2nEHtdBPh3SwQZAlEbdMDPWQk5rn07mpf/U=;
	b=TifgBz7yCznH1WgtXGwhWhkZ92gYCk131yceyXH41cPRGoaJYQi5F8r0HSN8RIvJEf
	QBNvms0VvTWIcLyc0Omh/NGcNgbSJ419ElaHmLDSliN3IbP+1Id6qNAzWu9QecVudtHM
	En0WeuHGLmBoPYGptqwseE9PEcr5kmWXecLz8pEVVhS01kcA0tjZ832MAYoNLTbX1QgE
	rlByHwZpvKKSmofzH5MdN+gkplu3CV4bZgpr6QTu66vVJ1gAkCDO9cCgS4omTKb0l8KP
	kHtydTApAoY9Y6BYDy/F13BEqvcGEwuvdUUrzZQhxFa05FJo4krgQLd3Utg/MFHMjWku
	uvOg==
X-Gm-Message-State: ALoCoQmQiU71AGEycUPmFzFuqzBQHAbBgK2NSOk8fpDPlN/dZ8+uqNz3X8LdTMO/bNGq+mK17cG0
X-Received: by 10.55.43.95 with SMTP id r92mr60503832qkh.67.1438181213253;
	Wed, 29 Jul 2015 07:46:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Wed, 29 Jul 2015 07:46:33 -0700 (PDT)
In-Reply-To: <CAJtzDg9GNXGq71w8znmQHY_uzXoOcuBEeuC-=7FU2OJGukU6RQ@mail.gmail.com>
References: <CAJtzDg8b-JtqeAtbCBckq+pQDahetrhWB8DeE_XXAv5vQBdcWg@mail.gmail.com>
	<55B8D37A.6020308@mlbassoc.com>
	<CAJtzDg_BE_+hxYu9jNHUQW3gxme6Ay95NENjA=R6ufj+w9LfCw@mail.gmail.com>
	<55B8D76A.1090507@mlbassoc.com>
	<CAJtzDg864mgz4668FceX4ov5Uu8VxeGKh4tc1ERXq7wXQz06bQ@mail.gmail.com>
	<CAJTo0Lb=VpuK8UOQMdr7YkaNH-SHsBfRXa8z7Jq9SXARBDmWsQ@mail.gmail.com>
	<CAJtzDg9GNXGq71w8znmQHY_uzXoOcuBEeuC-=7FU2OJGukU6RQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Jul 2015 15:46:33 +0100
Message-ID: <CAJTo0LbquzF2Rif1q-vxyt9HJHFgUDcUkOrBL5xh5_7VYe2-WA@mail.gmail.com>
To: Laurent Joli <l.joli@expemb.com>
Cc: yocto <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [Asterisk] recipe 13.1.1
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
X-List-Received-Date: Wed, 29 Jul 2015 14:47:01 -0000
Content-Type: multipart/alternative; boundary=001a1147b8dc56c069051c04a825

--001a1147b8dc56c069051c04a825
Content-Type: text/plain; charset=UTF-8

On 29 July 2015 at 15:40, Laurent Joli <l.joli@expemb.com> wrote:

> But How can do that in my configure file of asterisk ?
>

If that is a proper autoconf configure script then remove your
do_configure() task and just inherit autotools.  You'll also want to
inherit pkgconfig.

http://people.freedesktop.org/~dbn/pkg-config-guide.html#using shows how to
use pkgconfig, as you're invoking it from a configure script you can use
the macros at the end of that chapter (PKG_CHECK_MODULES, normally).

Ross

--001a1147b8dc56c069051c04a825
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 July 2015 at 15:40, Laurent Joli <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:l.joli@expemb.com" target=3D"_blank">l.joli@expemb.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div>But How can do that in my conf=
igure file of asterisk ?<br></div></blockquote></div><br>If that is a prope=
r autoconf configure script then remove your do_configure() task and just i=
nherit autotools.=C2=A0 You&#39;ll also want to inherit pkgconfig.</div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D"htt=
p://people.freedesktop.org/~dbn/pkg-config-guide.html#using">http://people.=
freedesktop.org/~dbn/pkg-config-guide.html#using</a> shows how to use pkgco=
nfig, as you&#39;re invoking it from a configure script you can use the mac=
ros at the end of that chapter (PKG_CHECK_MODULES, normally).<br></div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div=
>

--001a1147b8dc56c069051c04a825--
