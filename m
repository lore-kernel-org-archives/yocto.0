Received: from gateway34.websitewelcome.com (gateway34.websitewelcome.com [192.185.148.214])
 by mx.groups.io with SMTP id smtpd.web08.12780.1606437329721529678
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Nov 2020 16:35:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@dajac.com header.s=default header.b=oTADS/Yv;
 spf=pass (domain: dajac.com, ip: 192.185.148.214, mailfrom: david.novak@dajac.com)
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
	by gateway34.websitewelcome.com (Postfix) with ESMTP id 0E1CC587C
	for <yocto@lists.yoctoproject.org>; Thu, 26 Nov 2020 18:35:29 -0600 (CST)
Received: from gator3290.hostgator.com ([198.57.247.254])
	by cmsmtp with SMTP
	id iRjUkxVlDuDoAiRjUkYuta; Thu, 26 Nov 2020 18:35:29 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dajac.com;
	 s=default; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=WnwMIM9RLpdIuYvfJyld3/QCgg/IcOlc0UpwCEEwBHE=; b=oTADS/Yv4EqCuzW+5aiAMjULrx
	3MO0GF42PH42crxQtXwVVE9hHj7KC22NAQHlIvShej9Ln+ep2lIFbf7dJZ+MJNv/P3GnKOeA9VRKf
	a+kR0Cc9WH/0A1YEouWP3rggK9lZNn9dprS9MBXKguo0dKIoMZUhRV2J9LWogvCBPwrx4aU6L6MuR
	l55bGBUbwWH4kzRryDng3Mq8O8ELtnPz9KexydLl1qZnzFCzCtO+q9zcjx9stsTyTDVTgPwHGGM9J
	TwD0xYVSB8j7ERBAzS/V7L/kIkukNo8XbI0//JkMnhTYbP5kmeczOxAEhEdFyoCeD8mW7kcvDZ4cF
	NlYR03QA==;
Received: from 75-15-4-89.uvs.iplsin.sbcglobal.net ([75.15.4.89]:53567 helo=[192.168.0.118])
	by gator3290.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <david.novak@dajac.com>)
	id 1kiRjU-002GDN-7y
	for yocto@lists.yoctoproject.org; Thu, 26 Nov 2020 18:35:28 -0600
Subject: Re: [yocto] U-Boot sama5d3 xplained issue
To: yocto@lists.yoctoproject.org
References: <080574f8-ae94-3283-0653-631dc7563b49@dajac.com>
 <5a531881d6504e5880577ce692b1d35b@Exchange.sewerin.de>
 <CAMKF1srJDjkhA=DqP_mv34E=tG7=JbTSQ6DgAodxhagujXxGxA@mail.gmail.com>
 <CAM6O0ZhMt1dYSmzZh-GO0ZgpCSf0aMuDzHJE7EtVTd9xGzZKdw@mail.gmail.com>
From: "David Novak" <david.novak@dajac.com>
Message-ID: <d20848e0-1945-fc6c-d55b-d38c024a9757@dajac.com>
Date: Thu, 26 Nov 2020 19:35:27 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAM6O0ZhMt1dYSmzZh-GO0ZgpCSf0aMuDzHJE7EtVTd9xGzZKdw@mail.gmail.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3290.hostgator.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dajac.com
X-BWhitelist: no
X-Source-IP: 75.15.4.89
X-Source-L: No
X-Exim-ID: 1kiRjU-002GDN-7y
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 75-15-4-89.uvs.iplsin.sbcglobal.net ([192.168.0.118]) [75.15.4.89]:53567
X-Source-Auth: david.novak@dajac.com
X-Email-Count: 2
X-Source-Cap: ZGFqYWNpbmM7ZGFqYWNpbmM7Z2F0b3IzMjkwLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Content-Type: multipart/alternative;
 boundary="------------224AF10AA406D16F6AC793A4"
Content-Language: en-US

--------------224AF10AA406D16F6AC793A4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

We changed the file directly.

Since it's a custom file, I don't think it is being downloaded. What is=20
the easiest way to determine if it's being downloaded?

Thanks,
David




On 11/23/2020 2:16 AM, Federico Pellegrin wrote:
>
> Hi,
> I think it would be interesting information to know "how" you change=20
> the value inside "u-boot-at91/sama5d3_xplained_nandflash_config".
>
> As every time you rebuild it may be redownloaded, you should do this=20
> via a patch to append to the recipe.
>
> Are you doing this? Or just changing it locally?
>
> If you give some more info probably we can better help!
>
> Cheers,
> Federico
>
> Il giorno lun 23 nov 2020 alle ore 08:06 Khem Raj <raj.khem@gmail.com=20
> <mailto:raj.khem@gmail.com>> ha scritto:
>
>     perhaps asking it on https://github.com/linux4sam/u-boot-at91
>     <https://github.com/linux4sam/u-boot-at91> via
>     github issues might be helpful too.
>
>     On Sat, Nov 21, 2020 at 4:26 AM David Novak <david.novak@dajac.com
>     <mailto:david.novak@dajac.com>> wrote:
>     >
>     > I'm working on this project with Pratham. Let me provide a few
>     more details.
>     >
>     > We've defined
>     >
>     > UBOOT_MACHINE ?=3D "sama5d3_xplained_nandflash_config"
>     >
>     > Inside
>     >
>     > u-boot-at91/sama5d3_xplained_nandflash_config
>     >
>     > we change CONFIG_BOOTDELAY, but it has no effect on the newly
>     built image. The boot delay remains the same as it was before we
>     changed it.
>     >
>     > Based on the UBOOT_MACHINE, can we be certain we are changing
>     the correct file?
>     >
>     > How do we get the build process to include our changes?
>     >
>     > Thanks,
>     > David
>     >
>     >
>     >
>     > On 11/19/2020 5:37 PM, Prathamesh Ovalekar wrote:
>     >
>     > Hello everyone,
>     >
>     > System: sama5d3_xplained board
>     >
>     > I have a question regarding the configuration and build of u-boot.
>     > We have a build that was implemented earlier. I am trying to
>     make some changes to it.
>     >
>     > Change 1: Change the auto boot delay to 1 second.
>     > Change 2: Add an auto boot command to set a gpio.
>     >
>     > I am aware of the environment variables: CONFIG_BOOTDELAY and
>     CONFIG_BOOTCOMMAND (needed for the changes above.)
>     > I tried modifying the=C2=A0 "
>     configs/sama5d3_xplained_nandflash_defconfig "
>     >
>     > Question 1: Do I need to create an *.config file using the make
>     menuconfig?
>     >
>     > Question 2: How do I create the u-boot.bin . Does this depend on
>     the Linux build?
>     >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0I know that there is an environment
>     variable: CONFIG_BOOTARGS that needs to be populated.
>     >
>     > --
>     > Pratham Ovalekar
>     >
>     >
>     >
>     >
>     >
>     >
>     >
>
>
>
>
>=20
>

