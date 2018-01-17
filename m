Return-Path: <ngthanh.vu94@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B340FE00EE0; Wed, 17 Jan 2018 02:02:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ngthanh.vu94[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EAA2E008FB
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 02:02:36 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id l17so10345307ioc.3
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 02:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HgueUrYM9vZYKKj+78u7njiA3DibJ0229QAbTpd1vJI=;
	b=eD7JlNchIR7bq7Tzq98rrJw47CODqcSa5Qhmtqvwaj0xhc6VDViP0O5JEIIIG/asia
	QZ/B36wFyZ+PHI8BTz+WJutDbtf1fUNZy7T/dopMcEc2731UgXDCpKoconxs8ytkkCaB
	sEE8fL7wX+Xsv1BA64hvBxpNKd116wbjkFQU8FUzCDDOuPjSmTw5clbCv/0cWUE94xbH
	KS5d6D258nF+9S0AcBQBe5Nz4DJvj7t5NexasgSrLGEHS2Xc6mIbfLi/41lHJ0FBDELC
	3s+6ifBfSFNdo7ifK8wahcW9i4K3iqdxFYgXoEoLWmb1GCSBzAJY3c1L/FEp4UOyLNCq
	WZGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HgueUrYM9vZYKKj+78u7njiA3DibJ0229QAbTpd1vJI=;
	b=gsoZOPjASnq94bErt9N4M7ssP2vWAK5xHDZ169qINcgBsKnjsAP4NZyzovO2t5ujBP
	oIrktMnS92ztHc47LtEU/3qbTIb8ioEJ35UigP9Uw7YrK6iKh3Ph+cUeJIS9fJDWNIeg
	1pV8HuBDwo/CHiq7I29JwN83+TCeimbQW65PTZ92yLgCaO8KM8HPDCwCGkCuoKaD3M2o
	RGamKbqsA7e0bfVfpQWoj8sJUFAjKoSMfUnRJI9NqCQ2gqRI44IBEpvm3SZEF6GPRk3l
	dfkuCCTwW/7i81xLENXIyLsnVryBwMceoae/+j11Ljw3DSAyNtvA2EoKSU20+7bhpw9b
	yBlQ==
X-Gm-Message-State: AKwxytef0wyH5xmbelxKZt9ITufydfyxiFdg0DkORIcV21W01wExJhYu
	AQgxkhIdmHXA9OvuUOjsXctLPZh1+AxH8Xfl4POcLtFz
X-Google-Smtp-Source: ACJfBosejoEBiNU/7rpBU2rsAdyLR3Sr0RLvt3+cdn9NmuvBwfPKQR0/5Tn57etsiursWIRlrW41Ly88Oh35DkVGoW4=
X-Received: by 10.107.158.211 with SMTP id h202mr5283708ioe.129.1516183356020; 
	Wed, 17 Jan 2018 02:02:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.16 with HTTP; Wed, 17 Jan 2018 02:02:35 -0800 (PST)
From: =?UTF-8?B?Tmd1eeG7hW4gVGhhbmggVsWpIA==?= <ngthanh.vu94@gmail.com>
Date: Wed, 17 Jan 2018 17:02:35 +0700
Message-ID: <CAGJSYqnimr_cqs6DxVptTOvpX-=QOJuADygVtYp6uDjf2+VVvw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error when trying to customize the kernel via menuconfig
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
X-List-Received-Date: Wed, 17 Jan 2018 10:02:37 -0000
Content-Type: multipart/alternative; boundary="001a11409a4059a0110562f5f243"

--001a11409a4059a0110562f5f243
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I have configured the kernel to remove the TCP/IP Networking and IPv6
component in the "Networking support" part. It builds and boots fine.
However, when I run my own .ko module, there is an error like this:

module1: disagrees about version of symbol dev_warn
> module1: Unknown symbol dev_warn (err -22)
> module1: disagrees about version of symbol _dev_info
> module1: Unknown symbol _dev_info (err -22)
> module1: disagrees about version of symbol device_create_file
> module1: Unknown symbol device_create_file (err -22)
> module1: disagrees about version of symbol dev_err
> module1: Unknown symbol dev_err (err -22)
> module1: disagrees about version of symbol device_remove_file
> module1: Unknown symbol device_remove_file (err -22)
> insmod: can't insert './module1.ko': Invalid argument
> module2: Unknown symbol usb_interface_id (err 0)
> module2: Unknown symbol usb_assign_descriptors (err 0)
> module2: Unknown symbol usb_string_ids_tab (err 0)
> module2: Unknown symbol usb_composite_unregister (err 0)
> module2: Unknown symbol usb_add_function (err 0)
> module2: Unknown symbol usb_composite_probe (err 0)
> module2: disagrees about version of symbol _dev_info
> module2: Unknown symbol _dev_info (err -22)
> module2: Unknown symbol usb_composite_overwrite_options (err 0)
> module2: disagrees about version of symbol device_create
> module2: Unknown symbol device_create (err -22)
> module2: Unknown symbol usb_ep_autoconfig (err 0)
> module2: disagrees about version of symbol dev_err
> module2: Unknown symbol dev_err (err -22)
> module2: Unknown symbol usb_ep_autoconfig_reset (err 0)
> module2: Unknown symbol device_destroy (err -22)
> module2: Unknown symbol usb_add_config (err 0)
> insmod: can't insert './module2.ko': unknown symbol in module, or unknown
> parameter
>

This is crazy since why the hell disables the networking part can result in
USB or Device function unresolved? Is there any explanation or clues?
Basically I do not need to use networking part in my application.

>

--001a11409a4059a0110562f5f243
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div><br></div><div>I have configured the k=
ernel to remove the TCP/IP Networking and IPv6 component in the &quot;Netwo=
rking support&quot; part. It builds and boots fine. However, when I run my =
own .ko module, there is an error like this:</div><div><br></div><div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">module1: disagrees about versi=
on of symbol dev_warn<br>module1: Unknown symbol dev_warn (err -22)<br>modu=
le1: disagrees about version of symbol _dev_info<br>module1: Unknown symbol=
 _dev_info (err -22)<br>module1: disagrees about version of symbol device_c=
reate_file<br>module1: Unknown symbol device_create_file (err -22)<br>modul=
e1: disagrees about version of symbol dev_err<br>module1: Unknown symbol de=
v_err (err -22)<br>module1: disagrees about version of symbol device_remove=
_file<br>module1: Unknown symbol device_remove_file (err -22)<br>insmod: ca=
n&#39;t insert &#39;./module1.ko&#39;: Invalid argument<br>module2: Unknown=
 symbol usb_interface_id (err 0)<br>module2: Unknown symbol usb_assign_desc=
riptors (err 0)<br>module2: Unknown symbol usb_string_ids_tab (err 0)<br>mo=
dule2: Unknown symbol usb_composite_unregister (err 0)<br>module2: Unknown =
symbol usb_add_function (err 0)<br>module2: Unknown symbol usb_composite_pr=
obe (err 0)<br>module2: disagrees about version of symbol _dev_info<br>modu=
le2: Unknown symbol _dev_info (err -22)<br>module2: Unknown symbol usb_comp=
osite_overwrite_options (err 0)<br>module2: disagrees about version of symb=
ol device_create<br>module2: Unknown symbol device_create (err -22)<br>modu=
le2: Unknown symbol usb_ep_autoconfig (err 0)<br>module2: disagrees about v=
ersion of symbol dev_err<br>module2: Unknown symbol dev_err (err -22)<br>mo=
dule2: Unknown symbol usb_ep_autoconfig_reset (err 0)<br>module2: Unknown s=
ymbol device_destroy (err -22)<br>module2: Unknown symbol usb_add_config (e=
rr 0)<br>insmod: can&#39;t insert &#39;./module2.ko&#39;: unknown symbol in=
 module, or unknown parameter<br></blockquote><div><br></div><div>This is c=
razy since why the hell disables the networking part can result in USB or D=
evice function unresolved? Is there any explanation or clues? Basically I d=
o not need to use networking part in my application.</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">=C2=A0</blockquote></div></div>

--001a11409a4059a0110562f5f243--
