Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 487EFE00BF7; Tue,  9 Jul 2019 20:10:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F024E00BF7
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 20:10:47 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id l9so904803qtu.6
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 20:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ewLPDzaNJ2SpzbTW9SP2cgOVChDDhFE2+AftIb4gXM4=;
	b=PL+an7uu3qHxAmikAGNA73Um8uzrYi/CC/eM06jC9sohjJ5BT/H8R6AaiUX6SrgeDx
	TdnPF5pc23oSMQjqAqCPChY6+IShHRRqAK6lAnL+NRuFSrZ34YYeNdxg1N+dqcIAwpre
	+ji9YbbND3sgGz+ZJP1WFe/SyuhAVYTV0jpyEZHj03YiVsHVH34UMhjwaHDzYs10XyQ6
	pBrfj/fJh8eX7AmRfM34gbp3eoxc6yrCK3OUSCgSrrS7uc/Vpd4SB70leZXgzuaNufMW
	SFfgPmYhMDc4Jhmt5kkRgIiuasokAG9ifPW2q5VPDzbiI5psxHUoQef48JI3wdVrlSZ8
	gkUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ewLPDzaNJ2SpzbTW9SP2cgOVChDDhFE2+AftIb4gXM4=;
	b=bBDZu/Hd/e0c6q7sSVtQOMni7d5HvGrshea97TAirtVa4EOS6v/iQWApMbEkmff2OB
	9CjmdsFVWb6a6b43cBH+jM4YarJEM+JpVhv7hz7cJ6+Bqu94etG9nfn6thT0l+bqE7DY
	utAEtM3ucP6VmOtYVNPGYIqWCxVLvQr3TAUMx9zZTwagwpAW5TWr9gjeNwpWMZ4t4zI6
	7LsgzOijDv8x3POPY4ytLhb1szp3VD0iSmifFtzkL3mvO4B4rI5b/RsYAD01jVNk4zAV
	zhA8LA0X4UbThB0O2lLh0PNDDkE+FkaXDRjNmzAoJK+zefezRzQfmtd5basnfFxBgCi3
	ofIg==
X-Gm-Message-State: APjAAAU9figPmm//FDUiBmLDBpUeRqsqzOL5Hy6eekCRSf8wFRW7bxls
	PWh4I/r25xlh72zfg8Id7TJzRsMJmduLPeHi5qY8vKC2
X-Google-Smtp-Source: APXvYqxLTgIaXRSjRoI6wZFY8+ssueJG5i041NNPbJQrGAS/xgteR9l+YGuBb1Mvlo/TWL4CEcTyJizJN7VM956gK7s=
X-Received: by 2002:ac8:764f:: with SMTP id i15mr16129613qtr.194.1562728246331;
	Tue, 09 Jul 2019 20:10:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAH_3R3LWCSQk62OBmhUiihYTAPE1Geknops2-ehp_VzidxEn3w@mail.gmail.com>
In-Reply-To: <CAH_3R3LWCSQk62OBmhUiihYTAPE1Geknops2-ehp_VzidxEn3w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 9 Jul 2019 20:10:30 -0700
Message-ID: <CAMKF1sodePzbOftWotqRcRfUv6a=STQjVwdVTY07P6Hi2V0Q3A@mail.gmail.com>
To: =?UTF-8?Q?Szabolcs_B=C3=A1der?= <sb@baader.hu>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to load into u-boot binary (srec) file
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
X-List-Received-Date: Wed, 10 Jul 2019 03:10:48 -0000
Content-Type: multipart/alternative; boundary="00000000000000cddc058d4b06d5"

--00000000000000cddc058d4b06d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 8, 2019 at 9:27 AM Szabolcs B=C3=A1der <sb@baader.hu> wrote:

