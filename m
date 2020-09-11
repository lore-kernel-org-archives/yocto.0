Received: from 4.mo6.mail-out.ovh.net (4.mo6.mail-out.ovh.net [87.98.184.159])
 by mx.groups.io with SMTP id smtpd.web12.4040.1599814487114908810
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 01:54:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 87.98.184.159, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player771.ha.ovh.net (unknown [10.110.171.125])
	by mo6.mail-out.ovh.net (Postfix) with ESMTP id A92FA225B3E
	for <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2020 10:54:44 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player771.ha.ovh.net (Postfix) with ESMTPSA id A28B416206A8E;
	Fri, 11 Sep 2020 08:54:42 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-103G0057102a32b-c1ff-417a-a02f-09a60df23e94,
                    FEA04CA934EAFC19CB9B611886D27DABA2B0533E) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] vwdial
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>,
 yocto@lists.yoctoproject.org
References: <CAHwRhWbSTGiRK-LvMvJRH4r3uaSJQ9DJZekKrSjStOobT6GEGw@mail.gmail.com>
 <e1a91dcb-c79b-109e-9bf1-007ca69c49de@3mdeb.com>
 <CAHwRhWYMYCDAdD_i_ZsuRK+1WGdto0TYkzBXHkWgaTG2hVQCfQ@mail.gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <d07b0c1d-08b5-2036-79d4-ffd46f0a9661@3mdeb.com>
Date: Fri, 11 Sep 2020 10:54:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHwRhWYMYCDAdD_i_ZsuRK+1WGdto0TYkzBXHkWgaTG2hVQCfQ@mail.gmail.com>
X-Ovh-Tracer-Id: 4274760475479453190
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudehledgudduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtsegrtderredtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuggftrfgrthhtvghrnhepheefvdetvddugffgheeiueejvddvteeileektdefteegjeehgedvvefhkefguefgnecuffhomhgrihhnpeeiuddrsggspdgtohhrvgdqihhmrghgvgdqsggrrhhigidqshgukhdrsggspdefmhguvggsrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejuddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------45A22A5B86B5CC904407E967"
Content-Language: en-US

