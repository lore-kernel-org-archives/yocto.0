Return-Path: <sb@baader.hu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BB3AE00C02; Mon,  8 Jul 2019 09:17:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0280E00951
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 09:17:49 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id n5so16807436otk.1
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2019 09:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=baader-hu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=yeySkJjFVIAIFhTrjGtNwkqSeUgxz5+zpf11ktJ30rI=;
	b=dIN6e6tf1oKxzzSQA+GvpU6QEQhkm4/+mBKTk69ju3opeREZWLTbHBhZ8lGD3ZXNHQ
	Tn5nR1B6XBAAo4kZpGuPzk1ujYgZfPJSp5/tf0m2kZHD8YscMNqtYRvrUc2q5Anzx02Y
	W3MzEsHrg4QtJNbJ3V9Za2NjTJBzXy3Q9CTfLfKqQbX3buhCwvI3SDNpsbjAFzN9yzEf
	LDWuX/d6I1wSDT7+MmBrbc6ANmME7C3uixu+9wLEURxn6LpEQPQuXBcItanxzlE6dwNF
	UWO7P7BDGlLXQVHuGH8CKaW7Wsf6TCR6JjhpM9yVoO2xh/gL+2W8e4OY9fMIPcFqzQGC
	jsWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yeySkJjFVIAIFhTrjGtNwkqSeUgxz5+zpf11ktJ30rI=;
	b=KpIqExNnFHmjIGPRtq9J7SBkoX0fp3ek9f5esBjr1NWqPoMFaC1ZXq2QzcsymDZqbd
	TDucZaIo3DA8cyW4WTUb3lYA8tD/JYJTRRwdRRjQek4KzQKBy8kdFs54acEpm6TABKo0
	RyO2K83R63Y89tpnZc62Za9KqMT8vTk6fKR75dXZA+EqaVAukmIzyqc8Mv8U4vof+G63
	g1QYtFIx5xqjyet50JeoNBiCNAsY+x3z8/Ja4zZK/bEQLOdx74A3+46+NZsCszjrGiYX
	IZzIqw26kHnbWLN4X+5Ry8o7g6fgLCVUjGS51ZSQlCDrK0cLZ5AzP5QoFG5UJP0G5hrj
	N9iQ==
X-Gm-Message-State: APjAAAWWjngwlFjmSbA61wIzHgkeSOfL7MQ501aC7aJz2NoTGTRg6LtS
	5VQkHdXPfVYr3xWWlgtXJmV+A0gR1G057YnM66Jau1gNEJhugQ==
X-Google-Smtp-Source: APXvYqztyb3mTttF8PnSDtwpT6xaPWRTueFxUdIwi8XcXU2kF2OQsHyoRqVii9WJVswmMS13V9GkXdZfk8PEPW8aGHA=
X-Received: by 2002:a9d:61c9:: with SMTP id h9mr15676835otk.102.1562602669163; 
	Mon, 08 Jul 2019 09:17:49 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Szabolcs_B=C3=A1der?= <sb@baader.hu>
Date: Mon, 8 Jul 2019 18:17:38 +0200
Message-ID: <CAH_3R3LWCSQk62OBmhUiihYTAPE1Geknops2-ehp_VzidxEn3w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to load into u-boot binary (srec) file
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
X-List-Received-Date: Mon, 08 Jul 2019 16:17:51 -0000
Content-Type: multipart/alternative; boundary="000000000000055760058d2dc9b6"

--000000000000055760058d2dc9b6
Content-Type: text/plain; charset="UTF-8"

Hello,

I created this code:

```
# u-boot standalone hello-world.c test image
require recipes-core/images/core-image-base.bb

COMPATIBLE_MACHINE = "^rpi$"

ENABLE_UART="1"
RPI_USE_U_BOOT="1"

# maybe works??
CONFIG_STANDALONE_LOAD_ADDR="0x10000000"

DEPENDS = "u-boot-mkimage-native"

SUMMARY="Helloworld"
DESCRIPTION="Helloworld"
LICENSE="CLOSED"
# LIC_FILES_CHCKSUM = "file://COPYING;md5=1fec1f350300594d23a1d03379c0c989"

SRC_URI += "file://hello_world.c"
HELLO ?= "hello_world.c"
do_compile() {
mkimage -A arm -O linux -T standalone -C none -a ${LOAD_ADDR} -e 0 \
-n "standalone example script" \
-d ${WORKDIR}/${HELLO} ${B}/helloworld.srec
}

inherit deploy

do_deploy() {
install -d ${DEPLOYDIR}
install -m 0644 ${B}/helloworld.srec ${DEPLOYDIR}/
}

addtask do_deploy after do_compile before do_build
```

I get errors, because I think.. the mkimage part.. isn't working.. somebody
could help me, how to solve this?

Regards,
Szabolcs

--000000000000055760058d2dc9b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I created this code:<=
/div><div><br></div><div>```<br><table class=3D"gmail-highlight gmail-tab-s=
ize gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-s=
tandalone-bb-LC1" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-f=
ile-line"># u-boot standalone hello-world.c test image</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC2" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-file=
-line">require recipes-core/images/<a href=3D"http://core-image-base.bb">co=
re-image-base.bb</a></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC3" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-file=
-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC4" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-file=
-line">COMPATIBLE_MACHINE =3D &quot;^rpi$&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC5" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-file=
-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC6" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-file=
-line">ENABLE_UART=3D&quot;1&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC7" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-file=
-line">RPI_USE_U_BOOT=3D&quot;1&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC8" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-file=
-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC9" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-file=
-line"># maybe works??<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC10" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">CONFIG_STANDALONE_LOAD_ADDR=3D&quot;0x10000000&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC11" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC12" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">DEPENDS =3D &quot;u-boot-mkimage-native&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC13" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC14" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">SUMMARY=3D&quot;Helloworld&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC15" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">DESCRIPTION=3D&quot;Helloworld&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC16" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">LICENSE=3D&quot;CLOSED&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC17" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line"># LIC_FILES_CHCKSUM =3D &quot;file://COPYING;md5=3D1fec1f350300594d=
23a1d03379c0c989&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC18" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC19" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">SRC_URI +=3D &quot;file://hello_world.c&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC20" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">HELLO ?=3D &quot;hello_world.c&quot;</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC21" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">do_compile() {</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC22" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">    mkimage -A arm -O linux -T standalone -C none -a ${LOAD_ADDR} -=
e 0 \</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC23" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">    -n &quot;standalone example script&quot; \</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC24" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">    -d ${WORKDIR}/${HELLO} ${B}/helloworld.srec</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC25" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">}</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC26" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC27" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">inherit deploy</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC28" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC29" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">do_deploy() {</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC30" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">    install -d ${DEPLOYDIR}</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC31" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">    install -m 0644 ${B}/helloworld.srec ${DEPLOYDIR}/</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC32" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">}</td>
      </tr>
      <tr>
        </tr></tbody></table><table class=3D"gmail-highlight gmail-tab-size=
 gmail-js-file-line-container"><tbody><tr><td id=3D"gmail-file-example-stan=
dalone-bb-LC33" class=3D"gmail-blob-code gmail-blob-code-inner gmail-js-fil=
e-line">
<br></td>
      </tr>
      <tr>
        </tr></tbody></table>addtask do_deploy after do_compile before do_b=
uild</div><div>```</div><div><br></div><div>I get errors, because I think..=
 the mkimage part.. isn&#39;t working.. somebody could help me, how to solv=
e this? <br></div><div><br></div><div>Regards,</div><div>Szabolcs<br></div>=
</div>

--000000000000055760058d2dc9b6--