> Hello,
>
> I created this code:
>
> ```
> # u-boot standalone hello-world.c test image
> require recipes-core/images/core-image-base.bb
>
> COMPATIBLE_MACHINE =3D "^rpi$"
>
> ENABLE_UART=3D"1"
> RPI_USE_U_BOOT=3D"1"
>
> # maybe works??
> CONFIG_STANDALONE_LOAD_ADDR=3D"0x10000000"
>
> DEPENDS =3D "u-boot-mkimage-native"
>
> SUMMARY=3D"Helloworld"
> DESCRIPTION=3D"Helloworld"
> LICENSE=3D"CLOSED"
> # LIC_FILES_CHCKSUM =3D "file://COPYING;md5=3D1fec1f350300594d23a1d03379c=
0c989"
>
> SRC_URI +=3D "file://hello_world.c"
> HELLO ?=3D "hello_world.c"
> do_compile() {
> mkimage -A arm -O linux -T standalone -C none -a ${LOAD_ADDR} -e 0 \
> -n "standalone example script" \
> -d ${WORKDIR}/${HELLO} ${B}/helloworld.srec
> }
>
> inherit deploy
>
> do_deploy() {
> install -d ${DEPLOYDIR}
> install -m 0644 ${B}/helloworld.srec ${DEPLOYDIR}/
> }
>
> addtask do_deploy after do_compile before do_build
> ```
>
> I get errors, because I think.. the mkimage part.. isn't working..
> somebody could help me, how to solve this?
>
> Regards,
> Szabolcs
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000000cddc058d4b06d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_default" style=3D"font-family:monospace,monospace"><br>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Jul 8, 2019 at 9:27 AM Szabolcs B=C3=A1der &lt;<a href=3D"mailto:sb=
@baader.hu">sb@baader.hu</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><d=
iv>I created this code:</div><div><br></div><div>```<br><table class=3D"gma=
il-m_8672351412033928711gmail-highlight gmail-m_8672351412033928711gmail-ta=
b-size gmail-m_8672351412033928711gmail-js-file-line-container"><tbody><tr>=
<td id=3D"gmail-m_8672351412033928711gmail-file-example-standalone-bb-LC1" =
class=3D"gmail-m_8672351412033928711gmail-blob-code gmail-m_867235141203392=
8711gmail-blob-code-inner gmail-m_8672351412033928711gmail-js-file-line"># =
u-boot standalone hello-world.c test image</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC2" class=3D"gmail-m_8672351412=
033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner g=
mail-m_8672351412033928711gmail-js-file-line">require recipes-core/images/<=
a href=3D"http://core-image-base.bb" target=3D"_blank">core-image-base.bb</=
a></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC3" class=3D"gmail-m_8672351412=
033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner g=
mail-m_8672351412033928711gmail-js-file-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC4" class=3D"gmail-m_8672351412=
033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner g=
mail-m_8672351412033928711gmail-js-file-line">COMPATIBLE_MACHINE =3D &quot;=
^rpi$&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC5" class=3D"gmail-m_8672351412=
033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner g=
mail-m_8672351412033928711gmail-js-file-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC6" class=3D"gmail-m_8672351412=
033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner g=
mail-m_8672351412033928711gmail-js-file-line">ENABLE_UART=3D&quot;1&quot;</=
td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC7" class=3D"gmail-m_8672351412=
033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner g=
mail-m_8672351412033928711gmail-js-file-line">RPI_USE_U_BOOT=3D&quot;1&quot=
;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC8" class=3D"gmail-m_8672351412=
033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner g=
mail-m_8672351412033928711gmail-js-file-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC9" class=3D"gmail-m_8672351412=
033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner g=
mail-m_8672351412033928711gmail-js-file-line"># maybe works??<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC10" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">CONFIG_STANDALONE_LOAD_ADDR=
=3D&quot;0x10000000&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC11" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC12" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">DEPENDS =3D &quot;u-boot-mki=
mage-native&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC13" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC14" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">SUMMARY=3D&quot;Helloworld&q=
uot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC15" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">DESCRIPTION=3D&quot;Hellowor=
ld&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC16" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">LICENSE=3D&quot;CLOSED&quot;=
</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC17" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line"># LIC_FILES_CHCKSUM =3D &quo=
t;file://COPYING;md5=3D1fec1f350300594d23a1d03379c0c989&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC18" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC19" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">SRC_URI +=3D &quot;file://he=
llo_world.c&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC20" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">HELLO ?=3D &quot;hello_world=
.c&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC21" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">do_compile() {</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC22" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">    mkimage -A arm -O linux =
-T standalone -C none -a ${LOAD_ADDR} -e 0 \</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC23" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">    -n &quot;standalone exam=
ple script&quot; \</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC24" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">    -d ${WORKDIR}/${HELLO} $=
{B}/helloworld.srec</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC25" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">}</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC26" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC27" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">inherit deploy</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC28" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC29" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">do_deploy() {</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC30" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">    install -d ${DEPLOYDIR}<=
/td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC31" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">    install -m 0644 ${B}/hel=
loworld.srec ${DEPLOYDIR}/</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC32" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">}</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-m_8672351412033928711gma=
il-highlight gmail-m_8672351412033928711gmail-tab-size gmail-m_867235141203=
3928711gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-m_867235141=
2033928711gmail-file-example-standalone-bb-LC33" class=3D"gmail-m_867235141=
2033928711gmail-blob-code gmail-m_8672351412033928711gmail-blob-code-inner =
gmail-m_8672351412033928711gmail-js-file-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table>addtask do_deploy after do_compile before do_b=
uild</div><div>```</div><div><br></div><div>I get errors, because I think..=
 the mkimage part.. isn&#39;t working.. somebody could help me, how to solv=
e this? <br></div><div><br></div><div>Regards,</div><div>Szabolcs<br></div>=
</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000000cddc058d4b06d5--
