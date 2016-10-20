Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF44AE00A0A; Thu, 20 Oct 2016 04:42:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.52 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D11EE009BB
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 04:42:11 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id q126so67700768vkd.2
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 04:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fdOl7eXtHSiZLqGycr2rTtuJs0SOK1j8xWyb76q/6II=;
	b=CcwMacOBrQQF5QJ++ny3q0QA9o6H9AgXRJpkGF1IigRVtmB4ZnDWVwQwgc5LHjBeN1
	hFVFWk8HX84iPSnw9oB8watsjYuq7FCYoBmsfiVz+52EA3uLw32O5hKUz3pVS7ifaapU
	CiaS9uPvVK+PHV6dqY90JuItRZovEwwvWhPEaPOcSmekd+gkoAKKjr/UQG05rCR3sV9E
	38dZ53jQUzKkMNAK0ItbmIWCcllRfn56FF2gLxe/JwtSlxbcM7BifryGz6ViGTj6xjmx
	/FYsbfteYJc85gMbCBj0yuNxNDH4S8BXMwE5Nk5Tol6wOl3BJGZCA1lz1+qAKoJImvDA
	T+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fdOl7eXtHSiZLqGycr2rTtuJs0SOK1j8xWyb76q/6II=;
	b=TbO3TmrfjkQrNB3wutmmb0VP9TrMo75SSSw5TQzCK7xB+C8qLWnfq+gcv0rXQP2qfO
	/sLRo6A5VlL32VxvA98j4l/BakEaohTS6ZtwfVNYtEeqKMqJV0lNRumkeetlti+Upo4c
	Fw8wjYC5fHHNWO6LiaYCGR8tzneeFAP7WZ4Apu4w+gSRZ2SEBa30KsAmGuKSWHuk/Dob
	g+xaVzh31PRWilHB/s5ZtkPtbb0/FNCpWZ4CUeVC426KbvV+ORStFVUgGSgwJ0splG4u
	hIW0bYiQrpaIQruea8KeeErOJHvdCDGE6F5VzK+eOlQi9l3qfry4S62hcJHcODotKqjY
	L6zw==
X-Gm-Message-State: AA6/9Rl0O5zELu9iy9C0Ee7mjFWPwNPraRb9wCZ1v6RaPX+/1wUmjeVdykDez9ZqSRyh20ax6ggbYm08W9x1qQ==
X-Received: by 10.31.15.65 with SMTP id 62mr162091vkp.93.1476963731234; Thu,
	20 Oct 2016 04:42:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.107.203 with HTTP; Thu, 20 Oct 2016 04:42:10 -0700 (PDT)
In-Reply-To: <3331a156-1af4-14eb-86ef-5afb4d1e8404@t-online.de>
References: <CALLyC8TfRL68sWhdn1Z7tmOKxpagFfaW4YnQ9FteEKCX_rdCgg@mail.gmail.com>
	<3331a156-1af4-14eb-86ef-5afb4d1e8404@t-online.de>
From: Vivek Per <pervivek@gmail.com>
Date: Thu, 20 Oct 2016 17:12:10 +0530
Message-ID: <CALLyC8RaMVPUWP9j5nDe0bFiFb=ERR47rckucTw0utC5QcrDTQ@mail.gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: libtomcrypt libtomfastmath recipe
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
X-List-Received-Date: Thu, 20 Oct 2016 11:42:13 -0000
Content-Type: multipart/alternative; boundary=001a1143618a8be599053f4a6a2e

--001a1143618a8be599053f4a6a2e
Content-Type: text/plain; charset=UTF-8

HI,

Thank you very much.


regards,
 vivek

On Wed, Oct 19, 2016 at 2:42 PM, Markus Volk <f_l_k@t-online.de> wrote:

> tomcrypt builds like this for me:
>
>
> DESCRIPTION = "tomcrypt"
> HOMEPAGE = " http://www.libtom.net" <http://www.libtom.net>
> LICENSE = "DWTFYW"
> LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=71baacc459522324ef3e2b9e052e81
> 80"
>
> SRC_URI = "git://github.com/libtom/libtomcrypt.git;branch=develop \
> "
>
> SRCREV = "${AUTOREV}"
> PV = "${SRCPV}"
> PR = "1"
>
> S = "${WORKDIR}/git"
>
> inherit autotools-brokensep
>
> SRC_URI[md5sum] = "d2f152e4dc83ee4cdb1b4f1a4866fe7f"
> SRC_URI[sha256sum] = "d0ff89397f9a5fd1d13b1cbc419d5d
> 426e14473135515d72bfcb58e5babf5032"
>
>
> note, that tomcrypt wants latex installed for creating doc. You proably
> want to edit the makefile or define NODOC
>
> Am 19.10.2016 um 09:19 schrieb Vivek Per:
>
> Hi,
>
> I am trying to build tomfastmath and tomcrypt shared libraries using
> yocto, I couldn't get recipes for libtomcrypt and tomfastmath in web. So
> started to write one but i am failing to write correct recipe every time.
>
> the skeleton   i used is both the recipes
>
> S = "${WORKDIR}/git"
> inherit autotools
> EXTRA_OEMAKE = " 'CFLAGS=${CFLAGS} "-I${S}/src/headers" -DTFM_ARM '
>  'CC=${CC}' 'RANLIB=${RANLIB}' 'AR=${AR}' 'LD={LD}'   'BUILDDIR=${S}'
> 'D=${DEST_DIR}' "
> do_compile() {
> make -f ${S}/makefile  libtfm.a DESTDIR=${D} SBINDIR=${sbindir}
> MANDIR=${mandir}
> }
>
> Can any one help  please help me in creating tomcrypt and tomfastmath
> recipes. or any point our if recipes already exist.
>
>
> Thanks and Regards,
>       Vivek
>
>
>
>
>
>

