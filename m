Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5553E00A38; Fri, 10 Mar 2017 10:58:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0DCEE00A28
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 10:58:49 -0800 (PST)
Received: by mail-ua0-f173.google.com with SMTP id q7so107431252uaf.2
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 10:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SwVdh2cB0srpj+LErvpPwMv09iW35dhuohd5lyxRIxY=;
	b=Kre0EDu+jX/5Zl9ptSq06O+GEagzbuSMXrvpiiz4QmNZF9zd1zO0+NJFfYN0/1k9Ne
	e8syNIqF48BvLTrdS0W0n8Fhc8f3VN5wtWIxlUQpB/rHKup8CbNKxNOmrIejR3Vgos8P
	EBwLbv7RdzYK8e65HBQ8ssbNK1Q2Ho2JHKC05NdJEhk8iRASau55f5JHBO1Zhe6gkcOs
	5V7swiGRptMOxfhHcICWuZ0CblLqjhukNDLt1XeXaItZeCcDW7wZIrxIIksrln3GBPXU
	Lcdz5m9lr19ZX+xla5ZTUZV1wfBVOBHl9llw+rl0PJ1YvT0zg/1EG9W2WH6SfBHcHA9J
	FmNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SwVdh2cB0srpj+LErvpPwMv09iW35dhuohd5lyxRIxY=;
	b=j4JDUD/L7rq32BE6aoKV7KK4Osijck52IGy3pxlPt6dTezD5TQQXI80WZYxNp9KI3C
	RCw2GMfmW04nfgmQgYAQ9Q9S75LlX/S73fmhKT73mU4bpPVD8mmF64k6AoH8F2t2xTEi
	SChjrjQsFf84AY2L1u/Hh7XKy5oht9mPw3lH1ubNepNJUdETzrPmhZfQcyq1npOJWk7N
	vpiFl3taYbnTcj34vBsq2lVbgBjPafhT9DAYfS/JVLm+5vcativZPR8s7MDdNya/yPYD
	05Weo7mqsS2zMZcJa8q7iwnqnkrPcuorELSxTegLKN76sQdKNRMRZkCqPLii8lQ0j9PU
	0q3w==
X-Gm-Message-State: AMke39nyEIhzTYpS3cWzvYrTbbGNNL7vf2ui7jvSwkVziFRmnyf9F6zWn4k8Q0+XtxzEmB5xmLye6s6DINMM1g==
X-Received: by 10.31.6.73 with SMTP id 70mr9749490vkg.173.1489172328737; Fri,
	10 Mar 2017 10:58:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.39.37 with HTTP; Fri, 10 Mar 2017 10:58:18 -0800 (PST)
In-Reply-To: <DB5PR0101MB1686E67E9EDBF665575F6DDA92200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
References: <DB5PR0101MB1686CDF4B73864FF6879490492200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
	<CAMKF1sohj3PLg2tjUBijrQUb1R7kUdcWPLpdi3G=NaV=_dOjkg@mail.gmail.com>
	<DB5PR0101MB168622D766CB2BF14A860D2792200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
	<CAMKF1sqqZxHaEMPr60LmRV0BJ+yCs+oMYTA4ZZK=JkK6i-yA9w@mail.gmail.com>
	<DB5PR0101MB1686E67E9EDBF665575F6DDA92200@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 10 Mar 2017 10:58:18 -0800
Message-ID: <CAMKF1so0rUWsSQrpJSKSMvYNd8iwZwpozrgfsRg1--KwncVbCg@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [bitbake] Failed to patch "defconfig" for linux kernel
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
X-List-Received-Date: Fri, 10 Mar 2017 18:58:50 -0000
Content-Type: multipart/alternative; boundary=001a1143dc86a9f36e054a64f30b

--001a1143dc86a9f36e054a64f30b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 10, 2017 at 10:57 AM, Karim ATIKI <karim_atiki@hotmail.com>
wrote:

>
>
> OK.
> But how then is this file "bt.cfg" included in the compilation process ?
>
>
>
=E2=80=8Blinux-yocto=E2=80=8B have provisions for it. It basically
users merge-config feature of kernel kconfig.



