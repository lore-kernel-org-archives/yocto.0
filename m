Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1DF5E012F9; Fri, 12 Aug 2016 06:53:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B734E012F6
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 06:53:51 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id b62so25032358iod.3
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 06:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DPc+mWWU3/SL0aMfK3N7zs+Lh0rrByO2ajrhrhD3374=;
	b=bLcCVA8qTOKxrH/ZysoGVXtM0fUGkcYZYz6D5j+8xPNTRKmzOriA2SF/Y9rHQYXbNr
	ftxyfMgVweT9DTuZMujGoWBLWnenadPb3PuiPu9dsxjcq2WjFD7Mh2WWf/f/MQ9WczcH
	UU9SJB9dsYzhG5Ttg2A4PUMTeSXXwIhGwPm2yqXHpKYMnXWjGOe/lEC2UzxQVFkv7sMS
	0a6jYTHg4olcznmeiRYL/ZJjIcXWrFCbm3a+bslg/xGs2cD+Os1T/nMy7/xczPV+qkSE
	rwoDYVH316u5WSq2dys2YrmyHpA67GtPSxphQKra87Q3sH4A0NrEOGdGtQCExEY08hIM
	ooFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DPc+mWWU3/SL0aMfK3N7zs+Lh0rrByO2ajrhrhD3374=;
	b=OiA6wVGpqyyMhXeYDBHpoRNwUBvxaFS46ZvZohjBCESj8HpsCktxLQYl0vy8Ibj+Oo
	KVjLiT+zCgpN67qEi2Ul1D0bFMeF1/NJoWwBNW+hRG8E4QISfseVgsFXyJXm7SvygQ1/
	WKTeSzBkXK5L7U3u1L5raOQdkivw8YVJfZlfHlMoE+F/vp6qYSkfJMUgrSC9s2EcnWis
	17M1P8vfWP4NY2w7TZ/DuZnc0lvB9Hh5Dnq5G6pK5o0iBJ+G/MVSWHmklkbXeuQxwPtL
	kwVrBtQlw/p4KP8udhJrtMLl8EwH1VbneKsZUveslivLBVO4yiYf5JWM4TlFYVphb50R
	Fm4Q==
X-Gm-Message-State: AEkoouvB8VtQVdE7/REnvCerKl4zm/AAdeXyJUSEfF0XdELdTFytnLyDx/8hSd0Er2ORtDsdtv3CoAoB2QTxOng+
X-Received: by 10.107.135.142 with SMTP id r14mr19609156ioi.133.1471010031126; 
	Fri, 12 Aug 2016 06:53:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Fri, 12 Aug 2016 06:53:30 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1608120742050.15976@localhost.localdomain>
References: <alpine.LFD.2.20.1608120742050.15976@localhost.localdomain>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Aug 2016 14:53:30 +0100
Message-ID: <CAJTo0LZSb=4WkQ_9vuonqAGPCwiK9Xc6wgv4zAx=EWkVci4Cxg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: can one use "ASSUME_PROVIDED += mono-native" to avoid compiling?
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
X-List-Received-Date: Fri, 12 Aug 2016 13:53:54 -0000
Content-Type: multipart/alternative; boundary=001a113eccbc5ddf450539e036ad

--001a113eccbc5ddf450539e036ad
Content-Type: text/plain; charset=UTF-8

On 12 August 2016 at 11:50, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>   built mono for the first time, and a significant amount of time was
> spent compiling mono-native. if i already have mono on my build host,
> is it worth checking if i can take advantage of it?
>

sstate obviously means if it doesn't change then you won't be rebuilding it
again for a while, but yeah you can look at that.  Obviously it's your
responsibility if the host mono isn't good enough (too old, missing
patches, etc) but before I got a faster machine I put a fair number of
tools in ASSUME_PROVIDED for this reason.

Ross

--001a113eccbc5ddf450539e036ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 August 2016 at 11:50, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":3jw" cla=
ss=3D"a3s aXjCH m1567e7135a169fce">=C2=A0 built mono for the first time, an=
d a significant amount of time was<br>
spent compiling mono-native. if i already have mono on my build host,<br>
is it worth checking if i can take advantage of it?<br></div></blockquote><=
/div><br>sstate obviously means if it doesn&#39;t change then you won&#39;t=
 be rebuilding it again for a while, but yeah you can look at that.=C2=A0 O=
bviously it&#39;s your responsibility if the host mono isn&#39;t good enoug=
h (too old, missing patches, etc) but before I got a faster machine I put a=
 fair number of tools in ASSUME_PROVIDED for this reason.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113eccbc5ddf450539e036ad--
