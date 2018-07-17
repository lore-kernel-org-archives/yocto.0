Return-Path: <nick83ola@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB3BE01448; Tue, 17 Jul 2018 02:25:19 -0700 (PDT)
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
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73B9FE00AD8
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 02:25:18 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id w126-v6so749152oie.7
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 02:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=V1Jcb6LAM4+gyAAeCYndSqPDeua2eWd0mewSA3mwA98=;
	b=Vn/5EQteuJZ7MMx689D0a0D6W+RRF5OexjkTNA/djpcBe9eCEnKfq+XkZ1GI7cPJ2R
	pApWLZ3LK4MgNQXHN0TAEIYf/bW7skMAhz79eXfw9M/LEsJX8Z6t8K7U96nG2pSGX+Bi
	ek2lN5MmTLlGQS/z2EFsp0m1cnCIPVBritvaKDjlHCNguuFTk6uYRygUB3qCU2skvdHf
	aM1xxPXL1Z4K5T3Dd81GPsVi1xB49yEn7eigghgdQmvYhwACPwdusQ+LMYc54R9jJ1c9
	ifQaRNynbwxRo3rgcj8iO/JIj+aqffM9jm/BXuiens+9zcPKw0hjeLQbsQibnf4SoA8Q
	CmxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=V1Jcb6LAM4+gyAAeCYndSqPDeua2eWd0mewSA3mwA98=;
	b=L4R+0IUx68kkD/5PQcTvdtxDczoTafmXPtfXpAtoZRRbM92sjtst+FIc5iD/3ThrN8
	b9W/HT/7L6IdpWI8hGRqFsfOVFgj5iO7L+R1p22rSEaOIVefpsQdgwGPgdUO75jTaBz5
	qu9oXysXGt9rHQSdfK7rUPS1vBC69IjKgSxwXUoB0/l6qaSCdz3XAqVvw9OOlD1tNIx9
	XTfqTj6FJltFSnSEuIQVoc2OG/OUigCtfjkymTMoiuB8WYjSw41kxEXiAHlwA5tWBKUx
	5NXFa1oFiC7oYrmD0vOF+Cpjf25hPRGze2u4XYqJ42F2o7m2JE+rqs0AEFZyCggqxhve
	FD7Q==
X-Gm-Message-State: AOUpUlGJWwj1/wKyZ9faXpWm/nUBKM52z/7j/qqphmiPgYqVxCJY5BGN
	tGGcQwOY8Qx36ust9a+8cPDbgB4OVMjTiv07Q/QlaQ==
X-Google-Smtp-Source: AAOMgpc4rmKhpdB3EHqPduoSv6ik6gIzLAGEjD+Y9b/WmqvvtQfMK+vdKKaLDyBXzl9W2qgdsncvLGyRVL3yGCbLnCU=
X-Received: by 2002:aca:4455:: with SMTP id
	r82-v6mr876564oia.260.1531819517689; 
	Tue, 17 Jul 2018 02:25:17 -0700 (PDT)
MIME-Version: 1.0
References: <362c8e90951aaa3477aca5dbb7e02a0f@multiconn.it>
	<CABPh3UOSV95v__-V+uYPSNsZ5GSxYjpqtgjbEm2+4e9K405uwg@mail.gmail.com>
	<eb7b2d7e7e26216676b91b86d2d33b14@multiconn.it>
In-Reply-To: <eb7b2d7e7e26216676b91b86d2d33b14@multiconn.it>
From: nick83ola <nick83ola@gmail.com>
Date: Tue, 17 Jul 2018 10:25:06 +0100
Message-ID: <CABPh3UMTUUkcF2LVTOXviJdXKHrVPLtNDjSX3hUr=9fwtHEexA@mail.gmail.com>
To: riccardo.casagrande@multiconn.it
Cc: yocto@yoctoproject.org
Subject: Re: [Spam - Sospetto] Re: IMX6Q add new sound simple sound card
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
X-List-Received-Date: Tue, 17 Jul 2018 09:25:19 -0000
Content-Type: multipart/alternative; boundary="00000000000036454905712e8629"

--00000000000036454905712e8629
Content-Type: text/plain; charset="UTF-8"

Hi,
the chip has his internal "codec" you can see from the datasheet that has
an i2s for the audio and an i2c interface for configuration.
the codec that you select *ak4648* needs an initialization phase that is
done usually via i2c.
If the driver can't find the codec it will simply disable itself (and you
don't see the alsa audio card)

First try to make the dummy codec work.
If its working you should be able to see that alsa recognize the dummy
soundcard and to be able to play something and see the i2s signal on the
board with an oscilloscope/logic analyzer

After that you probably need to develop a codec driver for that particular
chip.

Probably the alsa mailing list is the right place to get help regarding
this.

