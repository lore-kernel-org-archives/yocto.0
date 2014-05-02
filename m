Return-Path: <tarek.elsherbiny@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B72BE0096C; Fri,  2 May 2014 05:30:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tarek.elsherbiny[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C08FE00478
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 05:30:49 -0700 (PDT)
Received: by mail-yk0-f169.google.com with SMTP id 200so42640ykr.28
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 05:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZRq9uuulvCefkgupgXVwve5GvCvBuQPmyJEbmYoCjz4=;
	b=BJcTM8kIB+jJ9XvhMswp1eVchIEQZ5wlstzNXGKRJLFj5LQ1AG87pUHSnRd+UyiSmS
	oPTc++nKPiXIWJq+niwaBjmkVxDKUd6aTDRISatSGSREKi6pj+rM4wHuGxikGEZcAnwj
	2SUJSQPPdlzeO477nGkYpvRDWygGYvTqo1T/9MS9QqL1y/qlEQj69hdU8Lx9nIi2p/JZ
	7ONklZUekXezAVKQFtkiTgYZbkCuiHn2fjczCaOzg/1Y2fTxJXARpev8zidQChwQRQqz
	aQvCZnKTaEjG54i84hNEserYDtiQkHOxjOOchsIuOjNf4MLKwWewNmU8qcoB+hFHyN/w
	AUyA==
MIME-Version: 1.0
X-Received: by 10.236.207.194 with SMTP id n42mr22753771yho.153.1399033849071; 
	Fri, 02 May 2014 05:30:49 -0700 (PDT)
Received: by 10.170.71.65 with HTTP; Fri, 2 May 2014 05:30:48 -0700 (PDT)
Received: by 10.170.71.65 with HTTP; Fri, 2 May 2014 05:30:48 -0700 (PDT)
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1CEA4705@IRSMSX105.ger.corp.intel.com>
References: <CAB3sqtZbtJGsh_jMUnvJAyFmXJVHZT2bvZ=DJ0N-fSB-VYu4Tg@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1CEA4705@IRSMSX105.ger.corp.intel.com>
Date: Fri, 2 May 2014 13:30:48 +0100
Message-ID: <CAB3sqta0_u-Uv4EKXd6Y9upxyQfDEQ9_m_H=OL=tmMFKRb_14w@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] DNS when using Static IP
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
X-List-Received-Date: Fri, 02 May 2014 12:30:54 -0000
Content-Type: multipart/alternative; boundary=089e0163387a9a4ec004f869f3fd

--089e0163387a9a4ec004f869f3fd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

No connman is not included.  Shall I include it and try?
On 2 May 2014 13:01, "Iorga, Cristian" <cristian.iorga@intel.com> wrote:

>  Hello,
>
>
>
> What image did you start from, if any?
>
> i.e., core-image-minimal, core-image-sato, etc=E2=80=A6
>
> Is connman included?
>
>
>
> Regards,
>
> Cristian Iorga
>
> YP
>
> Intel Corporation
>
>
>
> *From:* openembedded-core-bounces@lists.openembedded.org [mailto:
> openembedded-core-bounces@lists.openembedded.org] *On Behalf Of *Tarek
> El-Sherbiny
> *Sent:* Friday, May 2, 2014 2:05 PM
> *To:* yocto@yoctoproject.org; openembedded-core@lists.openembedded.org
> *Subject:* [OE-core] DNS when using Static IP
>
>
>
> Hi.
>
>
>
> I'm trying to set my IP config to a static address.
>
>
>
> iface eth0 inet static
>
>      address 192.168.55.45
>
>      network 192.168.55.0
>
>      netmask 255.255.255.0
>
>      broadcast 192.168.55.255
>
>      gateway 192.168.55.1
>
>      dns-nameservers 192.168.10.2
>
>
>
> But I don't get the DNS server address to be included in /etc/resolv.conf
>
>
>
> If I run in dchp mode, then the resolv.conf is updated with my DNS addres=
s.
>
> Is there something I'm missing here in my setup?
>
>
>
>
>
> --
>
> *Tarek*
>

--089e0163387a9a4ec004f869f3fd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">No connman is not included.=C2=A0 Shall I include it and try=
?</p>
<div class=3D"gmail_quote">On 2 May 2014 13:01, &quot;Iorga, Cristian&quot;=
 &lt;<a href=3D"mailto:cristian.iorga@intel.com">cristian.iorga@intel.com</=
a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">






<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hello,<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">What image did you start =
from, if any?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">i.e., core-image-minimal,=
 core-image-sato, etc=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Is connman included?<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regards,<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Cristian Iorga<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">YP<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Intel Corporation<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><a name=3D"145bccf95e661649__MailEndCompose"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&q=
uot;;color:#1f497d"><u></u>=C2=A0<u></u></span></a></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">From:</sp=
an></b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;"> <a href=3D"mailto:openembedded-core-bounces@lists.open=
embedded.org" target=3D"_blank">openembedded-core-bounces@lists.openembedde=
d.org</a> [mailto:<a href=3D"mailto:openembedded-core-bounces@lists.openemb=
edded.org" target=3D"_blank">openembedded-core-bounces@lists.openembedded.o=
rg</a>]
<b>On Behalf Of </b>Tarek El-Sherbiny<br>
<b>Sent:</b> Friday, May 2, 2014 2:05 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a>; <a href=3D"mailto:openembedded-core@lists.openembed=
ded.org" target=3D"_blank">openembedded-core@lists.openembedded.org</a><br>
<b>Subject:</b> [OE-core] DNS when using Static IP<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Hi.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">I&#39;m trying to set my =
IP config to a static address.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">iface eth0 inet static<u>=
</u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">=C2=A0 =C2=A0 =C2=A0addre=
ss 192.168.55.45<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">=C2=A0 =C2=A0 =C2=A0netwo=
rk 192.168.55.0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">=C2=A0 =C2=A0 =C2=A0netma=
sk 255.255.255.0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">=C2=A0 =C2=A0 =C2=A0broad=
cast 192.168.55.255<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">=C2=A0 =C2=A0 =C2=A0gatew=
ay 192.168.55.1<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">=C2=A0 =C2=A0 =C2=A0dns-n=
ameservers 192.168.10.2<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">But I don&#39;t get the D=
NS server address to be included in /etc/resolv.conf<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">If I run in dchp mode, th=
en the resolv.conf is updated with my DNS address.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Is there something I&#39;=
m missing here in my setup?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">-- <u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><i><span style=3D"font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#666666">Tarek</span></=
i><u></u><u></u></p>
</div>
</div>
</div>
</div>

</blockquote></div>

--089e0163387a9a4ec004f869f3fd--