--------------45A22A5B86B5CC904407E967
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11.09.2020 10:43, Zoltan Kerenyi Nagy wrote:
> Hi, thanks, yes it was a misspelling, however it's still broken:
>
> /NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'wvstreams' (but 
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-connectivity/wvdial/wvdial_1.61.bb 
> <http://wvdial_1.61.bb> DEPENDS on or otherwise requires it)
> ERROR: wvstreams was skipped: Recipe is blacklisted: BROKEN: fails to 
> build with gcc-6 - the recipe will be removed on 2017-09-01 unless the 
> issue is fixed
> NOTE: Runtime target 'wvdial' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['wvdial', 'wvstreams']
> ERROR: Required build target 'core-image-barix-sdk' has no buildable 
> providers.
> Missing or unbuildable dependency chain was: ['core-image-barix-sdk', 
> 'wvdial', 'wvstreams']/


You should keep list on the copy while responding. It looks like you 
have some old Yocto revision
and pulled in one recipe from master to it? Which Yocto revision is that?
You can't expect that things will **just work** when doing such stuff.

The error produced is pretty descriptive.

>
> On Fri, 11 Sep 2020 at 07:44, Maciej Pijanowski 
> <maciej.pijanowski@3mdeb.com <mailto:maciej.pijanowski@3mdeb.com>> wrote:
>
>
>     On 11.09.2020 07:36, Zoltan Kerenyi Nagy wrote:
>>     Hi,
>>
>>     First of all, thank you for accepting me to this mailing list.
>>     I got a Barix ipam400 OEM board, and now I've found myself in the
>>     situation that vwdial would not compile.
>>
>>     The error message is this when bitBake:
>>
>>     /ERROR: Nothing RPROVIDES 'vwdial' (but
>>     /home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-core/images/core-image-barix-sdk.bb
>>     <http://core-image-barix-sdk.bb> RDEPENDS on or otherwise
>>     requires it)
>>     NOTE: Runtime target 'vwdial' is unbuildable, removing...
>>     Missing or unbuildable dependency chain was: ['vwdial']
>>     ERROR: Required build target 'core-image-barix-sdk' has no
>>     buildable providers.
>>     Missing or unbuildable dependency chain was:
>>     ['core-image-barix-sdk', 'vwdial']/
>>
>>     I've visited openembedded and downloaded the latest (1.6) bb
>>     recipe and patch file, but I cant figure out what's wrong.
>>     Definitely the bb recipe file is there.
>>
>>     Do you have any idea how to proceed?
>     Yes, you got the recipe name wrong. It's wvdial
>>
>>     Thanks
>>
>>     Zolee
>>
>>
>>
>>
>     -- 
>     Maciej Pijanowski
>     Embedded Systems Engineer
>     GPG: 9963C36AAC3B2B46
>     https://3mdeb.com  | @3mdeb_com
>
>     
>
-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------45A22A5B86B5CC904407E967
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
    <div class=3D"moz-cite-prefix">On 11.09.2020 10:43, Zoltan Kerenyi
      Nagy wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHwRhWYMYCDAdD_i_ZsuRK+1WGdto0TYkzBXHkWgaTG2hVQCfQ@mail.gmail=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"color:#333399">Hi, thanks, y=
es
          it was a misspelling, however it's still broken:</div>
        <div class=3D"gmail_default" style=3D"color:#333399"><br>
        </div>
        <div class=3D"gmail_default" style=3D"color:#333399"><i>NOTE:
            Resolving any missing task queue dependencies<br>
            ERROR: Nothing PROVIDES 'wvstreams' (but
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-co=
nnectivity/wvdial/<a
              href=3D"http://wvdial_1.61.bb" moz-do-not-send=3D"true">wvdi=
al_1.61.bb</a>
            DEPENDS on or otherwise requires it)<br>
            ERROR: wvstreams was skipped: Recipe is blacklisted: BROKEN:
            fails to build with gcc-6 - the recipe will be removed on
            2017-09-01 unless the issue is fixed<br>
            NOTE: Runtime target 'wvdial' is unbuildable, removing...<br>
            Missing or unbuildable dependency chain was: ['wvdial',
            'wvstreams']<br>
            ERROR: Required build target 'core-image-barix-sdk' has no
            buildable providers.<br>
            Missing or unbuildable dependency chain was:
            ['core-image-barix-sdk', 'wvdial', 'wvstreams']</i></div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>You should keep list on the copy while responding. It looks like
      you have some old Yocto revision<br>
      and pulled in one recipe from master to it? Which Yocto revision
      is that?<br>
      You can't expect that things will **just work** when doing such
      stuff.<br>
      <br>
      The error produced is pretty descriptive.<br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CAHwRhWYMYCDAdD_i_ZsuRK+1WGdto0TYkzBXHkWgaTG2hVQCfQ@mail.gmail=
.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, 11 Sep 2020 at 07:44=
,
          Maciej Pijanowski &lt;<a
            href=3D"mailto:maciej.pijanowski@3mdeb.com"
            moz-do-not-send=3D"true">maciej.pijanowski@3mdeb.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p><br>
            </p>
            <div>On 11.09.2020 07:36, Zoltan Kerenyi Nagy wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
">Hi,</div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
">First
                  of all, thank you for accepting me to this mailing
                  list.</div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
">I
                  got a Barix ipam400 OEM board, and now I've found
                  myself in the situation that vwdial would not compile.</=
div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
">The
                  error message is this when bitBake:<br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><i>ERROR:
                    Nothing RPROVIDES 'vwdial' (but
/home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-core/images/<=
a
                      href=3D"http://core-image-barix-sdk.bb"
                      target=3D"_blank" moz-do-not-send=3D"true">core-imag=
e-barix-sdk.bb</a>
                    RDEPENDS on or otherwise requires it)<br>
                    NOTE: Runtime target 'vwdial' is unbuildable,
                    removing...<br>
                    Missing or unbuildable dependency chain was:
                    ['vwdial']<br>
                    ERROR: Required build target 'core-image-barix-sdk'
                    has no buildable providers.<br>
                    Missing or unbuildable dependency chain was:
                    ['core-image-barix-sdk', 'vwdial']</i></div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
">I've
                  visited openembedded and downloaded the latest (1.6)
                  bb recipe and patch file, but I cant figure out what's
                  wrong.</div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
">Definitely
                  the bb recipe file is there.</div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
">Do
                  you have any idea how to proceed?</div>
              </div>
            </blockquote>
            Yes, you got the recipe name wrong. It's wvdial<br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
">Thanks</div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
">Zolee<br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
                <div class=3D"gmail_default" style=3D"color:rgb(51,51,153)=
"><br>
                </div>
              </div>
              <br>
              <fieldset></fieldset>
            </blockquote>
            <pre cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a href=3D"https://3mdeb.com" target=3D"_blank" moz-do-not-send=3D"true">h=
ttps://3mdeb.com</a> | @3mdeb_com</pre>
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

--------------45A22A5B86B5CC904407E967--