You can have a look at my previous post on those topics (I was in the same
boat as you :-) )
https://community.nxp.com/thread/391216
http://mailman.alsa-project.org/pipermail/alsa-devel/2016-May/108068.html

Cheers
Nick



On Mon, 16 Jul 2018 at 10:38, Riccardo Casagrande <
riccardo.casagrande@multiconn.it> wrote:

> Hello Nick
>
> the i.MX6Q is not connected to a codec but directly to 3 FDA2100 from
> STMicroelectronics, these chips are digital power amplifiers. On input I
> have 2 input from ADCs.
> I wrote several sound nodes but at moment the best result is no error at
> boot, the sound card listed under /proc/device-tree but not in alsa.
>
> This is the device-tree sub node
>
> sound-fda2100 {
>         compatible = "simple-audio-card";
>         simple-audio-card,name = "MTC-FDA2100-Card";
>         simple-audio-card,format = "i2s";
>         simple-audio-card,widgets =
>             "Microphone", "Microphone Jack",
>             "Headphone", "Headphone Jack",
>             "Speaker", "External Speaker";
>         simple-audio-card,routing =
>             "MIC_IN", "Microphone Jack",
>             "Headphone Jack", "HP_OUT",
>             "External Speaker", "LINE_OUT";
>
>         simple-audio-card,bitclock-master = <&cpu_dai>;
>             simple-audio-card,frame-master = <&cpu_dai>;
>             cpu_dai: simple-audio-card,cpu {
>                 sound-dai = <&ssi1 0>;
>             };
>            codec_dai: simple-audio-card,codec {
>                 sound-dai = <&codec_test>;
>             };
>     };
>
> codec_test: codec_test {
>     compatible = "linux,snd-soc-dummy";
>         #sound-dai-cells = <0>;
>      };
>
> And last week I found that "dummy codec is not supported in NXP linux
> release" as reported here https://community.nxp.com/thread/466938
>
> ------------------------------
> ----- Messaggio Originale -----
> Da: "nick83ola" <nick83ola@gmail.com>
> A: riccardo.casagrande@multiconn.it
> Cc: yocto@yoctoproject.org
> Data: 16/07/2018 10:37
> Oggetto: [Spam - Sospetto] Re: [yocto] IMX6Q add new sound simple sound
> card
>
> Hi,
> how is your sound card connected?
> If you look at the devicetree for a sound card to work you have to
> configure
>
>    - system clock
>    - device that handle the communication with the sound card (f ex i2s,
>    or i2c or usb, or whatever) (sound-dai)
>    - the soundcard itself (codec?)
>
>
> So you need more information regarding your hardware, the codec, how is
> connected, etc etc
>
>
>
> Look at the source of the simple audio card driver and maybe at some other
> driver in the kernel source
>
>
>
> Cheers
> Nick
>
>
>
> -----------------------------------------------------------------------------------------------------
>
>
> sound {
> * simple-audio-card,cpu* {
> sound-dai = <& * sh_fsi2 0* >;
> };
>
> dailink0_master: simple-audio-card, * codec* {
> sound-dai = <& * ak4648* >;
> clocks = <& * osc* >;
> };
> };
>
> &i2c0 {
> ak4648: ak4648@12 {
> #sound-dai-cells = <0>;
> * compatible = "asahi-kasei,ak4648";*
> reg = <0x12>;
> };
> };
>
> sh_fsi2: sh_fsi2@ec230000 {
> #sound-dai-cells = <1>;
> * compatible = "renesas,sh_fsi2";*
> reg = <0xec230000 0x400>;
> interrupt-parent = <&gic>;
> interrupts = <0 146 0x4>;
> };
>
>
>
>
> On Thu, 5 Jul 2018 at 16:13, Riccardo Casagrande <
> riccardo.casagrande@multiconn.it  <riccardo.casagrande@multiconn.it> >
> wrote:
>
>
>>
>> Hello all,
>>
>> I'm new to Linux/Yocto world. I'm working on iMX6Q and I need to add a
>> new sound card and recognized from alsamixer.
>> I spent days on internet looking for examples and tutorials but at the
>> moment alsa never see my sound card.
>> This is one of the tutorials I followed
>> https://elixir.bootlin.com/linux/v4.5/source/Documentation/devicetree/bindings/sound/simple-card.txt
>> <https://elixir.bootlin.com/linux/v4.5/source/Documentation/devicetree/bindings/sound/simple-card.txt>
>>
>>
>> What I've done?
>> - Activated support for generic sound board on menuconfig
>> - Added new "sound" node in device tree file with minimal
>> properties/subnotes
>> - Compiled the kernel
>> - Compiled and flashed the image
>>
>>
>> but alsamixer still doesn't recognize my sound card, what am I missing?
>>
>>
>> Thanks.
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org  <yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>> <https://lists.yoctoproject.org/listinfo/yocto>
>>
>
>
>

