Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4720.1583246680737252294
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 06:44:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=cXJxHOg6;
 spf=softfail (domain: soccasys.com, ip: 140.211.169.56, mailfrom: laurent.gauthier@soccasys.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56AC1E0107C; Tue,  3 Mar 2020 06:44:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10786E00736
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2020 06:44:38 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id t129so936474vkg.6
        for <yocto@yoctoproject.org>; Tue, 03 Mar 2020 06:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E9iLMkTKmvLnOjZDObBhxx5EregwVXo4B47VikjKCzM=;
        b=cXJxHOg6f+tKj2CgbwSf761xqXAnnxiyFsN+NrnKrvvj6YmvKqo3lVRPii/yNCSels
         LJJXEQlcnSqkpSuQpEWeLZX1EqLbEIQARb3hO1KNx8/IVD87MvlTwRzqGujBE3ZBFUaD
         NXMBy6FoouxD/sKLTipgan/12pl4URBRUf7PrjAhgO+FGrvI+VPUzBx8gU5fJAkL/Bus
         ZxjJHZgVM6oDkAG9hrTTiDq4sxT8RxAkhxAhmkKGKp4xPxtk89EFfOVh2SVevYjSZLX1
         z3ZssOAHLo+jItmy+QUFccrKtMkV3zNve/sLqYi1lu7neffOB1ZV3+FNEXRl/Z8zZ+du
         2DnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E9iLMkTKmvLnOjZDObBhxx5EregwVXo4B47VikjKCzM=;
        b=pkns7YFEO8CGfDduAu8z/WqHOtvjmu3PZnswAzKiy4flu01D4MF2YAiu1/GgzOAJOO
         W8JKUtARB9nSnXw3ure5iLjDXVpPj8o2qVvEn6AHIo1c7eU/VcQctREb840w+LKS+eB7
         FR2tiErEYxObSfxBYlpBKv3c0nwH4fCH4KnYynD+s/+RKWEPbSK4eNdjt2RxHu8sSfEs
         kTfa4j82dTxYrfCC3gR3R7r1+4hAzL/74fbuSNWjG3jKZvvZ1nzdRmMyJkng6lKWPulU
         qEJPRiZUiNUsB6/F5TQ2xDz72Yw8pbT1DSLfjWAbJDx01P9IL3GcP64XUdZNMaSV4hy8
         cHig==
X-Gm-Message-State: ANhLgQ0TXgAVcdQQDejPyuR8Rjp08Eir7cY/QyndP48IUjPudparvrAW
	9gfjiWGknOYQCok6lsepUQ9VVyymqDpJ39IaBedkdA==
X-Google-Smtp-Source: ADFU+vvIrTbe75yPWbJuH/Ai5XSzoDzMlOBXu4DqibJAWmejOqgm1Ghcfm11oZBcCDsxfNOqRLvLshJt2c8mSqxxSfE=
X-Received: by 2002:a05:6122:332:: with SMTP id d18mr3004259vko.89.1583246677146;
 Tue, 03 Mar 2020 06:44:37 -0800 (PST)
MIME-Version: 1.0
References: <6487393d-3010-a2db-cc33-ddbab9506d84@faresoftware.it>
In-Reply-To: <6487393d-3010-a2db-cc33-ddbab9506d84@faresoftware.it>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 3 Mar 2020 15:44:42 +0100
Message-ID: <CAGbd71ShTmoR8S44W5-dTS3uPuXvPLhLH8SuU0gwH-LtH8-72Q@mail.gmail.com>
Subject: Re: [yocto] IMX6DL: Rename dtb in boot partition
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c89145059ff45709"

--000000000000c89145059ff45709
Content-Type: text/plain; charset="UTF-8"

Ciao Mauro,

My best guess is that you should do the following:

1. Create a linux-imx_%.bbappend recipe in your layer (assuming you have
one).
2. Add a do_install_append function which overrides $D/boot/
imx6dl-sabresd.dtb

linux-imx is the name of the kernel recipe if you are using an NXP BSP. If
you are using another BSP the name of the kernel recipe might be different,
please adjust as required.

Prior to proceeding to this you should check that you can see your files in
your Yocto build directory under:

* .../tmp/work/imx*/linux-imx/*/packages-split/kernel-devicetree/

The content of the /boot partition normally includes content from the
kernel-devicetree package (created by the kernel recipe), because these are
installed under /boot in the rootfs.

After making the changes suggested above just cleanall + rebuild your
kernel and verify that the DTB file has been properly overwritten (look
again at this same directory I point you to above, compare file checksums
to ensure the copy worked).

If that worked, then just cleanall your final image, and rebuild it.

Hopefully this will work for you.

I hope this helps.

Kind regards, Laurent.

On Tue, Mar 3, 2020 at 3:16 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all.
>
> My recipes procude some dtb.
>
> imx6dl-sabresd-disp1.dtb
> imx6dl-sabresd-disp2.dtb
>
>
> The image recipe gives an sdcard file with 2 partition: p1 and p2
>
> p1 is vfat with zImage and imx6dl-sabresd.dtb
>
> p2 is ext4 with the applications.
>
> In p1 I find imx6dl-sabresd.dtb, imx6dl-sabresd-disp1.dtb and
> imx6dl-sabresd-disp2.dtb
>
> I need to replace imx6dl-sabresd.dtb with that imx6dl-sabresd-disp1.dtb
>
> I'd like to do this
>
> cp -f imx6dl-sabresd-disp1.dtb imx6dl-sabresd.dtb
>
>
> How can I do that?
>
>
> There is a way to rename imx6dl-sabresd-disp1.dtb in imx6dl-sabresd.dtb
> inside some task?
>
> do_rootfs, do_image or others?
>
>
> Best regards,
>
>   MZ
>
> 
>


-- 
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com

--000000000000c89145059ff45709
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ciao Mauro,</div><div><br></div><div>My best guess is=
 that you should do the following:</div><div><br></div><div>1. Create a lin=
ux-imx_%.bbappend recipe in your layer (assuming you have one).</div><div>2=
. Add a do_install_append function which overrides $D/boot/<font size=3D"-1=
"><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">imx6dl-sabresd.dtb<=
/font></font></font></font></div><div><font size=3D"-1"><font size=3D"-1"><=
font size=3D"-1"><font size=3D"-1"><br></font></font></font></font></div><d=
iv><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">=
linux-imx is the name of the kernel recipe if you are using an NXP BSP. If =
you are using another BSP the name of the kernel recipe might be different,=
 please adjust as required.</font></font></font></font></div><div><font siz=
e=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><br></font><=
/font></font></font></div><div><font size=3D"-1"><font size=3D"-1"><font si=
ze=3D"-1"><font size=3D"-1">Prior to proceeding to this you should check th=
at you can see your files in your Yocto build directory under:</font></font=
></font></font></div><div><font size=3D"-1"><font size=3D"-1"><font size=3D=
"-1"><font size=3D"-1"><br></font></font></font></font></div><div><font siz=
e=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">* .../tmp/wo=
rk/imx*/linux-imx/*/packages-split/kernel-devicetree/</font></font></font><=
/font></div><div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><fon=
t size=3D"-1"><br></font></font></font></font></div><div><font size=3D"-1">=
<font size=3D"-1"><font size=3D"-1"><font size=3D"-1">The content of the /b=
oot partition normally includes content from the kernel-devicetree package =
(created by the kernel recipe), because these are installed under /boot in =
the rootfs.</font></font></font></font></div><div><font size=3D"-1"><font s=
ize=3D"-1"><font size=3D"-1"><font size=3D"-1"><br></font></font></font></f=
ont></div><div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font =
size=3D"-1">After making the changes suggested above just cleanall + rebuil=
d your kernel and verify that the DTB file has been properly overwritten (l=
ook again at this same directory I point you to above, compare file checksu=
ms to ensure the copy worked).</font></font></font></font></div><div><font =
size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><br></fon=
t></font></font></font></div><div><font size=3D"-1"><font size=3D"-1"><font=
 size=3D"-1"><font size=3D"-1">If that worked, then just cleanall your fina=
l image, and rebuild it.</font></font></font></font></div><div><font size=
=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><br></font><=
/font></font></font></div><div><font size=3D"-1"><font size=3D"-1"><font si=
ze=3D"-1"><font size=3D"-1">Hopefully this will work for you.</font></font>=
</font></font></div><div><font size=3D"-1"><font size=3D"-1"><font size=3D"=
-1"><font size=3D"-1"><br></font></font></font></font></div><div><font size=
=
=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">I hope this =
helps.</font></font></font></font></div><div><font size=3D"-1"><font size=
=3D"-1"><font size=3D"-1"><font size=3D"-1"><br></font></font></font></fon=
t></div><div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font si=
ze=3D"-1">Kind regards, Laurent.<br></font></font></font></font></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, Mar 3, 2020 at 3:16 PM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresof=
tware.it">mauro@faresoftware.it</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
  

    
  
  <div>
    <p><font size=3D"-1">Hi all.</font></p>
    <p><font size=3D"-1">My recipes procude some dtb.</font></p>
    <p><font size=3D"-1">imx6dl-sabresd-disp1.dtb</font><br>
      <font size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp2.dtb</font><=
/font></p>
    <p><br>
    </p>
    <p><font size=3D"-1">The image recipe gives an sdcard file with 2
        partition: p1 and p2</font></p>
    <p><font size=3D"-1">p1 is vfat with zImage and imx6dl-sabresd.dtb</fo=
nt></p>
    <p><font size=3D"-1">p2 is ext4 with the applications.<br>
      </font></p>
    <p><font size=3D"-1">In p1 I find imx6dl-sabresd.dtb, </font><font siz=
e=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1.dtb and=C2=A0 </font></font=
><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp2=
.dtb</font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1">I need to replace
          imx6dl-sabresd.dtb with that </font></font><font size=3D"-1"><fo=
nt size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1.dtb</font></font></fo=
nt></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">I&#39;d like =
to do
            this</font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">cp -f </font>=
</font></font><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">imx6dl-sabresd-disp1.dtb
              imx6dl-sabresd.dtb</font></font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D=
"-1"><br>
            </font></font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">How can I do
            that?</font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><br>
          </font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">There is a wa=
y to
            rename </font></font></font><font size=3D"-1"><font size=3D"-1=
"><font size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1.dtb in
              imx6dl-sabresd.dtb inside some task?</font></font></font></f=
ont></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D=
"-1">do_rootfs,
              do_image or others?</font></font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D=
"-1"><br>
            </font></font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D=
"-1">Best
              regards,</font></font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D=
"-1">=C2=A0
              MZ<br>
            </font></font></font></font></p>
    <br>
  </div>

<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Laurent Gauthier<br>Phone: +33 630 483 429<br><a href=3D"h=
ttp://soccasys.com" target=3D"_blank">http://soccasys.com</a></div>

--000000000000c89145059ff45709--
