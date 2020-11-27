Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.14707.1606451823189986257
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Nov 2020 20:37:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: fede.evol@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id e7so4221874wrv.6
        for <yocto@lists.yoctoproject.org>; Thu, 26 Nov 2020 20:37:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gw2MkXQ7GWGG7HNAAJXZM85O4u4Tb+C2IvW96Y3f99E=;
        b=tKVlF8dKvsyAzWPxDpFBNQ04gvU7DUJMB1g46gw3XtoBZTMkUrpjtCw4y+yKBra7zF
         VN3irSi11nPKuQaOnk8CnWn5YaSeQGfNhcEe8vWGSgwGnQxLDyAUZyEg0LIzOeycXsJQ
         UyA9qIZP32x+QnMlVIQ1r7HLgUq7LAAY2IDGdSj1DEsc4TbCsGuWx30bXEcX+MCH6F/1
         yIFdXNGrtKupSng9AaUVjflgl/R44L5XAqNUqpbLkocNhvIyInAXh/ji19FjQOuCSss+
         pGJrrh5c5xr9gc+Hv7qCvwB4AlCpJ+U7oM0aRZ4ALyZebHOyZ490dl56SUgqq/gqYQRJ
         014A==
X-Gm-Message-State: AOAM531zL0o37sk2BFI2t2+BMqABsTjENqPGkXvVqfCaUAKQUNdXLdDL
	3m7ULT3V67uhgr3NW+a2WghJKCdtq4KTtrlaWTY=
X-Google-Smtp-Source: ABdhPJzFZZTzcBhZZRHIqO8HZWvSuZ4FZW0vcbguVutOn0t3U0Tm0zCPo69H+Cx0hyhdPaMxZVogdQbw0ycAYXldL6M=
X-Received: by 2002:adf:f547:: with SMTP id j7mr7898093wrp.296.1606451821652;
 Thu, 26 Nov 2020 20:37:01 -0800 (PST)
MIME-Version: 1.0
References: <080574f8-ae94-3283-0653-631dc7563b49@dajac.com>
 <5a531881d6504e5880577ce692b1d35b@Exchange.sewerin.de> <CAMKF1srJDjkhA=DqP_mv34E=tG7=JbTSQ6DgAodxhagujXxGxA@mail.gmail.com>
 <CAM6O0ZhMt1dYSmzZh-GO0ZgpCSf0aMuDzHJE7EtVTd9xGzZKdw@mail.gmail.com> <d20848e0-1945-fc6c-d55b-d38c024a9757@dajac.com>
In-Reply-To: <d20848e0-1945-fc6c-d55b-d38c024a9757@dajac.com>
From: "Federico Pellegrin" <fede@evolware.org>
Date: Fri, 27 Nov 2020 05:36:50 +0100
Message-ID: <CAM6O0Zg4XsB0MJQEVR4qF9t+2szfdqG3kJqJi8BFmvLGC5Uu0g@mail.gmail.com>
Subject: Re: [yocto] U-Boot sama5d3 xplained issue
To: David Novak <david.novak@dajac.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002dadc805b50f368f"

--0000000000002dadc805b50f368f
Content-Type: text/plain; charset="UTF-8"

Hi David,
If you change it directly, changes may not be taken into account for the
rebuild. And if the package build gets retriggered, then the whole
repository is deleted (including your local changes), redownloaded,
repatched and so on. So while it may by chance work by modifying locally in
certain conditions, it will most likely not.

I would see two ways:
1) Create a patch that does your changes and add it to the recipe (most
likely now in a custom layer) as a patch
2) Fork the repository, add all your customizations there, and point the
recipe (again most likely now in a custom layer) to that one.

Cheers,
F.



Il giorno ven 27 nov 2020 alle ore 01:35 David Novak <david.novak@dajac.com>
ha scritto:

> We changed the file directly.
>
> Since it's a custom file, I don't think it is being downloaded. What is
> the easiest way to determine if it's being downloaded?
>
> Thanks,
> David
>
>
>
> On 11/23/2020 2:16 AM, Federico Pellegrin wrote:
>
>
> Hi,
> I think it would be interesting information to know "how" you change the
> value inside "u-boot-at91/sama5d3_xplained_nandflash_config".
>
> As every time you rebuild it may be redownloaded, you should do this via a
> patch to append to the recipe.
>
> Are you doing this? Or just changing it locally?
>
> If you give some more info probably we can better help!
>
> Cheers,
> Federico
>
> Il giorno lun 23 nov 2020 alle ore 08:06 Khem Raj <raj.khem@gmail.com> ha
> scritto:
>
>> perhaps asking it on https://github.com/linux4sam/u-boot-at91 via
>> github issues might be helpful too.
>>
>> On Sat, Nov 21, 2020 at 4:26 AM David Novak <david.novak@dajac.com>
>> wrote:
>> >
>> > I'm working on this project with Pratham. Let me provide a few more
>> details.
>> >
>> > We've defined
>> >
>> > UBOOT_MACHINE ?= "sama5d3_xplained_nandflash_config"
>> >
>> > Inside
>> >
>> > u-boot-at91/sama5d3_xplained_nandflash_config
>> >
>> > we change CONFIG_BOOTDELAY, but it has no effect on the newly built
>> image. The boot delay remains the same as it was before we changed it.
>> >
>> > Based on the UBOOT_MACHINE, can we be certain we are changing the
>> correct file?
>> >
>> > How do we get the build process to include our changes?
>> >
>> > Thanks,
>> > David
>> >
>> >
>> >
>> > On 11/19/2020 5:37 PM, Prathamesh Ovalekar wrote:
>> >
>> > Hello everyone,
>> >
>> > System: sama5d3_xplained board
>> >
>> > I have a question regarding the configuration and build of u-boot.
>> > We have a build that was implemented earlier. I am trying to make some
>> changes to it.
>> >
>> > Change 1: Change the auto boot delay to 1 second.
>> > Change 2: Add an auto boot command to set a gpio.
>> >
>> > I am aware of the environment variables:  CONFIG_BOOTDELAY and
>> CONFIG_BOOTCOMMAND (needed for the changes above.)
>> > I tried modifying the  " configs/sama5d3_xplained_nandflash_defconfig "
>> >
>> > Question 1: Do I need to create an *.config file using the make
>> menuconfig?
>> >
>> > Question 2: How do I create the u-boot.bin . Does this  depend on the
>> Linux build?
>> >                     I know that there is an environment variable:
>> CONFIG_BOOTARGS that needs to be populated.
>> >
>> > --
>> > Pratham Ovalekar
>> >
>> >
>> >
>> >
>> >
>> >
>> >
>>
>>
>>
>>
>
> 
>
>

--0000000000002dadc805b50f368f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi David,</div><div>If you change it d=
irectly, changes may not be taken into account for the rebuild. And if the =
package build gets retriggered, then the whole repository is deleted (inclu=
ding your local changes), redownloaded, repatched and so on. So while it ma=
y by chance work by modifying locally in certain conditions, it will most l=
ikely not.</div><div><br></div><div>I would see two ways:</div><div>1) Crea=
te a patch that does your changes and add it to the recipe (most likely now=
 in a custom layer) as a patch</div><div>2) Fork the repository, add all yo=
ur customizations there, and point the recipe (again most likely now in a c=
ustom layer) to that one.</div><div><br></div><div>Cheers,</div><div>F.</di=
v><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">Il giorno ven 27 nov 2020 alle ore 01:35 Da=
vid Novak &lt;<a href=3D"mailto:david.novak@dajac.com">david.novak@dajac.co=
m</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
  
    
  
  <div>
    <p><span style=3D"font-style:italic;font-size:6pt"></span>We
      changed the file directly.</p>
    <p>Since it&#39;s a custom file, I don&#39;t think it is being downloa=
ded.
      What is the easiest way to determine if it&#39;s being downloaded?</=
p>
    <p>Thanks,<br>
      David<br>
    </p>
    <div><br>
      <br>
      <br>
    </div>
    <div>On 11/23/2020 2:16 AM, Federico
      Pellegrin wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Hi,</div>
        <div>I think it would be interesting information to know &quot;how=
&quot;
          you change the value inside
          &quot;u-boot-at91/sama5d3_xplained_nandflash_config&quot;.</div>
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
          ore 08:06 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" tar=
get=3D"_blank">raj.khem@gmail.com</a>&gt; ha
          scritto:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">perhaps
          asking it on <a href=3D"https://github.com/linux4sam/u-boot-at91=
" rel=3D"noreferrer" target=3D"_blank">https://github.com/linux4sam/u-boot-=
at91</a>
          via<br>
          github issues might be helpful too.<br>
          <br>
          On Sat, Nov 21, 2020 at 4:26 AM David Novak &lt;<a href=3D"mailt=
o:david.novak@dajac.com" target=3D"_blank">david.novak@dajac.com</a>&gt; wr=
ote:<br>
          &gt;<br>
          &gt; I&#39;m working on this project with Pratham. Let me provid=
e
          a few more details.<br>
          &gt;<br>
          &gt; We&#39;ve defined<br>
          &gt;<br>
          &gt; UBOOT_MACHINE ?=3D &quot;sama5d3_xplained_nandflash_config&=
quot;<br>
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
          &gt; I tried modifying the=C2=A0 &quot;
          configs/sama5d3_xplained_nandflash_defconfig &quot;<br>
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
      <fieldset></fieldset>
      <pre></pre>
    </blockquote>
  </div>

<br>
<br>
<br>
</blockquote></div>

--0000000000002dadc805b50f368f--
