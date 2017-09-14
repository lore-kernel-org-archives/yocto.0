Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D5C6E00CC4; Thu, 14 Sep 2017 06:12:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B915E00CB4
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 06:12:04 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id 189so5774407wmh.1
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 06:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6itOKtakN6FqU3B8dSzeIO2wRNbYnJ9Zz/xZihkiAHs=;
	b=qCKZLwnnzSLJvdCVU1kPrHczEeDQ9JmQZpYZ8bmCN+qVAm3jkqfbhcUIPi74pU9QKm
	0ZO3bbRRxsp/qEjyzTODLGV19fcbmterCxEXtBoJ/uXxFZaUMAaFRuFdcUOatsaQ1Ctx
	Fimq+TKtBMbRcR5KT2w/YYmd6aw6uRHuyAOO4wGgQ/XemqUlm4fpYKSuJpQaGSTtliUi
	oAQ5It6gIt1i7SMqtr6H/D1nZ4KHmhKd6Sm3fcU+ZJvGyUWZqCI9Ylp3M/Gd+uJusscY
	kDqd25E+1Yc/RzeDucKw4uwmG6bgleQj5H6/tsMAGZRkpKR5fFv4k2GfVBH2Yvy74bH6
	YlTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6itOKtakN6FqU3B8dSzeIO2wRNbYnJ9Zz/xZihkiAHs=;
	b=Q68AaGMny4Oqhf3xVug9D+4Q4hxOv5qsZ9ETv5b9wAWSkyCCgJcms1a4taW/rmj/3W
	PDX8b7LXY37aGd30iG6f5Cgnt6QGwGo59zrWO2+1OYASkPcdR1RJxhVMj3vy+WKrXh/l
	mw3CzXrhxejy4vF3amfsDDjPLn2GiRhGP0iohyrVODioThasE1f4N1NP62LJldm1L86O
	OcdNQAW5UPaEy3pcJkt+a+jm4g6kJs6/ChBJBEHDUXgKNv/qoVz9VxwAaLENbIZaCIb9
	Lkqq2fFiRFaDUQGq7GlK0vxNscmNLs5LLHna7q+4ifXRwVJchfJPZBHxmTwjEtsyXDCO
	sIGQ==
X-Gm-Message-State: AHPjjUguPNvG/nA1+TFS+Xm/1QrP4JbN9doidS0z0I8FJht490y6Li0U
	exehJt1ec2LCV2V84b9ZO/Xp/OD30h567Qw4ZV85NA==
X-Google-Smtp-Source: AOwi7QDdVQMO8TZb6eZlpndg5Kd+txs6iEgOJH2FtJslW/vpASD7guP10eFoSKixRH+Rfv5mmWDJrhQ1S+jqkRE6j7s=
X-Received: by 10.28.7.83 with SMTP id 80mr1934903wmh.158.1505394723172; Thu,
	14 Sep 2017 06:12:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.208.10 with HTTP; Thu, 14 Sep 2017 06:11:22 -0700 (PDT)
X-Originating-IP: [109.150.130.236]
In-Reply-To: <9c644336-0647-865a-6351-a1f221395074@embexus.com>
References: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
	<49e17973-5ff9-de9b-c3e3-3036ff5ef068@embexus.com>
	<CAMKF1sp6iZA+0RZ_wM8ZCAWeAd-P2ecmaOA6Z0NMY_7X3L1q7g@mail.gmail.com>
	<9c644336-0647-865a-6351-a1f221395074@embexus.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 14 Sep 2017 14:11:22 +0100
Message-ID: <CAK18fxHE3J+B08=ukAddbRAWX2NSz=C1iEHp2hcUDgHvFYBSMw@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] enable serial communication pi 3
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
X-List-Received-Date: Thu, 14 Sep 2017 13:12:05 -0000
Content-Type: multipart/alternative; boundary="001a11443776b8c804055926050f"

--001a11443776b8c804055926050f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 13, 2017 at 6:58 PM, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:

>
>
> On 13.09.2017 19:55, Khem Raj wrote:
>
>
>
> On Wed, Sep 13, 2017 at 12:27 AM, Ayoub Zaki <ayoub.zaki@embexus.com>
> wrote:
>
>> I ran into the same problem:
>>
>> ENABLE_UART =3D "1" is not enough you should also add INSTALL_append=3D =
"
>> rpi-config" to your local.conf and Serial port will be enabled.
>>
>
> =E2=80=8Bthis should be automatically pulled in if you built a sdcard ima=
ge.=E2=80=8B
>
> I'm using Wic so it does not work unless I extend the machine config with=
 :
> MACHINE_EXTRA_RRECOMMENDS +=3D " bcm2835-bootfiles rpi-config"
>

That is correct. It is because the sdcard generation class includes this
dependency when building an sdcard.

BTW: bcm2835-bootfiles depends on rpi-config.

About wic, this sounds like an issue anyway. wic uses IMAGE_BOOT_FILES.
This variable includes the blobs provided by bcm28350-bootfiles and, in the
same place, the config gets deployed (due to the dependency above). But in
the wic case nobody triggers the compilation of these packages making wic
to just ignore that specific entry in IMAGE_BOOT_FILES. This sounds like a
bug to me.

If you agree could you create an issue in github and maybe help us fix it
as well? At this point I think bcm2835-bootfiles should be
a MACHINE_ESSENTIAL_EXTRA_RDEPENDS.

--
Andrei Gherzan

--001a11443776b8c804055926050f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Sep 13, 2017 at 6:58 PM, Ayoub Zaki <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexus.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF"><span class=3D"gmail-">
    <p><br>
    </p>
    <br>
    <div class=3D"gmail-m_1536317809628253576moz-cite-prefix">On 13.09.2017=
 19:55, Khem Raj wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div style=3D"font-family:monospace,monospace"><br>
        </div>
        <div class=3D"gmail_extra"><br>
          <div class=3D"gmail_quote">On Wed, Sep 13, 2017 at 12:27 AM,
            Ayoub Zaki <span dir=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@e=
mbexus.com" target=3D"_blank">ayoub.zaki@embexus.com</a>&gt;</span>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div bgcolor=3D"#FFFFFF">
                <p>I ran into the same problem:<br>
                </p>
                <p>ENABLE_UART =3D &quot;1&quot; is not enough you should a=
lso add
                  INSTALL_append=3D &quot; rpi-config&quot; to your local.c=
onf and
                  Serial port will be enabled.</p>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>
              <div style=3D"font-family:monospace,monospace">=E2=80=8Bthis =
should be
                automatically pulled in if you built a sdcard image.=E2=80=
=8B</div>
            </div>
          </div>
        </div>
      </div>
    </blockquote></span>
    I&#39;m using Wic so it does not work unless I extend the machine confi=
g
    with :<br>
    MACHINE_EXTRA_RRECOMMENDS +=3D &quot; bcm2835-bootfiles rpi-config&quot=
;</div></blockquote><div><br></div><div>That is correct. It is because the =
sdcard generation class includes this dependency when building an sdcard.</=
div><div><br></div><div>BTW: bcm2835-bootfiles depends on rpi-config.</div>=
<div><br></div><div>About wic, this sounds like an issue anyway. wic uses I=
MAGE_BOOT_FILES. This variable includes the blobs provided by bcm28350-boot=
files and, in the same place, the config gets deployed (due to the dependen=
cy above). But in the wic case nobody triggers the compilation of these pac=
kages making wic to just ignore that specific entry in IMAGE_BOOT_FILES. Th=
is sounds like a bug to me.</div><div><br></div><div>If you agree could you=
 create an issue in github and maybe help us fix it as well? At this point =
I think bcm2835-bootfiles should be a=C2=A0MACHINE_ESSENTIAL_EXTRA_RDEPENDS=
.=C2=A0</div><div><br></div><div>--<br></div><div>Andrei Gherzan=C2=A0</div=
></div></div></div>

--001a11443776b8c804055926050f--
