Received: from 4.mo173.mail-out.ovh.net (4.mo173.mail-out.ovh.net [46.105.34.219])
 by mx.groups.io with SMTP id smtpd.web12.6580.1575021928541042623
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 02:05:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.34.219, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player726.ha.ovh.net (unknown [10.108.1.121])
	by mo173.mail-out.ovh.net (Postfix) with ESMTP id B699B124967
	for <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2019 11:05:26 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player726.ha.ovh.net (Postfix) with ESMTPSA id 8CC12CA10E03;
	Fri, 29 Nov 2019 10:05:24 +0000 (UTC)
Subject: Re: Private: Re: [yocto] Which layer is best for tpm2 stack
To: diego.santacruz@spinetix.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <DB7PR01MB5161A4966BAC929095385B4488440@DB7PR01MB5161.eurprd01.prod.exchangelabs.com>
 <25293.1574938811729379315@lists.yoctoproject.org>
 <VI1PR01MB51673C82AC57A3DEB911070588460@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
 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
 0f2bcrTp9w==
Message-ID: <2b4e22cb-1e21-4bde-fd31-defebc02d347@3mdeb.com>
Date: Fri, 29 Nov 2019 11:05:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VI1PR01MB51673C82AC57A3DEB911070588460@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
X-Ovh-Tracer-Id: 17106360234706087430
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 49
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudeiledgtdelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucgoufhushhpvggtthffohhmrghinhculdegledmnecujfgurhepuffvfhfhkffffgggjggtsehgtderofdtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuffhomhgrihhnpegvvghpuhhrlhdrtghomhdpfehmuggvsgdrtghomhdpshhpihhnvghtihigrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghdpghhithhhuhgsrdgtohhmnecukfhppedtrddtrddtrddtpdekhedrvddvvddruddujedrvddvvdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjedviedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-Groupsio-MsgNum: 47464
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="NUzQ04zIgHNTGCQFTaAw1PRSH4nsK3y43"

--NUzQ04zIgHNTGCQFTaAw1PRSH4nsK3y43
Content-Type: multipart/mixed; boundary="zSUj2iybXY6fW776eMsmlMWdlBvk2Mtzc";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: diego.santacruz@spinetix.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <2b4e22cb-1e21-4bde-fd31-defebc02d347@3mdeb.com>
Subject: Re: Private: Re: [yocto] Which layer is best for tpm2 stack
References: <DB7PR01MB5161A4966BAC929095385B4488440@DB7PR01MB5161.eurprd01.prod.exchangelabs.com>
 <25293.1574938811729379315@lists.yoctoproject.org>
 <VI1PR01MB51673C82AC57A3DEB911070588460@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
In-Reply-To: <VI1PR01MB51673C82AC57A3DEB911070588460@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>

--zSUj2iybXY6fW776eMsmlMWdlBvk2Mtzc
Content-Type: multipart/alternative;
 boundary="------------63C29FEE6F7C5C11509B7213"
Content-Language: en-US

