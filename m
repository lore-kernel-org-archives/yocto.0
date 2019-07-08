Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C533E00951; Mon,  8 Jul 2019 03:59:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.36.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1198 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Jul 2019 03:59:50 PDT
Received: from 3.mo177.mail-out.ovh.net (3.mo177.mail-out.ovh.net
	[46.105.36.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 072E8E0090E
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 03:59:50 -0700 (PDT)
Received: from player771.ha.ovh.net (unknown [10.109.146.20])
	by mo177.mail-out.ovh.net (Postfix) with ESMTP id 3BF83102BF8
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 12:21:22 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player771.ha.ovh.net (Postfix) with ESMTPSA id BA4D67AEBD6E;
	Mon,  8 Jul 2019 10:21:19 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <a0462c99-a785-1e25-7bec-3fa922e99de1@3mdeb.com>
Date: Mon, 8 Jul 2019 12:21:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmail.com>
X-Ovh-Tracer-Id: 1811010000763891350
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrgedtgddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: devendradevadiga01@gmail.com,
	=?UTF-8?Q?Piotr_Kr=c3=b3l?= <piotr.krol@3mdeb.com>
Subject: Re: Ddcutil
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 08 Jul 2019 10:59:52 -0000
X-Groupsio-MsgNum: 45876
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="Ake4aHxE9XsQqJtxSOcryRZJ82EgLwJuE"

--Ake4aHxE9XsQqJtxSOcryRZJ82EgLwJuE
Content-Type: multipart/mixed; boundary="YzeIfa4KY23SeCX9rXUGf4n7CahMWHeuq";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: yocto@yoctoproject.org
Cc: =?UTF-8?Q?Piotr_Kr=c3=b3l?= <piotr.krol@3mdeb.com>,
 devendradevadiga01@gmail.com
Message-ID: <a0462c99-a785-1e25-7bec-3fa922e99de1@3mdeb.com>
Subject: Re: [yocto] Ddcutil
References: <CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmail.com>
In-Reply-To: <CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmail.com>

--YzeIfa4KY23SeCX9rXUGf4n7CahMWHeuq
Content-Type: multipart/alternative;
 boundary="------------51D396E16C7004D0B6D47151"
Content-Language: en-US

--------------51D396E16C7004D0B6D47151
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 04.07.2019 19:02, Devendra Devadiga wrote:
> Hi,
Hi
>
> I am working on i.MX6 platform.
> I got the BSP by yocto build.
> I need the "ddcutil" package.
> By yocto how I can get this package?
> In openembedded, layers list I checked for ddcutil, but I didn't get th=
at.
> If source code for "ddcutil" is available can you share it with me?
> If you share the source then it will be more helpful for me.
I have an old recipe for this tool somewhere.
It was never polished for upstream, and it likely have some issues
with the latest ddcutil releases. How about I push the patch and
you will help me with testing / improving that?

Thanks,
>
> In the below mailing list, I came to know that someone built the
> recipes for "ddcutil".=C2=A0
> https://lists.yoctoproject.org/pipermail/yocto/2017-April/035740.html
>
> But I can't able to get that.
> Please can you share the source code of "ddcutil"?
>
> Thanks and regards,
> Devendra
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------51D396E16C7004D0B6D47151
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
    <div class=3D"moz-cite-prefix">On 04.07.2019 19:02, Devendra Devadiga=

      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Hi,</div>
    </blockquote>
    Hi<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmai=
l.com">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
          <div dir=3D"auto">I am working on i.MX6 platform.</div>
          <div dir=3D"auto">I got the BSP by yocto build.</div>
          <div dir=3D"auto">I need the "ddcutil" package.</div>
          <div dir=3D"auto">By yocto how I can get this package?</div>
          <div dir=3D"auto">In openembedded, layers list I checked for
            ddcutil, but I didn't get that.</div>
          <div dir=3D"auto">If source code for "ddcutil" is available can=

            you share it with me?</div>
          <div dir=3D"auto">If you share the source then it will be more
            helpful for me.</div>
        </div>
      </div>
    </blockquote>
    I have an old recipe for this tool somewhere.<br>
    It was never polished for upstream, and it likely have some issues<br=
>
    with the latest ddcutil releases. How about I push the patch and<br>
    you will help me with testing / improving that?<br>
    <br>
    Thanks,<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmai=
l.com">
      <div dir=3D"auto">
        <div dir=3D"auto">
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">In the below mailing list, I came to know tha=
t
            someone built the recipes for "ddcutil".=C2=A0</div>
          <div dir=3D"auto"><a
href=3D"https://lists.yoctoproject.org/pipermail/yocto/2017-April/035740.=
html"
              moz-do-not-send=3D"true">https://lists.yoctoproject.org/pip=
ermail/yocto/2017-April/035740.html</a><br>
          </div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">But I can't able to get that.</div>
          <div dir=3D"auto">Please can you share the source code of
            "ddcutil"?</div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Thanks and regards,</div>
          <div dir=3D"auto">Devendra</div>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3md=
eb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------51D396E16C7004D0B6D47151--

--YzeIfa4KY23SeCX9rXUGf4n7CahMWHeuq--

--Ake4aHxE9XsQqJtxSOcryRZJ82EgLwJuE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdIxkeAAoJEPFAHS4cyxnv6RwP/R5Uj9JYr8+IgxTrMcJuWqDz
CdJb7yMeVVVSgIga553OqHn/nt0+pPhUce1MIIf7sTcjzxlcP60myp+9C9aV3ohr
E0g4XgjaGP304k1nmYn6Uxza3oT3xngwCTSV64HqyakpfbAEy8UxW84EA3C3gJjY
J7eUqkaC+fHL1a6bK6I/InMo2Z7Uy54hyEICB5Sp5ceb+f10DXO38mTOAiZN43BL
N3jj/F50pqTSZa4xAz/S+c1rOJDBLepztAx5LlhNtBLli/R/rovWrDpLXyvOYgyh
Nq1Wf30Y6n5v2S31cWS0nsqwCL9urArV1r1buFBwFV20Ep1ytMVhlnA8G3hwocel
MhSnDkyCY3/QT4z2TxmrjKE5uvQ3L9da/F8dKp33hNb68rNyxFltY1ZyhGGeZWs6
Ce8/VRAUS1Lq57xAzFh9Q94t8jKeC83WYpT6/mNmTTKA314C203BTVX9tErP9MXU
H+bJbwNW3ohwe31UeuXPFBnQDUkjjtgF/wt2+gIMMrdI0YXtmRuM9TG9tmc63qDT
eo0tm2axE5vcAyRUTZOqTHGfOG47rgxLB55KR61vTVYpiXgKdwtdss9TeGKxIZbK
aaWZzHRsrXqLLCMykOkK6uWZCkHN1NBrg3F6WfJzeMZKSwFAXslltd4SibqFBUtQ
4+4qeiHRjSekUQn45EtD
=ZUB5
-----END PGP SIGNATURE-----

--Ake4aHxE9XsQqJtxSOcryRZJ82EgLwJuE--