--------------224AF10AA406D16F6AC793A4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><span style=3D"font-style: italic; font-size: 6pt;"></span>We
      changed the file directly.</p>
    <p>Since it's a custom file, I don't think it is being downloaded.
      What is the easiest way to determine if it's being downloaded?</p>
    <p>Thanks,<br>
      David<br>
    </p>
    <div class=3D"moz-signature"><br>
      <br>
      <br>
    </div>
    <div class=3D"moz-cite-prefix">On 11/23/2020 2:16 AM, Federico
      Pellegrin wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAM6O0ZhMt1dYSmzZh-GO0ZgpCSf0aMuDzHJE7EtVTd9xGzZKdw@mail.gmail=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Hi,</div>
        <div>I think it would be interesting information to know "how"
          you change the value inside
          "u-boot-at91/sama5d3_xplained_nandflash_config".</div>
        <div><br>
        </div>
        <div>As every time you rebuild it may be redownloaded, you
          should do this via a patch to append to the recipe. <br>
        </div>
        <div><br>
        </div>
        <div>Are you doing this? Or just changing it locally?</div>
        <div><br>
        </div>
        <div>If you give some more info probably we can better help!<br>
        </div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>Federico<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 23 nov 2020 al=
le
          ore 08:06 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com"
            moz-do-not-send=3D"true">raj.khem@gmail.com</a>&gt; ha
          scritto:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">p=
erhaps
          asking it on <a
            href=3D"https://github.com/linux4sam/u-boot-at91"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true">=
https://github.com/linux4sam/u-boot-at91</a>
          via<br>
          github issues might be helpful too.<br>
          <br>
          On Sat, Nov 21, 2020 at 4:26 AM David Novak &lt;<a
            href=3D"mailto:david.novak@dajac.com" target=3D"_blank"
            moz-do-not-send=3D"true">david.novak@dajac.com</a>&gt; wrote:<=
br>
          &gt;<br>
          &gt; I'm working on this project with Pratham. Let me provide
          a few more details.<br>
          &gt;<br>
          &gt; We've defined<br>
          &gt;<br>
          &gt; UBOOT_MACHINE ?=3D "sama5d3_xplained_nandflash_config"<br>
          &gt;<br>
          &gt; Inside<br>
          &gt;<br>
          &gt; u-boot-at91/sama5d3_xplained_nandflash_config<br>
          &gt;<br>
          &gt; we change CONFIG_BOOTDELAY, but it has no effect on the
          newly built image. The boot delay remains the same as it was
          before we changed it.<br>
          &gt;<br>
          &gt; Based on the UBOOT_MACHINE, can we be certain we are
          changing the correct file?<br>
          &gt;<br>
          &gt; How do we get the build process to include our changes?<br>
          &gt;<br>
          &gt; Thanks,<br>
          &gt; David<br>
          &gt;<br>
          &gt;<br>
          &gt;<br>
          &gt; On 11/19/2020 5:37 PM, Prathamesh Ovalekar wrote:<br>
          &gt;<br>
          &gt; Hello everyone,<br>
          &gt;<br>
          &gt; System: sama5d3_xplained board<br>
          &gt;<br>
          &gt; I have a question regarding the configuration and build
          of u-boot.<br>
          &gt; We have a build that was implemented earlier. I am trying
          to make some changes to it.<br>
          &gt;<br>
          &gt; Change 1: Change the auto boot delay to 1 second.<br>
          &gt; Change 2: Add an auto boot command to set a gpio.<br>
          &gt;<br>
          &gt; I am aware of the environment variables:=C2=A0
          CONFIG_BOOTDELAY and CONFIG_BOOTCOMMAND (needed for the
          changes above.)<br>
          &gt; I tried modifying the=C2=A0 "
          configs/sama5d3_xplained_nandflash_defconfig "<br>
          &gt;<br>
          &gt; Question 1: Do I need to create an *.config file using
          the make menuconfig?<br>
          &gt;<br>
          &gt; Question 2: How do I create the u-boot.bin . Does this=C2=
=A0
          depend on the Linux build?<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0I know that there is an environment
          variable: CONFIG_BOOTARGS that needs to be populated.<br>
          &gt;<br>
          &gt; --<br>
          &gt; Pratham Ovalekar<br>
          &gt;<br>
          &gt;<br>
          &gt;<br>
          &gt;<br>
          &gt;<br>
          &gt; <br>
          &gt;<br>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
  </body>
</html>

--------------224AF10AA406D16F6AC793A4--