>
> ------------------------------
> *De :* Khem Raj <raj.khem@gmail.com>
> *Envoy=C3=A9 :* vendredi 10 mars 2017 19:53
> *=C3=80 :* Karim ATIKI
>
> *Objet :* Re: [yocto] [bitbake] Failed to patch "defconfig" for linux
> kernel
>
>
>
> On Fri, Mar 10, 2017 at 10:47 AM, Karim ATIKI <karim_atiki@hotmail.com>
> wrote:
>
>> Hi Khem,
>>
>>
>>
>> >You can edit do_configure_prepend() in linux-rpi.inc
>> >kernel_configure_variable CONFIG_BT y
>>
>>
>> Ok.
>>
>> But this file "linux-rpi.inc" is available only for RaspberryPi ?
>>
>> I'm not working on Rpi here.
>>
>>
>> Somehow I thought you were, anyhow if you are using linux-yocto then you
> can create a .cfg file e.g.
> bt.cfg with
>
> CONFIG_BT=3Dy
> CONFIG_BT_RFCOMM=3Dy
> CONFIG_BT_RFCOMM_TTY=3Dy
> CONFIG_BT_HCIBTUSB=3Dy
> CONFIG_WIRELESS=3Dy
>
> and add it to SRC_URI e.g.
>
> SRC_URI +=3D "file://bt.cfg"
>
> that should do it.
>
>
>
>
>>
>>
>>
>> ------------------------------
>> *De :* Khem Raj <raj.khem@gmail.com>
>> *Envoy=C3=A9 :* vendredi 10 mars 2017 19:13
>> *=C3=80 :* Karim ATIKI
>> *Cc :* yocto
>> *Objet :* Re: [yocto] [bitbake] Failed to patch "defconfig" for linux
>> kernel
>>
>> On Fri, Mar 10, 2017 at 6:50 AM, Karim ATIKI <karim_atiki@hotmail.com>
>> wrote:
>> > Hi,
>> >
>> >
>> > I'm currently trying to patch the linux kernel 3.8.13-r2 of an ARM bas=
ed
>> > board (Hachiko) in order to enable Bluetooth and RFCOMM support.
>> >
>> >
>> > Currently, I select these options with bitbake -c menuconfig
>> virtual/kernel
>> >
>> > I'd like to use a patch on the defconfig in order to avoid the
>> menuconfig
>> > step.
>> >
>> >
>> > I've created a linux_3.8.13.bbappend file to apply the path.
>> >
>> >
>> > Th patch file looks like:
>> >
>> >
>> >
>> > --- a defconfig
>> > +++ b defconfig
>> > @@ -107,3 +107,16 @@
>> >  CONFIG_CRYPTO_CBC=3Dy
>> >  CONFIG_CRYPTO_MD5=3Dy
>> >  CONFIG_CRYPTO_DES=3Dy
>> > +#
>> > +# FIR device drivers
>> > +#
>> > +CONFIG_BT=3Dy
>> > +CONFIG_BT_RFCOMM=3Dy
>> > +CONFIG_BT_RFCOMM_TTY=3Dy
>> > +
>> > +#
>> > +# Bluetooth device drivers
>> > +#
>> > +CONFIG_BT_HCIBTUSB=3Dy
>> > +CONFIG_WIRELESS=3Dy
>> >
>> >
>> > The working directory of the linux is:
>> >
>> >
>> > /home/kai/yocto/build-hachiko/tmp/work/hachiko64-poky-linux-
>> gnueabi/linux/3.8.13-r2/linux-3.8.13
>> >
>> >
>> > But when the linux is fetched and unpacked, the root defconfig file is
>> put
>> > in:
>> >
>> >
>> > /home/kai/yocto/build-hachiko/tmp/work/hachiko64-poky-linux-
>> gnueabi/linux/3.8.13-r2
>> >
>> >
>> > therefore, the patch step failed.
>> >
>> >
>> > I tried to modify the patch with  --- a/../defconfig and b/../defconfi=
g
>> >
>> > but it does not work better.
>> >
>> >
>> > Any idea how to make it work ?
>>
>>
>> You can edit do_configure_prepend() in linux-rpi.inc
>>
>> kernel_configure_variable CONFIG_BT y
>> ...
>>
>>
>>
>> >
>> >
>> > Thanks.
>> >
>> >
>> > Karim
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> yocto Info Page <https://lists.yoctoproject.org/listinfo/yocto>
>> lists.yoctoproject.org
>> Discussion of all things about the Yocto Project. Read our Community
>> Guidelines or learn more about how to participate in other community
>> discussions.
>>
>>
>> >
>>
>
>

