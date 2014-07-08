Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33207E00576; Tue,  8 Jul 2014 02:39:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.82 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og101.obsmtp.com (exprod8og101.obsmtp.com [64.18.3.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB47AE004FF
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 02:39:28 -0700 (PDT)
Received: from mail-la0-f50.google.com ([209.85.215.50]) (using TLSv1) by
	exprod8ob101.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU7u8TxqRk+ZIW5kEcQOG0Z4x7GHlcCB7@postini.com;
	Tue, 08 Jul 2014 02:39:29 PDT
Received: by mail-la0-f50.google.com with SMTP id pv20so3716565lab.23
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 02:39:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Dzp+33e+zIVEhSY+3UNxrhi007beSwutUhs9u4ZEQDE=;
	b=c6RzQTksp6camF6yHZXXlS6O/7L6/SSlZoE5juVBupPwMwiHZxtIZdVHkh5e+BGxv6
	3M6yYhWvqWV0aTTviOoL1Awt9Nsq+3ZtssbJI5R/IiU7gsHK+T7QhQ5WmO3oIu4O9KqR
	G5gsfrTfpGfRasKcorMEWz50y4c4S1tPQDv01eR546AOI2FDI+tVPKg1sRRNALgKaysn
	n88avH15dUQgQHpGyg/BI5dwOUcR8sKd+XnJctucmsvOerOdQ+EhM25d4KHkVDUeiBSM
	/iG9W/IsQHgOTfKCFBt5cw+OrqLy7eaEL0PgwcI+vKfn+IvWr0N4F+zDaX4zNhNzGUb+
	Xvbg==
X-Gm-Message-State: ALoCoQmXEO6NEz0/YWNnLLqG1Q7aPSsapXlffrtrXgZXl2V0WcmJ1X6en4eYuizBh3//Y6ZPtzChjA/iO7YRfPNh90yhoZfUEuF48ot0IAe79y1svhzIEIjFnJDGqLCLzN6qAku/nsS/
X-Received: by 10.152.9.136 with SMTP id z8mr305099laa.98.1404812366528;
	Tue, 08 Jul 2014 02:39:26 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.152.9.136 with SMTP id z8mr305084laa.98.1404812366342; Tue,
	08 Jul 2014 02:39:26 -0700 (PDT)
Received: by 10.152.36.65 with HTTP; Tue, 8 Jul 2014 02:39:26 -0700 (PDT)
In-Reply-To: <53BB9D10.30104@windriver.com>
References: <CAJrRHk440JvVsSPcX7PKvbCqLTjz39QQLq1v9OejzRfkyE7iYg@mail.gmail.com>
	<53BB9D10.30104@windriver.com>
Date: Tue, 8 Jul 2014 17:39:26 +0800
Message-ID: <CAJrRHk5PM1Repp1hbYyTDDCv0KZLU7=j6iWm=vyORqhFNOt9bw@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Chong Lu <Chong.Lu@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QEMU in SDK
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
X-List-Received-Date: Tue, 08 Jul 2014 09:39:32 -0000
Content-Type: multipart/alternative; boundary=001a1132f54e12856b04fdab5e8e

--001a1132f54e12856b04fdab5e8e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Chong,

Actually, I have used ADT (Section 3.4 Optionally Building a Toolchain
Installer). I used the method -c populate_sdk and it generated a toolchain
script from my existing build workdir's core-image-XXX. I ran the toolchain
and it generated a sysroots dir to /path/to/sysroots (SDK_PATH).

Here's the directory structure:
+ SDK_PATH
--- + environment-setup-XXX
--- + site-config-XXX
--- + sysroots (dir)
---------- + XXX-poky-linux (dir)
---------- + XXX-pokysdk-linux (dir)
--- + version-XXX

The poky-linux dir does not contain a build dir and nowhere are the images
(kernel and ext3) to be found. Thus, the main problem is how can I ran qemu
with my SDK setup. This would lead to my sub question: since QEMU needs the
kernel and ext3 files, how can I automatically copy these images from my
existing build workdir to the newly created SDK dir.

Thanks,
Joseph





On Tue, Jul 8, 2014 at 3:26 PM, Chong Lu <Chong.Lu@windriver.com> wrote:

>  Hi Joseph,
>
> Maybe you can use adt-installer.
>
>
> http://www.yoctoproject.org/docs/latest/adt-manual/adt-manual.html#using-=
the-adt-installer
>
> Best Regards
> Chong
>
> On 07/08/2014 02:15 PM, Joseph Andrew de la Pe=C3=B1a wrote:
>
> Good day ALL,
>
>  I was wondering if it's possible to automatically add QEMU dependencies
> (kernel and ext3 files) into the script generated by do_populate_sdk? The=
n
> after running the generated SDK script, the images will reside in
> /path/to/sysroots/xxx-poky-xxx/tmp/images? Then just add an environment
> variable to the environment script to locate the images path. Is this
> possible?
>
>  The intention is to run QEMU in a host machine with extracted SDK. Any
> suggestions on other better ways to run QEMU in another machine w/ SDK
> would be great.
>
>  Thanks,
> Joseph
>
>
>
>

--001a1132f54e12856b04fdab5e8e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Chong,<div><br></div><div>Actually, I have used A=
DT (Section 3.4 Optionally Building a Toolchain Installer). I used the meth=
od -c populate_sdk and it generated a toolchain script from my existing bui=
ld workdir&#39;s core-image-XXX. I ran the toolchain and it generated a sys=
roots dir to /path/to/sysroots (SDK_PATH).</div>
<div><br></div><div>Here&#39;s the directory structure:</div><div>+ SDK_PAT=
H</div><div>--- + environment-setup-XXX</div><div>--- + site-config-XXX</di=
v><div>--- + sysroots (dir)</div><div>---------- + XXX-poky-linux (dir)</di=
v>
<div>---------- + XXX-pokysdk-linux (dir)</div><div>--- + version-XXX</div>=
<div><br></div><div>The poky-linux dir does not contain a build dir and now=
here are the images (kernel and ext3) to be found. Thus, the main problem i=
s how can I ran qemu with my SDK setup. This would lead to my sub question:=
 since QEMU needs the kernel and ext3 files, how can I automatically copy t=
hese images from my existing build workdir to the newly created SDK dir.</d=
iv>
<div><br></div><div>Thanks,</div><div>Joseph</div><div><br></div><div><br><=
/div><div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"=
gmail_quote">On Tue, Jul 8, 2014 at 3:26 PM, Chong Lu <span dir=3D"ltr">&lt=
;<a href=3D"mailto:Chong.Lu@windriver.com" target=3D"_blank">Chong.Lu@windr=
iver.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    Hi Joseph,<br>
    <br>
    Maybe you can use adt-installer.<br>
    <br>
   =20
    <a href=3D"http://www.yoctoproject.org/docs/latest/adt-manual/adt-manua=
l.html#using-the-adt-installer" target=3D"_blank">http://www.yoctoproject.o=
rg/docs/latest/adt-manual/adt-manual.html#using-the-adt-installer</a><br>
    <br>
    Best Regards<span class=3D"HOEnZb"><font color=3D"#888888"><br>
    Chong <br></font></span><div><div class=3D"h5">
    <br>
    <div>On 07/08/2014 02:15 PM, Joseph Andrew
      de la Pe=C3=B1a wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px">Good day
          ALL,</span>
        <div style=3D"font-family:arial,sans-serif;font-size:13px"><br>
        </div>
        <div style=3D"font-family:arial,sans-serif;font-size:13px">I was
          wondering if it&#39;s possible to automatically add QEMU
          dependencies (kernel and ext3 files) into the script generated
          by do_populate_sdk? Then after running the generated SDK
          script, the images will reside in
          /path/to/sysroots/xxx-poky-xxx/tmp/images? Then just add an
          environment variable to the environment script to locate the
          images path. Is this possible?</div>
        <div style=3D"font-family:arial,sans-serif;font-size:13px"><br>
        </div>
        <div style=3D"font-family:arial,sans-serif;font-size:13px">The
          intention is to run QEMU in a host machine with extracted SDK.
          Any suggestions on other better ways to run QEMU in another
          machine w/ SDK would be great.</div>
        <div style=3D"font-family:arial,sans-serif;font-size:13px"><br>
        </div>
        <div style=3D"font-family:arial,sans-serif;font-size:13px">Thanks,<=
/div>
        <div style=3D"font-family:arial,sans-serif;font-size:13px">Joseph</=
div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br></div>

--001a1132f54e12856b04fdab5e8e--
