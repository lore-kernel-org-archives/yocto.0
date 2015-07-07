Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 189FCE00A21; Tue,  7 Jul 2015 01:29:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A364E009FD
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 01:29:30 -0700 (PDT)
Received: by qkbp125 with SMTP id p125so134682040qkb.2
	for <yocto@yoctoproject.org>; Tue, 07 Jul 2015 01:29:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=VwtKRa+DUrKNvhj38qJRv5VPs1dfnnWMjegcLEIYJ8M=;
	b=g1pdCyLoaFd795FjUn6IvFyRDw/Bfvur654zBdza/G7D2l4CN89a50lzIIsI3XGpx/
	dfaTCpeAYAIxNO73qBUpCMAD/s0cKtYi3YfM/uxhRr+evAJcHYr/BXf7lQzz2jgbqMXN
	QueNRySHu58FBQKqFTlJJ+vK4YgAb1UGj7/3pUoqqcJqyVWlRMKCLVly14bRJPL1DlVU
	18gwc4ysPIw0+3vVeZKKI7+S8eMl+gKoITnoAwAQLBH7+iZRHeWxrZnOf2hKuTbNwgZ7
	Dgc07o/D/xWZUeHriztcUQi4hyNwcG7tPF8o2xhdAXA4AduFqnxzxQYxis5eIHjr8QDm
	w4XQ==
X-Gm-Message-State: ALoCoQmUOMsqUA0lNkmhZU/NxI/+U42elFPd7SoD+tMv308FwXBeszRRTtU3sdOz9Sh8ioLeyHgG
X-Received: by 10.55.53.193 with SMTP id c184mr4766986qka.62.1436257769545;
	Tue, 07 Jul 2015 01:29:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 7 Jul 2015 01:29:10 -0700 (PDT)
In-Reply-To: <87vbdwy88m.fsf@weregild.amer.corp.natinst.com>
References: <alpine.LFD.2.11.1502190508290.29947@localhost>
	<CAF3SDA6sUY=4cg-pihtftzTNDREm5cKMS7MqQp4DJ9M81ez5UQ@mail.gmail.com>
	<87vbdwy88m.fsf@weregild.amer.corp.natinst.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Jul 2015 09:29:10 +0100
Message-ID: <CAJTo0Lb1Nth4VGocNqTDWFnrzO4_FGFbeg6Akk7ZmSvFLPP6Ew@mail.gmail.com>
To: Richard Tollerton <rich.tollerton@ni.com>
Cc: OE-core <openembedded-core@lists.openembedded.org>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [OE-core] [PATCH] cross-localedef-native_2.20.bb: fix for gcc5
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
X-List-Received-Date: Tue, 07 Jul 2015 08:29:31 -0000
Content-Type: multipart/alternative; boundary=001a11476f1428fdbc051a44d28c

--001a11476f1428fdbc051a44d28c
Content-Type: text/plain; charset=UTF-8

On 7 July 2015 at 03:54, Richard Tollerton <rich.tollerton@ni.com> wrote:

> The build of cross-localedef-native is observed to fail under gcc5 hosts
> with multiple definition errors, e.g.:
>

Is this patch intended for fido?  Master doesn't have 2.20 anymore (2.21)
and I believe that works with gcc5 hosts.

Ross

--001a11476f1428fdbc051a44d28c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 July 2015 at 03:54, Richard Tollerton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:rich.tollerton@ni.com" target=3D"_blank">rich.tollerton@ni.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2es" class=
=3D"a3s" style=3D"overflow:hidden">The build of cross-localedef-native is o=
bserved to fail under gcc5 hosts<br>
with multiple definition errors, e.g.:<br></div></blockquote></div><br>Is t=
his patch intended for fido?=C2=A0 Master doesn&#39;t have 2.20 anymore (2.=
21) and I believe that works with gcc5 hosts.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11476f1428fdbc051a44d28c--