--00000000000036454905712e8629
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>the chip has his internal &quot;codec&quot; you ca=
n see from the datasheet that has an i2s for the audio and an i2c interface=
 for configuration.</div><div>the codec that you select=C2=A0<b style=3D"fo=
nt-size:small;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial">ak4648</b><span style=3D"font-size:small;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial">=C2=A0needs an initialization phase that is done usuall=
y via i2c.</span></div><div><span style=3D"font-size:small;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al">If the driver can&#39;t find the codec it will simply disable itself (a=
nd you don&#39;t see the alsa=C2=A0audio card)</span></div><div><br></div><=
div>First try to make the dummy codec work.</div><div>If=C2=A0its working y=
ou should be able to see that alsa recognize the dummy soundcard and to be =
able to play something and see the i2s signal on the board with an oscillos=
cope/logic analyzer</div><div><br></div><div>After that you probably need t=
o develop a codec driver for that particular chip.</div><div><br></div><div=
>Probably the alsa mailing list is the right place to get help regarding th=
is.</div><div><br></div><div>You can have a look at my previous post on tho=
se topics (I was in the same boat as you :-) )=C2=A0</div><div><a href=3D"h=
ttps://community.nxp.com/thread/391216">https://community.nxp.com/thread/39=
1216</a><br></div><div><a href=3D"http://mailman.alsa-project.org/pipermail=
/alsa-devel/2016-May/108068.html">http://mailman.alsa-project.org/pipermail=
/alsa-devel/2016-May/108068.html</a><br></div><div><br></div><div>Cheers</d=
iv><div>Nick</div><div><br></div><div><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr">On Mon, 16 Jul 2018 at 10:38, Riccardo Casagrand=
e &lt;<a href=3D"mailto:riccardo.casagrande@multiconn.it">riccardo.casagran=
de@multiconn.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
>Hello Nick</div><div><br></div><div>the i.MX6Q is not connected to a codec=
 but directly to 3 FDA2100 from STMicroelectronics, these chips are digital=
 power amplifiers. On input I have 2 input from ADCs.</div><div>I wrote sev=
