Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75DB4E00C80; Thu, 21 Jun 2018 11:49:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6AFAE00942
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 11:49:57 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id y31-v6so3793696qty.9
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 11:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CXwkpy6ApsWyWFyUgs4UuVjiUUcU7Kq0YjOHU035eH0=;
	b=Cb2ZrmRDKVk2RZE/ZsYe95vR41ILIOeT/sQDdCH80bPGoGej5ePqAz5EwBpj07g0yM
	w7VRdnKgY8tmELeQPVmRE8DTfghwKLotZgNGuNM1UmUY6ISFg+bzK4wqJ6hViU0+AL4e
	41xHiffUf3kvvbG3AfdDsqZSi6hwy6XsbTIeTPvasQFNZOBRq0reR/AUxAnHny4hlnAY
	+3nNpAWKk81dZvzWX2c6yUzGOYHh7Ds5xxC7bwIbindMyxMMOMk+HIGHfSXnFL3eaO1X
	RNWKWFOfjShqFOceXQs1DidOzCiqwFLNeeUZiOUWOmMPwtpruYxkKJjyUTarDHoHbicv
	3yFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CXwkpy6ApsWyWFyUgs4UuVjiUUcU7Kq0YjOHU035eH0=;
	b=J5mmFv9eCfoSFHQlaqN6hcR2ABTKNFNwnqYXA6yhz3SyriSNNYbQX1HVVsheisNhQD
	sGPAHxQJG43DAvMvfc9znuqTyGg3vRB7rj+GngBmOoAEPgGGY1t58hF2xMKCWqDmP5Yp
	cR6flEfaVvlYVhLSOlca9b4ZwMRDGw0akQyjJhYTNTU1Lu1a2LkK/Et1vYlvI+0fV+O3
	7gfQZvPZxnFM5eOh7nkbX3wHs/P3A9SdF1TxKaO4KJp723xpQUjT6FUAUjxeZaNMcwRL
	j95+dIRi2e8P6z/0LkEvYudwjH0qfQJUelJT3rMv1SpqS104Ts/JXgziZF/1OzQICMdh
	vGLw==
X-Gm-Message-State: APt69E1hdr7H0qMvvr9b7zQ4JDoCSErhQF0Bvk9BgNm8GRYIgYiXDHnX
	yHMZGSFfP2y6niTkoQyPtG2tNKRfI1b1r9GWcYoTOg==
X-Google-Smtp-Source: ADUXVKJX+BDiEsVi+v0EEoMIIjhRiKbvXDZy5LE8e0FhPS8ZKp2sJ2mHKlB8WaGFMjhIi63OYQsiT5ff4MhOcjBakoc=
X-Received: by 2002:ac8:72d0:: with SMTP id
	o16-v6mr23642785qtp.7.1529606997489; 
	Thu, 21 Jun 2018 11:49:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:874:0:0:0:0:0 with HTTP;
	Thu, 21 Jun 2018 11:49:57 -0700 (PDT)
In-Reply-To: <8f754e6f-243a-7d3a-95d8-a54bd973d0af@gmail.com>
References: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
	<CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
	<8f754e6f-243a-7d3a-95d8-a54bd973d0af@gmail.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Thu, 21 Jun 2018 14:49:57 -0400
Message-ID: <CANmTPBYvf2etEnYgjUtZMUSvUy4uEU_oynRxQ2cHzT8eQVuQ3g@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 21 Jun 2018 18:49:59 -0000
Content-Type: multipart/alternative; boundary="000000000000bb520a056f2b61d3"

--000000000000bb520a056f2b61d3
Content-Type: text/plain; charset="UTF-8"

Thank you everyone for such a prompt response.

What do I do with the grpc_1.8.5.bb
<http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-devtools/grpc/grpc_1.8.5.bb?h=master>
recipe file (sorry for my ignorance, it has been 1 day I am using Yocto)?

Simon




On Thu, Jun 21, 2018 at 2:29 PM, Rudolf J Streif <rudolf.streif@gmail.com>
wrote:

> Hi Simon,
>
> Thank you for using the Yocto Project and reaching out.
>
> For any open-source component that you would like to add to the Yocto
> Project I recommend that you first have a look at
> http://layers.openembedded.org/layerindex/branch/master/recipes/ and
> enter the name of the component. Chances are that somebody already did the
> work. This is indeed the case with gRPC: http://layers.openembedded.
> org/layerindex/recipe/72419/.
>
> If you cannot find a recipe for the component then you should look at how
> the component is built. Most C/C++ components use some sort of a build
> system such as GNU Autotools or CMake. The Yocto Project documentation has
> sections for the common build systems.
>
> I hope this answers your question.
>
> Rudi
>
> On 06/21/2018 11:15 AM, Simon Chamlian wrote:
>
> Hi,
>
> I just started using Yocto.
>
> Is there a detailed procedure on how I can port gRPC (for C or C++) into a
> Yocto project?
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
> --
> Rudolf J Streif
>
>

--000000000000bb520a056f2b61d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you everyone for such a prompt response.</div><=
div><br></div><div>What do I do with the=20
<a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-network=
ing/recipes-devtools/grpc/grpc_1.8.5.bb?h=3Dmaster">grpc_1.8.5.bb</a> recip=
e file (sorry for my ignorance, it has been 1 day I am using Yocto)?</div><=
div><br></div><div>Simon</div><div><br></div><div><br></div><div><br></div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jun=
 21, 2018 at 2:29 PM, Rudolf J Streif <span dir=3D"ltr">&lt;<a href=3D"mail=
to:rudolf.streif@gmail.com" target=3D"_blank">rudolf.streif@gmail.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi Simon,</p>
    <p>Thank you for using the Yocto Project and reaching out.</p>
    <p>For any open-source component that you would like to add to the
      Yocto Project I recommend that you first have a look at
      <a class=3D"m_-1713480835485508887moz-txt-link-freetext" href=3D"http=
://layers.openembedded.org/layerindex/branch/master/recipes/" target=3D"_bl=
ank">http://layers.openembedded.<wbr>org/layerindex/branch/master/<wbr>reci=
pes/</a>
      and enter the name of the component. Chances are that somebody
      already did the work. This is indeed the case with gRPC:
      <a class=3D"m_-1713480835485508887moz-txt-link-freetext" href=3D"http=
://layers.openembedded.org/layerindex/recipe/72419/" target=3D"_blank">http=
://layers.openembedded.<wbr>org/layerindex/recipe/72419/</a>.</p>
    <p>If you cannot find a recipe for the component then you should
      look at how the component is built. Most C/C++ components use some
      sort of a build system such as GNU Autotools or CMake. The Yocto
      Project documentation has sections for the common build systems.</p>
    <p>I hope this answers your question.</p>
    <p>Rudi<br>
    </p><div><div class=3D"h5">
    <br>
    <div class=3D"m_-1713480835485508887moz-cite-prefix">On 06/21/2018 11:1=
5 AM, Simon Chamlian
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
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
      <br>
      <fieldset class=3D"m_-1713480835485508887mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    </div></div><span class=3D"HOEnZb"><font color=3D"#888888"><pre class=
=3D"m_-1713480835485508887moz-signature" cols=3D"72">--=20
Rudolf J Streif</pre>
  </font></span></div>

</blockquote></div><br></div>

--000000000000bb520a056f2b61d3--
