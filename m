Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EB74E00BEB; Thu, 11 Feb 2016 05:52:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 240C5E00BE6
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 05:52:13 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id xg9so35225289igb.1
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 05:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8335qrqXHkfc98YYH0rF+GE35Dd5tSGHxPI1Dy5K+u4=;
	b=ZdIvyc6HMHnlrPzjmMAvnO++x8bkzkq3wsd0CFNPVmFRF1BPgI8lMsmYfrChL14BVa
	EcR9ZHbnZjSCdRwwZqTTMQ+3MtTdJwXLKjsL5LFAkL6e0DEn/rDWwmAf7G07HBDD74ie
	O2dtjZZkLQKoDKxOV2t9gA+eIFWCo1sJfRUMwdvELEvwiioZ4GqGp0MdL/1rL5NQDD3I
	M5QfEKBXOPNE4MipJwnX8dpcXdV4aSZ7zanwXTMoR3l01d00rR8jYdJ5IjiulE9qDbxT
	gI2Tm775TXhCZW3iQDsZapZkH3ngLlVilVkcTPWVpJFPR+QmMDyZD+kmKVA3CxYwQ06L
	CEsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8335qrqXHkfc98YYH0rF+GE35Dd5tSGHxPI1Dy5K+u4=;
	b=F7wysEoq5y9Fy6ydaiCK90RakZXPevJHH46m2a9C1KnUPjcJtTzdr/FvBQufnW+dqO
	lC3zZ7Zx8Y+c7Kh+MrbC5GcaLLrMZVMZmi84LBa/4BWN2godrRVqKN4XfpjEfDxVSEsK
	PxiMUL5x5Wha+NCoobEZplmwlMDBEseEDawjZHql2eA5PofHWDUKtTHPFhLeF3KnHLb6
	m4YwdVt5CBX7//JcUtju9jRVFDfTb+PhK3LiBRhSM4e3Uck+tUovnAz+giN5Qlu4SlmN
	DL6enLHC2rLVrViwaT4xns3mKIG2ROD0K8htDk3UdRUaAIZyV2Mof3ok9OM5IUACHwfv
	Vv7w==
X-Gm-Message-State: AG10YOQ9IIW3p7jSe2hArmJvYiW5BV6MQ69v2OCOIxkmZnXd5HetktGPf2779K/8AGlESdY1brE+qQHFJbTVICqV
X-Received: by 10.50.126.8 with SMTP id mu8mr15569299igb.52.1455198733317;
	Thu, 11 Feb 2016 05:52:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 11 Feb 2016 05:51:53 -0800 (PST)
In-Reply-To: <56BC80BE.5030707@nokia.com>
References: <56BC6621.6000809@nokia.com>
	<CAJTo0Lan0mShTsA7ybk0OZH3qFmtvWpOv113Wv6V=m7BannUeg@mail.gmail.com>
	<56BC80BE.5030707@nokia.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Feb 2016 13:51:53 +0000
Message-ID: <CAJTo0LYzQMYj+3BhVHCXyfU0tFkB7ZUopskhf+oCHyz00Tdckg@mail.gmail.com>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: valgrind-native
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
X-List-Received-Date: Thu, 11 Feb 2016 13:52:17 -0000
Content-Type: multipart/alternative; boundary=047d7b1635bf93d16d052b7edb4a

--047d7b1635bf93d16d052b7edb4a
Content-Type: text/plain; charset=UTF-8

On 11 February 2016 at 12:38, Woronicz, Bartosz ( NSN - PL/Wroclaw) <
bartosz.woronicz@nokia.com> wrote:

> many thanks for nice explanation. At my shallow research, I notice, that
> valgrind is somewhat special demanding packages with debugging symbols,
> sooo... I actually don't need all packages to be unstripped. Only those I
> am developing and testing. Therefore i might need create some class that
> will require debug symbols.
> And, propalby I will also need glibc with DBG symbols... or not ?
>

Yes, if you set INHIBIT_SYSROOT_STRIP then all of the sysroots will be
unstripped, but you'll want all the debug symbols for the libraries that
are used from the host (such as glibc).

Ross

--047d7b1635bf93d16d052b7edb4a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 February 2016 at 12:38, Woronicz, Bartosz ( NSN - PL/Wroclaw) <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:bartosz.woronicz@nokia.com" target=3D"_bla=
nk">bartosz.woronicz@nokia.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">many thanks for nic=
e explanation. At my shallow research, I notice,
    that valgrind is somewhat special demanding packages with debugging
    symbols, sooo... I actually don&#39;t need all packages to be
    unstripped. Only those I am developing and testing. Therefore i
    might need create some class that will require debug symbols. <br>
    And, propalby I will also need glibc with DBG symbols... or not ?<span =
class=3D""><br></span></div></blockquote></div><br>Yes, if you set INHIBIT_=
SYSROOT_STRIP then all of the sysroots will be unstripped, but you&#39;ll w=
ant all the debug symbols for the libraries that are used from the host (su=
ch as glibc).</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">Ross</div></div>

--047d7b1635bf93d16d052b7edb4a--
