Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.2065.1588225940873472063
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Apr 2020 22:52:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H+nxmtoN;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: jupiter.hce@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id s10so3527621edy.9
        for <yocto@lists.yoctoproject.org>; Wed, 29 Apr 2020 22:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=hR6Dcx8fldhDM6gNrYl8XSVjqbW8CxyC1tObDHOHJXU=;
        b=H+nxmtoNPZyknA5ZqOnVLUuYeV0tjNuJA7HpZJwrf7uU1HuYPZNm16Exk6TFXdottF
         Qthuo67ASCY4kRuvgNGQf3Yl4YcgnskxzfJtaHp/2zzPkL8md5ZYQLW0ji1HGGf6fmcP
         dgCUImH3SeJuDKGg3RWkH6X7pOiPU+MaKp08xe0YN2sMwrD+ifxReKrIjBhqff/QQhul
         oqIM2EIgkd894Seab7RNAlkO5i8F4q0U79ARuchynI7zx8/G9vFyPgloefxvCuO3LOOy
         Qgfuc3vW4rx47ir8Fh6Dq4G3qfwwAjFSNV2DbmfUV4DgxmtsNNwl3M9dPp0A1NiYboNr
         /v5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=hR6Dcx8fldhDM6gNrYl8XSVjqbW8CxyC1tObDHOHJXU=;
        b=BbxG+p0UagdvaA9SRHoHB6arOgFe9tO1sZRnHT8tk3rtmawJnzZffDx6ImnwvRquDT
         UpbRrQ2l6yftwbCheJX5NABr5+dlSF2AqBd43l8OOEnjzmnMEkCXeaOH5Qmq5RVmZD3a
         rcoK77rirVaVW1/VUHtYOx9LMtFPzJGnTkcqIeNJchm984GGUJT0I/SWiEFM3UjF/QwO
         4PqSZ7Dr4KjRwqFEyzKta56CZ3WzjIwFmBZ3oWOpoGibHQikT6b+hWt18wBN2VSly/JF
         9r/W0sQT4phCpPkP4fze5orLJ2ZQ9D//hflRO0y8oapUiBZkG4GGRjEZxcv/oFPykurU
         vWzQ==
X-Gm-Message-State: AGi0PuaEFrdt8PWB7xSdzEb3MgyDo90t0veaX+ld+pxQyiJaf2n6PSpy
	/l/xwz2bTDXNTskcT8zErtvXXsiupcmPb9FHjVki5uqY
X-Google-Smtp-Source: APiQypLDrUNDVpZ2hRD+SnlniPSwntiImBub6twYPXbxpEmacvdM+PpJKPKIVUaYpkzteC9Hp88htp86MF50KxmnS7U=
X-Received: by 2002:aa7:d894:: with SMTP id u20mr1106754edq.205.1588225939040;
 Wed, 29 Apr 2020 22:52:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:a881:0:0:0:0:0 with HTTP; Wed, 29 Apr 2020 22:52:18
 -0700 (PDT)
In-Reply-To: <CA+4=imaKgPkYgm-ks8jh0LnTmqovRrMuesXV0RsEmtWs4fmPHQ@mail.gmail.com>
References: <CAA=hcWSKre4hC8m=tdiavFSO1GbetceQy-jbWg0kzrMFK7QBSg@mail.gmail.com>
 <CA+4=imaKgPkYgm-ks8jh0LnTmqovRrMuesXV0RsEmtWs4fmPHQ@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 30 Apr 2020 15:52:18 +1000
Message-ID: <CAA=hcWSFY+hWiHQxx9q8eqcaaFZYJaQ1ZfzZx9cTfFjW2XO5fA@mail.gmail.com>
Subject: Re: [yocto] Which recipe for Linux tools to run u-boot command inside Linux?
To: yocto@lists.yoctoproject.org
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Yann, I am running Zeus, I guss it should be libubootenv-bin,
going to try it now.

Thank you so much and greatly appreciate your help.

- yh

On 4/28/20, Yann Dirson <yann.dirson@blade-group.com> wrote:
> Hello,
>
> It depends on the yocto version.  Since dunfell they are in
> libubootenv-bin, before that they were in u-boot-fw-utils.
>
> Le mar. 28 avr. 2020 =C3=A0 10:04, JH <jupiter.hce@gmail.com> a =C3=A9cri=
t :
>
>> Hi,
>>
>> I was told you can run u-boot command inside of Linux, which recipe
>> can be used in Yocto for install that package?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>>
>>
>> --
>> "A man can fail many times, but he isn't a failure until he begins to
>> blame somebody else."
>> -- John Burroughs
>>
>>
>
>
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech
>


--=20
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs
