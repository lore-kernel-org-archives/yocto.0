Received: from 15.mo5.mail-out.ovh.net (15.mo5.mail-out.ovh.net [178.33.107.29])
 by mx.groups.io with SMTP id smtpd.web10.38027.1598598890525187916
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 00:14:51 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 178.33.107.29, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player737.ha.ovh.net (unknown [10.110.103.180])
	by mo5.mail-out.ovh.net (Postfix) with ESMTP id 07301292DCC
	for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 09:14:47 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player737.ha.ovh.net (Postfix) with ESMTPSA id 38780C209F36;
	Fri, 28 Aug 2020 07:14:45 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-105G006797ccf36-603b-4534-92d1-f948e1a3f015,
                    9E73030970DB4E3134A1432506E07132F5F86F52) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] Removing Python2 Completely
To: Aashik Aswin <thisisaash9698@gmail.com>, yocto@lists.yoctoproject.org
References: <CANVQz1acaPcBOLw7OWCD3sXBM4Q_iqC2bJcRRm_xQtgMtuYwhg@mail.gmail.com>
 <a61e089e-a927-cf88-c005-41f01e6fcf95@3mdeb.com>
 <CANVQz1aQH1DRheyAE70y+PuGMs9OZ6hhMGR=CkjpyMnP2e5rhQ@mail.gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <3d0b2801-1120-fde4-ea56-0d364b12539c@3mdeb.com>
Date: Fri, 28 Aug 2020 09:14:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANVQz1aQH1DRheyAE70y+PuGMs9OZ6hhMGR=CkjpyMnP2e5rhQ@mail.gmail.com>
X-Ovh-Tracer-Id: 12603042084433047046
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddviedguddufecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepuffvfhfhkffffgggjggtsegrtderredtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuggftrfgrthhtvghrnhepteejjeeftddtledtkeffveffueegjeegieefgfevtdelfeduhffgffekheelvdejnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------E15C81B3A739B4C8756190F5"
Content-Language: en-US

--------------E15C81B3A739B4C8756190F5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 28.08.2020 09:10, Aashik Aswin wrote:
> Hi,
> I am currently using Yocto Zeus. So is it safe to say that if we=20
> remove all the Python2 calls from image, that itself will remove=20
> Python2 overall ?

If you want to remove python2 from the image, you need to make sure that=
=20
no other package installed
to the image RDEPENDS (runtime dependency) on it. I would start with=20
checking what still pulls the
python2 to your image.

https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#usingpoky=
-debugging-dependencies

Also, please reply to the list, not directly to just me.

>
> Thanks,
> Aashik
>
> On Fri 28 Aug, 2020, 12:37 PM Maciej Pijanowski,=20
> <maciej.pijanowski@3mdeb.com <mailto:maciej.pijanowski@3mdeb.com>> wrote=
:
>
>
>     On 28.08.2020 09:04, Aashik Aswin wrote:
>>     Hi,
>>
>>     I am trying to remove Python2 and it's supporting modules
>>     completely from my Image, as I have moved all my code to Python3
>>     and hence no longer require Python2. I tried the
>>     IMAGE_INSTALL_remove variable but seems to have no effect. Is
>>     there a way I can remove Python2 without much changes to the
>>     layers and through configuration variables only ?
>
>     You can see what is pulling the python2 to the image (using the
>     bitbake -g for example).
>
>     Which Yocto release are you using? I believe the latest one
>     (Dunfell) is already python3 only.
>
>
>>
>>     Please point me to the correct mailer if=C2=A0 I am wrong.
>>
>>     Thanks,
>>     Aashik
>>
>     --=20
>     Maciej Pijanowski
>     Embedded Systems Engineer
>     GPG: 9963C36AAC3B2B46
>     https://3mdeb.com  | @3mdeb_com
>
>    =20
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------E15C81B3A739B4C8756190F5
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
    <div class=3D"moz-cite-prefix">On 28.08.2020 09:10, Aashik Aswin
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANVQz1aQH1DRheyAE70y+PuGMs9OZ6hhMGR=3DCkjpyMnP2e5rhQ@mail.gma=
il.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"auto">Hi,
        <div dir=3D"auto">=C2=A0</div>
        <div dir=3D"auto">I am currently using Yocto Zeus. So is it safe
          to say that if we remove all the Python2 calls from image,
          that itself will remove Python2 overall ?</div>
      </div>
    </blockquote>
    <br>
    If you want to remove python2 from the image, you need to make sure
    that no other package installed<br>
    to the image RDEPENDS (runtime dependency) on it. I would start with
    checking what still pulls the<br>
    python2 to your image.<br>
    <br>
    <p>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject.org/do=
cs/1.8/ref-manual/ref-manual.html#usingpoky-debugging-dependencies">https:/=
/www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#usingpoky-debuggi=
ng-dependencies</a></p>
    <p>Also, please reply to the list, not directly to just me.<br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CANVQz1aQH1DRheyAE70y+PuGMs9OZ6hhMGR=3DCkjpyMnP2e5rhQ@mail.gma=
il.com">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks,</div>
        <div dir=3D"auto">Aashik</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri 28 Aug, 2020, 12:37 P=
M
          Maciej Pijanowski, &lt;<a
            href=3D"mailto:maciej.pijanowski@3mdeb.com"
            moz-do-not-send=3D"true">maciej.pijanowski@3mdeb.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div>
            <p><br>
            </p>
            <div>On 28.08.2020 09:04, Aashik Aswin wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hi,
                <div><br>
                </div>
                <div>I am trying to remove Python2 and it's supporting
                  modules completely from my Image, as I have moved all
                  my code to Python3 and hence no longer require
                  Python2.=C2=A0<span>I tried the IMAGE_INSTALL_remove
                    variable but seems to have no effect. Is there a way
                    I can remove Python2 without much changes to the
                    layers and through configuration variables only ?</spa=
n></div>
              </div>
            </blockquote>
            <p>You can see what is pulling the python2 to the image
              (using the bitbake -g for example).<br>
              <br>
              Which Yocto release are you using? I believe the latest
              one (Dunfell) is already python3 only.<br>
            </p>
            <p><br>
            </p>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><span><br>
                  </span></div>
                <div><span>Please point me to the correct mailer if=C2=A0 =
I
                    am wrong.</span></div>
                <div><span><br>
                  </span></div>
                <div><span>Thanks,</span></div>
                <div><span>Aashik</span></div>
              </div>
              <br>
              <fieldset></fieldset>
            </blockquote>
            <pre cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a href=3D"https://3mdeb.com" target=3D"_blank" rel=3D"noreferrer" moz-do-=
not-send=3D"true">https://3mdeb.com</a> | @3mdeb_com</pre>
          </div>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3mde=
b.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------E15C81B3A739B4C8756190F5--
