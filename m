Received: from 9.mo173.mail-out.ovh.net (9.mo173.mail-out.ovh.net [46.105.72.44])
 by mx.groups.io with SMTP id smtpd.web12.1942.1599803068496924117
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 22:44:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.72.44, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player788.ha.ovh.net (unknown [10.110.103.112])
	by mo173.mail-out.ovh.net (Postfix) with ESMTP id 57CCA14B14D
	for <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2020 07:44:26 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player788.ha.ovh.net (Postfix) with ESMTPSA id 9BE6F160BB370
	for <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2020 05:44:25 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-105G006f1f32e86-5e8f-49c5-abaa-70eb7805f84a,
                    FEA04CA934EAFC19CB9B611886D27DABA2B0533E) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] vwdial
To: yocto@lists.yoctoproject.org
References: <CAHwRhWbSTGiRK-LvMvJRH4r3uaSJQ9DJZekKrSjStOobT6GEGw@mail.gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <e1a91dcb-c79b-109e-9bf1-007ca69c49de@3mdeb.com>
Date: Fri, 11 Sep 2020 07:44:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHwRhWbSTGiRK-LvMvJRH4r3uaSJQ9DJZekKrSjStOobT6GEGw@mail.gmail.com>
X-Ovh-Tracer-Id: 1060879188870639110
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudehkedguddttdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepuffvfhfhkffffgggjggtsegrtderredtfeejnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuggftrfgrthhtvghrnhepudeuieejtdejteelhefgieefleevffekfefhieekfeffhfehgfefveffheeffeevnecuffhomhgrihhnpegtohhrvgdqihhmrghgvgdqsggrrhhigidqshgukhdrsggspdihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeekkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------A777C817F0C46384A72FC02B"
Content-Language: en-US

--------------A777C817F0C46384A72FC02B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11.09.2020 07:36, Zoltan Kerenyi Nagy wrote:
> Hi,
>
> First of all, thank you for accepting me to this mailing list.
> I got a Barix ipam400 OEM board, and now I've found myself in the 
> situation that vwdial would not compile.
>
> The error message is this when bitBake:
>
> /ERROR: Nothing RPROVIDES 'vwdial' (but 
> /home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-core/images/core-image-barix-sdk.bb 
> <http://core-image-barix-sdk.bb> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'vwdial' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['vwdial']
> ERROR: Required build target 'core-image-barix-sdk' has no buildable 
> providers.
> Missing or unbuildable dependency chain was: ['core-image-barix-sdk', 
> 'vwdial']/
>
> I've visited openembedded and downloaded the latest (1.6) bb recipe 
> and patch file, but I cant figure out what's wrong.
> Definitely the bb recipe file is there.
>
> Do you have any idea how to proceed?
Yes, you got the recipe name wrong. It's wvdial
>
> Thanks
>
> Zolee
>
>
>
>
> 

-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------A777C817F0C46384A72FC02B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11.09.2020 07:36, Zoltan Kerenyi
      Nagy wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAHwRhWbSTGiRK-LvMvJRH4r3uaSJQ9DJZekKrSjStOobT6GEGw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div class="gmail_default" style="color:#333399">Hi,</div>
        <div class="gmail_default" style="color:#333399"><br>
        </div>
        <div class="gmail_default" style="color:#333399">First of all,
          thank you for accepting me to this mailing list.</div>
        <div class="gmail_default" style="color:#333399">I got a Barix
          ipam400 OEM board, and now I've found myself in the situation
          that vwdial would not compile.</div>
        <div class="gmail_default" style="color:#333399"><br>
        </div>
        <div class="gmail_default" style="color:#333399">The error
          message is this when bitBake:<br>
        </div>
        <div class="gmail_default" style="color:#333399"><br>
        </div>
        <div class="gmail_default" style="color:#333399"><i>ERROR:
            Nothing RPROVIDES 'vwdial' (but
/home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-core/images/<a
              href="http://core-image-barix-sdk.bb"
              moz-do-not-send="true">core-image-barix-sdk.bb</a>
            RDEPENDS on or otherwise requires it)<br>
            NOTE: Runtime target 'vwdial' is unbuildable, removing...<br>
            Missing or unbuildable dependency chain was: ['vwdial']<br>
            ERROR: Required build target 'core-image-barix-sdk' has no
            buildable providers.<br>
            Missing or unbuildable dependency chain was:
            ['core-image-barix-sdk', 'vwdial']</i></div>
        <div class="gmail_default" style="color:#333399"><br>
        </div>
        <div class="gmail_default" style="color:#333399">I've visited
          openembedded and downloaded the latest (1.6) bb recipe and
          patch file, but I cant figure out what's wrong.</div>
        <div class="gmail_default" style="color:#333399">Definitely the
          bb recipe file is there.</div>
        <div class="gmail_default" style="color:#333399"><br>
        </div>
        <div class="gmail_default" style="color:#333399">Do you have any
          idea how to proceed?</div>
      </div>
    </blockquote>
    Yes, you got the recipe name wrong. It's wvdial<br>
    <blockquote type="cite"
cite="mid:CAHwRhWbSTGiRK-LvMvJRH4r3uaSJQ9DJZekKrSjStOobT6GEGw@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_default" style="color:#333399"><br>
        </div>
        <div class="gmail_default" style="color:#333399">Thanks</div>
        <div class="gmail_default" style="color:#333399"><br>
        </div>
        <div class="gmail_default" style="color:#333399">Zolee<br>
        </div>
        <div class="gmail_default" style="color:#333399"><br>
        </div>
        <div class="gmail_default" style="color:#333399"><br>
        </div>
        <div class="gmail_default" style="color:#333399"><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------A777C817F0C46384A72FC02B--
