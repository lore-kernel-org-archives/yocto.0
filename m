Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF818E0078E; Fri, 10 Oct 2014 09:55:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6B1DE0076C
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 09:54:53 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id hn15so7512054igb.5
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 09:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=eFGk0dbpUSZEzayd0uOyx2ljtlzFvWDCz3w14jMU6Cc=;
	b=pdne0lyI/Tc4d93Z0DOSBqfytl0XfwcSZXHYpYzkQlTDzxynQyb6SN6loZJUpDvefn
	T91gselOusI4O65RbW3CZkHhOiOkZJsLmyj/Zmu/D+s7gt5Rv8bNURe0xSOPuL/KHL3C
	AAfV5azX8HTHZyOWdVCNVu15C1EID0iQSttpty4DMtXLIuDHBI3MXif+pXlAbRQDrp+G
	/BGa/Q85IveeH8OIOke6ES9Ubmqia5OQevdZHUvqzZTwfdaRel3NOX3k5tF28t6xqnzC
	HwrNt3bQ6C2pRXbTpwtvRmfDbEr60ymPyw+5gBUtYf0VbilfMIHMZVeovR8b3tiUODm3
	Nrew==
MIME-Version: 1.0
X-Received: by 10.50.4.1 with SMTP id g1mr7991021igg.39.1412960092872; Fri, 10
	Oct 2014 09:54:52 -0700 (PDT)
Received: by 10.64.76.108 with HTTP; Fri, 10 Oct 2014 09:54:52 -0700 (PDT)
Received: by 10.64.76.108 with HTTP; Fri, 10 Oct 2014 09:54:52 -0700 (PDT)
In-Reply-To: <0ce4c396ad1544acbf2e1295f9536be1@SRV-MAIL.greenflex.group>
References: <0ce4c396ad1544acbf2e1295f9536be1@SRV-MAIL.greenflex.group>
Date: Fri, 10 Oct 2014 18:54:52 +0200
Message-ID: <CAALGJZbyrvjGPG-pLetY-3ACq5wD5uAV0r4TqK25cc2bNV85qg@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Simon Andrieu <sandrieu@greenflex.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: cellular modem connection with USB: how to have /dev/ttyACM0 interface?
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
X-List-Received-Date: Fri, 10 Oct 2014 16:55:06 -0000
Content-Type: multipart/alternative; boundary=001a11c3df846ae7290505146867

--001a11c3df846ae7290505146867
Content-Type: text/plain; charset=UTF-8

Am 10.10.2014 18:13 schrieb "Simon Andrieu" <sandrieu@greenflex.com>:
>
> Hi,
>
>
>
> I work on connecting a cellular module (with H24 Telit component) using
an USB interface to our Yocto distribution.
>
> The /dev/ttyACM0 interface is not mounted on the Yocto distribution I use
following USB connection. Here are the dmesg logs:
>
> [65133.056335] usb 2-1: new high speed USB device using musb-hdrc and
address 2
>
> [65133.214965] usb 2-1: device v22b8 p2d91 is not supported
>
> [65133.220520] usb 2-1: New USB device found, idVendor=22b8,
idProduct=2d91
>
> [65133.227508] usb 2-1: New USB device strings: Mfr=1, Product=2,
SerialNumber=0
>
> [65133.234924] usb 2-1: Product: Motorola Phone (H24)
>
> [65133.239929] usb 2-1: Manufacturer: Motorola, Inc.
>
> [65133.274108] usbcore: registered new interface driver cdc_acm
>
> [65133.280029] cdc_acm: v0.26:USB Abstract Control Model driver for USB
modems and ISDN adapters
>
>
>
> Maybe the used cdc-acm driver is not the right version.
>
> Would you know which cdc-acm driver version I should use please?
>
> How is it possible to change/upgrade the cdc-acm module?
>
> Would you have any advice to help me please?
>
Is udev/systemd up and running?

Regards,
Christian
>
>
> Thanks for your help.
>
>
>
> Regards,
>
> Simon Andrieu
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c3df846ae7290505146867
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 10.10.2014 18:13 schrieb &quot;Simon Andrieu&quot; &lt;<a href=3D"mailto=
:sandrieu@greenflex.com">sandrieu@greenflex.com</a>&gt;:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; I work on connecting a cellular module (with H24 Telit component) usin=
g an USB interface to our Yocto distribution.<br>
&gt;<br>
&gt; The /dev/ttyACM0 interface is not mounted on the Yocto distribution I =
use following USB connection. Here are the dmesg logs:<br>
&gt;<br>
&gt; [65133.056335] usb 2-1: new high speed USB device using musb-hdrc and =
address 2<br>
&gt;<br>
&gt; [65133.214965] usb 2-1: device v22b8 p2d91 is not supported<br>
&gt;<br>
&gt; [65133.220520] usb 2-1: New USB device found, idVendor=3D22b8, idProdu=
ct=3D2d91<br>
&gt;<br>
&gt; [65133.227508] usb 2-1: New USB device strings: Mfr=3D1, Product=3D2, =
SerialNumber=3D0<br>
&gt;<br>
&gt; [65133.234924] usb 2-1: Product: Motorola Phone (H24)<br>
&gt;<br>
&gt; [65133.239929] usb 2-1: Manufacturer: Motorola, Inc.<br>
&gt;<br>
&gt; [65133.274108] usbcore: registered new interface driver cdc_acm<br>
&gt;<br>
&gt; [65133.280029] cdc_acm: v0.26:USB Abstract Control Model driver for US=
B modems and ISDN adapters<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; Maybe the used cdc-acm driver is not the right version.<br>
&gt;<br>
&gt; Would you know which cdc-acm driver version I should use please?<br>
&gt;<br>
&gt; How is it possible to change/upgrade the cdc-acm module?<br>
&gt;<br>
&gt; Would you have any advice to help me please?<br>
&gt;<br>
Is udev/systemd up and running? </p>
<p dir=3D"ltr">Regards,<br>
Christian<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; Thanks for your help.<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Simon Andrieu<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--001a11c3df846ae7290505146867--