--001a1143dc86a9f36e054a64f30b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Fri, Mar 10, 2017 at 10:57 AM, Karim ATIKI <span dir=3D"ltr">&lt;<=
a href=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atiki@hot=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_2214877656872314783divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr=
">
<p><br>
</p>
<div>
<div><br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Co=
lor Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sy=
mbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">
OK.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Co=
lor Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sy=
mbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">
But how then=C2=A0is this file &quot;bt.cfg&quot; included in the compilati=
on process ?</div>
</div>
<div><br>
</div>
<br></div></div></div></blockquote><div><br></div><div><div class=3D"gmail_=
default" style=3D"font-family:monospace,monospace">=E2=80=8Blinux-yocto=E2=
=80=8B have provisions for it. It basically</div><div class=3D"gmail_defaul=
t" style=3D"font-family:monospace,monospace">users merge-config feature of =
kernel kconfig.</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr"><div id=3D"m_2214877656872314783divtagdefaultwrapper" =
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Arial,Helvetica,s=
ans-serif" dir=3D"ltr"><div>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_2214877656872314783divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> K=
hem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>&gt;<br>
<b>Envoy=C3=A9 :</b> vendredi 10 mars 2017 19:53<br>
<b>=C3=80 :</b> Karim ATIKI<div><div class=3D"h5"><br>
<b>Objet :</b> Re: [yocto] [bitbake] Failed to patch &quot;defconfig&quot; =
for linux kernel</div></div></font>
<div>=C2=A0</div>
</div><div><div class=3D"h5">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:monospace,monospace"><br>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, Mar 10, 2017 at 10:47 AM, Karim ATIKI <s=
pan dir=3D"ltr">
&lt;<a href=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atik=
i@hotmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_2214877656872314783gmail-m_-3421084394858451552divtagdefaultwr=
apper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:cal=
ibri,arial,helvetica,sans-serif">
<p>Hi Khem,</p>
<span class=3D"m_2214877656872314783gmail-">
<p><br>
</p>
<p><br style=3D"color:rgb(33,33,33);font-size:13.3333px">
<span style=3D"color:rgb(33,33,33);font-size:13.3333px">&gt;You can edit do=
_configure_prepend() in linux-rpi.inc</span><br style=3D"color:rgb(33,33,33=
);font-size:13.3333px">
<span style=3D"color:rgb(33,33,33);font-size:13.3333px">&gt;kernel_configur=
e_variable CONFIG_BT y</span><br>
</p>
<p><span style=3D"color:rgb(33,33,33);font-size:13.3333px"><br>
</span></p>
</span>
<p><span style=3D"color:rgb(33,33,33);font-size:13.3333px">Ok.</span></p>
<p><span style=3D"color:rgb(33,33,33);font-size:13.3333px">But this file &q=
uot;linux-rpi.inc&quot; is available only for RaspberryPi ?</span></p>
<p><font color=3D"#212121"><span style=3D"font-size:13.3333px">I&#39;m not =
working on Rpi here.</span></font></p>
<p><font color=3D"#212121"><span style=3D"font-size:13.3333px"><br>
</span></font></p>
</div>
</div>
</blockquote>
<div>
<div style=3D"font-family:monospace,monospace">Somehow I thought you were, =
anyhow if you are using linux-yocto then you can create a .cfg file e.g.</d=
iv>
<div style=3D"font-family:monospace,monospace">bt.cfg with</div>
<div style=3D"font-family:monospace,monospace"><br>
</div>
<div style=3D"font-family:monospace,monospace"><span style=3D"color:rgb(80,=
0,80);font-family:calibri,arial,helvetica,sans-serif;font-size:13.333333015=
441895px">CONFIG_BT=3Dy</span><br style=3D"color:rgb(80,0,80);font-family:c=
alibri,arial,helvetica,sans-serif;font-size:13.333333015441895px">
<span style=3D"color:rgb(80,0,80);font-family:calibri,arial,helvetica,sans-=
serif;font-size:13.333333015441895px">CONFIG_BT_RFCOMM=3Dy</span><br style=
=3D"color:rgb(80,0,80);font-family:calibri,arial,helvetica,sans-serif;font-=
size:13.333333015441895px">
<span style=3D"color:rgb(80,0,80);font-family:calibri,arial,helvetica,sans-=
serif;font-size:13.333333015441895px">CONFIG_BT_RFCOMM_TTY=3Dy</span><br st=
yle=3D"color:rgb(80,0,80);font-family:calibri,arial,helvetica,sans-serif;fo=
nt-size:13.333333015441895px">
<span style=3D"color:rgb(80,0,80);font-family:calibri,arial,helvetica,sans-=
serif;font-size:13.333333015441895px">CONFIG_BT_HCIBTUSB=3Dy</span><br styl=
e=3D"color:rgb(80,0,80);font-family:calibri,arial,helvetica,sans-serif;font=
-size:13.333333015441895px">
<span style=3D"color:rgb(80,0,80);font-family:calibri,arial,helvetica,sans-=
serif;font-size:13.333333015441895px">CONFIG_WIRELESS=3Dy</span><br style=
=3D"color:rgb(80,0,80);font-family:calibri,arial,helvetica,sans-serif;font-=
size:13.333333015441895px">
</div>
<br>
</div>
<div>
<div style=3D"font-family:monospace,monospace">and add it to SRC_URI e.g.</=
div>
<div style=3D"font-family:monospace,monospace"><br>
</div>
<div style=3D"font-family:monospace,monospace">SRC_URI +=3D &quot;file://bt=
.cfg&quot;</div>
<div style=3D"font-family:monospace,monospace"><br>
</div>
<div style=3D"font-family:monospace,monospace">that should do it.</div>
<br>
</div>
<div><br>
</div>
<div>=C2=A0</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_2214877656872314783gmail-m_-3421084394858451552divtagdefaultwr=
apper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:cal=
ibri,arial,helvetica,sans-serif">
<p><font color=3D"#212121"><span style=3D"font-size:13.3333px"></span></fon=
t></p>
<p><font color=3D"#212121"><span style=3D"font-size:13.3333px"><br>
</span></font></p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_2214877656872314783gmail-m_-3421084394858451552x_divRplyFwdMsg=
" dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D=
"font-size:11pt"><b>De :</b> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.=
com" target=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
<b>Envoy=C3=A9 :</b> vendredi 10 mars 2017 19:13<br>
<b>=C3=80 :</b> Karim ATIKI<br>
<b>Cc=C2=A0:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [bitbake] Failed to patch &quot;defconfig&quot; =
for linux kernel</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"m_2214877656872314783gmail-m_-3421084394858451552PlainText">
<div>
<div class=3D"m_2214877656872314783gmail-h5">On Fri, Mar 10, 2017 at 6:50 A=
M, Karim ATIKI &lt;<a href=3D"mailto:karim_atiki@hotmail.com" target=3D"_bl=
ank">karim_atiki@hotmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; I&#39;m currently trying to patch the linux kernel 3.8.13-r2 of an ARM=
 based<br>
