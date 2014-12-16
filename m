Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 582B8E0082B; Tue, 16 Dec 2014 12:42:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB4CBE003AB
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 12:42:11 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id c9so10900148qcz.19
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 12:42:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Aq2uiufanNhokoxuoXxKMOki1GaM5vk2K78zx/bYlQo=;
	b=X0Uf+2wcOnKZk76Crig81nutjOdVKnVqz2Iu7XAqDP+YH3MOeccNxVj3EHuoJyn5dF
	pa64IpoakIJs9AAJhRHkw/64BOZ6LUBlfcElgMi/3gIGE6nmSf8enjb/D850rAbKEt8i
	q6sCpcApSG/BscBtcrc4duMq/QzwvqeNgAHPWJV7obrlStv8UKLaqIk0qhMi15v4mVye
	ThldJyfxIb2uowHpaTUisT2SKZ4zBP5YMDBHai4Ffqjq7utcDAjnMvD6Dzi0YFYGXPWz
	b02NLMCuCa8TWi3VHgS5udE3fI1cL5M5t8w5IWzRSSjhuwVug2xizrhz37Ibc91KTxHZ
	D10Q==
X-Gm-Message-State: ALoCoQnjNzixMhNbKLgl3miTOQ9uxO6BJ1cD7YYMyWWv3YhA3y9hYHK+13cRJZDqvC731eEVXzGq
X-Received: by 10.140.94.229 with SMTP id g92mr66685905qge.77.1418762530430;
	Tue, 16 Dec 2014 12:42:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 16 Dec 2014 12:41:50 -0800 (PST)
In-Reply-To: <95CF81BBD42FB348A182716C4D4310A80548C63D@G1W3650.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A80548C44C@G1W3650.americas.hpqcorp.net>
	<CAJTo0LZwnFS6h51KRMfXECzftLq8N1CdYx4c2ZPnUWnVbZECdA@mail.gmail.com>
	<95CF81BBD42FB348A182716C4D4310A80548C51C@G1W3650.americas.hpqcorp.net>
	<20141212151844.GF18879@ad.chargestorm.se>
	<95CF81BBD42FB348A182716C4D4310A80548C63D@G1W3650.americas.hpqcorp.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Dec 2014 20:41:50 +0000
Message-ID: <CAJTo0Lb5Kk_B-BkZXM0mmAtazjoWXA15sbJfVNAJJM2Q_h6+7w@mail.gmail.com>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package Feature compile/runtime dependency
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
X-List-Received-Date: Tue, 16 Dec 2014 20:42:13 -0000
Content-Type: multipart/alternative; boundary=001a113a0e8ea5c5d5050a5b640b

--001a113a0e8ea5c5d5050a5b640b
Content-Type: text/plain; charset=UTF-8

On 12 December 2014 at 15:44, Koehler, Yannick (HP Networking) <
yannick.koehler@hp.com> wrote:
>
> My hope, was that somehow, adding systemd to DISTRO_FEATURE would not only
> add the packages I need, but also add feature to some package like the
> kernel/libc that are required by such addition.
>

No, DISTRO_FEATURES don't change how eg libc and the kernel are built.
That said if you're building systemd, why are you using poky-tiny?  I doubt
you'll see much gain from poky-tiny + all the pieces to make systemd work
and plain poky (or the default distro configuration).

Ross

--001a113a0e8ea5c5d5050a5b640b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 December 2014 at 15:44, Koehler, Yannick (HP Networking) <span dir=3D=
"ltr">&lt;<a href=3D"mailto:yannick.koehler@hp.com" target=3D"_blank">yanni=
ck.koehler@hp.com</a>&gt;</span> wrote:<blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
id=3D":124" class=3D"a3s" style=3D"overflow:hidden">My hope, was that someh=
ow, adding systemd to DISTRO_FEATURE would not only add the packages I need=
, but also add feature to some package like the kernel/libc that are requir=
ed by such addition.<br></div></blockquote></div><br>No, DISTRO_FEATURES do=
n&#39;t change how eg libc and the kernel are built.=C2=A0 That said if you=
&#39;re building systemd, why are you using poky-tiny?=C2=A0 I doubt you&#3=
9;ll see much gain from poky-tiny + all the pieces to make systemd work and=
 plain poky (or the default distro configuration).</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Ross<br></div></div>

--001a113a0e8ea5c5d5050a5b640b--
