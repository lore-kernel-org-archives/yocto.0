Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C82A0E00897
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 06:26:23 -0800 (PST)
Received: by mail-oa0-f46.google.com with SMTP id l6so1817494oag.19
	for <yocto@yoctoproject.org>; Wed, 08 Jan 2014 06:26:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=DNUJiLkgPq45fip0avHFioxbJGxforwHO3UHSkUu6IM=;
	b=geSG5a5ixg9UIHGJVZt6wmSLDjWIv955o97LZT7zr5Eyd+6J/Fq1/YrZONMLHhokkq
	yXfcQX/vBxwi3b4dm6P/8kM/BYr6SxPOYs7aWWa5i/pg5TIgzwKP6hST3Ej52cLI2L9L
	WPO7Kf1DSvtrq984VxKeOCI2Kf1AHZ7w/8iO3ZjbJjrJDcof6u5iETdKO5tTj2e3htAn
	Rcf1WWENMWxxovLOMLquoj4KZD9MBjR4vuE/kKQzmkX/OQTwiqgXWXIhOoIGzkmGIzbY
	7reckkRDcqcxBu1ol2xqk7ok/76l1V5W5kTomcRufp96+r2p5JlauBllCTnNilxNfmcr
	cNdg==
X-Gm-Message-State: ALoCoQm6idNlIAfDy3jdoJj007Cn9KyoaEfFNf735lD7MT0e+q6PyOTykQ2AQ25gCmuFCwcNA9xN
X-Received: by 10.182.60.233 with SMTP id k9mr80441418obr.34.1389191182406;
	Wed, 08 Jan 2014 06:26:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.89.143 with HTTP; Wed, 8 Jan 2014 06:26:02 -0800 (PST)
In-Reply-To: <CANR6C55=yVTFG92rfS3Lujz1_2nhG=ogD_F2h79bt43hKX2C1A@mail.gmail.com>
References: <CANR6C56AqYgV-Fq1e14E0O-OjjUkkY9jcvgEuABocAYMzm338A@mail.gmail.com>
	<CAP71WjwpyEtN_2t30jx2vCwe+VTwRSpLFfd9FJqhpVn12dqNKw@mail.gmail.com>
	<CANR6C55=yVTFG92rfS3Lujz1_2nhG=ogD_F2h79bt43hKX2C1A@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 8 Jan 2014 15:26:02 +0100
Message-ID: <CAP71Wjw2Y3T=2ZRGD75q2jL7gisyH5h53qkPJ+hViUCs1o9R0A@mail.gmail.com>
To: "Nick D'Ademo" <nickdademo@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Creating a EXT4 rootfs instead of EXT3: How?
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
X-List-Received-Date: Wed, 08 Jan 2014 14:26:24 -0000
Content-Type: multipart/alternative; boundary=001a11c1e8b8f3ea5d04ef764676

--001a11c1e8b8f3ea5d04ef764676
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 8, 2014 at 11:55 AM, Nick D'Ademo <nickdademo@gmail.com> wrote:

> Thanks for the reply Nicolas.
>
> It seems the problem is that .hddimg uses EXT3 by default (after looking
> at image_types.bbclass).
>

yeah, you're right. ext3 is pretty much hard coded there (and in
image-live.bbclass)

> The ROOTFS type for my build is set in
> /meta/conf/machine/include/ia32-base.inc: IMAGE_FSTYPES += "live"
>
> Is there a way to make the HDDIMG use EXT4 instead?
>
i don't know if there is a technical reason why ext3 is being hardcoded.
right now it doesn't seem possible to easily use ext4.

--001a11c1e8b8f3ea5d04ef764676
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Jan 8, 2014 at 11:55 AM, Nick D&#39;Ademo <span dir=3D"ltr">&lt;<a =
href=3D"mailto:nickdademo@gmail.com" target=3D"_blank">nickdademo@gmail.com=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>Thanks for the reply Nicolas.<br><br></=
div>It seems the problem is that .hddimg uses EXT3 by default (after lookin=
g at image_types.bbclass).<br>

</blockquote><div><br></div><div>yeah, you&#39;re right. ext3 is pretty muc=
h hard coded there (and in image-live.bbclass)=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">

<p>The ROOTFS type for my build is set in /meta/conf/machine/include/ia32-b=
ase.inc: IMAGE_FSTYPES +=3D &quot;live&quot;</p>

<p>Is there a way to make the HDDIMG use EXT4 instead?</p></blockquote><div=
>i don&#39;t know if there is a technical reason why ext3 is being hardcode=
d. right now it doesn&#39;t seem possible to easily use ext4. =A0</div></di=
v>

<br><br></div></div>

--001a11c1e8b8f3ea5d04ef764676--
