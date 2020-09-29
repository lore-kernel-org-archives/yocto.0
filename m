Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.19813.1601383045360009934
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 05:37:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=GwHv0Igd;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd0641.aruba.it (smtpcmd0641.aruba.it [62.149.156.41])
	by mail.yoctoproject.org (Postfix) with ESMTP id 86AB138C06CF
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2020 05:37:24 -0700 (PDT)
Received: from [10.0.3.96] ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id NEskkzPzOQEEgNEskkxFTh; Tue, 29 Sep 2020 14:37:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1601383042; bh=4FY1bla9CWXxDorHZpSquYZH+Tnjgj9J/v+zIfTVdoY=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=GwHv0Igd/ANzT8NuAO3P+zHk7OjpeckqkZi0Vz/++jkqca7wBPwBT0OlXqKgtlA8Y
	 TOWfEBQ2adoLyrRcTmQiPg5kbBhrZ+HvbtWel9wNp/VePnNsILdthAQPgivfh+y3mx
	 2nkMfwvZH6z/6Ep6oUuJ7rNnNhSTNog5IPGPD2NXP5/5yuqWUJoF7KKyF5YjY/SauX
	 L0r5r/BIiTXyrM7d6uPCdPt6qbdtwVsBVN48sdr2qOhO9Z8qlO5ASRY2fvGqGT6xgg
	 nu8V2fPQ8rGYPc1fLkc9sO9c0S8qN+N9przA9p6GgQ2UxEpX2ht6rKFuuiNyqucIwp
	 Oe7oAFaBB/v0A==
Subject: Re: [yocto] File collision: same path from 2 recipes
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
References: <10274ebc-8857-8c51-55b0-f0a888ce8bf9@faresoftware.it>
 <CAGbd71RQrjf8vEfcoS9ZPAWXKCr20yGPesZT_bushNeqgkNX9w@mail.gmail.com>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <7e203494-00c7-384c-d73e-551397701820@faresoftware.it>
Date: Tue, 29 Sep 2020 14:37:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAGbd71RQrjf8vEfcoS9ZPAWXKCr20yGPesZT_bushNeqgkNX9w@mail.gmail.com>
X-CMAE-Envelope: MS4wfMdhgfqCfYOYQF30wvroqaNP8p5FkZLRKIYA1ujjKrU4VbKoWhZ3664Bt98PrWNnsvAAIAvRr2BY90CTbdvunQafODOPD7xO9Lno5sdEd6QO8AyPQDsY
 7G4j5hG9p943OhbznD+lznE4xC4qEswxPlBIDTifLGzSBKDRYNGyBHg1J+NAtgnUdzACQkGwXxtvbgpEq0n0E9vuBdv1NJrpwDk=
Content-Type: multipart/alternative;
 boundary="------------565CB5C67FCAECA64306DE8E"
Content-Language: it

--------------565CB5C67FCAECA64306DE8E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks for your help.

I'm working with an old Krogoth.

This checks is true even with Krogoth?


MZ

Il 29/09/20 14:17, Laurent Gauthier ha scritto:
> Hi Mauro,
>
> From my experience there should be an error reported during the image=20
> creation as long as the two *packages* that contain a file with the=20
> same name are BOTH installed in the root filesystem.
>
> If you don't receive an error I would suspect that for some reason the=
=20
> file is really only installed by one of the two packages.
>
> Another source of your issue is that there can be more than one=20
> package created by one recipe, and maybe you are not installing the=20
> package which contains the contentious file.
>
> Kind Regards, Laurent.
>
> On Tue, Sep 29, 2020 at 2:08 PM Mauro Ziliani <mauro@faresoftware.it=20
> <mailto:mauro@faresoftware.it>> wrote:
>
>     Hi all.
>
>     There is a QA to test if 2 recipes try to install a file with the
>     same path?
>
>     In my BSP 2 recipes try install the file
>     ${D}/etc/network/if-up,d/hostapd_restart
>
>
>     I'd like receive an error from bitbale
>
>
>     Best regards,
>
>
>     =C2=A0=C2=A0=C2=A0 MZ
>
>
>    =20
>
>
>
> --=20
> Laurent Gauthier
> Embedded Linux Systems & Software
> Phone: +33 630 483 429
> http://soccasys.com

--------------565CB5C67FCAECA64306DE8E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><font size=3D"-1">Thanks for your help.</font><br>
    </p>
    <p><font size=3D"-1">I'm working with an old Krogoth.</font></p>
    <p><font size=3D"-1">This checks is true even with Krogoth?</font></p>
    <p><br>
    </p>
    <p>MZ<br>
    </p>
    <div class=3D"moz-cite-prefix">Il 29/09/20 14:17, Laurent Gauthier ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGbd71RQrjf8vEfcoS9ZPAWXKCr20yGPesZT_bushNeqgkNX9w@mail.gmail=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">
        <div>Hi Mauro,</div>
        <div><br>
        </div>
        <div>From my experience there should be an error reported during
          the image creation as long as the two *packages* that contain
          a file with the same name are BOTH installed in the root
          filesystem.</div>
        <div><br>
        </div>
        <div>If you don't receive an error I would suspect that for some
          reason the file is really only installed by one of the two
          packages.</div>
        <div><br>
        </div>
        <div>Another source of your issue is that there can be more than
          one package created by one recipe, and maybe you are not
          installing the package which contains the contentious file.<br>
        </div>
        <div><br>
        </div>
        <div>Kind Regards, Laurent.<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 29, 2020 at 2:08
          PM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it"
            moz-do-not-send=3D"true">mauro@faresoftware.it</a>&gt; wrote:<=
br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i
          all.<br>
          <br>
          There is a QA to test if 2 recipes try to install a file with
          the same path?<br>
          <br>
          In my BSP 2 recipes try install the file <br>
          ${D}/etc/network/if-up,d/hostapd_restart<br>
          <br>
          <br>
          I'd like receive an error from bitbale<br>
          <br>
          <br>
          Best regards,<br>
          <br>
          <br>
          =C2=A0=C2=A0=C2=A0 MZ<br>
          <br>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <br>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail_signature">Laurent Gauthier<br>
        Embedded Linux Systems &amp; Software<br>
        Phone: +33 630 483 429<br>
        <a href=3D"http://soccasys.com" target=3D"_blank"
          moz-do-not-send=3D"true">http://soccasys.com</a></div>
    </blockquote>
  </body>
</html>

--------------565CB5C67FCAECA64306DE8E--
