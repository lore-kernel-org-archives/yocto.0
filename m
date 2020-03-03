Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.6090.1583251552365654158
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 08:05:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=z+JQVteV;
 spf=softfail (domain: soccasys.com, ip: 140.211.169.56, mailfrom: laurent.gauthier@soccasys.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE784E017B6; Tue,  3 Mar 2020 08:05:51 -0800 (PST)
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
	*      [209.85.217.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 674A2E017B3
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2020 08:05:50 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id 7so2697207vsr.10
        for <yocto@yoctoproject.org>; Tue, 03 Mar 2020 08:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gAubYvrqu58pGbQ8caxh94eli9nH7bUIhoUYHhixgOg=;
        b=z+JQVteVAV+C0LkdM322FtzxdRhp/roQUlDTYtFHKyUxCpSog7wOGUge0ET66UzDFP
         VwxhWa1XzPAc2JBL0q1BFuWGYnqoAgCfe+16Z/Azeo4yidTxMNntBzzgZ3agszC3yj0s
         KUf5zqnmetEOza32ZM7xP5nru0YaGCC8qrWpJukLd6HKdXJyg6OVD6jrzWAMh8VWBFtP
         HcSoG/3YFQl2S0nGDP3fJKy9MEGUP0iW3KpToE6qXoZF6B7gm5DrnHfjQb3JrSUoHpTI
         mYWNTmkp2qpvnuAyoC3LUTo7C34IgMnP5foRGFTat5ignUoqWyQgr2C7SPFjs5VtvdIz
         NuMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gAubYvrqu58pGbQ8caxh94eli9nH7bUIhoUYHhixgOg=;
        b=O0S+bKE1Irw4V9fqn3WlAQXPCTWpYvoRB6nnkA/zTAOQmk6Vq3wi+PzIZowXIrsqMm
         k0Zo9x6Bu87vM/OkNcVURP3q+xuV6RvHckDMwdklie4u5MlNk5UWC1cta+rzPL72wYmn
         cO7qXyzaQFo6gVdspNuo//Z+SsyhFREW6E5pQC39FstqgAhomFsBf53hi0WNI2gWnLvs
         /ahjCofWHEvc2n2sRjrmN6VXO1o6x2PGw4VDMPWPEYenpLluh1Tc5uFIl3htiefNjhs1
         qGzidvdauuTSXdi/tdubMuuLpRyyoXXXKVkqmndst2YkHSeuhJFlvMaOVf5Fg5Sn3Ern
         2ZQw==
X-Gm-Message-State: ANhLgQ23iGR5G1XkjHFnpSahwQhhDd+jE9cQdiYXbsV0Hn6TyQBg5iJD
	Key/BJXA4TRwFJ3X1lToYWrf8QQIT476KJKy1hb+zckx7rs=
X-Google-Smtp-Source: ADFU+vtOSgc4ctDJ8/2jRTONsTdVdhO6VENZjLUdgiehORxkJGu8/Yu3Z2sRrI3qCgrktpEmsovaUO/mA2OEfDjZKdQ=
X-Received: by 2002:a67:f404:: with SMTP id p4mr2818094vsn.18.1583251549280;
 Tue, 03 Mar 2020 08:05:49 -0800 (PST)
MIME-Version: 1.0
References: <6487393d-3010-a2db-cc33-ddbab9506d84@faresoftware.it>
 <CAGbd71ShTmoR8S44W5-dTS3uPuXvPLhLH8SuU0gwH-LtH8-72Q@mail.gmail.com> <a8e3bea7-bc58-50e5-af97-8f0e6310c043@faresoftware.it>
In-Reply-To: <a8e3bea7-bc58-50e5-af97-8f0e6310c043@faresoftware.it>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 3 Mar 2020 17:05:54 +0100
Message-ID: <CAGbd71RWP7EGUx9gWuw_yvnKwTPddWRDo26gUAKx4+O=NTidCA@mail.gmail.com>
Subject: Re: [yocto] IMX6DL: Rename dtb in boot partition
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002f7065059ff57a95"

--0000000000002f7065059ff57a95
Content-Type: text/plain; charset="UTF-8"

Hi Mauro,

Glad this helps.

Another option I thought of after replying was to change which dtb is
loaded by u-boot at boot time. This would involve changes to u-boot-imx.

Kind regards, Laurent.

On Tue, Mar 3, 2020 at 4:59 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> You are right.
>
> I have not think about linux-imx:do_install_append
>
> Thanks for the help
>
> MZ
>
>
> Il 03/03/20 15:44, Laurent Gauthier ha scritto:
>
> Ciao Mauro,
>
> My best guess is that you should do the following:
>
> 1. Create a linux-imx_%.bbappend recipe in your layer (assuming you have
> one).
> 2. Add a do_install_append function which overrides $D/boot/
> imx6dl-sabresd.dtb
>
> linux-imx is the name of the kernel recipe if you are using an NXP BSP. If
> you are using another BSP the name of the kernel recipe might be different,
> please adjust as required.
>
> Prior to proceeding to this you should check that you can see your files
> in your Yocto build directory under:
>
> * .../tmp/work/imx*/linux-imx/*/packages-split/kernel-devicetree/
>
> The content of the /boot partition normally includes content from the
> kernel-devicetree package (created by the kernel recipe), because these are
> installed under /boot in the rootfs.
>
> After making the changes suggested above just cleanall + rebuild your
> kernel and verify that the DTB file has been properly overwritten (look
> again at this same directory I point you to above, compare file checksums
> to ensure the copy worked).
>
> If that worked, then just cleanall your final image, and rebuild it.
>
> Hopefully this will work for you.
>
> I hope this helps.
>
> Kind regards, Laurent.
>
> On Tue, Mar 3, 2020 at 3:16 PM Mauro Ziliani <mauro@faresoftware.it>
> wrote:
>
>> Hi all.
>>
>> My recipes procude some dtb.
>>
>> imx6dl-sabresd-disp1.dtb
>> imx6dl-sabresd-disp2.dtb
>>
>>
>> The image recipe gives an sdcard file with 2 partition: p1 and p2
>>
>> p1 is vfat with zImage and imx6dl-sabresd.dtb
>>
>> p2 is ext4 with the applications.
>>
>> In p1 I find imx6dl-sabresd.dtb, imx6dl-sabresd-disp1.dtb and
>> imx6dl-sabresd-disp2.dtb
>>
>> I need to replace imx6dl-sabresd.dtb with that imx6dl-sabresd-disp1.dtb
>>
>> I'd like to do this
>>
>> cp -f imx6dl-sabresd-disp1.dtb imx6dl-sabresd.dtb
>>
>>
>> How can I do that?
>>
>>
>> There is a way to rename imx6dl-sabresd-disp1.dtb in imx6dl-sabresd.dtb
>> inside some task?
>>
>> do_rootfs, do_image or others?
>>
>>
>> Best regards,
>>
>>   MZ
>>
>> 
>>
>
>
> --
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com
>
>

-- 
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com

--0000000000002f7065059ff57a95
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mauro,</div><div><br></div><div>Glad this helps.</=
div><div><br></div><div>Another option I thought of after replying was to c=
hange which dtb is loaded by u-boot at boot time. This would involve change=
s to u-boot-imx.<br></div><div><br></div><div>Kind=C2=A0regards, Laurent.<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Mar 3, 2020 at 4:59 PM Mauro Ziliani &lt;<a href=3D"mailto:=
mauro@faresoftware.it">mauro@faresoftware.it</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
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
    <div>Il 03/03/20 15:44, Laurent Gauthier ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite">
      
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
ont size=3D"-1">imx6dl-sabresd.dtb</font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">linux-imx is the name of the kernel recipe
                  if you are using an NXP BSP. If you are using another
                  BSP the name of the kernel recipe might be different,
                  please adjust as required.</font></font></font></font></=
div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">Prior to proceeding to this you should check
                  that you can see your files in your Yocto build
                  directory under:</font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">*
                  .../tmp/work/imx*/linux-imx/*/packages-split/kernel-devi=
cetree/</font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">The content of the /boot partition normally
                  includes content from the kernel-devicetree package
                  (created by the kernel recipe), because these are
                  installed under /boot in the rootfs.</font></font></font=
></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">After making the changes suggested above
                  just cleanall + rebuild your kernel and verify that
                  the DTB file has been properly overwritten (look again
                  at this same directory I point you to above, compare
                  file checksums to ensure the copy worked).</font></font>=
</font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">If that worked, then just cleanall your
                  final image, and rebuild it.</font></font></font></font>=
</div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">Hopefully this will work for you.</font></font></font></font></d=
iv>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">I hope this helps.</font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1"><br>
                </font></font></font></font></div>
        <div><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font s=
ize=3D"-1">Kind regards, Laurent.<br>
                </font></font></font></font></div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 3, 2020 at 3:16 =
PM
          Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it" targe=
t=3D"_blank">mauro@faresoftware.it</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
font size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1.dtb and=C2=A0
                </font></font><font size=3D"-1"><font size=3D"-1"><font si=
ze=3D"-1">imx6dl-sabresd-disp2.dtb</font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1">I need to replace
                  imx6dl-sabresd.dtb with that </font></font><font size=3D=
"-1"><font size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1.dtb</font></f=
ont></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">I&#39=
;d like
                    to do this</font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">cp -f=
 </font></font></font><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"=
><font size=3D"-1">imx6dl-sabresd-disp1.dtb
                      imx6dl-sabresd.dtb</font></font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font=
 size=3D"-1"><br>
                    </font></font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">How c=
an I
                    do that?</font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><br>
                  </font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">There=
 is
                    a way to rename </font></font></font><font size=3D"-1"=
><font size=3D"-1"><font size=3D"-1"><font size=3D"-1">imx6dl-sabresd-disp1=
.dtb in
                      imx6dl-sabresd.dtb inside some task?</font></font></=
font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font=
 size=3D"-1">do_rootfs, do_image or others?</font></font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font=
 size=3D"-1"><br>
                    </font></font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font=
 size=3D"-1">Best regards,</font></font></font></font></p>
            <p><font size=3D"-1"><font size=3D"-1"><font size=3D"-1"><font=
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
      <div dir=3D"ltr">Laurent Gauthier<br>
        Phone: +33 630 483 429<br>
        <a href=3D"http://soccasys.com" target=3D"_blank">http://soccasys.=
com</a></div>
    </blockquote>
  </div>

</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Laurent Gauthier<br>Phone: +33 630 483 429<br><a href=3D"h=
ttp://soccasys.com" target=3D"_blank">http://soccasys.com</a></div>

--0000000000002f7065059ff57a95--
