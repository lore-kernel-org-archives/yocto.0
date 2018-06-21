Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74280E00EC9; Thu, 21 Jun 2018 11:30:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1A83E010DC
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 11:29:57 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id d2-v6so1787473pga.13
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 11:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=QUOD54G9cwiHYHK9S/VbTfyJJMHXHV5DohmlL2l7IKE=;
	b=jajuba5rzhETJmOMX7CjDf/LMn5dGBNaZRfZnMn940oR1gqN+zqBkaaasuP8lu70Yg
	UxtP/X5dHcY9xKxUtAFqnNxyCS+GJSODeJfpmszzClfrhqXDmMTYfBpcXV48WaDbzd6i
	azA7U/aeuLkFCSZlHmjO/NENlGoBRzdw33Hy2FRHWtrcjgaGWVtvvoOMA2FBQkhOQngF
	BXnoC06oGaqa8p8epVqxUQm9dkfc5bVyRILAEyPyj/zXGmlrx8FC+JsSBIfjohNJWJET
	qbbOa05s1KiDJqEdj4QXlK2Gw4hNW8cftaBqi6jz8CQbjuqRPdZswE/5ilBancMLTGJI
	HALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=QUOD54G9cwiHYHK9S/VbTfyJJMHXHV5DohmlL2l7IKE=;
	b=oK/KFwsDgC+/3hM3iC2vs/F91gSpH9FTOZzlC99EFtGc45a5PdEtQ5hv89JcjyjCrK
	/tbtspL87mW127BmMK5a1HkVREY5txohw6Q+y9FsYWjC6CxkuKKJLNGE+vPDa5ZpRwEy
	Gti+I5JIRby/Z1i/VVhKjq9Q4v5p3FvX4cIqIj64Zqn16uExkP7SdU/T+n98l1o1RBxG
	smgoCFnNDPbk0EUKRp/2GnYtEzBIFQVHxoqz/TuI65/kSFRVmpvM5Ms1I/UGFO+Az6yy
	oR5g6s+jFrkzk/m7hKKlvRkWzhvA/ekREah0MOjg68uqObVxSPq/lpZq6xSSRxMsVBCX
	nJ7Q==
X-Gm-Message-State: APt69E3M+DMJN1IHv2m+SUWFwVH8jSoVoz9MhaNSqoUrSK62PRNs2lq1
	Js/uOpQIubxpIzVxIM+jSmyGQwOo
X-Google-Smtp-Source: ADUXVKIgZuYhsLATC2ysgHjEhKi5CB+AnFefI/erxrmvnFDLbZA4izbP0a0/U3lhBT6Uk/N9o5+YDQ==
X-Received: by 2002:a63:985:: with SMTP id 127-v6mr7027624pgj.52.1529605796844;
	Thu, 21 Jun 2018 11:29:56 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	o13-v6sm6663441pgp.50.2018.06.21.11.29.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Jun 2018 11:29:56 -0700 (PDT)
To: Simon Chamlian <simon.chamlian@mpbc.ca>, yocto@yoctoproject.org
References: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
	<CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@gmail.com; prefer-encrypt=mutual; keydata=
	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
	vN0JVJf8p4e3anmLkFyASoeAKUumyGnf
Message-ID: <8f754e6f-243a-7d3a-95d8-a54bd973d0af@gmail.com>
Date: Thu, 21 Jun 2018 11:29:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
Subject: Re: porting gRPC into Yocto
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
X-List-Received-Date: Thu, 21 Jun 2018 18:30:06 -0000
X-Groupsio-MsgNum: 41508
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="4S47eG4dh2Wxb6qokexknZqnfxTm1o4NR"

--4S47eG4dh2Wxb6qokexknZqnfxTm1o4NR
Content-Type: multipart/mixed; boundary="9uAoWlypEU0VkQ5yDth48eb1PfiKntCca";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>, yocto@yoctoproject.org
Message-ID: <8f754e6f-243a-7d3a-95d8-a54bd973d0af@gmail.com>
Subject: Re: [yocto] porting gRPC into Yocto
References: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
 <CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
In-Reply-To: <CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>

