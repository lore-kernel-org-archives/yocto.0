Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72B55E00DBD; Wed, 19 Oct 2016 02:12:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.84 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [194.25.134.84 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailout09.t-online.de (mailout09.t-online.de [194.25.134.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E88BE00D73
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 02:12:14 -0700 (PDT)
Received: from fwd11.aul.t-online.de (fwd11.aul.t-online.de [172.20.27.152])
	by mailout09.t-online.de (Postfix) with SMTP id 3307F427E18B;
	Wed, 19 Oct 2016 11:12:12 +0200 (CEST)
Received: from [192.168.2.105]
	(TiVtO6ZBQhkCE5VLpb8Abmls7e+55+2o4LP1fjfM0oCFN0LSK4fEEDUke2il4oDZeW@[79.199.47.227])
	by fwd11.t-online.de with (TLSv1.2:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1bwmuu-1HePKK0; Wed, 19 Oct 2016 11:12:08 +0200
To: Vivek Per <pervivek@gmail.com>, Yocto <yocto@yoctoproject.org>
References: <CALLyC8TfRL68sWhdn1Z7tmOKxpagFfaW4YnQ9FteEKCX_rdCgg@mail.gmail.com>
From: Markus Volk <f_l_k@t-online.de>
Message-ID: <3331a156-1af4-14eb-86ef-5afb4d1e8404@t-online.de>
Date: Wed, 19 Oct 2016 11:12:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CALLyC8TfRL68sWhdn1Z7tmOKxpagFfaW4YnQ9FteEKCX_rdCgg@mail.gmail.com>
X-ID: TiVtO6ZBQhkCE5VLpb8Abmls7e+55+2o4LP1fjfM0oCFN0LSK4fEEDUke2il4oDZeW
X-TOI-MSGID: 5c5d35ec-20c0-4a8a-8d4d-a8b23c10fc94
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
X-List-Received-Date: Wed, 19 Oct 2016 09:12:19 -0000
Content-Type: multipart/alternative;
	boundary="------------8E1251FE95F3840FA6976038"

--------------8E1251FE95F3840FA6976038
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

tomcrypt builds like this for me:


DESCRIPTION = "tomcrypt"
HOMEPAGE = " http://www.libtom.net"
LICENSE = "DWTFYW"
LIC_FILES_CHKSUM = 
"file://${S}/LICENSE;md5=71baacc459522324ef3e2b9e052e8180"

SRC_URI = "git://github.com/libtom/libtomcrypt.git;branch=develop \
"

SRCREV = "${AUTOREV}"
PV = "${SRCPV}"
PR = "1"

S = "${WORKDIR}/git"

inherit autotools-brokensep

SRC_URI[md5sum] = "d2f152e4dc83ee4cdb1b4f1a4866fe7f"
SRC_URI[sha256sum] = 
"d0ff89397f9a5fd1d13b1cbc419d5d426e14473135515d72bfcb58e5babf5032"


note, that tomcrypt wants latex installed for creating doc. You proably 
want to edit the makefile or define NODOC


Am 19.10.2016 um 09:19 schrieb Vivek Per:
> Hi,
>
> I am trying to build tomfastmath and tomcrypt shared libraries using 
> yocto, I couldn't get recipes for libtomcrypt and tomfastmath in web. 
> So started to write one but i am failing to write correct recipe every 
> time.
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


--------------8E1251FE95F3840FA6976038
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>tomcrypt builds like this for me:</p>
    <p><br>
    </p>
    <p>DESCRIPTION = "tomcrypt"<br>
      HOMEPAGE = <a class="moz-txt-link-rfc2396E" href="http://www.libtom.net">" http://www.libtom.net"</a><br>
      LICENSE = "DWTFYW"<br>
      LIC_FILES_CHKSUM =
      <a class="moz-txt-link-rfc2396E" href="file://${S}/LICENSE;md5=71baacc459522324ef3e2b9e052e8180">"file://${S}/LICENSE;md5=71baacc459522324ef3e2b9e052e8180"</a><br>
      <br>
      SRC_URI = "git://github.com/libtom/libtomcrypt.git;branch=develop
      \<br>
      "<br>
      <br>
      SRCREV = "${AUTOREV}"<br>
      PV = "${SRCPV}"<br>
      PR = "1"<br>
      <br>
      S = "${WORKDIR}/git"<br>
      <br>
      inherit autotools-brokensep<br>
      <br>
      SRC_URI[md5sum] = "d2f152e4dc83ee4cdb1b4f1a4866fe7f"<br>
      SRC_URI[sha256sum] =
      "d0ff89397f9a5fd1d13b1cbc419d5d426e14473135515d72bfcb58e5babf5032"</p>
    <p><br>
    </p>
    <p>note, that tomcrypt wants latex installed for creating doc. You
      proably want to edit the makefile or define NODOC<br>
    </p>
    <br>
    <div class="moz-cite-prefix">Am 19.10.2016 um 09:19 schrieb Vivek
      Per:<br>
    </div>
    <blockquote
cite="mid:CALLyC8TfRL68sWhdn1Z7tmOKxpagFfaW4YnQ9FteEKCX_rdCgg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>I am trying to build tomfastmath and tomcrypt shared
          libraries using yocto, I couldn't get recipes for libtomcrypt
          and tomfastmath in web. So started to write one but i am
          failing to write correct recipe every time.</div>
        <div><br>
        </div>
        <div>the skeleton   i used is both the recipes </div>
        <div><br>
        </div>
        <div>
          <div>S = "${WORKDIR}/git"</div>
          <div>inherit autotools</div>
        </div>
        <div>EXTRA_OEMAKE = " 'CFLAGS=${CFLAGS} "-I${S}/src/headers"
          -DTFM_ARM '  'CC=${CC}' 'RANLIB=${RANLIB}' 'AR=${AR}'
          'LD={LD}'   'BUILDDIR=${S}' 'D=${DEST_DIR}' "<br>
        </div>
        <div>do_compile() {<br>
        </div>
        <div>make -f ${S}/makefile  libtfm.a DESTDIR=${D}
          SBINDIR=${sbindir} MANDIR=${mandir}<br>
        </div>
        <div>}</div>
        <div><br>
        </div>
        <div>Can any one help  please help me in creating tomcrypt and
          tomfastmath recipes. or any point our if recipes already
          exist.</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Thanks and Regards,</div>
        <div>      Vivek  </div>
        <div><br>
        </div>
        <div> </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------8E1251FE95F3840FA6976038--