&gt; board (Hachiko) in order to enable Bluetooth and RFCOMM support.<br>
&gt;<br>
&gt;<br>
&gt; Currently, I select these options with bitbake -c menuconfig virtual/k=
ernel<br>
&gt;<br>
&gt; I&#39;d like to use a patch on the defconfig in order to avoid the men=
uconfig<br>
&gt; step.<br>
&gt;<br>
&gt;<br>
&gt; I&#39;ve created a linux_3.8.13.bbappend file to apply the path.<br>
&gt;<br>
&gt;<br>
&gt; Th patch file looks like:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --- a defconfig<br>
&gt; +++ b defconfig<br>
&gt; @@ -107,3 +107,16 @@<br>
&gt;=C2=A0 CONFIG_CRYPTO_CBC=3Dy<br>
&gt;=C2=A0 CONFIG_CRYPTO_MD5=3Dy<br>
&gt;=C2=A0 CONFIG_CRYPTO_DES=3Dy<br>
&gt; +#<br>
&gt; +# FIR device drivers<br>
&gt; +#<br>
&gt; +CONFIG_BT=3Dy<br>
&gt; +CONFIG_BT_RFCOMM=3Dy<br>
&gt; +CONFIG_BT_RFCOMM_TTY=3Dy<br>
&gt; +<br>
&gt; +#<br>
&gt; +# Bluetooth device drivers<br>
&gt; +#<br>
&gt; +CONFIG_BT_HCIBTUSB=3Dy<br>
&gt; +CONFIG_WIRELESS=3Dy<br>
&gt;<br>
&gt;<br>
&gt; The working directory of the linux is:<br>
&gt;<br>
&gt;<br>
&gt; /home/kai/yocto/build-hachiko/<wbr>tmp/work/hachiko64-poky-linux-<wbr>=
gnueabi/linux/3.8.13-r2/linux-<wbr>3.8.13<br>
&gt;<br>
&gt;<br>
&gt; But when the linux is fetched and unpacked, the root defconfig file is=
 put<br>
