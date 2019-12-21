Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5590.1576924130002786780
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Dec 2019 02:28:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 140.211.169.56, mailfrom: maciej.pijanowski@3mdeb.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CA5AE01148; Sat, 21 Dec 2019 02:28:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [178.33.253.128 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2398 seconds by postgrey-1.32 at yocto-www; Sat, 21 Dec 2019 02:28:47 PST
Received: from 13.mo1.mail-out.ovh.net (13.mo1.mail-out.ovh.net [178.33.253.128])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC06E01143
	for <yocto@yoctoproject.org>; Sat, 21 Dec 2019 02:28:47 -0800 (PST)
Received: from player786.ha.ovh.net (unknown [10.108.35.240])
	by mo1.mail-out.ovh.net (Postfix) with ESMTP id 196A71A54DD
	for <yocto@yoctoproject.org>; Sat, 21 Dec 2019 10:12:16 +0100 (CET)
Received: from 3mdeb.com (89-66-81-201.dynamic.chello.pl [89.66.81.201])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player786.ha.ovh.net (Postfix) with ESMTPSA id A22F2DA28EF1;
	Sat, 21 Dec 2019 09:12:14 +0000 (UTC)
Subject: Re: [yocto] ubuntu from Yocto
To: Peter Balazovic <balazovic.peter@gmail.com>,
 Yocto list discussion <yocto@yoctoproject.org>
References: <CAFq4t4hjJV396RJpkaY1CW4VMefv5c0JnRac6SaLkRt+20R=2w@mail.gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <be126980-9cb4-ad0f-2eb1-d78d93bf9e6f@3mdeb.com>
Date: Sat, 21 Dec 2019 10:12:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAFq4t4hjJV396RJpkaY1CW4VMefv5c0JnRac6SaLkRt+20R=2w@mail.gmail.com>
X-Ovh-Tracer-Id: 16280231179569802921
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvddugedguddvvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucffohhmrghinhepfehmuggvsgdrtghomhdphihotghtohhprhhojhgvtghtrdhorhhgpdhgihhthhhusgdrtghomhenucfkpheptddrtddrtddrtddpkeelrdeiiedrkedurddvtddunecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejkeeirdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepmhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomhdprhgtphhtthhopeihohgtthhoseihohgtthhophhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedt
Content-Type: multipart/alternative;
 boundary="------------2E2923B32F0A0CBE56E1B8E1"
Content-Language: en-US

--------------2E2923B32F0A0CBE56E1B8E1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 21.12.2019 08:20, Peter Balazovic wrote:
> Hello guys
>
> Is there a way how to prepare "Ubuntu distribution" from Yocto=20
> project. It means to create a standard=C2=A0Ubuntu (or other standard=20
> distribution).
There is not. With Yocto you create your own distribution.
> I am looking for a procedure for it.
> Please, can you point/link me?
You may be interested in isar then: https://github.com/ilbers/isar
It also uses OpenEmbedded but takes advantage of Debian binary
packages instead of building everything from source.
>
> Thank you.
> Peter
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47787): https://lists.yoctoproject.org/g/yocto/mess=
age/47787
> Mute This Topic: https://lists.yoctoproject.org/mt/68963464/3616795
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [maciej.pija=
nowski@3mdeb.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------2E2923B32F0A0CBE56E1B8E1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 21.12.2019 08:20, Peter Balazovic
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFq4t4hjJV396RJpkaY1CW4VMefv5c0JnRac6SaLkRt+20R=3D2w@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello guys<br>
        <div><br>
        </div>
        <div>Is there a way how to prepare "Ubuntu distribution" from
          Yocto project. It means to create a standard=C2=A0Ubuntu (or ot=
her
          standard distribution).</div>
      </div>
    </blockquote>
    There is not. With Yocto you create your own distribution.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFq4t4hjJV396RJpkaY1CW4VMefv5c0JnRac6SaLkRt+20R=3D2w@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div>I am looking for a procedure for it.</div>
        <div>Please, can you point/link me? <br>
        </div>
      </div>
    </blockquote>
    You may be interested in isar then: <a class=3D"moz-txt-link-freetext=
" href=3D"https://github.com/ilbers/isar">https://github.com/ilbers/isar<=
/a><br>
    It also uses OpenEmbedded but takes advantage of Debian binary<br>
    packages instead of building everything from source.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFq4t4hjJV396RJpkaY1CW4VMefv5c0JnRac6SaLkRt+20R=3D2w@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Thank you.</div>
        <div>Peter</div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47787): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47787">https://lists.yoctopr=
oject.org/g/yocto/message/47787</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/68963464/3616795">https://lists.yoctoproject.org/mt/=
68963464/3616795</a>
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
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3md=
eb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------2E2923B32F0A0CBE56E1B8E1--
