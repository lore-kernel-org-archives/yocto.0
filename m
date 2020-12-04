Received: from 1.mo69.mail-out.ovh.net (1.mo69.mail-out.ovh.net [178.33.251.173])
 by mx.groups.io with SMTP id smtpd.web10.12844.1607081889438342008
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Dec 2020 03:38:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 178.33.251.173, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player794.ha.ovh.net (unknown [10.108.42.73])
	by mo69.mail-out.ovh.net (Postfix) with ESMTP id 0DFEBA5A34
	for <yocto@lists.yoctoproject.org>; Fri,  4 Dec 2020 12:38:06 +0100 (CET)
Received: from 3mdeb.com (89-66-159-90.dynamic.chello.pl [89.66.159.90])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player794.ha.ovh.net (Postfix) with ESMTPSA id 1761115C1AC90;
	Fri,  4 Dec 2020 11:38:04 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-99G003c78267bd-c186-4b7d-ae3c-f0ee6b876534,
                    88C5E7F1D96BBF54EED448F85B92423F1F6EA38A) smtp.auth=maciej.pijanowski@3mdeb.com
X-OVh-ClientIp: 89.66.159.90
Subject: Re: [yocto] Yocto Application Development #yocto
To: vijayrakeshmunganda@gmail.com, yocto@lists.yoctoproject.org
References: <j85k.1607080673051844914.nRr1@lists.yoctoproject.org>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <d25a4036-a206-6b7b-b10c-aedab9282b93@3mdeb.com>
Date: Fri, 4 Dec 2020 12:38:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <j85k.1607080673051844914.nRr1@lists.yoctoproject.org>
X-Ovh-Tracer-Id: 2278258464678489606
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudeikedgfedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpeeivdehfeeiheegffejheeijedvtdfflefhkefhhfdufedvjeevjeduhfetvefgvdenucffohhmrghinhepmhgvughiuhhmrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeelrdeiiedrudehledrledtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeelgedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------806DE6E8BD35216AA0003C45"
Content-Language: en-US

--------------806DE6E8BD35216AA0003C45
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 04.12.2020 12:17, vijayrakeshmunganda@gmail.com wrote:
> Hi All,
>
> I'm new to Yocto, till now I was thinking I have to develop an
> application by writing a recipe as mentioned in the
> link=C2=A0https://medium.com/@lokeshsharma596/yocto-lab-02-creating-cust=
om-layer-and-writing-recipe-for-hello-world-f4438311bbfc,
> now I found some sources developing an application using Eclipse IDE.
> Here I'm confused about which is the better way/correct way of
> developing my application. Kindly please suggest to me.
>
Eclipse IDE is no longer maintained as far as i know.

The best to start would be to follow the Yocto documentation on creating
recipes:
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#new-=
recipe-writing-a-new-recipe

I usually start with using of the recipetool.
> I'm trying to generate core-image-sdk by adding=C2=A0EXTRA_IMAGE_FEATURE=
S
> ?=3D "debug-tweaks tools-debug", but could find any .tar.bz2 file at
> tmp/deploy/images
>
> Best Regards,
> Vijay
>
>=20
>
--=20
Maciej Pijanowski
Embedded Firmware Team Leader
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------806DE6E8BD35216AA0003C45
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
    <div class=3D"moz-cite-prefix">On 04.12.2020 12:17,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:vijayrakeshmung=
anda@gmail.com">vijayrakeshmunganda@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:j85k.1607080673051844914.nRr1@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      Hi All,<br>
      <br>
      I'm new to Yocto, till now I was thinking I have to develop an
      application by writing a recipe as mentioned in the link=C2=A0<a
href=3D"https://medium.com/@lokeshsharma596/yocto-lab-02-creating-custom-l=
ayer-and-writing-recipe-for-hello-world-f4438311bbfc"
        target=3D"_blank" rel=3D"noopener" moz-do-not-send=3D"true">https:=
//medium.com/@lokeshsharma596/yocto-lab-02-creating-custom-layer-and-writin=
g-recipe-for-hello-world-f4438311bbfc</a>,
      now I found some sources developing an application using Eclipse
      IDE. Here I'm confused about which is the better way/correct way
      of developing my application. Kindly please suggest to me.<br>
      <br>
    </blockquote>
    Eclipse IDE is no longer maintained as far as i know.<br>
    <br>
    The best to start would be to follow the Yocto documentation on
    creating recipes:<br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject.org/do=
cs/latest/mega-manual/mega-manual.html#new-recipe-writing-a-new-recipe">htt=
ps://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#new-reci=
pe-writing-a-new-recipe</a><br>
    <br>
    I usually start with using of the recipetool.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:j85k.1607080673051844914.nRr1@lists.yoctoproject.org">I'=
m
      trying to generate core-image-sdk by adding=C2=A0EXTRA_IMAGE_FEATURE=
S
      ?=3D "debug-tweaks tools-debug", but could find any .tar.bz2 file at
      tmp/deploy/images<br>
      <br>
      Best Regards,<br>
      Vijay
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Firmware Team Leader
GPG: 9963C36AAC3B2B46
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3mde=
b.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------806DE6E8BD35216AA0003C45--
