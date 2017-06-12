Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DACFE00B27; Mon, 12 Jun 2017 00:50:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B4F4E00AE4
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 00:50:52 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id l6so8789876iti.1
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 00:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sSGAebWLF77q9Zu9NdqKUOpjXpQ5qey/ZXUC+Djoqaw=;
	b=txhyjBtNDogR735dHfzEhjFSdZ0ofwdu1q2MF7NpgMyVIbFF9DKZhiPLPUBFKTlPv6
	rI1zcJ0T7unPr4ioPw0BiJ+/5RCJ8o2ounlzkz1JRzc0p88d/zMZl0AY6NHMzcqImWHA
	MpcaNEEIB5FjI3DcUGyjozTbwtnhIOhSzEGlice+8LFp5vq9QOsThaS5Mjx4zpPoY3Nh
	tyB3ybmZ7dw2c8ym9d//Kw1Y1yz6JwJVCgWW1YK9eJ0dLUPr6JeN3tfyuwfU0zLdMJCH
	0NNDIFbkYVrSG8rmidL1LDTGKn5orN8svXOXRitB8beo2RRaRic4edjPl9SpOpmMJQkN
	Vy0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sSGAebWLF77q9Zu9NdqKUOpjXpQ5qey/ZXUC+Djoqaw=;
	b=qYUEHpA0ufm2pHC+Dh8jnHsIcsGZXAHgI/6V0LmknI1wMm2/tEL9pc9CfdsPczPoxo
	guRAA31D+P+3hN3cF9Jfm7eSLiYF58Oenjee/l5lpvyoRCVLeHHWbSsTSRgjcfyzQ9bD
	wLXkZds7PSFo8ZgehQyx06aslJAkBNf8UoX/XppRAAESse7FHF/ZAkWOd5Krr+wNj8pk
	n4eT0MRrXyCc5CEQLqECoWe82REkua/HGuu/+9YCzoi9Ati/YXdNjVvJ+lRrlsfZVZuA
	IH7h+gMlqhmrIGtrUuiMOwItTfR5DffeePfhqqWHK9V2CHZIRvYmaOSRFgqOmGnNd+VS
	43vw==
X-Gm-Message-State: AODbwcDzHOQwe4IHbGlrEJtMBu84cV7IG06CHVzJdcgGBVSRbXidMm7v
	hGqVbZQmxthGSfKTjS5M6ECH6RvyMOvt
X-Received: by 10.36.172.105 with SMTP id m41mr10761765iti.110.1497253851499; 
	Mon, 12 Jun 2017 00:50:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.20.130 with HTTP; Mon, 12 Jun 2017 00:50:21 -0700 (PDT)
In-Reply-To: <CAML1SccnQCtK0WQ8uauHLXhZO9Sc9e+sFYnmjoHoc_S0PbsczA@mail.gmail.com>
References: <CAML1SccnQCtK0WQ8uauHLXhZO9Sc9e+sFYnmjoHoc_S0PbsczA@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 12 Jun 2017 10:50:21 +0300
Message-ID: <CAHiDW_EM+xpcp9NpQAdWBDc1MN0YsseehKCumgZNJKmc83ny1Q@mail.gmail.com>
To: Michael Calve <michael.calve@vectare.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Wireshark but no Tshark?
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
X-List-Received-Date: Mon, 12 Jun 2017 07:50:55 -0000
Content-Type: multipart/alternative; boundary="94eb2c1faf44f54f270551be936f"

--94eb2c1faf44f54f270551be936f
Content-Type: text/plain; charset="UTF-8"

On 7 June 2017 at 20:59, Michael Calve <michael.calve@vectare.com> wrote:

> Hi, I've seen that Wireshark is portable to Yocto, however Tshark is not?
> Is there other/better software for reading pcaps and getting field data???
>

Hi,

tshark is part of wireshark: it should be built by the wireshark recipe in
meta-networking.

If you want a smaller footprint tool, try tcpdump (also in
meta-networking). It's not as featureful as tshark but uses the same
sniffing library and wireshark can display tcpdump results just fine.

Jussi

--94eb2c1faf44f54f270551be936f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 7=
 June 2017 at 20:59, Michael Calve <span dir=3D"ltr">&lt;<a href=3D"mailto:=
michael.calve@vectare.com" target=3D"_blank">michael.calve@vectare.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi, I&=
#39;ve seen that Wireshark is portable to Yocto, however Tshark is not?=C2=
=A0 Is there other/better software for reading pcaps and getting field data=
???</div></blockquote><div><br></div><div>Hi,</div><div><br></div><div>tsha=
rk is part of wireshark: it should be built by the wireshark recipe in meta=
-networking.</div><div><br></div><div>If you want a smaller footprint tool,=
 try tcpdump (also in meta-networking). It&#39;s not as featureful as tshar=
k but uses the same sniffing library and wireshark can display tcpdump resu=
lts just fine.</div><div><br></div><div>Jussi</div></div></div></div>

--94eb2c1faf44f54f270551be936f--