&gt; in:<br>
&gt;<br>
&gt;<br>
&gt; /home/kai/yocto/build-hachiko/<wbr>tmp/work/hachiko64-poky-linux-<wbr>=
gnueabi/linux/3.8.13-r2<br>
&gt;<br>
&gt;<br>
&gt; therefore, the patch step failed.<br>
&gt;<br>
&gt;<br>
&gt; I tried to modify the patch with=C2=A0 --- a/../defconfig and b/../def=
config<br>
&gt;<br>
&gt; but it does not work better.<br>
&gt;<br>
&gt;<br>
&gt; Any idea how to make it work ?<br>
<br>
<br>
You can edit do_configure_prepend() in linux-rpi.inc<br>
<br>
kernel_configure_variable CONFIG_BT y<br>
...<br>
<br>
<br>
<br>
&gt;<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt;<br>
&gt; Karim<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"m_2214=
877656872314783gmail-m_-3421084394858451552LPlnk864424" target=3D"_blank">
https://lists.yoctoproject.org<wbr>/listinfo/yocto</a> </div>
</div>
<div id=3D"m_2214877656872314783gmail-m_-3421084394858451552LPBorder_GT_148=
91715758440.6029034174956354" style=3D"margin-bottom:20px;overflow:auto;wid=
th:100%;text-indent:0px">
<table id=3D"m_2214877656872314783gmail-m_-3421084394858451552LPContainer_1=
4891715758400.8570814763919141" cellspacing=3D"0" style=3D"width:90%;backgr=
ound-color:rgb(255,255,255);overflow:auto;padding-top:20px;padding-bottom:2=
0px;margin-top:20px;border-top-width:1px;border-top-style:dotted;border-top=
-color:rgb(200,200,200);border-bottom-width:1px;border-bottom-style:dotted;=
border-bottom-color:rgb(200,200,200)">
<tbody>
<tr valign=3D"top">
<td id=3D"m_2214877656872314783gmail-m_-3421084394858451552TextCell_1489171=
5758410.24124774151483197" colspan=3D"2" style=3D"vertical-align:top;paddin=
g:0px;display:table-cell">
<div id=3D"m_2214877656872314783gmail-m_-3421084394858451552LPRemovePreview=
Container_14891715758410.043331839245763115">
</div>
<div id=3D"m_2214877656872314783gmail-m_-3421084394858451552LPExpandDescrip=
tionContainer_14891715758410.012757027131130805">
</div>
<div id=3D"m_2214877656872314783gmail-m_-3421084394858451552LPTitle_1489171=
5758410.32531424220441063" style=3D"color:rgb(0,120,215);font-weight:normal=
;font-size:21px;font-family:wf_segoe-ui_light,&#39;segoe ui light&#39;,&#39=
;segoe wp light&#39;,&#39;segoe ui&#39;,&#39;segoe wp&#39;,tahoma,arial,san=
s-serif;line-height:21px">
<a id=3D"m_2214877656872314783gmail-m_-3421084394858451552LPUrlAnchor_14891=
715758420.0035531154398473763" href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" style=3D"text-decoration:none" target=3D"_blank">yocto Info Page=
</a></div>
<div id=3D"m_2214877656872314783gmail-m_-3421084394858451552LPMetadata_1489=
1715758420.7280579727127381" style=3D"margin:10px 0px 16px;color:rgb(102,10=
2,102);font-weight:normal;font-family:wf_segoe-ui_normal,&#39;segoe ui&#39;=
,&#39;segoe wp&#39;,tahoma,arial,sans-serif;font-size:14px;line-height:14px=
">
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a></div>
<div id=3D"m_2214877656872314783gmail-m_-3421084394858451552LPDescription_1=
4891715758420.7312018878517168" style=3D"display:block;color:rgb(102,102,10=
2);font-weight:normal;font-family:wf_segoe-ui_normal,&#39;segoe ui&#39;,&#3=
9;segoe wp&#39;,tahoma,arial,sans-serif;font-size:14px;line-height:20px;max=
-height:100px;overflow:hidden">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
</div>
</span></font></div>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div></div></div>
</div>
</div>
</div>

</blockquote></div><br></div></div>

--001a1143dc86a9f36e054a64f30b--
