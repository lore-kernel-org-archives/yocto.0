Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68733E00DF0; Thu,  1 Mar 2018 03:20:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4123FE00DC6
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 03:20:57 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id h23so6723504iob.11
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 03:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=i/wylIGj5z0OSxkNpd2V/Jo6I8Hb05TrdMI/Joimfmk=;
	b=YUCfUuC5bQUnosU1YlhBCVHbxgj1saGcqLb5ZdX9no4faystC0cWtKkv4h/v1q0mX6
	hRWVI14pLrSVXaAna+lwgZxGO3w8gHxSN+lZUKDLUtQ8GxGA+1jqY/Dc+/yVe9ojFDZb
	G7qCUJt0lqHQ2OlQaF4+JQ2TIEQjYbtc0AbE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=i/wylIGj5z0OSxkNpd2V/Jo6I8Hb05TrdMI/Joimfmk=;
	b=jsGV/ji5xLg6UYerjCGncp2qnJ4dr45/StWfd4wBfDjuyKMNXtsMOzs3SW6cUo+fY6
	/xVH1Z42qKsXh5cpBcVDRJpj2NmpUoSQY4qmy8S0h+DnVWbH5AkyDNTDL35OHD21f71n
	zjHbsdMnYzIyK7yqUsQS3qu261YAdxo3fjNVk18fm/9aBhCHZ4coCf9DV+sYh5FtmFUM
	yXKyaYz5uixTYL7Hb4OxMy6D2A5G7/d4CdVnTfRYF4AQUWxKjv06kb3hRPc/YkcFlgjQ
	1DM3vJRi3rEdZlKGpwl5Hafi7RUuDvaTbkbcLSwGFTCWB4NmaZKKHxHCZ0r578y3tIrg
	qyag==
X-Gm-Message-State: APf1xPBGlSaiOzrsbislx/UYZMhCNstp7WoQWd6z+aoMStqXZm8RHW42
	cWeX+tm6tpLm7PxYKyKw6nPSDFfzacXJXUtKNT/XsgO8
X-Google-Smtp-Source: AG47ELuq+5txXjbK6ZxS6LfZMh2A6I2fdCCfF/DGyKhthwoDjfHWY732apQTyGGfDRPuVX6w3PshU4gLo4NUPpymV24=
X-Received: by 10.107.173.12 with SMTP id w12mr1395096ioe.282.1519903257351;
	Thu, 01 Mar 2018 03:20:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Thu, 1 Mar 2018 03:20:56 -0800 (PST)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Thu, 1 Mar 2018 12:20:56 +0100
Message-ID: <CAALXFYzHCrGKX=5_WL+=mez7aiYOv7q8+9XLREwaPqTL_4WpBA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Yocto procedure to write generated image to hdd
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
X-List-Received-Date: Thu, 01 Mar 2018 11:20:59 -0000
Content-Type: multipart/alternative; boundary="001a114468f6bf69040566580d2b"

--001a114468f6bf69040566580d2b
Content-Type: text/plain; charset="UTF-8"

Hello forum.

Working with 'rocko' yocto branch. Yocto generates .ext4, .hddimg and .wic
images. I want to install the proper image to the HDD of my PC, in order to
use it as my default Linux distro.

I have been using the .wic image to boot from the USB pendrive until now,
writing it to the USB using 'dd'. This works fine, but because of some BIOS
issues, I had to modify mkefidisk.wks script to add 'noapic' option
(probably this is relevant).

To try to install the generated image in my hard disk, I write the .hddimg
file to a USB-pendrive using dd and the plug the pendrive and boot the PC.
A boot menu of GNU GRUB version 2.02 appears with two options:

    * install
    * noot

Editing the install option I can see this:

    setparams 'install'
    linux /vmlinuz LABEL=install-efi root=/dev/ram0 rootwait
console=ttyS0,115200 console=tty0
    initrd /initrd

And editing boot options I can see this:

    setparams 'boot'
    linux /vmlinuz LABEL=boot root=/dev/ram0 rootwait console=ttyS0,115200
console=tty0
    initrd /initrd

After choosing "install" option and pressing "Enter", a black screen
appears and nothing else happens.

I have tried editing 'install' option, adding 'noapic' after console=tty0,
and then I can see logs of kernel booting and after 0.5 secods the screen
is flooded of error lines:

    /init: line 65: sleep: command not found
    /init: line 65: sleep: command not found
    ...
    /init: line 65: sleep: command not found


Is this the proper way to install the generated image in the hard disk?
Maybe I am doing something wrong?

Thanks a lot in advance! :-)

Best regards,
  -- Ivan

--001a114468f6bf69040566580d2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello forum.</div><div><br></div><div>Working with &#=
39;rocko&#39; yocto branch. Yocto generates .ext4, .hddimg and .wic images.=
 I want to install the proper image to the HDD of my PC, in order to use it=
 as my default Linux distro.</div><div><br></div><div>I have been using the=
 .wic image to boot from the USB pendrive until now, writing it to the USB =
using &#39;dd&#39;. This works fine, but because of some BIOS issues, I had=
 to modify mkefidisk.wks script to add &#39;noapic&#39; option (probably th=
is is relevant).</div><div><br></div><div>To try to install the generated i=
mage in my hard disk, I write the .hddimg file to a USB-pendrive using dd a=
nd the plug the pendrive and boot the PC. A boot menu of GNU GRUB version 2=
.02 appears with two options:</div><div><br></div><div>=C2=A0 =C2=A0 * inst=
all</div><div>=C2=A0 =C2=A0 * noot</div><div><br></div><div>Editing the ins=
tall option I can see this:</div><div><br></div><div>=C2=A0 =C2=A0 setparam=
s &#39;install&#39;</div><div>=C2=A0 =C2=A0 linux /vmlinuz LABEL=3Dinstall-=
efi root=3D/dev/ram0 rootwait console=3DttyS0,115200 console=3Dtty0</div><d=
iv>=C2=A0 =C2=A0 initrd /initrd</div><div><br></div><div>And editing boot o=
ptions I can see this:</div><div><br></div><div>=C2=A0 =C2=A0 setparams &#3=
9;boot&#39;</div><div>=C2=A0 =C2=A0 linux /vmlinuz LABEL=3Dboot root=3D/dev=
/ram0 rootwait console=3DttyS0,115200 console=3Dtty0</div><div>=C2=A0 =C2=
=A0 initrd /initrd</div><div><br></div><div>After choosing &quot;install&qu=
ot; option and pressing &quot;Enter&quot;, a black screen appears and nothi=
ng else happens.</div><div><br></div><div>I have tried editing &#39;install=
&#39; option, adding &#39;noapic&#39; after console=3Dtty0, and then I can =
see logs of kernel booting and after 0.5 secods the screen is flooded of er=
ror lines:</div><div><br></div><div>=C2=A0 =C2=A0 /init: line 65: sleep: co=
mmand not found</div><div>=C2=A0 =C2=A0 /init: line 65: sleep: command not =
found</div><div>=C2=A0 =C2=A0 ...</div><div><span style=3D"color:rgb(34,34,=
34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-space:=
normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">=C2=
=A0 =C2=A0 /init: line 65: sleep: command not found</span><br></div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>Is this the =
proper way to install the generated image in the hard disk? Maybe I am doin=
g something wrong?</div><div><br></div><div>Thanks a lot in advance! :-)</d=
iv><div><br></div><div>Best regards,</div><div>=C2=A0 -- Ivan</div><div><br=
></div>
</div>

--001a114468f6bf69040566580d2b--
