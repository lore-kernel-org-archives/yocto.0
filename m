Return-Path: <riccardo.casagrande@multiconn.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95906E01476; Wed, 18 Jul 2018 01:05:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [176.56.128.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.mmit.com.mt (mail.mmit.com.mt [176.56.128.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B313EE009AC
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 01:05:16 -0700 (PDT)
Received: from multiconn.it [10.101.1.251] ([127.0.0.1])
	by mail.mmit.com.mt (MM IT Mail Server v3.0) with ASMTP id IPW58344;
	Wed, 18 Jul 2018 10:04:44 +0200
Date: Wed, 18 Jul 2018 10:05:14 +0200
To: nick83ola <nick83ola@gmail.com>
From: Riccardo Casagrande <riccardo.casagrande@multiconn.it>
Message-ID: <ef482b5062725ca34719c56e122bce78@multiconn.it>
X-Mailer: IceWarp Mailer 10.2.2
In-Reply-To: <CABPh3UMTUUkcF2LVTOXviJdXKHrVPLtNDjSX3hUr=9fwtHEexA@mail.gmail.com>
References: <362c8e90951aaa3477aca5dbb7e02a0f@multiconn.it>
	<CABPh3UOSV95v__-V+uYPSNsZ5GSxYjpqtgjbEm2+4e9K405uwg@mail.gmail.com>
	<eb7b2d7e7e26216676b91b86d2d33b14@multiconn.it>
	<CABPh3UMTUUkcF2LVTOXviJdXKHrVPLtNDjSX3hUr=9fwtHEexA@mail.gmail.com>
X-Priority: 3
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 18 Jul 2018 08:05:19 -0000
Content-Type: multipart/alternative;
	boundary="b1_ef482b5062725ca34719c56e122bce78"

--b1_ef482b5062725ca34719c56e122bce78
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


Hi Nick,


I followed yours links and created new sound card and driver imx-itel. Now =
the new sound card is installed and listed by ALSA but without any kind of =
volume control, any suggestions? Anyway, now I'm going to check if outputs =
send I2S data.


Riccardo


----- Messaggio Originale -----
Da: "nick83ola" <nick83ola@gmail.com>
A: riccardo.casagrande@multiconn.it
Cc: yocto@yoctoproject.org
Data: 17/07/2018 11:24
Oggetto: Re: [Spam - Sospetto] Re: [yocto] IMX6Q add new sound simple =
sound card

Hi,=20
the chip has his internal "codec" you can see from the datasheet that has =
an i2s for the audio and an i2c interface for configuration.=C2=A0
the codec that you select ak4648 needs an initialization phase that is =
done usually via i2c.=C2=A0=C2=A0
If the driver can't find the codec it will simply disable itself (and you =
don't see the alsa audio card)=C2=A0=C2=A0

=C2=A0
First try to make the dummy codec work.=C2=A0
If its working you should be able to see that alsa recognize the dummy =
soundcard and to be able to play something and see the i2s signal on the =
board with an oscilloscope/logic analyzer=C2=A0

=C2=A0
After that you probably need to develop a codec driver for that particular =
chip.=C2=A0

=C2=A0
Probably the alsa mailing list is the right place to get help regarding =
this.=C2=A0

=C2=A0
You can have a look at my previous post on those topics (I was in the same =
boat as you :-) ) =C2=A0
https://community.nxp.com/thread/391216=C2=A0
=C2=A0
http://mailman.alsa-project.org/pipermail/alsa-devel/2016-May/108068.html=
=C2=A0
=C2=A0

=C2=A0
Cheers=C2=A0
Nick=C2=A0

=C2=A0

=C2=A0
=C2=A0
On Mon, 16 Jul 2018 at 10:38, Riccardo Casagrande < =
riccardo.casagrande@multiconn.it=C2=A0> wrote:=20
=C2=A0

Hello Nick=C2=A0

=C2=A0
the i.MX6Q is not connected to a codec but directly to 3 FDA2100 from =
STMicroelectronics, these chips are digital power amplifiers. On input I =
have 2 input from ADCs.=C2=A0
I wrote several sound nodes but at moment the best result is no error at =
boot, the sound card listed under /proc/device-tree but not in alsa.=C2=A0

=C2=A0
This is the device-tree sub node=C2=A0

=C2=A0
sound-fda2100 {=20
        compatible =3D "simple-audio-card";=20
        simple-audio-card,name =3D "MTC-FDA2100-Card";=20
        simple-audio-card,format =3D "i2s";=20
        simple-audio-card,widgets =3D=20
            "Microphone", "Microphone Jack",=20
            "Headphone", "Headphone Jack",=20
            "Speaker", "External Speaker";=20
        simple-audio-card,routing =3D=20
            "MIC_IN", "Microphone Jack",=20
            "Headphone Jack", "HP_OUT",=20
            "External Speaker", "LINE_OUT";=20

        simple-audio-card,bitclock-master =3D <&cpu_dai>;=20
            simple-audio-card,frame-master =3D <&cpu_dai>;=20
            cpu_dai: simple-audio-card,cpu {=20
                sound-dai =3D <&ssi1 0>;=20
            };=20
           codec_dai: simple-audio-card,codec {=20
                sound-dai =3D <&codec_test>;=20
            };=20
    };=C2=A0

=C2=A0
codec_test: codec_test {=20
    compatible =3D "linux,snd-soc-dummy";=20
        #sound-dai-cells =3D <0>;=20
     };=C2=A0

=C2=A0
And last week I found that "dummy codec is not supported in NXP linux =
release" as reported here =
https://community.nxp.com/thread/466938=C2=A0=C2=A0

=C2=A0

----- Messaggio Originale -----=20
Da: "nick83ola" < nick83ola@gmail.com=C2=A0>=20
A: riccardo.casagrande@multiconn.it=C2=A0
Cc: yocto@yoctoproject.org=C2=A0
Data: 16/07/2018 10:37=20
Oggetto: [Spam - Sospetto] Re: [yocto] IMX6Q add new sound simple sound =
card=20

Hi,=20
how is your sound card connected?=20

If you look at the devicetree for a sound card to work you have to =
configure =C2=A0

 - system clock
 - device that handle the communication with the sound card (f ex i2s, or =
i2c or usb, or whatever) (sound-dai)=20

 - the soundcard itself (codec?) =C2=A0
So you need more information regarding your hardware, the codec, how is =
connected, etc etc =C2=A0
 =C2=A0

 =C2=A0
Look at the source of the simple audio card driver and maybe at some other =
driver in the kernel source=20
 =C2=A0

 =C2=A0
Cheers =C2=A0
Nick=20
 =C2=A0

 =C2=A0
--------------------------------------------------------------------------=
---------------------------=20
 =C2=A0
sound {=20
simple-audio-card,cpu {=20
sound-dai =3D <& sh_fsi2 0>;=20
};=20

dailink0_master: simple-audio-card, codec {=20
sound-dai =3D <& ak4648>;=20
clocks =3D <& osc>;=20
};=20
};=20

&i2c0 {=20
ak4648: ak4648@12 {=20
#sound-dai-cells =3D <0>;=20
compatible =3D "asahi-kasei,ak4648";
reg =3D <0x12>;=20
};=20
};=20

sh_fsi2: sh_fsi2@ec230000 {=20
#sound-dai-cells =3D <1>;=20
compatible =3D "renesas,sh_fsi2";
reg =3D <0xec230000 0x400>;=20
interrupt-parent =3D <&gic>;=20
interrupts =3D <0 146 0x4>;=20
};=20

 =C2=A0

On Thu, 5 Jul 2018 at 16:13, Riccardo Casagrande < =
riccardo.casagrande@multiconn.it =C2=A0> wrote:=20
 =C2=A0

Hello all,=20

I'm new to Linux/Yocto world. I'm working on iMX6Q and I need to add a new =
sound card and recognized from alsamixer.=20
I spent days on internet looking for examples and tutorials but at the =
moment alsa never see my sound card.=20
This is one of the tutorials I followed https://elixir.bootlin.com/linux/v=
4.5/source/Documentation/devicetree/bindings/sound/simple-card.txt =C2=A0


What I've done?=20
- Activated support for generic sound board on menuconfig=20
- Added new "sound" node in device tree file with minimal =
properties/subnotes=20
- Compiled the kernel=20
- Compiled and flashed the image=20


but alsamixer still doesn't recognize my sound card, what am I missing?=20


Thanks.=20



--=20
_______________________________________________=20
yocto mailing list=20
yocto@yoctoproject.org =C2=A0
https://lists.yoctoproject.org/listinfo/yocto =C2=A0
 =C2=A0
=C2=A0




--b1_ef482b5062725ca34719c56e122bce78
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>Hi Nick,</div><div><br></div><div>I followed yours links and created =
new sound card and driver imx-itel. Now the new sound card is installed =
and listed by ALSA but without any kind of volume control, any <span =
id=3D"result_box" class=3D"short_text" lang=3D"en"><span =
class=3D"">suggestions?</span></span> Anyway, now I'm going to check if =
outputs send I2S =
data.</div><div><br></div><div>Riccardo<br></div><blockquote =
class=3D"reply_block" style=3D"border-left: 2px solid blue; margin-left: =
1em; padding-left: 1em"><hr size=3D"1">----- Messaggio Originale =
-----<br>Da: "nick83ola" &lt;nick83ola@gmail.com&gt;<br>A: =
riccardo.casagrande@multiconn.it<br>Cc: yocto@yoctoproject.org<br>Data: =
17/07/2018 11:24<br>Oggetto: Re: [Spam - Sospetto] Re: [yocto] IMX6Q add =
new sound simple sound card<br><br><title>
</title>

<div dir=3D"ltr">
Hi,
<div>
the chip has his internal "codec" you can see from the datasheet that has =
an i2s for the audio and an i2c interface for configuration.&nbsp;</div>

<div>
the codec that you select=20
<b style=3D"font-size:small;background-color:rgb(255,255,255);text-decorat=
ion-style:initial;text-decoration-color:initial">
ak4648</b>

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial">
 needs an initialization phase that is done usually via i2c.&nbsp;</span>
&nbsp;</div>

<div>
<span style=3D"font-size:small;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial">
If the driver can't find the codec it will simply disable itself (and you =
don't see the alsa audio card)&nbsp;</span>
&nbsp;</div>

<div>
<br>
&nbsp;</div>

<div>
First try to make the dummy codec work.&nbsp;</div>

<div>
If its working you should be able to see that alsa recognize the dummy =
soundcard and to be able to play something and see the i2s signal on the =
board with an oscilloscope/logic analyzer&nbsp;</div>

<div>
<br>
&nbsp;</div>

<div>
After that you probably need to develop a codec driver for that particular =
chip.&nbsp;</div>

<div>
<br>
&nbsp;</div>

<div>
Probably the alsa mailing list is the right place to get help regarding =
this.&nbsp;</div>

<div>
<br>
&nbsp;</div>

<div>
You can have a look at my previous post on those topics (I was in the same =
boat as you :-) ) &nbsp;</div>

<div>
<a href=3D"https://community.nxp.com/thread/391216">
https://community.nxp.com/thread/391216&nbsp;</a><br>
&nbsp;</div>

<div>
<a href=3D"http://mailman.alsa-project.org/pipermail/alsa-devel/2016-May/1=
08068.html">
http://mailman.alsa-project.org/pipermail/alsa-devel/2016-May/108068.html&=
nbsp;</a><br>
&nbsp;</div>

<div>
<br>
&nbsp;</div>

<div>
Cheers&nbsp;</div>

<div>
Nick&nbsp;</div>

<div>
<br>
&nbsp;</div>

<div>
<br>
&nbsp;</div>
&nbsp;</div>
<br><div class=3D"gmail_quote">
<div dir=3D"ltr">
On Mon, 16 Jul 2018 at 10:38, Riccardo Casagrande &lt;
<a href=3D"mailto:riccardo.casagrande@multiconn.it">
riccardo.casagrande@multiconn.it&nbsp;</a>
&gt; wrote:
<br>
&nbsp;</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">
<div>
Hello Nick&nbsp;</div>
<div>
<br>
&nbsp;</div>
<div>
the i.MX6Q is not connected to a codec but directly to 3 FDA2100 from =
STMicroelectronics, these chips are digital power amplifiers. On input I =
have 2 input from ADCs.&nbsp;</div>
<div>
I wrote several sound nodes but at moment the best result is no error at =
boot, the sound card listed under /proc/device-tree but not in =
alsa.&nbsp;</div>
<div>
<br>
&nbsp;</div>
<div>
This is the device-tree sub node&nbsp;</div>
<div>
<br>
&nbsp;</div>
<div>
sound-fda2100 {
<br>
        compatible =3D "simple-audio-card";
<br>
        simple-audio-card,name =3D "MTC-FDA2100-Card";
<br>
        simple-audio-card,format =3D "i2s";
<br>
        simple-audio-card,widgets =3D
<br>
            "Microphone", "Microphone Jack",
<br>
            "Headphone", "Headphone Jack",
<br>
            "Speaker", "External Speaker";
<br>
        simple-audio-card,routing =3D
<br>
            "MIC_IN", "Microphone Jack",
<br>
            "Headphone Jack", "HP_OUT",
<br>
            "External Speaker", "LINE_OUT";
<br>

<br>
        simple-audio-card,bitclock-master =3D &lt;&amp;cpu_dai&gt;;
<br>
            simple-audio-card,frame-master =3D &lt;&amp;cpu_dai&gt;;
<br>
            cpu_dai: simple-audio-card,cpu {
<br>
                sound-dai =3D &lt;&amp;ssi1 0&gt;;
<br>
            };
<br>
           codec_dai: simple-audio-card,codec {
<br>
                sound-dai =3D &lt;&amp;codec_test&gt;;
<br>
            };
<br>
    };&nbsp;</div>
<div>
<br>
&nbsp;</div>
<div>
codec_test: codec_test {
<br>
    compatible =3D "linux,snd-soc-dummy";
<br>
        #sound-dai-cells =3D &lt;0&gt;;
<br>
     };&nbsp;</div>
<div>
<br>
&nbsp;</div>
<div>
And last week I found that "dummy codec is not supported in NXP linux =
release" as reported here=20
<a href=3D"https://community.nxp.com/thread/466938" target=3D"_blank">
https://community.nxp.com/thread/466938&nbsp;</a>
&nbsp;</div>
<div>
<br>
&nbsp;</div>
<blockquote class=3D"m_-6139776710330808759reply_block" =
style=3D"border-left:2px solid blue;margin-left:1em;padding-left:1em">
<hr size=3D"1">
----- Messaggio Originale -----
<br>
Da: "nick83ola" &lt;
<a href=3D"mailto:nick83ola@gmail.com" target=3D"_blank">
nick83ola@gmail.com&nbsp;</a>
&gt;
<br>
A:=20
<a href=3D"mailto:riccardo.casagrande@multiconn.it" target=3D"_blank">
riccardo.casagrande@multiconn.it&nbsp;</a>

<br>
Cc:=20
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">
yocto@yoctoproject.org&nbsp;</a>

<br>
Data: 16/07/2018 10:37
<br>
Oggetto: [Spam - Sospetto] Re: [yocto] IMX6Q add new sound simple sound =
card
<br>

<br>

<div dir=3D"ltr">
Hi,
<br>
how is your sound card connected?
<br>

<div>
If you look at the devicetree for a sound card to work you have to =
configure &nbsp;</div>

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
 &nbsp;</div>

<div>
So you need more information regarding your hardware, the codec, how is =
connected, etc etc &nbsp;</div>

<div>
 &nbsp;</div>

<div>
<br>
 &nbsp;</div>

<div>
Look at the source of the simple audio card driver and maybe at some other =
driver in the kernel source
<br>
 &nbsp;</div>

<div>
<br>
 &nbsp;</div>

<div>
Cheers &nbsp;</div>

<div>
Nick
<br>
 &nbsp;</div>

<div>
<br>
 &nbsp;</div>

<div>
--------------------------------------------------------------------------=
---------------------------
<br>
 &nbsp;</div>
sound {
<br>

<b>
simple-audio-card,cpu</b>
 {
<br>
sound-dai =3D &lt;&amp;=20
<b>
sh_fsi2 0</b>
&gt;;
<br>
};
<br>

<br>
dailink0_master: simple-audio-card,=20
<b>
codec</b>
 {
<br>
sound-dai =3D &lt;&amp;=20
<b>
ak4648</b>
&gt;;
<br>
clocks =3D &lt;&amp;=20
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
compatible =3D "asahi-kasei,ak4648";</b>

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
compatible =3D "renesas,sh_fsi2";</b>

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
 &nbsp;</div>

<br>

<br>

<div class=3D"gmail_quote">
<div dir=3D"ltr">
On Thu, 5 Jul 2018 at 16:13, Riccardo Casagrande &lt;=20
<a href=3D"mailto:riccardo.casagrande@multiconn.it" target=3D"_blank">
riccardo.casagrande@multiconn.it &nbsp;</a>
&gt; wrote:
<br>
 &nbsp;</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Hello all,
<br>

<br>
I'm new to Linux/Yocto world. I'm working on iMX6Q and I need to add a new =
sound card and recognized from alsamixer.
<br>
I spent days on internet looking for examples and tutorials but at the =
moment alsa never see my sound card.
<br>
This is one of the tutorials I followed=20
<a href=3D"https://elixir.bootlin.com/linux/v4.5/source/Documentation/devi=
cetree/bindings/sound/simple-card.txt" rel=3D"noreferrer" =
target=3D"_blank">
https://elixir.bootlin.com/linux/v4.5/source/Documentation/devicetree/bind=
ings/sound/simple-card.txt &nbsp;</a>

<br>

<br>

<br>
What I've done?
<br>
- Activated support for generic sound board on menuconfig
<br>
- Added new "sound" node in device tree file with minimal =
properties/subnotes
<br>
- Compiled the kernel
<br>
- Compiled and flashed the image
<br>

<br>

<br>
but alsamixer still doesn't recognize my sound card, what am I missing?
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
yocto@yoctoproject.org &nbsp;</a>

<br>

<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/listinfo/yocto &nbsp;</a>

<br>
</blockquote>
 &nbsp;</div>
</blockquote>
</blockquote>
&nbsp;</div>
</blockquote>




--b1_ef482b5062725ca34719c56e122bce78--
