Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D737AE00C89; Tue,  5 Sep 2017 07:03:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBD13E00C2B
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 07:03:36 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id u26so19896232wma.0
	for <yocto@yoctoproject.org>; Tue, 05 Sep 2017 07:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MCBrBcmNYLzgcWrX9dfkzMmshlPbeqF5/mSKuHM9WqM=;
	b=AQRoW4IZ5fJMKthftxyXaZHbB05M0RRDsKVFNyJb/1FVqfFY5Lv4P9vGFu1S66Vg2S
	BAHFhRXM+f+5CYNjCrrmwDfAzrdJIJSmXIM8G5dUyUyrg268/Bf+UaSLCVK9ZEuohc1E
	0DR+6RFHFW1PB2lWHc4cqwusi2tsCmA3KFaxxZWX1RtB7xwHjYPCOzEnaMVhzeSz0Wkc
	yv08g30p5rhHvTOJsYlIDv8i0WfOLQHDuO7NC12rjJYZoscc5hxZUXiIVZcOdDH2KDgC
	15FHJTYqZsePfL2RdWT1Cu3Z5u0nw5BuuSoKwMtAmW4LyPiOGAjghv3FPxKyYteoSmF6
	2VfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MCBrBcmNYLzgcWrX9dfkzMmshlPbeqF5/mSKuHM9WqM=;
	b=c2X53riKSeFNphGxLTb3rgYHvpZk08TAHyasjw+KNbihFLyrRBPyHUS5DyHGYeL3Zg
	b+GHjemr5CcpQ6xLnFD5/Sj0LV/y8/0KXkkh61V4OB9o2dYYFKMyq9fzKHfedMJ71y5O
	1t8rh4AI5Ia+9+YFwXRcHnly6MhsRvAYvOmUHkd5pWC/Wra7XckozMN022FrFmo+TM4/
	IOiD1HGxCNc3Y758PFvx2H0gw60sFNUgpK4xMFQVg73dcs6KYleeSpBCHYZ/sLz+j35M
	UUBNQ1OUXpe+9EAc5/Mxg70Af8xc+w5NuacW51G1y3OlfACU1SSAK2gXzlL5IO6ipPq5
	1ibQ==
X-Gm-Message-State: AHPjjUi7pmdMoWEIZizg0WMJ9vwBv9Sw3CN+NrZu61cbM6i00gBd7bsz
	W7OwWNV5ktBemMqCFwWECnY6VHQndw==
X-Google-Smtp-Source: ADKCNb7UefeiFwLMXRhVItwGjz63KB2D3p4+sbBPyFPJH3Fxn6nY7mFiR5GxZk8a0s/l97fNByoQE+pLKfLxklDVlqg=
X-Received: by 10.28.105.92 with SMTP id e89mr2211158wmc.65.1504620215164;
	Tue, 05 Sep 2017 07:03:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.218.197 with HTTP; Tue, 5 Sep 2017 07:03:34 -0700 (PDT)
In-Reply-To: <CAJTo0LZktt_mMu9rYFX0RtUnWT6yRAHv99HQW2VqJyOdLw8Twg@mail.gmail.com>
References: <CAGAf8Lyitxw_adOzO7Rru6ho1zPOZ3k+Ese_bMsw=UJQrhbh7Q@mail.gmail.com>
	<CAJTo0LZktt_mMu9rYFX0RtUnWT6yRAHv99HQW2VqJyOdLw8Twg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 5 Sep 2017 16:03:34 +0200
Message-ID: <CAGAf8LzSLL=THx7FQGn76Gr8gf_O8mJ5iUZqK=brii-2wcVSsg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: The differences between rpm 4.x and rpm 5.x in Morty (Poky 2.2)
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
X-List-Received-Date: Tue, 05 Sep 2017 14:03:37 -0000
Content-Type: multipart/alternative; boundary="001a114788de726ce6055871b1bd"

--001a114788de726ce6055871b1bd
Content-Type: text/plain; charset="UTF-8"

Hello Ross,

Copy that. I can add smartpm for now for Morty, there is still time to
experiment. I guess, I'll even wait for Rocko (Poky 2.4). I guess, this one
will come October/November time frame.

I still need to learn (much) more, to understand beyond classical Linux
environment I am very well familiar with. Yocto is yet another, different
beast for configuring and making final distros... :-)

Thank you,
Zoran

On Mon, Sep 4, 2017 at 4:33 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 4 September 2017 at 14:25, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> How can I achieve this for Morty? I know that I need to place DNF recipes
>> into recipes-devtools/.
>>
>> Where should I place rpm 4.x, so it'll have only DNF to be dependent from
>> it?
>>
>
> There were about 30 patches involved in the smart to DNF migration and
> you'd need to backport most of them if you wanted to use dnf with morty.
>
> If you *need* to use Morty then you'll have to use RPM+Smart (or dpkg, or
> opkg).  If you want to use RPM+DNF then upgrading to Pyro is the only
> sensible way.
>
> Ross
>

--001a114788de726ce6055871b1bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello Ross,<br><br></div>Copy that. I =
can add smartpm for now for Morty, there is still time to experiment. I gue=
ss, I&#39;ll even wait for Rocko (Poky 2.4). I guess, this one will come Oc=
tober/November time frame.<br><br></div>I still need to learn (much) more, =
to understand beyond classical Linux environment I am very well familiar wi=
th. Yocto is yet another, different beast for configuring and making final =
distros... :-)<br><br></div>Thank you,<br></div>Zoran<br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Sep 4, 2017 at 4:33=
 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel=
.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr"><span class=3D"">On 4 September=
 2017 at 14:25, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto=
:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail=
.com</a><wbr>&gt;</span> wrote:<br></span><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><span class=3D""><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div d=
ir=3D"ltr"><div><div><div><div><div><div><div><div><div><div>How can I achi=
eve this for Morty? I know that I need to place DNF recipes into recipes-de=
vtools/.<br></div></div></div></div></div></div></div><br></div>Where shoul=
d I place rpm 4.x, so it&#39;ll have only DNF to be dependent from it?</div=
></div></div></blockquote><div><br></div></span><div>There were about 30 pa=
tches involved in the smart to DNF migration and you&#39;d need to backport=
 most of them if you wanted to use dnf with morty.</div><div><br></div><div=
>If you *need* to use Morty then you&#39;ll have to use RPM+Smart (or dpkg,=
 or opkg).=C2=A0 If you want to use RPM+DNF then upgrading to Pyro is the o=
nly sensible way.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div>=
<br></div><div>Ross</div></font></span></div></div></div>
</blockquote></div><br></div>

--001a114788de726ce6055871b1bd--
