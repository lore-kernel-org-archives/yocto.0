Return-Path: <miketiri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AB36E00F58; Tue,  3 Jul 2018 01:40:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (miketiri[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF0A8E00DC3
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 01:40:42 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id k81-v6so2202176oib.4
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2018 01:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tfOCj7BsUfD0GVj9EChZkSLrBz/DuFxHtUi+FWPPAtE=;
	b=iTAtVOE8srP0HShfMp83+Q6U0HCae5wn4bj+Z78K0vg57p/n1RGjoXow+coeZSUQtw
	FDJKKBXlRx8t7B/zYVBMR08+TWnQJoeyfCJO3+G8L79h/H5CNrSDl8QSmDpRgP1F58kH
	02KVxd14MBFIHohddEAZgQ1FXT6UMtQ3ZUZTdW5x20iNpMML4iMbA+22pp4BB/KJA4E6
	cXhF/Xjx0p+jPrBHv5T3XOrn+JLNFIFfZcNqYV9/9SIsd9hYAg16S0jTxzDqZDBKVxXF
	dqXW5OUWvHf3ftbFP0aId4joPxp4M1xluvG26gF3ihYnwHudtbCYvd94mLESY+jRl0S7
	7cwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tfOCj7BsUfD0GVj9EChZkSLrBz/DuFxHtUi+FWPPAtE=;
	b=HbGsZW1qJQG4eGDQ5JsE1h0Gj0HgUtZjHCspGkT/9uxiTVcD1TpYt/FMzPcGuN8ZbT
	MblGnCNM6H1kUFJPNYEkb8dBLwdyJWpdDWX0F+e/jfAnihRCI4RMtKnRcZ1FFeAgQVIw
	6oEBpXr/xM+sfxOy+UHkelxhwF9Ny0bNVu2nAbU5sB34eu0UKAs1ipATT8iagBF7PkvD
	H/Hhx33WOa4VChJIqaj+LMHzyN1UoLbBhB8x72BzI3C+JoQvYm63WRueZrb8DjFhUsFn
	beTtXvbRW1aChTjTuwUZkv+axXvhENGjpygWsBGGhvHC2n1iVP+NeD5NYMK6L4NxW4o+
	LmvA==
X-Gm-Message-State: APt69E1CEEndQsFvSuk0AVYIByfhvAiHhkCGfv/MewQyWKvCrFKQAIDc
	xio2BC5Jh1ZIsdnSAMcI+hHweZZiPmPQPbQ3mtI=
X-Google-Smtp-Source: AAOMgpfPS0Oanm2jzENN8OKHHENnynuuywStHb+hDEUDkD1Y/EhFG6h83bZXtRKKcrzswwJq4FvhsAImLInh0fieTyk=
X-Received: by 2002:aca:3d43:: with SMTP id
	k64-v6mr18559003oia.166.1530607241826; 
	Tue, 03 Jul 2018 01:40:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAMDWK9W30-W2Ooo5yzAjEgJHT_xS9rcq9BiYhnhFC-Jo7L27YA@mail.gmail.com>
	<CAHUNapTMgE5pVfe77OfkPF=h_mcZCVZU_dp8vh8xKmzXpY30_A@mail.gmail.com>
In-Reply-To: <CAHUNapTMgE5pVfe77OfkPF=h_mcZCVZU_dp8vh8xKmzXpY30_A@mail.gmail.com>
From: Michele Tirinzoni <miketiri@gmail.com>
Date: Tue, 3 Jul 2018 10:40:30 +0200
Message-ID: <CAMDWK9UuDCrPM1T8HQSFTpN0Eout+P_50_LpGXQ0wKnJWgsXYw@mail.gmail.com>
To: twoerner@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Waveshare touchscreen
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
X-List-Received-Date: Tue, 03 Jul 2018 08:40:43 -0000
Content-Type: multipart/alternative; boundary="000000000000f0980a05701444d1"

--000000000000f0980a05701444d1
Content-Type: text/plain; charset="UTF-8"

Thanks Trevor. I don't see he zero in their supported device list, I will
try to contact them.
Anyway, the config.txt is just enough to be able to use the screen with
touch functionality ? No need to have any driver installed ?

On Tue, 3 Jul 2018 at 04:33, Trevor Woerner <twoerner@gmail.com> wrote:

> On Wed, Jun 27, 2018 at 7:38 AM, Michele Tirinzoni <miketiri@gmail.com>
> wrote:
>>
>> I saw in the documentation page that the Waveshare touchscreen is
>> supported.
>> Before buying one of those I'd like to know if anyone tried it recently
>> with a rpi zero w or if there's any known issue.
>>
>
> I added the support for the waveshare screen and use it regularly with a
> Raspberry Pi 3 (B and B+) 32-bit. My _latest_ build and test from master
> for RPi3B+-32 was just last week. Check the commit message for the specific
> one I'm using:
>
>
> https://github.com/agherzan/meta-raspberrypi/commit/da32aac453da278e254d37b816602410af85d162#diff-a8b738ce971c646d8c30f0d75c6c45b9
>
> I haven't tried it with the Zero, in fact, I haven't tried a Zero at all.
>

--000000000000f0980a05701444d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Thanks Trevor. I don&#39;t see he zero in their support=
ed device list, I will try to contact them.</div><div class=3D"gmail_defaul=
t" style=3D"font-family:arial,helvetica,sans-serif">Anyway, the config.txt =
is just enough to be able to use the screen with touch functionality ? No n=
eed to have any driver installed ?<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr">On Tue, 3 Jul 2018 at 04:33, Trevor Woerner &lt;<a h=
ref=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra=
"><div class=3D"gmail_quote">On Wed, Jun 27, 2018 at 7:38 AM, Michele Tirin=
zoni <span dir=3D"ltr">&lt;<a href=3D"mailto:miketiri@gmail.com" target=3D"=
_blank">miketiri@gmail.com</a>&gt;</span> wrote:<blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:arial,hel=
vetica,sans-serif">I saw in the documentation page that the Waveshare touch=
screen is supported.</div><div style=3D"font-family:arial,helvetica,sans-se=
rif">Before buying one of those I&#39;d like to know if anyone tried it rec=
ently with a rpi zero w or if there&#39;s any known issue.</div><div style=
=3D"font-family:arial,helvetica,sans-serif"></div></div></blockquote></div>=
<br></div><div class=3D"gmail_extra">I added the support for the waveshare =
screen and use it regularly with a Raspberry Pi 3 (B and B+) 32-bit. My _la=
test_ build and test from master for RPi3B+-32 was just last week. Check th=
e commit message for the specific one I&#39;m using:</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra"><a href=3D"https://github.co=
m/agherzan/meta-raspberrypi/commit/da32aac453da278e254d37b816602410af85d162=
#diff-a8b738ce971c646d8c30f0d75c6c45b9" target=3D"_blank">https://github.co=
m/agherzan/meta-raspberrypi/commit/da32aac453da278e254d37b816602410af85d162=
#diff-a8b738ce971c646d8c30f0d75c6c45b9</a><br></div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra">I haven&#39;t tried it with the Ze=
ro, in fact, I haven&#39;t tried a Zero at all.</div></div>
</blockquote></div>

--000000000000f0980a05701444d1--
