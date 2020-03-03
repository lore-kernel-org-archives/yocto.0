Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6020.1583251192086729629
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 07:59:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=eai/+lZK;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECF85E0107C; Tue,  3 Mar 2020 07:59:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [62.149.158.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd02101.aruba.it (smtpcmd02101.aruba.it [62.149.158.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F260EE00736
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2020 07:59:49 -0800 (PST)
Received: from [10.0.3.81] ([213.213.6.58])
	by smtpcmd02.ad.aruba.it with bizsmtp
	id 9rzl2201K1F741R01rzmJn; Tue, 03 Mar 2020 16:59:48 +0100
Subject: Re: [yocto] IMX6DL: Rename dtb in boot partition
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
References: <6487393d-3010-a2db-cc33-ddbab9506d84@faresoftware.it>
 <CAGbd71ShTmoR8S44W5-dTS3uPuXvPLhLH8SuU0gwH-LtH8-72Q@mail.gmail.com>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <a8e3bea7-bc58-50e5-af97-8f0e6310c043@faresoftware.it>
Date: Tue, 3 Mar 2020 16:59:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAGbd71ShTmoR8S44W5-dTS3uPuXvPLhLH8SuU0gwH-LtH8-72Q@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1583251188; bh=VaTAvCiD9prOwX67S3eWLBXJebhoYFLo3qQzNLwewSM=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=eai/+lZKmeUZFerbX2J4Vyh80GfBKFXP/PghOVwJKZ0gqfPphKSO0IyJYepzyBcVH
	 tYOcQvS7l74K4pZI9l2mfGtuAnA157eumH+5QZ67K7FaoJasuHUjzr8xth0CD1jooB
	 vebkKfZksbUjQLX/mvlF0TwK5WbFi2bmcUFrN0VWfCUo30YeAm40Q1N7t7uZP8y09V
	 Uz/JrzYVUpJzQbUJCwY5oZd2uXGFK8iYgFcYy2kdxucNX12BljyUrLJHWfNdvhnvK6
	 WrOpdV7aW23rqtWWdBTtl1GAoc7LP1iMQP+UJm3yU+JERU+CI5dIcEsrzkJEBU+XSL
	 CxK7NG8lrb+rA==
Content-Type: multipart/alternative;
 boundary="------------38B85BE6998A891C8E1DD95E"
Content-Language: it

--------------38B85BE6998A891C8E1DD95E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

You are right.

I have not think about linux-imx:do_install_append

Thanks for the help

MZ


Il 03/03/20 15:44, Laurent Gauthier ha scritto:
> Ciao Mauro,
>
> My best guess is that you should do the following:
>
> 1. Create a linux-imx_%.bbappend recipe in your layer (assuming you=20
> have one).
> 2. Add a do_install_append function which overrides=20
> $D/boot/imx6dl-sabresd.dtb
>
> linux-imx is the name of the kernel recipe if you are using an NXP=20
> BSP. If you are using another BSP the name of the kernel recipe might=20
> be different, please adjust as required.
>
> Prior to proceeding to this you should check that you can see your=20
> files in your Yocto build directory under:
>
> * .../tmp/work/imx*/linux-imx/*/packages-split/kernel-devicetree/
>
> The content of the /boot partition normally includes content from the=20
> kernel-devicetree package (created by the kernel recipe), because=20
> these are installed under /boot in the rootfs.
>
> After making the changes suggested above just cleanall + rebuild your=20
> kernel and verify that the DTB file has been properly overwritten=20
> (look again at this same directory I point you to above, compare file=20
> checksums to ensure the copy worked).
>
> If that worked, then just cleanall your final image, and rebuild it.
>
> Hopefully this will work for you.
>
> I hope this helps.
>
> Kind regards, Laurent.
>
> On Tue, Mar 3, 2020 at 3:16 PM Mauro Ziliani <mauro@faresoftware.it=20
> <mailto:mauro@faresoftware.it>> wrote:
>
>     Hi all.
>
>     My recipes procude some dtb.
>
>     imx6dl-sabresd-disp1.dtb
>     imx6dl-sabresd-disp2.dtb
>
>
>     The image recipe gives an sdcard file with 2 partition: p1 and p2
>
>     p1 is vfat with zImage and imx6dl-sabresd.dtb
>
>     p2 is ext4 with the applications.
>
>     In p1 I find imx6dl-sabresd.dtb, imx6dl-sabresd-disp1.dtb and
>     imx6dl-sabresd-disp2.dtb
>
>     I need to replace imx6dl-sabresd.dtb with that
>     imx6dl-sabresd-disp1.dtb
>
>     I'd like to do this
>
>     cp -f imx6dl-sabresd-disp1.dtb imx6dl-sabresd.dtb
>
>
>     How can I do that?
>
>
>     There is a way to rename imx6dl-sabresd-disp1.dtb in
>     imx6dl-sabresd.dtb inside some task?
>
>     do_rootfs, do_image or others?
>
>
>     Best regards,
>
>     =C2=A0 MZ
>
>
>    =20
>
>
>
> --=20
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com

--------------38B85BE6998A891C8E1DD95E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <font size=3D"-1">You are right.<br>
      <br>
      I have not think about linux-imx:do_install_append<br>
      <br>
      Thanks for the help<br>
      <br>
    </font>
    <p><font size=3D"-1">MZ</font></p>
    <p><font size=3D"-1"><br>
      </font></p>
    <div class=3D"moz-cite-prefix">Il 03/03/20 15:44, Laurent Gauthier ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGbd71ShTmoR8S44W5-dTS3uPuXvPLhLH8SuU0gwH-LtH8-72Q@mail.gmail=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">
        <div>Ciao Mauro,</div>
        <div><br>
        </div>
        <div>My best guess is that you should do the following:</div>
        <div><br>
        </div>
        <div>1. Create a linux-imx_%.bbappend recipe in your layer
          (assuming you have one).</div>
        <div>2. Add a do_install_append function which overrides
          $D/boot/<font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><f=
ont
                  size=3D"-1">imx6dl-sabresd.dtb</font></font></font></fon=
t></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1">linux-imx is the name of the kernel recipe
                  if you are using an NXP BSP. If you are using another
                  BSP the name of the kernel recipe might be different,
                  please adjust as required.</font></font></font></font></=
div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1">Prior to proceeding to this you should check
                  that you can see your files in your Yocto build
                  directory under:</font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1">*
                  .../tmp/work/imx*/linux-imx/*/packages-split/kernel-devi=
cetree/</font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1">The content of the /boot partition normally
                  includes content from the kernel-devicetree package
                  (created by the kernel recipe), because these are
                  installed under /boot in the rootfs.</font></font></font=
></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1">After making the changes suggested above
                  just cleanall + rebuild your kernel and verify that
                  the DTB file has been properly overwritten (look again
                  at this same directory I point you to above, compare
                  file checksums to ensure the copy worked).</font></font>=
</font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1">If that worked, then just cleanall your
                  final image, and rebuild it.</font></font></font></font>=
</div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1">Hopefully this will work for you.</font></fo=
nt></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1">I hope this helps.</font></font></font></fon=
t></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                  size=3D"-1">Kind regards, Laurent.<br>
                </font></font></font></font></div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 3, 2020 at 3:16 =
PM
          Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it"
            moz-do-not-send=3D"true">mauro@faresoftware.it</a>&gt; wrote:<=
br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p><font size=3D"-1">Hi all.</font></p>
            <p><font size=3D"-1">My recipes procude some dtb.</font></p>
            <p><font size=3D"-1">imx6dl-sabresd-disp1.dtb</font><br>
              <font size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp2.dtb=
</font></font></p>
            <p><br>
            </p>
            <p><font size=3D"-1">The image recipe gives an sdcard file
                with 2 partition: p1 and p2</font></p>
            <p><font size=3D"-1">p1 is vfat with zImage and
                imx6dl-sabresd.dtb</font></p>
            <p><font size=3D"-1">p2 is ext4 with the applications.<br>
              </font></p>
            <p><font size=3D"-1">In p1 I find imx6dl-sabresd.dtb, </font><=
font
                size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1.dtb and=
=
=C2=A0
                </font></font><font size=3D"-1"><font size=3D"-1"><font
                    size=3D"-1">imx6dl-sabresd-disp2.dtb</font></font></fo=
nt></p>
            <p><font size=3D"-1"><font size=3D"-1">I need to replace
                  imx6dl-sabresd.dtb with that </font></font><font
                size=3D"-1"><font size=3D"-1"><font size=3D"-1">imx6dl-sab=
resd-disp1.dtb</font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">I'd l=
ike
                    to do this</font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">cp -f=
 </font></font></font><font
                size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                      size=3D"-1">imx6dl-sabresd-disp1.dtb
                      imx6dl-sabresd.dtb</font></font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                      size=3D"-1"><br>
                    </font></font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">How c=
an I
                    do that?</font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><br>
                  </font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">There=
 is
                    a way to rename </font></font></font><font
                size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                      size=3D"-1">imx6dl-sabresd-disp1.dtb in
                      imx6dl-sabresd.dtb inside some task?</font></font></=
font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                      size=3D"-1">do_rootfs, do_image or others?</font></f=
ont></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                      size=3D"-1"><br>
                    </font></font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                      size=3D"-1">Best regards,</font></font></font></font=
></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font
                      size=3D"-1">=C2=A0 MZ<br>
                    </font></font></font></font></p>
            <br>
          </div>
          <br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <br>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail_signature">Laurent Gauthier<br>
        Phone: +33 630 483 429<br>
        <a href=3D"http://soccasys.com" target=3D"_blank"
          moz-do-not-send=3D"true">http://soccasys.com</a></div>
    </blockquote>
  </body>
</html>

--------------38B85BE6998A891C8E1DD95E--
