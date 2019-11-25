Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1702.1574673297767294258
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 01:14:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=daPj9ICd;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49D96E00E23; Mon, 25 Nov 2019 01:14:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34388E0079A
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 01:14:56 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id d5so14904471ljl.4
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 01:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DvqdjRLmyTda828xCZEQvyRIdVSJHFWVc8Rtc0EBhmM=;
        b=daPj9ICdtWaQcGyhKA2mtrdxPvbWPML4/H//fdcRYHrui+VQ7W8HYA5ZFXTB4WSoSL
         c9qmVnRcHy1kKiyB0/3KL0LRAGWQnMUTtRBBxUWJajePR+TaALOpa355EM5GDKz/4beM
         gjAoBrfJKU4uNCOxmHpm2zSYBIomiS6uhA5Z7EQG3oGzpArCR9eNGzTiEdeBd1VpOnrW
         w8XcwFOtlQp4PL9kVFgG5km9EWdgUDgbK0g2jefHONEEbZscUxfeUq+Fa9hcdZAp1ohl
         hNbnejvNcIh0cQSLvITek2vFJMD/xXa3RP33H8oTzbSijcZRcfamQKbV9clRrX0DaK/1
         t1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DvqdjRLmyTda828xCZEQvyRIdVSJHFWVc8Rtc0EBhmM=;
        b=svFFAwT1NDLV4s3TsZEdi8dA6RlPFmukyq9OFoZSCm7HeAz2cISQtUaTde/ZigVqtJ
         /EP5KRWkqRze8OgoT5YDaQhEfYR/NPI9tdU2hW6z6C/fXhgCopuTieCIoXt/2PTL073n
         yXWzPcPvvkYU2veyHbSrCghasrG9/TWFCFNyLD54gRzMEVA/HviFKA8n78hMRAt91CX6
         5qxRNnfl27KtN+OPLEtYUxYmkRRrZArbyD9VGqRUpAwZ3kf1jCFx914Kc8+D+0IKc6of
         VWFUNMTRHz+gAX8ovkGGbZmDAMZJtV5jpja6CWi1L49hv3lAKcGPhIzB2R88hK6qrWL6
         CWGA==
X-Gm-Message-State: APjAAAXx8hxXwirTyQWOFPrQWj3VUaIHnPrZmf4uJ+qolPMtnAAp2KCO
	jk27YhglnTW07kVVs9Pmn3MNxi7XLJ29u1KxJMU=
X-Google-Smtp-Source: APXvYqwWrQbyFbB+1zBFMLYA+ueUWYFnYIGDyFw4y9ZlUSQ2gBIwN4AG0FXJTpxPvXtQGgMSxdHGMWMSAcFA0jhYYNo=
X-Received: by 2002:a2e:99c5:: with SMTP id l5mr13839317ljj.229.1574673294845;
 Mon, 25 Nov 2019 01:14:54 -0800 (PST)
MIME-Version: 1.0
References: <CABjzrPSGSdztQvLcQTsqs_vU+SaxQ9cCuTL2ceyHcq7eYuD_Yg@mail.gmail.com>
In-Reply-To: <CABjzrPSGSdztQvLcQTsqs_vU+SaxQ9cCuTL2ceyHcq7eYuD_Yg@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Mon, 25 Nov 2019 10:14:43 +0100
Message-ID: <CAAx3WaCJFhg0MGJtHQyX=2ToAmBLm4uvARcDTTn+bZfOVEifwA@mail.gmail.com>
Subject: Re: [yocto] Installing a Kernel module.
To: Shravan Singh <shravan@bluesparq.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000608f7a059828321d"

--000000000000608f7a059828321d
Content-Type: text/plain; charset="UTF-8"

Hi Shravan,

as pointed out in the documentation [1], you need to specify   module_conf_*
and KERNEL_MODULE_PROBECONF.
Here is an example coming from one of my machine:

# g_multi: serial, RNDIS and sotrage over usbKERNEL_MODULE_PROBECONF
+= " g_multi"KERNEL_MODULE_AUTOLOAD += " g_multi"module_conf_g_multi =
"options g_multi file=/dev/mtdblock9"

Gabriele
[1]
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#migration-1.7-kernel-module-autoloading

On Thu, Nov 21, 2019 at 10:15 AM Shravan Singh <shravan@bluesparq.com>
wrote:

> Hello All,
>
> So I am having a little problem in understanding why I am unable to
> autoload a module in my image.
>
> So I made modifications to
> 1. KCONFIG, MAKEFILE
> 2. Added a source and header file to driver/input/touchscreen
> 3. Added a file in /boot/arm/dts/overlays
> 4. Created a patch and added that patch in
> /meta-raspberrypi-warrior/recipes/kernel/linux/linux-raspberrypi_4.19.bb
> 5. Added the overlay file in rpi_base.inc
> 6. In my local.conf added it under KERNEL_MODULE_AUTOLOAD_append
>
> created the image without any issues. But after I install that Image I do
> not see the module anymore?
>
> Why Is that Am I missing something?
>
>
> Regards,
> Shravan Singh
> (239) 243-0838
>
> Blue Sparq, Inc.
> 928 NE 24th Lane unit 4 and 5.
> Cape Coral, FL 33993
>
> IMPORTANT: The contents of this email and any attachments are
> confidential. They are intended for the named recipient(s) only. If you
> have received this email by mistake, please notify the sender immediately
> and do not disclose the contents to anyone or make copies thereof.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000608f7a059828321d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Shravan,</div><div><br></div><div>as pointed out i=
n the documentation [1], you need to specify=C2=A0=C2=A0
<font size=3D"4"><span style=3D"font-family:arial,sans-serif">            <=
font size=3D"2"><code class=3D"gmail-filename"><span style=3D"font-family:a=
rial,sans-serif">module_conf_*</span> <span style=3D"font-family:arial,sans=
-serif">and</span> <span style=3D"font-family:arial,sans-serif"><code class=
=3D"gmail-filename"><span style=3D"font-family:arial,sans-serif">KERNEL_MOD=
ULE_PROBECONF</span>.</code></span></code></font></span></font></div><div><=
font size=3D"4"><span style=3D"font-family:arial,sans-serif"><font size=3D"=
2"><code class=3D"gmail-filename"><span style=3D"font-family:arial,sans-ser=
if"><code class=3D"gmail-filename"><font face=3D"arial,sans-serif">Here is =
an example coming from one of my machine:</font></code></span></code></font=
></span></font></div><div><pre class=3D"gmail-code gmail-highlight" lang=3D=
"conf"><span id=3D"gmail-LC19" class=3D"gmail-line" lang=3D"conf"><span cla=
ss=3D"gmail-c"># g_multi: serial, RNDIS and sotrage over usb</span></span>
<span id=3D"gmail-LC20" class=3D"gmail-line" lang=3D"conf"><span class=3D"g=
mail-n">KERNEL_MODULE_PROBECONF</span> +=3D <span class=3D"gmail-s2">&quot;=
 g_multi&quot;</span></span>
<span id=3D"gmail-LC21" class=3D"gmail-line" lang=3D"conf"><span class=3D"g=
mail-n">KERNEL_MODULE_AUTOLOAD</span> +=3D <span class=3D"gmail-s2">&quot; =
g_multi&quot;</span></span>
<span id=3D"gmail-LC22" class=3D"gmail-line" lang=3D"conf"><span class=3D"g=
mail-n">module_conf_g_multi</span> =3D <span class=3D"gmail-s2">&quot;optio=
ns g_multi file=3D/dev/mtdblock9&quot;</span></span>
</pre><font size=3D"4"><span style=3D"font-family:arial,sans-serif"><font s=
ize=3D"2"><code class=3D"gmail-filename"><span style=3D"font-family:arial,s=
ans-serif"><code class=3D"gmail-filename"></code></span></code></font></spa=
n></font></div><div><font size=3D"4"><span style=3D"font-family:arial,sans-=
serif"><font size=3D"2"><code class=3D"gmail-filename"><span style=3D"font-=
family:arial,sans-serif"><code class=3D"gmail-filename"><font face=3D"arial=
,sans-serif">Gabriele</font><br></code></span></code></font></span></font><=
/div><div><span style=3D"font-family:arial,sans-serif"><font size=3D"4"><fo=
nt size=3D"2"><code class=3D"gmail-filename"><code class=3D"gmail-filename"=
>[1] <a href=3D"https://www.yoctoproject.org/docs/latest/mega-manual/mega-m=
anual.html#migration-1.7-kernel-module-autoloading">https://www.yoctoprojec=
t.org/docs/latest/mega-manual/mega-manual.html#migration-1.7-kernel-module-=
autoloading</a></code></code></font></font></span></div><div><span style=3D=
"font-family:arial,sans-serif"></span></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 21, 2019 at 10:15 A=
M Shravan Singh &lt;<a href=3D"mailto:shravan@bluesparq.com">shravan@bluesp=
arq.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hello All,</div><div><br></div><div>So I am ha=
ving a little problem in understanding why I am unable to autoload a module=
 in my image.</div><div><br></div><div>So I made modifications to <br></div=
><div>1. KCONFIG, MAKEFILE <br></div><div>2. Added a source and header file=
 to driver/input/touchscreen <br></div><div>3. Added a file in /boot/arm/dt=
s/overlays</div><div>4. Created a patch and added that patch in /meta-raspb=
errypi-warrior/recipes/kernel/linux/<a href=3D"http://linux-raspberrypi_4.1=
9.bb" target=3D"_blank">linux-raspberrypi_4.19.bb</a></div><div>5. Added th=
e overlay file in rpi_base.inc</div><div>6. In my local.conf added it under=
 KERNEL_MODULE_AUTOLOAD_append</div><div><br></div><div>created the image w=
ithout any issues. But after I install that Image I do not see the module a=
nymore?</div><div><br></div><div>Why Is that Am I missing something?</div><=
div><br></div><div><br></div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"b=
ackground-color:rgba(255,255,255,0)"></span>Regards,<br>Shravan Singh<br>(2=
39) 243-0838<br><br>Blue Sparq, Inc.<br>928 NE 24th Lane unit 4 and 5.<br>C=
ape Coral, FL 33993<br><font size=3D"1"><br>IMPORTANT: The contents of this=
 email and any attachments are confidential. They are intended for the name=
d recipient(s) only. If you have received this email by mistake, please not=
ify the sender immediately and do not disclose the contents to anyone or ma=
ke copies thereof.</font><br></div></div></div></div></div></div></div></di=
v></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000608f7a059828321d--
