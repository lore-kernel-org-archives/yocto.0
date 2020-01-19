Received: from smtpout1.mo803.mail-out.ovh.net (smtpout1.mo803.mail-out.ovh.net [79.137.123.219])
 by mx.groups.io with SMTP id smtpd.web11.1817.1579431567458961411
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jan 2020 02:59:28 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: pfontaine.fr, ip: 79.137.123.219, mailfrom: pierre.ftn@pfontaine.fr)
Received: from DAG6EX1.emp.local (unknown [10.108.42.172])
	by mo803.mail-out.ovh.net (Postfix) with ESMTPS id D654F3F91684
	for <yocto@lists.yoctoproject.org>; Sun, 19 Jan 2020 11:59:25 +0100 (CET)
Received: from [192.168.1.22] (78.230.210.129) by DAG6EX1.emp.local
 (172.16.2.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3; Sun, 19 Jan
 2020 11:59:25 +0100
To: <yocto@lists.yoctoproject.org>
References: <uRzy.1579421434958356583.MIYv@lists.yoctoproject.org>
From: pierre.ftn@pfontaine.fr
Openpgp: preference=signencrypt
Autocrypt: addr=pierre.ftn@pfontaine.fr; keydata=
 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
 IGg9zps=
Subject: Re: [yocto] cannot create a custom application in Yocto #yocto
Message-ID: <2b53eb22-18cd-7f39-fe53-9b771c792c75@pfontaine.fr>
Date: Sun, 19 Jan 2020 11:59:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <uRzy.1579421434958356583.MIYv@lists.yoctoproject.org>
X-Originating-IP: [78.230.210.129]
X-ClientProxiedBy: CAS4.emp.local (172.16.1.4) To DAG6EX1.emp.local
 (172.16.2.11)
X-Ovh-Tracer-Id: 3930798052437944070
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudefgddvvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepvfhfhffukffffgggjggtihesrgdtreertdefjeenucfhrhhomhepphhivghrrhgvuchfohhnthgrihhnvgcuoehpihgvrhhrvgdrfhhtnhesphhfohhnthgrihhnvgdrfhhrqeenucffohhmrghinhepvhgrrhhifihikhhirdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghenucfkpheptddrtddrtddrtddpjeekrddvfedtrddvuddtrdduvdelnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopefftefiiefgigdurdgvmhhprdhlohgtrghlpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehpihgvrhhrvgdrfhhtnhesphhfohhnthgrihhnvgdrfhhrpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Content-Type: multipart/alternative;
	boundary="------------E5D877D2109C1FC033B77AC3"
Content-Language: fr

--------------E5D877D2109C1FC033B77AC3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've tested the given example on the branch Zeus and it works fine.

Here the hierarchy :

[pfontaine@precision recipes-myhello]$ tree -L 3
.
=E2=94=94=E2=94=80=E2=94=80 myhello
=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 files
=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 myhel=
lo.c
=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 myhello.bb

2 directories, 2 files

The error that Bitbake gives you could be because you may have no
"myhello" directory under a recipes directory.

Also, I suggest you to not mix "hello" and "myhello" when you name files.

Hope it will help you to fix your issue.

Pierre Fontaine.

Le 19/01/2020 =C3=A0 09:10, ran junk a =C3=A9crit=C2=A0:
> hello. i am a newbie with yocto. i am need to create my custom app. i
> have gone over a number of tutorials but my app stills fails to be
> compiled.
> i am trying to compile it with the yocto and not the toolchain. i have
> done as is written in
> http://variwiki.com/index.php?title=3DYocto_Hello_World
> 1) created a hello.bb file
> 2) added the directory files and added my hello.c code.
> I try and run it with bitbake myhello and i get ERROR: Nothing
> RPROVIDES 'myhello'. could you tell me what am i missing?
> thanks
>
>=20

--------------E5D877D2109C1FC033B77AC3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><tt>Hi,</tt></p>
    <p><tt>I've tested the given example on the branch Zeus and it works
        fine.</tt></p>
    <p><tt>Here the hierarchy :<br>
      </tt></p>
    <p><tt>[pfontaine@precision recipes-myhello]$ tree -L 3<br>
      </tt><tt>.</tt><br>
      <tt>=E2=94=94=E2=94=80=E2=94=80 myhello</tt><br>
      <tt>=C2=A0=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 files</tt><br>
      <tt>=C2=A0=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=
=94=80 myhello.c</tt><br>
      <tt>=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 myhello.bb</tt><b=
r>
      <br>
      <tt>2 directories, 2 files</tt><br>
      <tt><br>
      </tt></p>
    <p><tt>The error that Bitbake gives you could be because you may
        have no "myhello" directory under a recipes directory.</tt></p>
    <p><tt>Also, I suggest you to not mix "hello" and "myhello" when you
        name files.</tt></p>
    <p><tt>Hope it will help you to fix your issue.<br>
      </tt></p>
    <p><tt>Pierre Fontaine.<br>
      </tt></p>
    <div class=3D"moz-cite-prefix">Le 19/01/2020 =C3=A0 09:10, ran junk a
      =C3=A9crit=C2=A0:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:uRzy.1579421434958356583.MIYv@lists.yoctoproject.org">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      hello. i am a newbie with yocto. i am need to create my custom
      app. i have gone over a number of tutorials but my app stills
      fails to be compiled.<br>
      i am trying to compile it with the yocto and not the toolchain. i
      have done as is written in <a
        href=3D"http://variwiki.com/index.php?title=3DYocto_Hello_World"
        target=3D"_blank" rel=3D"noopener" moz-do-not-send=3D"true">http:/=
/variwiki.com/index.php?title=3DYocto_Hello_World</a>
      <br>
      1) created a hello.bb file <br>
      2) added the directory files and added my hello.c code. <br>
      I try and run it with bitbake myhello and i get ERROR: Nothing
      RPROVIDES 'myhello'. could you tell me what am i missing?<br>
      thanks
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
  </body>
</html>

--------------E5D877D2109C1FC033B77AC3--