--------------63C29FEE6F7C5C11509B7213
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 29.11.2019 11:01, Diego Santa Cruz via Lists.Yoctoproject.Org wrote:
>
> Dear all,
>
> =C2=A0
>
> I got the feedback below by private email (was meant to be sent to the
> m-l), so I think I=E2=80=99ll go with meta-tmp2 from meta-secure-core f=
or now.
>
> =C2=A0
>
> But I may switch to meta-tpm from meta-security in the future as it
> seems to have more tpm2 related recipes (I=E2=80=99m on thud for now an=
d the
> tpm2-tools in thud branch of meta-security is too old).
>
> =C2=A0
>
> Any other feedback from the community?
>
I'm currently using meta-tpm from meta-security for tpm2-tools.
My reasoning was that this one will likely be the one to go in the long
run since it's hosted on the poky git (?).
>
> =C2=A0
>
> Thanks,
>
> =C2=A0
>
> Diego
>
> =C2=A0
>
> --
> *Diego Santa Cruz, PhD*
> Technology Architect
> T +41 21 341 15 50
> diego.santacruz@spinetix.com <mailto:diego.santacruz@spinetix.com>|
> Subscribe to our Newlsetter <http://eepurl.com/dgs82P>
>
> spinetix.com
>
> =C2=A0
>
> *From:*Dan O'Donovan via Lists.Yoctoproject.Org
> <dan=3Demutex.com@lists.yoctoproject.org>
> *Sent:* 28 November 2019 12:00
> *To:* Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
> *Subject:* Private: Re: [yocto] Which layer is best for tpm2 stack
>
> =C2=A0
>
> On Wed, Nov 27, 2019 at 02:56 PM, Diego Santa Cruz wrote:
>
>     Hello,
>
>     =C2=A0
>
>     I need to use a TPM2 software stack for my project (tpm2-tools,
>     tpm2-abrmd, tpm2-tss, etc.), where I am already using Yocto,
>     meta-intel, meta-oe, meta-networking, etc.
>
>     =C2=A0
>
>     I see there are at least the following three layers that carry the
>     necessary TPM2 bits, with varying recipe versions.
>
>       * meta-tpm in meta-security repo
>         (https://git.yoctoproject.org/cgit/cgit.cgi/meta-security/)
>       * meta-tpm2 in meta-secure-core repo
>         (https://github.com/jiazhang0/meta-secure-core)
>       * meta-measured (https://github.com/flihp/meta-measured)
>
>     =C2=A0
>
>     My current objective is to use the TPM2 as a security chip from
>     our software (in the future we may extend its use to root fs
>     encryption keys and the like). Are there any recommendations as to
>     which of these layers would be more appropriate, is better
>     maintained, etc.?
>
> I've personally used the meta-tpm2 layer in meta-secure-core repo with
> good success on both Intel and ARM platforms with Infineon TPM chips.=C2=
=A0
> In particular, I used the cryptfs-tpm2 and secure-core initramfs
> recipes from that layer for managing root fs encryption.=C2=A0 IIRC, th=
is
> layer seemed to offer the best support for what we needed regarding
> TPM2 on Yocto 'Sumo' at the time.
>
> I haven't really looked at the other layers recently so I can't give a
> comparison with those.=C2=A0 However, I did notice a significant amount=
 of
> activity via the mailing list related to TPM2 support for the
> meta-security repo in recent weeks, so that's probably worth a look too=
=2E
>
>     =C2=A0
>
>     =C2=A0
>
>     BTW, the meta-tpm layer in meta-security repo is not listed in the
>     OpenEmbedded Layer index, although meta-security itself and some
>     of the other layers in that repo are listed. Is that because of a
>     name clash with the ones under the meta-secure-core repo, which
>     also carries layers named meta-tpm and meta-integrity?
>
>     =C2=A0
>
>     Thanks,
>
>     =C2=A0
>
>     Diego
>
>     --=20
>     *Diego Santa Cruz, PhD**
>     *Technology Architect
>     spinetix.com
>
>     =C2=A0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47463): https://lists.yoctoproject.org/g/yocto/mess=
age/47463
> Mute This Topic: https://lists.yoctoproject.org/mt/64331549/3616795
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [maciej.pija=
nowski@3mdeb.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: F1401D2E1CCB19EF
https://3mdeb.com | @3mdeb_com


--------------63C29FEE6F7C5C11509B7213
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 29.11.2019 11:01, Diego Santa Cruz
      via Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:VI1PR01MB51673C82AC57A3DEB911070588460@VI1PR01MB5167.eurprd01=
=2Eprod.exchangelabs.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.defangedmsonormal, li.defangedmsonormal, div.defangedmsonormal
	{mso-style-name:defangedmsonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
=2EMsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1948929298;
	mso-list-template-ids:-844701676;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US">Dear all,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US">I got the feedback below by private email (was=

            meant to be sent to the m-l), so I think I=E2=80=99ll go with=

            meta-tmp2 from meta-secure-core for now.<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US">But I may switch to meta-tpm from meta-securit=
y
            in the future as it seems to have more tpm2 related recipes
            (I=E2=80=99m on thud for now and the tpm2-tools in thud branc=
h of
            meta-security is too old).<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US">Any other feedback from the community?</span><=
/p>
      </div>
    </blockquote>
    I'm currently using meta-tpm from meta-security for tpm2-tools.<br>
    My reasoning was that this one will likely be the one to go in the
    long run since it's hosted on the poky git (?).<br>
    <blockquote type=3D"cite"
cite=3D"mid:VI1PR01MB51673C82AC57A3DEB911070588460@VI1PR01MB5167.eurprd01=
=2Eprod.exchangelabs.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US">Thanks,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US">Diego<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-s=
erif">--<br>
            <b>Diego Santa Cruz, PhD</b><br>
            Technology Architect<br>
            <span style=3D"color:gray">T +41 21 341 15 50<br>
            </span></span><span
style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:g=
ray"
            lang=3D"FR"><a href=3D"mailto:diego.santacruz@spinetix.com"
              moz-do-not-send=3D"true"><span style=3D"color:#0563C1"
                lang=3D"EN-GB">diego.santacruz@spinetix.com</span></a></s=
pan><span
style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:g=
ray">
            | </span><span lang=3D"EN-US"><a
              href=3D"http://eepurl.com/dgs82P" moz-do-not-send=3D"true">=
<span
style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#=
0563C1">Subscribe
                to our Newlsetter</span></a></span><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-s=
erif"
            lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-s=
erif">spinetix.com<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=

            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0c=
m
          0cm 0cm 4.0pt">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span>=
</b><span
                  lang=3D"EN-US"> Dan O'Donovan via Lists.Yoctoproject.Or=
g
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:dan=3D=
emutex.com@lists.yoctoproject.org">&lt;dan=3Demutex.com@lists.yoctoprojec=
t.org&gt;</a>
                  <br>
                  <b>Sent:</b> 28 November 2019 12:00<br>
                  <b>To:</b> Diego Santa Cruz
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:Diego=
=2ESantaCruz@spinetix.com">&lt;Diego.SantaCruz@spinetix.com&gt;</a><br>
                  <b>Subject:</b> Private: Re: [yocto] Which layer is
                  best for tpm2 stack<o:p></o:p></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p class=3D"MsoNormal">On Wed, Nov 27, 2019 at 02:56 PM, Diego
            Santa Cruz wrote:<o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">Hello,<o:p></o=
:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">=C2=A0<o:p></o=
:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">I need to use =
a
                TPM2 software stack for my project (tpm2-tools,
                tpm2-abrmd, tpm2-tss, etc.), where I am already using
                Yocto, meta-intel, meta-oe, meta-networking, etc.<o:p></o=
:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">=C2=A0<o:p></o=
:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">I see there ar=
e
                at least the following three layers that carry the
                necessary TPM2 bits, with varying recipe versions.<o:p></=
o:p></p>
              <ul type=3D"disc">
                <li class=3D"MsoListParagraph" style=3D"mso-list:l0 level=
1
                  lfo1">meta-tpm in meta-security repo (<a
                    href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/me=
ta-security/"
                    moz-do-not-send=3D"true">https://git.yoctoproject.org=
/cgit/cgit.cgi/meta-security/</a>)<o:p></o:p></li>
                <li class=3D"MsoListParagraph" style=3D"mso-list:l0 level=
1
                  lfo1">meta-tpm2 in meta-secure-core repo (<a
                    href=3D"https://github.com/jiazhang0/meta-secure-core=
"
                    moz-do-not-send=3D"true">https://github.com/jiazhang0=
/meta-secure-core</a>)<o:p></o:p></li>
                <li class=3D"MsoListParagraph" style=3D"mso-list:l0 level=
1
                  lfo1">meta-measured (<a
                    href=3D"https://github.com/flihp/meta-measured"
                    moz-do-not-send=3D"true">https://github.com/flihp/met=
a-measured</a>)<o:p></o:p></li>
              </ul>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">=C2=A0<o:p></o=
:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">My current
                objective is to use the TPM2 as a security chip from our
                software (in the future we may extend its use to root fs
                encryption keys and the like). Are there any
                recommendations as to which of these layers would be
                more appropriate, is better maintained, etc.?<o:p></o:p><=
/p>
            </div>
          </blockquote>
          <p class=3D"MsoNormal">I've personally used the meta-tpm2 layer=

            in meta-secure-core repo with good success on both Intel and
            ARM platforms with Infineon TPM chips.=C2=A0 In particular, I=

            used the cryptfs-tpm2 and secure-core initramfs recipes from
            that layer for managing root fs encryption.=C2=A0 IIRC, this
            layer seemed to offer the best support for what we needed
            regarding TPM2 on Yocto 'Sumo' at the time.<br>
            <br>
            I haven't really looked at the other layers recently so I
            can't give a comparison with those.=C2=A0 However, I did noti=
ce a
            significant amount of activity via the mailing list related
            to TPM2 support for the meta-security repo in recent weeks,
            so that's probably worth a look too.<o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">=C2=A0<o:p></o=
:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">=C2=A0<o:p></o=
:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">BTW, the
                meta-tpm layer in meta-security repo is not listed in
                the OpenEmbedded Layer index, although meta-security
                itself and some of the other layers in that repo are
                listed. Is that because of a name clash with the ones
                under the meta-secure-core repo, which also carries
                layers named meta-tpm and meta-integrity?<o:p></o:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">=C2=A0<o:p></o=
:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">Thanks,<o:p></=
o:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">=C2=A0<o:p></o=
:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">Diego<o:p></o:=
p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt"><span
                  style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,=
sans-serif">--
                  <br>
                  <strong><span
                      style=3D"font-family:&quot;Arial&quot;,sans-serif">=
Diego
                      Santa Cruz, PhD</span></strong><b><br>
                  </b><span style=3D"color:gray">Technology Architect<br>=

                    spinetix.com</span></span><o:p></o:p></p>
              <p class=3D"defangedmsonormal"
                style=3D"margin:0cm;margin-bottom:.0001pt">=C2=A0<o:p></o=
:p></p>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47463): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47463">https://lists.yoctopr=
oject.org/g/yocto/message/47463</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
=2Eyoctoproject.org/mt/64331549/3616795">https://lists.yoctoproject.org/m=
t/64331549/3616795</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a>  [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:maciej.pijano=
wski@3mdeb.com">maciej.pijanowski@3mdeb.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: F1401D2E1CCB19EF
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3md=
eb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------63C29FEE6F7C5C11509B7213--

--zSUj2iybXY6fW776eMsmlMWdlBvk2Mtzc--

--NUzQ04zIgHNTGCQFTaAw1PRSH4nsK3y43
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJd4O1iAAoJEPFAHS4cyxnvgP8QAJnh6x+Dnl0403vgCT8ia/Ww
E+CmB3AtyCAjOlZh2o7ersnztvwedHtuoK8eGet+z/oBH+bkL3SuC+v8J0bEUi3H
lhhnCXi0tQoW/jaQfD7Q0YyUZt023jnp1sia4YJ4hg1Jjop3LLzNF8gqm8FeRsmN
XNZVlxtlIB1axKGvqD1eZKlZDG1dm3gFtpKImhGBJ5oL3r1C6kUBsKOuaP8j6sim
8khqjOrVxpEYWOC2PCKOvwxBxN6VLqDem4YNEPa4NGI0ggx2yX0GztCVvR1kcXqk
dXboH1IkuPqUnobtiKN2+5Yy2WPJHxV3Fjd9HIxtgA6HZ/l1spKLr/iYQSjX2yHA
d+V+GY48q8lFMhMq82Rqa3A8M5QmbPwI2hrVVtQyaGSNXyiR3RQCW7grPMPmJNxm
tmXkHUTaHNUSy/x5Mkou71PaliTLFqAKaJj+hDhQv8u1zWgbsztqx70XNjahk8TQ
JnuBRMTFOROSq9mtR7PxOrVJAWaRK+oHnmAi2Bg4F35iAbncTUt5vIr9i1Gd6LRy
ETNXqQ4CYh30i7sHCAK3l7NPfd6RxHL7VYet8D/5JiMXND/IyZV/coS0dyFb83UN
+IitiyK2JPvxLnRdfFzx1pxA8dNNZ1VeijNvsktVg8jYLcjlllwgCSW6qJbTt3iU
O5JYR9yc+oMIGR043Bvn
=LtgY
-----END PGP SIGNATURE-----

--NUzQ04zIgHNTGCQFTaAw1PRSH4nsK3y43--
