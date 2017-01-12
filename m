Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2801E00C7A; Thu, 12 Jan 2017 06:04:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F9D1E00C75
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 06:04:22 -0800 (PST)
Received: by mail-qt0-f169.google.com with SMTP id l7so18526748qtd.1
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 06:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ep5vZ98zIdF7mJLfZlelDIBxXKYgATE7WSdbM7xTe+s=;
	b=FoYuaL6FDLF6KzYoJxthEkZv1rczPa9YcTUt0zPBQWuO9xgytXOhu/iMFjZJS9MdLM
	ULRHBks8STcUAo02XZ01gDj91osd8qBXN4Ye97jH29PNDdaS0wuj/otaUQ0ViOpq7hdd
	wZfzUpS0E/UDnsw5MqGzSaNjYzbamUWaQignjK2CEK4Rho7nmOFZRLrH5t6kaRtj1p+h
	gWhmNbO6HCg7AF1qnx1dXteUE0eW8aXAYmTGyYySVxCZWVCwbyiEqIyuECfMAVWsLREM
	W923NiN/fMtxR87BP0Rax6rmKN6eAdkxpI2+8iMqtrTFz2qDWXpHIuLH293ASF3BrCzV
	sXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ep5vZ98zIdF7mJLfZlelDIBxXKYgATE7WSdbM7xTe+s=;
	b=sPO6I9GZgyMaRfn5BJrhIGHtAzKD8/P2pKtUtalQJDL8KmrHGo9ZiC11QK80W/6vE3
	pGJj/H3Yjb01DWKcKglQny4gPbgUAv1Q+dWJin8o99/orXcFgmHvmkoK2NQk4lhrC6d4
	vn7Apa7vI7l3x4A+1+dGd0D6hqtsFiRHNb2EM2PKhjy3U5mltSBb+YIEKHG6MHxrI+ZP
	VcCy3uUngj2CD/bE8/WJSgAcEUBFMQvMguBqxeyuGHpMXDzcwdeaJdJHNy1RGeuC9/Re
	m2ZqfLqs2V24pgqSlCiLrmVZiUcnApuo49uRNqCD46vKgUAEY1k0N3PsNfoMhGxHiPcN
	fSag==
X-Gm-Message-State: AIkVDXLS0Qs9hGWuEz//cS8tBWsnj4IhuqCmX/hW9Xr2qfSAlw6Nd5GeoZX9SGayW41zW9HuoxH+qh3coLMp6UKK
X-Received: by 10.200.39.212 with SMTP id x20mr12377896qtx.109.1484229861293; 
	Thu, 12 Jan 2017 06:04:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Thu, 12 Jan 2017 06:04:00 -0800 (PST)
In-Reply-To: <076ded74-b424-c83f-64c1-1787e17270da@mlbassoc.com>
References: <076ded74-b424-c83f-64c1-1787e17270da@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jan 2017 14:04:00 +0000
Message-ID: <CAJTo0LYPVmOOhx6tH3x_oD2QU-XJ0m6zQoTSMHuueevDDL383w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sstate pruning
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
X-List-Received-Date: Thu, 12 Jan 2017 14:04:24 -0000
Content-Type: multipart/alternative; boundary=001a1135b542a607800545e6314f

--001a1135b542a607800545e6314f
Content-Type: text/plain; charset=UTF-8

On 12 January 2017 at 13:38, Gary Thomas <gary@mlbassoc.com> wrote:

> Any constructive ideas for cleaning out a ver long standing
> sstate cache?  I have one build tree that is now approaching
> a year old (I do builds there all the time, sometimes many
> times per day).  The sstate-cache is HUGE.  Any ideas on
> how I can purge/cleanup?  Note: 'atime' is probably not
> useful as I have copied the whole thing a few times...
>
> $ du -s /build/p0382_2016-01-13/sstate-cache/
> 186576060       /build/p0382_2016-01-13/sstate-cache/
>

The usual way would be atime, so if you can remember when it was last moved
then anything that hasn't been touched since is obviously deletable.

The alternative would be to just delete it and then do a set of builds for
all your combinations that you care about, after all it's just a cache.

Also, that's not huge:

$ du -s /data/poky-master/sstate/
1.2T /data/poky-master/sstate/

:)

Ross

--001a1135b542a607800545e6314f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>On 12 January 2017 at 13:38, Gary Thomas <span dir=3D=
"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbas=
soc.com</a>&gt;</span> wrote:<br></div><div class=3D"gmail_extra"><div clas=
s=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-=
left-style:solid;padding-left:1ex">Any constructive ideas for cleaning out =
a ver long standing<br>
sstate cache?=C2=A0 I have one build tree that is now approaching<br>
a year old (I do builds there all the time, sometimes many<br>
times per day).=C2=A0 The sstate-cache is HUGE.=C2=A0 Any ideas on<br>
how I can purge/cleanup?=C2=A0 Note: &#39;atime&#39; is probably not<br>
useful as I have copied the whole thing a few times...<br>
<br>
$ du -s /build/p0382_2016-01-13/sstate<wbr>-cache/<br>
186576060=C2=A0 =C2=A0 =C2=A0 =C2=A0/build/p0382_2016-01-13/sstat<wbr>e-cac=
he/<br></blockquote><div><br></div>The usual way would be atime, so if you =
can remember when it was last moved then anything that hasn&#39;t been touc=
hed since is obviously deletable.<div><br></div><div>The alternative would =
be to just delete it and then do a set of builds for all your combinations =
that you care about, after all it&#39;s just a cache.</div><div><br></div><=
div>Also, that&#39;s not huge:</div><div><div><br></div><div>$ du -s /data/=
poky-master/sstate/</div><div>1.2T<span class=3D"gmail-Apple-tab-span" styl=
e=3D"white-space:pre">	</span>/data/poky-master/sstate/</div></div><div><br=
></div><div>:)</div><div><br></div><div>Ross</div></div></div></div>

--001a1135b542a607800545e6314f--