--001a1143618a8be599053f4a6a2e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI,<div><br></div><div>Thank you very much.</div><div><br>=
</div><div><br></div><div>regards,</div><div>=C2=A0vivek</div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Oct 19, 2016 at =
2:42 PM, Markus Volk <span dir=3D"ltr">&lt;<a href=3D"mailto:f_l_k@t-online=
.de" target=3D"_blank">f_l_k@t-online.de</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <p>tomcrypt builds like this for me:</p>
    <p><br>
    </p>
    <p>DESCRIPTION =3D &quot;tomcrypt&quot;<br>
      HOMEPAGE =3D <a class=3D"m_-3636400595406219705moz-txt-link-rfc2396E"=
 href=3D"http://www.libtom.net" target=3D"_blank">&quot; http://www.libtom.=
net&quot;</a><br>
      LICENSE =3D &quot;DWTFYW&quot;<br>
      LIC_FILES_CHKSUM =3D
      <a class=3D"m_-3636400595406219705moz-txt-link-rfc2396E">&quot;file:/=
/${S}/LICENSE;md5=3D<wbr>71baacc459522324ef3e2b9e052e81<wbr>80&quot;</a><br=
>
      <br>
      SRC_URI =3D &quot;git://<a href=3D"http://github.com/libtom/libtomcry=
pt.git;branch=3Ddevelop" target=3D"_blank">github.com/libtom/<wbr>libtomcry=
pt.git;branch=3Ddevelop</a>
      \<br>
      &quot;<br>
      <br>
      SRCREV =3D &quot;${AUTOREV}&quot;<br>
      PV =3D &quot;${SRCPV}&quot;<br>
      PR =3D &quot;1&quot;<span class=3D""><br>
      <br>
      S =3D &quot;${WORKDIR}/git&quot;<br>
      <br></span>
      inherit autotools-brokensep<br>
      <br>
      SRC_URI[md5sum] =3D &quot;<wbr>d2f152e4dc83ee4cdb1b4f1a4866fe<wbr>7f&=
quot;<br>
      SRC_URI[sha256sum] =3D
      &quot;<wbr>d0ff89397f9a5fd1d13b1cbc419d5d<wbr>426e14473135515d72bfcb5=
8e5babf<wbr>5032&quot;</p>
    <p><br>
    </p>
    <p>note, that tomcrypt wants latex installed for creating doc. You
      proably want to edit the makefile or define NODOC<br>
    </p><div><div class=3D"h5">
    <br>
    <div class=3D"m_-3636400595406219705moz-cite-prefix">Am 19.10.2016 um 0=
9:19 schrieb Vivek
      Per:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I am trying to build tomfastmath and tomcrypt shared
          libraries using yocto, I couldn&#39;t get recipes for libtomcrypt
          and tomfastmath in web. So started to write one but i am
          failing to write correct recipe every time.</div>
        <div><br>
        </div>
        <div>the skeleton =C2=A0 i used is both the recipes=C2=A0</div>
        <div><br>
        </div>
        <div>
          <div>S =3D &quot;${WORKDIR}/git&quot;</div>
          <div>inherit autotools</div>
        </div>
        <div>EXTRA_OEMAKE =3D &quot; &#39;CFLAGS=3D${CFLAGS} &quot;-I${S}/s=
rc/headers&quot;
          -DTFM_ARM &#39; =C2=A0&#39;CC=3D${CC}&#39; &#39;RANLIB=3D${RANLIB=
}&#39; &#39;AR=3D${AR}&#39;
          &#39;LD=3D{LD}&#39; =C2=A0 &#39;BUILDDIR=3D${S}&#39; &#39;D=3D${D=
EST_DIR}&#39; &quot;<br>
        </div>
        <div>do_compile() {<br>
        </div>
        <div>make -f ${S}/makefile =C2=A0libtfm.a DESTDIR=3D${D}
          SBINDIR=3D${sbindir} MANDIR=3D${mandir}<br>
        </div>
        <div>}</div>
        <div><br>
        </div>
        <div>Can any one help =C2=A0please help me in creating tomcrypt and
          tomfastmath recipes. or any point our if recipes already
          exist.</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Thanks and Regards,</div>
        <div>=C2=A0 =C2=A0 =C2=A0 Vivek =C2=A0</div>
        <div><br>
        </div>
        <div>=C2=A0</div>
      </div>
      <br>
      <fieldset class=3D"m_-3636400595406219705mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br></div>

--001a1143618a8be599053f4a6a2e--