--9uAoWlypEU0VkQ5yDth48eb1PfiKntCca
Content-Type: multipart/alternative;
 boundary="------------3F4B50D74BEE8612DA1C858A"
Content-Language: en-US

--------------3F4B50D74BEE8612DA1C858A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Simon,

Thank you for using the Yocto Project and reaching out.

For any open-source component that you would like to add to the Yocto
Project I recommend that you first have a look at
http://layers.openembedded.org/layerindex/branch/master/recipes/ and
enter the name of the component. Chances are that somebody already did
the work. This is indeed the case with gRPC:
http://layers.openembedded.org/layerindex/recipe/72419/.

If you cannot find a recipe for the component then you should look at
how the component is built. Most C/C++ components use some sort of a
build system such as GNU Autotools or CMake. The Yocto Project
documentation has sections for the common build systems.

I hope this answers your question.

Rudi


On 06/21/2018 11:15 AM, Simon Chamlian wrote:
> Hi,
>
> I just started using Yocto.
>
> Is there a detailed procedure on how I can port gRPC (for C or C++)
> into a Yocto project?
>
> Thanks,
>
> S
>
>
>
>
>
>
>
>
--=20
Rudolf J Streif


--------------3F4B50D74BEE8612DA1C858A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi Simon,</p>
    <p>Thank you for using the Yocto Project and reaching out.</p>
    <p>For any open-source component that you would like to add to the
      Yocto Project I recommend that you first have a look at
      <a class=3D"moz-txt-link-freetext" href=3D"http://layers.openembedd=
ed.org/layerindex/branch/master/recipes/">http://layers.openembedded.org/=
layerindex/branch/master/recipes/</a>
      and enter the name of the component. Chances are that somebody
      already did the work. This is indeed the case with gRPC:
      <a class=3D"moz-txt-link-freetext" href=3D"http://layers.openembedd=
ed.org/layerindex/recipe/72419/">http://layers.openembedded.org/layerinde=
x/recipe/72419/</a>.</p>
    <p>If you cannot find a recipe for the component then you should
      look at how the component is built. Most C/C++ components use some
      sort of a build system such as GNU Autotools or CMake. The Yocto
      Project documentation has sections for the common build systems.</p=
>
    <p>I hope this answers your question.</p>
    <p>Rudi<br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">On 06/21/2018 11:15 AM, Simon Chamlian=

      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>Hi,<br>
          <br>
          I just started using Yocto.<br>
          <br>
          Is there a detailed procedure on how I can port gRPC (for C or
          C++) into a Yocto project?<br>
          <br>
          Thanks,<br>
        </div>
        <div><br>
        </div>
        <div>S<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div class=3D"gmail_extra"><br>
          <br>
        </div>
      </div>
      <!--'"--><br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif</pre>
  </body>
</html>

--------------3F4B50D74BEE8612DA1C858A--

--9uAoWlypEU0VkQ5yDth48eb1PfiKntCca--

--4S47eG4dh2Wxb6qokexknZqnfxTm1o4NR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEE8vjdGrpkXMshtfshnUrlOPRyboFAlsr7qMACgkQhnUrlOPR
ybpBRAgAxNvL1k3G42YUns8DjDOdxS0Py3MXF5A4ZNbQIK5eQ0gbJoJfyi+3xTF8
GkdAUT82gpMwPB6jXXbIniRqx2Cz49/BPYOuV2iQh7Nv1wSKZCcjYZ7Lq97/1uqE
DAf/Tf1lpoqZ94hlqCSJ8PDROG9PrBEb8UDJvBiHu65d4GAHcXtf5DWVGz8N66l6
YKoGtfKfHvMZV85kzTfx9R8KvraVLYVg1KnXlPpDnhKas2hk6P9mtkS07svrr0ge
k0frXTIgDJvQerML8VGg4/r6RvvhCORk7FSWpX8UsBEhTj5qDEAjqtdy7QZWswNY
zPjvn43vziH7KGFY+YyQdkh7ga0MqQ==
=cUNy
-----END PGP SIGNATURE-----

--4S47eG4dh2Wxb6qokexknZqnfxTm1o4NR--
