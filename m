Return-Path: <nick83ola@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79989E01404; Mon, 16 Jul 2018 01:32:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nick83ola[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57FDFE00D44
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 01:32:22 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id y207-v6so73228632oie.13
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 01:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9N9dASv3N3IevxZZ0HXabzmkv7IZ/CnNBLA7mnOSZzY=;
	b=T8+0rWFTkVyoOzYb6HSEiAV6ZatGH+qL8e+spnSXHwGgBHhkkKbSQ/0wVJ5XW8ZFM7
	4qKmx301SAr9LhNxP/hoYEZGhuS/lUtjNQ9q9zORlhGeKH6+Bshv/X0TEoyoV/ekbUWl
	v1ihaM/urACVWPZ9AJKvOw1Rziy/I+9+Jmv/E7uEVu1VdqnP4Mlrs5ma/qYHb72WzwSS
	CMmlLRKH1sEt/TxCl/A779rtrgVNAIHoZBpeLMmJbJ5jdhGh8NIAYdn99lGTAZm5E0SY
	0MkJ22MMpVlRJWiS5oKh1eHAjT1aY0KvSDCtVy7gBDvjSiwJ8f2VnBm0wVMHobHKJ7Yh
	M2Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9N9dASv3N3IevxZZ0HXabzmkv7IZ/CnNBLA7mnOSZzY=;
	b=sVV3svvArmZ1FSUjpdDugjHIoFovcbAIFQR1s9Y03qByaVMbmSbN4L6pJiQMXg9aOb
	4rnJBqGjy+B7BKXrkcRcctMEHa75mLD37w2R12gMYlkj7+7gpuo6Dlp5rv/zRr6O8DzJ
	x3Lj4hIkby7Jnww+YBlhql21nqQ4sp+XowhE+JczkQ1BFPxD/Wbu2i7BvwGOLoeHAAqL
	Nrps6xQkgyEuyaijVIWil29kKLfT3JxMKXrndHIMiFtbKPif7sK/a77t330uMiNJWlDc
	NK5OVptYa2ef2mFqiY9sNNcvFTDaD7i6D+sWmL+bGF0YeNDUNl4DQp2g1PWEXnjVxHoI
	UZJQ==
X-Gm-Message-State: AOUpUlFgq7mm0GFAh1b95O7EZawH7x1RetxRYhUJDRd7P636tVI+8V64
	//fzceAf2Le6NGqZ9gySqHjkh4Kov3ttC4FMcf7ZwA==
X-Google-Smtp-Source: AAOMgpefSMJEw/Xl9yOnxN68bl9nUtpXhq66vqChyo4j/h7hGr85QMUxmA9lzqjibUgXdImGFOOtzBTUZASHDk61Vss=
X-Received: by 2002:aca:cd84:: with SMTP id
	d126-v6mr18413697oig.325.1531729942298; 
	Mon, 16 Jul 2018 01:32:22 -0700 (PDT)
MIME-Version: 1.0
References: <362c8e90951aaa3477aca5dbb7e02a0f@multiconn.it>
In-Reply-To: <362c8e90951aaa3477aca5dbb7e02a0f@multiconn.it>
From: nick83ola <nick83ola@gmail.com>
Date: Mon, 16 Jul 2018 09:32:10 +0100
Message-ID: <CABPh3UOSV95v__-V+uYPSNsZ5GSxYjpqtgjbEm2+4e9K405uwg@mail.gmail.com>
To: riccardo.casagrande@multiconn.it
Cc: yocto@yoctoproject.org
Subject: Re: IMX6Q add new sound simple sound card
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
X-List-Received-Date: Mon, 16 Jul 2018 08:32:24 -0000
Content-Type: multipart/alternative; boundary="0000000000001a44f9057119abdc"

--0000000000001a44f9057119abdc
Content-Type: text/plain; charset="UTF-8"

Hi,
how is your sound card connected?
If you look at the devicetree for a sound card to work you have to configure

   - system clock
   - device that handle the communication with the sound card (f ex i2s, or
   i2c or usb, or whatever) (sound-dai)
   - the soundcard itself (codec?)

So you need more information regarding your hardware, the codec, how is
connected, etc etc

Look at the source of the simple audio card driver and maybe at some other
driver in the kernel source

Cheers
Nick

-----------------------------------------------------------------------------------------------------
sound {
*simple-audio-card,cpu* {
sound-dai = <&*sh_fsi2 0*>;
};

dailink0_master: simple-audio-card,*codec* {
sound-dai = <&*ak4648*>;
clocks = <&*osc*>;
};
};

&i2c0 {
ak4648: ak4648@12 {
#sound-dai-cells = <0>;
*compatible = "asahi-kasei,ak4648";*
reg = <0x12>;
};
};

sh_fsi2: sh_fsi2@ec230000 {
#sound-dai-cells = <1>;
*compatible = "renesas,sh_fsi2";*
reg = <0xec230000 0x400>;
interrupt-parent = <&gic>;
interrupts = <0 146 0x4>;
};



On Thu, 5 Jul 2018 at 16:13, Riccardo Casagrande <
riccardo.casagrande@multiconn.it> wrote:

>
> Hello all,
>
> I'm new to Linux/Yocto world. I'm working on iMX6Q and I need to add a new
> sound card and recognized from alsamixer.
> I spent days on internet looking for examples and tutorials but at the
> moment alsa never see my sound card.
> This is one of the tutorials I followed
> https://elixir.bootlin.com/linux/v4.5/source/Documentation/devicetree/bindings/sound/simple-card.txt
>
>
> What I've done?
> - Activated support for generic sound board on menuconfig
> - Added new "sound" node in device tree file with minimal
> properties/subnotes
> - Compiled the kernel
> - Compiled and flashed the image
>
>
> but alsamixer still doesn't recognize my sound card, what am I missing?
>
>
> Thanks.
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000001a44f9057119abdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>how is your sound card connected?<br><div>If you lo=
ok at the devicetree for a sound card to work you have to configure</div><d=
iv><ul><li>system clock</li><li>device that handle the communication with t=
he sound card (f ex i2s, or i2c or usb, or whatever) (sound-dai)<br></li><l=
i>the soundcard itself (codec?)</li></ul></div><div>So you need more inform=
ation regarding your hardware, the codec, how is connected, etc etc</div><d=
iv></div><div><br></div><div>Look at the source of the simple audio card dr=
iver and maybe at some other driver in the kernel source<br></div><div><br>=
</div><div>Cheers</div><div>Nick<br></div><div><br></div><div>-------------=
---------------------------------------------------------------------------=
-------------<br></div>sound {<br>	<b>simple-audio-card,cpu</b> {<br>		soun=
d-dai =3D &lt;&amp;<b>sh_fsi2 0</b>&gt;;<br>	};<br><br>	dailink0_master: si=
mple-audio-card,<b>codec</b> {<br>		sound-dai =3D &lt;&amp;<b>ak4648</b>&gt=
;;<br>		clocks =3D &lt;&amp;<b>osc</b>&gt;;<br>	};<br>};<br><br>&amp;i2c0 {=
<br>	ak4648: ak4648@12 {<br>		#sound-dai-cells =3D &lt;0&gt;;<br>		<b>compa=
tible =3D &quot;asahi-kasei,ak4648&quot;;</b><br>		reg =3D &lt;0x12&gt;;<br=
>	};<br>};<br><br>sh_fsi2: sh_fsi2@ec230000 {<br>	#sound-dai-cells =3D &lt;=
1&gt;;<br>	<b>compatible =3D &quot;renesas,sh_fsi2&quot;;</b><br>	reg =3D &=
lt;0xec230000 0x400&gt;;<br>	interrupt-parent =3D &lt;&amp;gic&gt;;<br>	int=
errupts =3D &lt;0 146 0x4&gt;;<br>};<br><br></div><br><br><div class=3D"gma=
il_quote"><div dir=3D"ltr">On Thu, 5 Jul 2018 at 16:13, Riccardo Casagrande=
 &lt;<a href=3D"mailto:riccardo.casagrande@multiconn.it">riccardo.casagrand=
e@multiconn.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Hello all,<br>
=C2=A0<br>
I&#39;m new to Linux/Yocto world. I&#39;m working on iMX6Q and I need to ad=
d a new sound card and recognized from alsamixer.<br>
I spent days on internet looking for examples and tutorials but at the mome=
nt alsa never see my sound card.<br>
This is one of the tutorials I followed <a href=3D"https://elixir.bootlin.c=
om/linux/v4.5/source/Documentation/devicetree/bindings/sound/simple-card.tx=
t" rel=3D"noreferrer" target=3D"_blank">https://elixir.bootlin.com/linux/v4=
.5/source/Documentation/devicetree/bindings/sound/simple-card.txt</a><br>
<br>
<br>
What I&#39;ve done?<br>
- Activated support for generic sound board on menuconfig<br>
- Added new &quot;sound&quot; node in device tree file with minimal propert=
ies/subnotes<br>
- Compiled the kernel<br>
- Compiled and flashed the image<br>
<br>
<br>
but alsamixer still doesn&#39;t recognize my sound card, what am I missing?=
<br>
<br>
<br>
Thanks.<br>
<br>
<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000001a44f9057119abdc--
