Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4224.1583245005146293214
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 06:16:45 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=Fj98Q0Jo;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7783E017A7; Tue,  3 Mar 2020 06:16:44 -0800 (PST)
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
	*      [62.149.158.101 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www; Tue, 03 Mar 2020 06:16:42 PST
Received: from smtpcmd02101.aruba.it (smtpcmd02101.aruba.it [62.149.158.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B5F7E017A5
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2020 06:16:42 -0800 (PST)
Received: from [10.0.3.81] ([213.213.6.58])
	by smtpcmd02.ad.aruba.it with bizsmtp
	id 9qFd2201G1F741R01qFdMY; Tue, 03 Mar 2020 15:15:38 +0100
To: Yocto discussion list <yocto@yoctoproject.org>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: IMX6DL: Rename dtb in boot partition
Message-ID: <6487393d-3010-a2db-cc33-ddbab9506d84@faresoftware.it>
Date: Tue, 3 Mar 2020 15:15:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1583244938; bh=mVB9z5iyiAcLA+CG0Iht5SZEBPiE2Q5sDoLRT86v/Z8=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=Fj98Q0JoI0HiS+8+DB3kc4FbEQbBbtnwsbh9uCE9ud58T8T6V3eOv5tTx+U13X9zP
	 3B+oCakgnMIHW/dCo/b5gwL77Ct45mHojBoiLrrJb6fEYzrIocAVw6W6j7XRFt9vR8
	 8mIn7jcpuYbbnVuq7hxvzPzcgx5JFiZGGDDEKC2Ecx3FhnFucJazayaYNgwrTp4c5r
	 9/oGKenbU4kRPYzZwAsWETZYhO+4RTikbK3V54aZMFfCTmeNjFV/6YRTPaMmVz881E
	 zs/cx9kdqLKIRytFeQbOF/TbPfcfkQ+1aBAgbjlmrMeujrcwV4HDD1xNA1EmNQFVgd
	 F5gfI2Pp/QKYQ==
Content-Type: multipart/alternative;
 boundary="------------AAE76360E273476B8A36BF15"
Content-Language: it

--------------AAE76360E273476B8A36BF15
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi all.

My recipes procude some dtb.

imx6dl-sabresd-disp1.dtb
imx6dl-sabresd-disp2.dtb


The image recipe gives an sdcard file with 2 partition: p1 and p2

p1 is vfat with zImage and imx6dl-sabresd.dtb

p2 is ext4 with the applications.

In p1 I find imx6dl-sabresd.dtb, imx6dl-sabresd-disp1.dtb and 
imx6dl-sabresd-disp2.dtb

I need to replace imx6dl-sabresd.dtb with that imx6dl-sabresd-disp1.dtb

I'd like to do this

cp -f imx6dl-sabresd-disp1.dtb imx6dl-sabresd.dtb


How can I do that?


There is a way to rename imx6dl-sabresd-disp1.dtb in imx6dl-sabresd.dtb 
inside some task?

do_rootfs, do_image or others?


Best regards,

MZ



--------------AAE76360E273476B8A36BF15
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DISO=
-8859-15">
  </head>
  <body>
    <p><font size=3D"-1">Hi all.</font></p>
    <p><font size=3D"-1">My recipes procude some dtb.</font></p>
    <p><font size=3D"-1">imx6dl-sabresd-disp1.dtb</font><br>
      <font size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp2.dtb</font>=
</font></p>
    <p><br>
    </p>
    <p><font size=3D"-1">The image recipe gives an sdcard file with 2
        partition: p1 and p2</font></p>
    <p><font size=3D"-1">p1 is vfat with zImage and imx6dl-sabresd.dtb</f=
ont></p>
    <p><font size=3D"-1">p2 is ext4 with the applications.<br>
      </font></p>
    <p><font size=3D"-1">In p1 I find imx6dl-sabresd.dtb, </font><font
        size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1.dtb and=A0 </f=
ont></font><font
        size=3D"-1"><font size=3D"-1"><font size=3D"-1">imx6dl-sabresd-di=
sp2.dtb</font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1">I need to replace
          imx6dl-sabresd.dtb with that </font></font><font size=3D"-1"><f=
ont
          size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1.dtb</font></=
font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">I'd like to =
do
            this</font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">cp -f </font=
></font></font><font
        size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"=
>imx6dl-sabresd-disp1.dtb
              imx6dl-sabresd.dtb</font></font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font size=3D=
"-1"><br>
            </font></font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">How can I do
            that?</font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><br>
          </font></font></font></p>
    <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">There is a w=
ay to
            rename </font></font></font><font size=3D"-1"><font size=3D"-=
1"><font
            size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1.dtb in
              imx6dl-sabresd.dtb inside some task?</font></font></font></=
font></p>
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
"-1">=A0
              MZ<br>
            </font></font></font></font></p>
    <br>
  </body>
</html>

--------------AAE76360E273476B8A36BF15--