eral sound nodes but at moment the best result is no error at boot, the sou=
nd card listed under /proc/device-tree but not in alsa.</div><div><br></div=
><div>This is the device-tree sub node</div><div><br></div><div>sound-fda21=
00 {<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 compatible =3D &quot;simple-a=
udio-card&quot;;<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 simple-audio-card=
,name =3D &quot;MTC-FDA2100-Card&quot;;<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 simple-audio-card,format =3D &quot;i2s&quot;;<br>=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 simple-audio-card,widgets =3D<br>=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;Microphone&quot;, &quot;Microphone=
 Jack&quot;,<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &q=
uot;Headphone&quot;, &quot;Headphone Jack&quot;,<br>=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;Speaker&quot;, &quot;External Spea=
ker&quot;;<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 simple-audio-card,routi=
ng =3D<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;MI=
C_IN&quot;, &quot;Microphone Jack&quot;,<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;Headphone Jack&quot;, &quot;HP_OUT&quot;,<b=
r>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;External S=
peaker&quot;, &quot;LINE_OUT&quot;;<br><br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 simple-audio-card,bitclock-master =3D &lt;&amp;cpu_dai&gt;;<br>=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 simple-audio-card,fra=
me-master =3D &lt;&amp;cpu_dai&gt;;<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 cpu_dai: simple-audio-card,cpu {<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 sound-dai=
 =3D &lt;&amp;ssi1 0&gt;;<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 };<br>=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 codec=
_dai: simple-audio-card,codec {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 sound-dai =3D &lt;&amp;codec_test=
&gt;;<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };<br>=C2=
=A0=C2=A0=C2=A0 };</div><div><br></div><div>codec_test: codec_test {<br>=C2=
=A0=C2=A0=C2=A0 compatible =3D &quot;linux,snd-soc-dummy&quot;;<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #sound-dai-cells =3D &lt;0&gt;;<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 };</div><div><br></div><div>And last week I found tha=
t &quot;dummy codec is not supported in NXP linux release&quot; as reported=
 here <a href=3D"https://community.nxp.com/thread/466938" target=3D"_blank"=
>https://community.nxp.com/thread/466938</a></div><div><br></div><blockquot=
e class=3D"m_-6139776710330808759reply_block" style=3D"border-left:2px soli=
d blue;margin-left:1em;padding-left:1em"><hr size=3D"1">----- Messaggio Ori=
ginale -----<br>Da: &quot;nick83ola&quot; &lt;<a href=3D"mailto:nick83ola@g=
mail.com" target=3D"_blank">nick83ola@gmail.com</a>&gt;<br>A: <a href=3D"ma=
ilto:riccardo.casagrande@multiconn.it" target=3D"_blank">riccardo.casagrand=
e@multiconn.it</a><br>Cc: <a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a><br>Data: 16/07/2018 10:37<br>Oggetto=
: [Spam - Sospetto] Re: [yocto] IMX6Q add new sound simple sound card<br><b=
r>

<div dir=3D"ltr">
Hi,
<br>
how is your sound card connected?
<br>

<div>
If you look at the devicetree for a sound card to work you have to configur=
e=C2=A0</div>

<div>
<ul>
<li>
system clock</li>
<li>
device that handle the communication with the sound card (f ex i2s, or i2c =
or usb, or whatever) (sound-dai)
<br>
</li>
<li>
the soundcard itself (codec?)</li>
</ul>
=C2=A0</div>

<div>
So you need more information regarding your hardware, the codec, how is con=
nected, etc etc=C2=A0</div>

<div>
=C2=A0</div>

<div>
<br>
=C2=A0</div>

<div>
Look at the source of the simple audio card driver and maybe at some other =
driver in the kernel source
<br>
=C2=A0</div>

<div>
<br>
=C2=A0</div>

<div>
Cheers=C2=A0</div>

<div>
Nick
<br>
=C2=A0</div>

<div>
<br>
=C2=A0</div>

<div>
---------------------------------------------------------------------------=
--------------------------
<br>
=C2=A0</div>
sound {
<br>

<b>
simple-audio-card,cpu</b>
 {
<br>
sound-dai =3D &lt;&amp;
<b>
sh_fsi2 0</b>
&gt;;
<br>
};
<br>

<br>
dailink0_master: simple-audio-card,
<b>
codec</b>
 {
<br>
sound-dai =3D &lt;&amp;
<b>
ak4648</b>
&gt;;
<br>
clocks =3D &lt;&amp;
<b>
osc</b>
&gt;;
<br>
};
<br>
};
<br>

<br>
&amp;i2c0 {
<br>
ak4648: ak4648@12 {
<br>
#sound-dai-cells =3D &lt;0&gt;;
<br>

<b>
compatible =3D &quot;asahi-kasei,ak4648&quot;;</b>

<br>
reg =3D &lt;0x12&gt;;
<br>
};
<br>
};
<br>

<br>
sh_fsi2: sh_fsi2@ec230000 {
<br>
#sound-dai-cells =3D &lt;1&gt;;
<br>

<b>
compatible =3D &quot;renesas,sh_fsi2&quot;;</b>

<br>
reg =3D &lt;0xec230000 0x400&gt;;
<br>
interrupt-parent =3D &lt;&amp;gic&gt;;
<br>
interrupts =3D &lt;0 146 0x4&gt;;
<br>
};
<br>

<br>
=C2=A0</div>
<br><br><div class=3D"gmail_quote">
<div dir=3D"ltr">
On Thu, 5 Jul 2018 at 16:13, Riccardo Casagrande &lt;
<a href=3D"mailto:riccardo.casagrande@multiconn.it" target=3D"_blank">
riccardo.casagrande@multiconn.it=C2=A0</a>
&gt; wrote:
<br>
=C2=A0</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Hello all,
<br>
=20
<br>
I&#39;m new to Linux/Yocto world. I&#39;m working on iMX6Q and I need to ad=
d a new sound card and recognized from alsamixer.
<br>
I spent days on internet looking for examples and tutorials but at the mome=
nt alsa never see my sound card.
<br>
This is one of the tutorials I followed=20
<a href=3D"https://elixir.bootlin.com/linux/v4.5/source/Documentation/devic=
etree/bindings/sound/simple-card.txt" rel=3D"noreferrer" target=3D"_blank">
https://elixir.bootlin.com/linux/v4.5/source/Documentation/devicetree/bindi=
ngs/sound/simple-card.txt=C2=A0</a>

<br>

<br>

<br>
What I&#39;ve done?
<br>
- Activated support for generic sound board on menuconfig
<br>
- Added new &quot;sound&quot; node in device tree file with minimal propert=
ies/subnotes
<br>
- Compiled the kernel
<br>
- Compiled and flashed the image
<br>

<br>

<br>
but alsamixer still doesn&#39;t recognize my sound card, what am I missing?
<br>

<br>

<br>
Thanks.
<br>

<br>

<br>

<br>
--
<br>
_______________________________________________
<br>
yocto mailing list
<br>

<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">
yocto@yoctoproject.org=C2=A0</a>

<br>

<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">
https://lists.yoctoproject.org/listinfo/yocto=C2=A0</a>

<br>
</blockquote>
=C2=A0</div>
</blockquote>



</blockquote></div>

--00000000000036454905712e8629--
