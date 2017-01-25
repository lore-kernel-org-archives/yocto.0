Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AA06E00C22; Wed, 25 Jan 2017 02:39:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.173 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73691E00BDA
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 02:39:45 -0800 (PST)
Received: by mail-qt0-f173.google.com with SMTP id l7so12895451qtd.1
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 02:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Dl0uFBSRPK40oHQq3c9ve2ZTHzfqXfyL6ZNTLQiLDbM=;
	b=peDPYHUWnexLN3Ezb1ee6GndZBir6MHmwiidO9jBGC41zJWi5pvPAENP9lvnvEXqei
	rnuCXlaehHpoa0bbeq37PyrjB3zL4bREa+DSIwOicrrfXO3XS6QqVWLqfm54oZSPBQof
	uKIrJ2ICNt/msWFNiQQbJyZj1NyqHGNOb/O7AEfIeruzZaAZIHh/d3C8YN+RNU6NCkEz
	rHMqz3L/sYGsUscMA+b0GUKfMBOPxJ+4kMmTuJlUp/rgGI+Wu6mOMgVXO6EEYk29sIEy
	S6eooP2ezgYvJT+gvW2JKY+X3rip8S/G+Z76bJxFo36110Ynnx9tdN9M9DorQuXeJqmz
	u+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Dl0uFBSRPK40oHQq3c9ve2ZTHzfqXfyL6ZNTLQiLDbM=;
	b=AHjPVMajfHZZSHgQrAMislElzxbxSNhLoDY6sNaBPaFfyHLg8HFaBajszBXjw0dgiy
	GrSUMmM4GFNfXIyspFHJNXb3fS8JzbHFoH4y6sXW6jK1ggzgL45NekL/88NASWDoOYJB
	WWM3zq9UdiuVlB+o16KPc9HT2i3GLw+omZT1PecF6qQEgaqDkvNisnZMwW9caF08Es4g
	OkaUkQ9ktqBZK0Dc/NVEztybquaV7vhQ44tkhEeHTgfJPe3CDxo4Jcel2A/q2OIHo2hK
	4Y++VNyr+IUiprfoqBiruYRIbZp8HHDnNAzY4hzfoNgsmwrhyRxX6NfAH01GY1OQvEXV
	AjLw==
X-Gm-Message-State: AIkVDXK8+fEklS7x9Cb3BQ8mPXeZR7WpCT0tFN7o4CUV2VnEqeD/PDNZY9wD6fMaW9Q/OAfdrZCbhWWPHKzYOjT8
X-Received: by 10.200.39.212 with SMTP id x20mr32057262qtx.109.1485340784505; 
	Wed, 25 Jan 2017 02:39:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Wed, 25 Jan 2017 02:39:24 -0800 (PST)
In-Reply-To: <32082733-57cb-09fd-3d28-d95a313b87e6@mlbassoc.com>
References: <32082733-57cb-09fd-3d28-d95a313b87e6@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Jan 2017 10:39:24 +0000
Message-ID: <CAJTo0LZuPw3gwQus78_6s2icWJyB4zTDXDLwbiLPwL-2NkAOKA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: More new messages
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
X-List-Received-Date: Wed, 25 Jan 2017 10:39:48 -0000
Content-Type: multipart/alternative; boundary=001a1135b542d4d15c0546e8d996

--001a1135b542d4d15c0546e8d996
Content-Type: text/plain; charset=UTF-8

On 25 January 2017 at 08:53, Gary Thomas <gary@mlbassoc.com> wrote:

> WARNING: libsndfile1-1.0.27-r0 do_package: Manifest
> /build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot
> not found?
>

FWIW I see these too, for intel-corei7-64.

Note how its looking for allarch when they clearly are not, alsa-lib is
TUNE_ARCH.

Ross

--001a1135b542d4d15c0546e8d996
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 January 2017 at 08:53, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":p8" class=3D"a3s aXjC=
H m159d50c75e5b9381">WARNING: libsndfile1-1.0.27-r0 do_package: Manifest /b=
uild/p0382_2016-01-13/tmp/ss<wbr>tate-control/manifest-allarch-<wbr>alsa-li=
b.populate_sysroot not found?<br></div></blockquote></div><br>FWIW I see th=
ese too, for intel-corei7-64.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Note how its looking for allarch when they clearly =
are not, alsa-lib is TUNE_ARCH.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></div>

--001a1135b542d4d15c0546e8d996--
