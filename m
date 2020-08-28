Received: from 5.mo69.mail-out.ovh.net (5.mo69.mail-out.ovh.net [46.105.43.105])
 by mx.groups.io with SMTP id smtpd.web10.37929.1598598455713785691
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 00:07:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.43.105, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player763.ha.ovh.net (unknown [10.110.103.91])
	by mo69.mail-out.ovh.net (Postfix) with ESMTP id 644D49C80E
	for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 09:07:33 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player763.ha.ovh.net (Postfix) with ESMTPSA id ABA46159624CE
	for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 07:07:32 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-97G0027895aeb5-b72b-4bb8-8d27-e23b7597b390,
                    9E73030970DB4E3134A1432506E07132F5F86F52) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] Removing Python2 Completely
To: yocto@lists.yoctoproject.org
References: <CANVQz1acaPcBOLw7OWCD3sXBM4Q_iqC2bJcRRm_xQtgMtuYwhg@mail.gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <a61e089e-a927-cf88-c005-41f01e6fcf95@3mdeb.com>
Date: Fri, 28 Aug 2020 09:07:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANVQz1acaPcBOLw7OWCD3sXBM4Q_iqC2bJcRRm_xQtgMtuYwhg@mail.gmail.com>
X-Ovh-Tracer-Id: 12480600471115738630
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddviedgudduudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepuffvfhfhkffffgggjggtsegrtderredtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuggftrfgrthhtvghrnhepteejjeeftddtledtkeffveffueegjeegieefgfevtdelfeduhffgffekheelvdejnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeeifedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------3FDB96BC54FA1C16428E380E"
Content-Language: en-US

--------------3FDB96BC54FA1C16428E380E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 28.08.2020 09:04, Aashik Aswin wrote:
> Hi,
>
> I am trying to remove Python2 and it's supporting modules completely=20
> from my Image, as I have moved all my code to Python3 and hence no=20
> longer require Python2. I tried the IMAGE_INSTALL_remove variable but=20
> seems to have no effect. Is there a way I can remove Python2 without=20
> much changes to the layers and through configuration variables only ?

You can see what is pulling the python2 to the image (using the bitbake=20
-g for example).

Which Yocto release are you using? I believe the latest one (Dunfell) is=
=20
already python3 only.


>
> Please point me to the correct mailer if=C2=A0 I am wrong.
>
> Thanks,
> Aashik
>
>=20

--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------3FDB96BC54FA1C16428E380E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 28.08.2020 09:04, Aashik Aswin
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANVQz1acaPcBOLw7OWCD3sXBM4Q_iqC2bJcRRm_xQtgMtuYwhg@mail.gmail=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I am trying to remove Python2 and it's supporting modules
          completely from my Image, as I have moved all my code to
          Python3 and hence no longer require Python2.=C2=A0<span
            style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica
            Neue&quot;,Helvetica,sans-serif;font-size:13px">I tried the
            IMAGE_INSTALL_remove variable but seems to have no effect.
            Is there a way I can remove Python2 without much changes to
            the layers and through configuration variables only ?</span></=
div>
      </div>
    </blockquote>
    <p>You can see what is pulling the python2 to the image (using the
      bitbake -g for example).<br>
      <br>
      Which Yocto release are you using? I believe the latest one
      (Dunfell) is already python3 only.<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CANVQz1acaPcBOLw7OWCD3sXBM4Q_iqC2bJcRRm_xQtgMtuYwhg@mail.gmail=
.com">
      <div dir=3D"ltr">
        <div><span
            style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica
            Neue&quot;,Helvetica,sans-serif;font-size:13px"><br>
          </span></div>
        <div><span
            style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica
            Neue&quot;,Helvetica,sans-serif;font-size:13px">Please point
            me to the correct mailer if=C2=A0 I am wrong.</span></div>
        <div><span
            style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica
            Neue&quot;,Helvetica,sans-serif;font-size:13px"><br>
          </span></div>
        <div><span
            style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica
            Neue&quot;,Helvetica,sans-serif;font-size:13px">Thanks,</span>=
</div>
        <div><span
            style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica
            Neue&quot;,Helvetica,sans-serif;font-size:13px">Aashik</span><=
/div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3mde=
b.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------3FDB96BC54FA1C16428E380E--
