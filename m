Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE8A7E00D6F; Thu,  9 May 2019 13:16:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B04B9E00AD5
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 13:16:04 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id c3so3532976otr.3
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 13:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ic7oAv3oT+cwd/yUPrRaknLRY5IRCeT/QuzZUblBBTI=;
	b=M23S6dt587mBvt02w4757h0K1/YSb0gfXPKlfaYF3KUpMtJy9O7HzarhrwfNgf8c5J
	Of7gvRc+emXwh5mSMc7b60zvIxkdwPHWKdX5t8RYh7tQCfoHLNe6QVwP8/+1NBtd+DW+
	8ANFigoolYKE32ww8aPwSw6q+FX+X2ef3BEo4sKwfgtW/9y8/6HACzc5yM/LTvN3dyhZ
	Pj/zXMsfV9CofAQi2OYZSB38QpubWlXueKyRa9c0ucat7tvjcJsWe11uJ26zvFUNfL9f
	WlKjh1xVvsjQCEfz2IP3iJdxvWvA3U/vzhcS1nROBytTXi6nfWLAGsLwMqrOAdfHQBXT
	HW+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ic7oAv3oT+cwd/yUPrRaknLRY5IRCeT/QuzZUblBBTI=;
	b=LCb+4+n2vLzEy7bRAv9KLMaP5iefA3dGoszNDm7KjBVCDDe0xUrUIRvbgaPF76u8vd
	4QmYumQv0GvLn2BP3WspmrBgZXmND1ZKH3/5gXdfAb6rGTmAkye2fAzNBnWXCYgTRejH
	xHXLtI38oYJzF+y8PkO7kzuGu7V1thu2hd2CasPM6hnO3K7u9qN30QQKseYskLDksiFN
	G8+bI70aiTlCYvX1/a1RhUrpYMNwaqaQbTUYS42q92gQ7iHsfIv12JV9PogGcM57a/mL
	5SU2Ka0HURIvB+rv+nDNDnXXYEe4E71Q4G05im9oT3VaHcYZt+D6BMdR3OROyb+EsScz
	kL8A==
X-Gm-Message-State: APjAAAWP4KuoemPR5VLuzaAHpASZO7qFc+eWLCH452V+UBD+TsKBo0RL
	hmu9RL9wOx1/iWiUsAUWRHrSc2VakfhG4VeovTRDXUAx4gA=
X-Google-Smtp-Source: APXvYqw6zwdCbC7ccJNT8mgO2Q9onakq76sGEtx8XfKOv6LvWarrtWkA4cCRt6yEea8iALPd34jYQozcDwdW6aYzcOs=
X-Received: by 2002:a9d:eb7:: with SMTP id 52mr3863654otj.185.1557432963590;
	Thu, 09 May 2019 13:16:03 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Cohen <aaron@assonance.org>
Date: Thu, 9 May 2019 16:15:53 -0400
Message-ID: <CAFSZm+j8cBQ6SxD=VsuUWc1+JCvGe6asJpCgjhe=Bp+r5XPLPw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: python-numpy RDEPENDS not honored?
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
X-List-Received-Date: Thu, 09 May 2019 20:16:05 -0000
Content-Type: multipart/alternative; boundary="0000000000008e899905887a1ee2"

--0000000000008e899905887a1ee2
Content-Type: text/plain; charset="UTF-8"

python-numpy is being installed on my image as a dependency of one of my
packages.

However, none of python-numpy's RDEPENDS are currently being included on
the image.

When I run bitbake -e python-numpy > numpy.txt, I see that for some reason,
the RDEPENDS is being overridden to a nearly empty value:

# $RDEPENDS_python-numpy [5 operations]
> #   append
> /home/joel-cohen/code/juevos/poky/meta/classes/distutils-base.bbclass:2
> #     "${@['', '${PYTHON_PN}-core']['${CLASSOVERRIDE}' == 'class-target']}"
> #   set
> /home/joel-cohen/code/juevos/poky/meta/recipes-devtools/python-numpy/python-numpy.inc:112
> #     "${PYTHON_PN}-unittest                   ${PYTHON_PN}-difflib
>            ${PYTHON_PN}-pprint                   ${PYTHON_PN}-pickle
>            ${PYTHON_PN}-shell                   ${PYTHON_PN}-nose
>          ${PYTHON_PN}-doctest                   ${PYTHON_PN}-datetime
>              ${PYTHON_PN}-distutils                   ${PYTHON_PN}-misc
>                ${PYTHON_PN}-mmap                   ${PYTHON_PN}-netclient
>                  ${PYTHON_PN}-numbers                   ${PYTHON_PN}-pydoc
>                  ${PYTHON_PN}-pkgutil                   ${PYTHON_PN}-email
>                  ${PYTHON_PN}-compression
>  ${PYTHON_PN}-ctypes                   ${PYTHON_PN}-threading "
> #   rename from RDEPENDS_${PN} data.py:117 [expandKeys]
> #     "${PYTHON_PN}-unittest                   ${PYTHON_PN}-difflib
>            ${PYTHON_PN}-pprint                   ${PYTHON_PN}-pickle
>            ${PYTHON_PN}-shell                   ${PYTHON_PN}-nose
>          ${PYTHON_PN}-doctest                   ${PYTHON_PN}-datetime
>              ${PYTHON_PN}-distutils                   ${PYTHON_PN}-misc
>                ${PYTHON_PN}-mmap                   ${PYTHON_PN}-netclient
>                  ${PYTHON_PN}-numbers                   ${PYTHON_PN}-pydoc
>                  ${PYTHON_PN}-pkgutil                   ${PYTHON_PN}-email
>                  ${PYTHON_PN}-compression
>  ${PYTHON_PN}-ctypes                   ${PYTHON_PN}-threading "
> #   override[class-native]:set
> /home/joel-cohen/code/juevos/poky/meta/recipes-devtools/python-numpy/python-numpy.inc:114
> #     ""
> #   override[class-native]:rename from RDEPENDS_${PN}_class-native
> data_smart.py:644 [renameVar]
> #     ""
> # pre-expansion value:
> #   "     ${PYTHON_PN}-subprocess "
> RDEPENDS_python-numpy="     python-subprocess "



Anyone have any ideas for why this recipe doesn't seem to be behaving
correctly?

I'm using poky 2.6 at the moment.

Thanks for any help,
Aaron

--0000000000008e899905887a1ee2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+cHl0aG9uLW51bXB5IGlzIGJlaW5nIGluc3Rh
bGxlZCBvbiBteSBpbWFnZSBhcyBhIGRlcGVuZGVuY3kgb2Ygb25lIG9mIG15IHBhY2thZ2VzLjxk
aXY+PGJyPjwvZGl2PjxkaXY+SG93ZXZlciwgbm9uZSBvZiBweXRob24tbnVtcHkmIzM5O3MgUkRF
UEVORFMgYXJlIGN1cnJlbnRseSBiZWluZyBpbmNsdWRlZCBvbiB0aGUgaW1hZ2UuPC9kaXY+PGRp
dj48YnI+PC9kaXY+PGRpdj5XaGVuIEkgcnVuIGJpdGJha2UgLWUgcHl0aG9uLW51bXB5ICZndDsg
bnVtcHkudHh0LCBJIHNlZSB0aGF0IGZvciBzb21lIHJlYXNvbiwgdGhlIFJERVBFTkRTIGlzIGJl
aW5nIG92ZXJyaWRkZW4gdG8gYSBuZWFybHkgZW1wdHkgdmFsdWU6PC9kaXY+PGRpdj48YnI+PC9k
aXY+PGRpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4
IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFk
ZGluZy1sZWZ0OjFleCI+IyAkUkRFUEVORFNfcHl0aG9uLW51bXB5IFs1IG9wZXJhdGlvbnNdPGJy
PiPCoCDCoGFwcGVuZCAvaG9tZS9qb2VsLWNvaGVuL2NvZGUvanVldm9zL3Bva3kvbWV0YS9jbGFz
c2VzL2Rpc3R1dGlscy1iYXNlLmJiY2xhc3M6Mjxicj4jwqAgwqAgwqAmcXVvdDske0BbJiMzOTsm
IzM5OywgJiMzOTske1BZVEhPTl9QTn0tY29yZSYjMzk7XVsmIzM5OyR7Q0xBU1NPVkVSUklERX0m
IzM5OyA9PSAmIzM5O2NsYXNzLXRhcmdldCYjMzk7XX0mcXVvdDs8YnI+I8KgIMKgc2V0IC9ob21l
L2pvZWwtY29oZW4vY29kZS9qdWV2b3MvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcHl0aG9u
LW51bXB5L3B5dGhvbi1udW1weS5pbmM6MTEyPGJyPiPCoCDCoCDCoCZxdW90OyR7UFlUSE9OX1BO
fS11bml0dGVzdMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJHtQWVRIT05fUE59LWRpZmZs
aWLCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9OX1BOfS1wcHJpbnTCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9OX1BOfS1waWNrbGXCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCR7UFlUSE9OX1BOfS1zaGVsbMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgJHtQWVRIT05fUE59LW5vc2XCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9O
X1BOfS1kb2N0ZXN0wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAke1BZVEhPTl9QTn0tZGF0
ZXRpbWXCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9OX1BOfS1kaXN0dXRpbHPC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9OX1BOfS1taXNjwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAke1BZVEhPTl9QTn0tbW1hcMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgJHtQWVRIT05fUE59LW5ldGNsaWVudMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
JHtQWVRIT05fUE59LW51bWJlcnPCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9O
X1BOfS1weWRvY8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJHtQWVRIT05fUE59LXBrZ3V0
aWzCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9OX1BOfS1lbWFpbMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgJHtQWVRIT05fUE59LWNvbXByZXNzaW9uwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAke1BZVEhPTl9QTn0tY3R5cGVzwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAke1BZVEhPTl9QTn0tdGhyZWFkaW5nICZxdW90Ozxicj4jwqAgwqByZW5hbWUgZnJv
bSBSREVQRU5EU18ke1BOfSBkYXRhLnB5OjExNyBbZXhwYW5kS2V5c108YnI+I8KgIMKgIMKgJnF1
b3Q7JHtQWVRIT05fUE59LXVuaXR0ZXN0wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAke1BZ
VEhPTl9QTn0tZGlmZmxpYsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJHtQWVRIT05fUE59
LXBwcmludMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJHtQWVRIT05fUE59LXBpY2tsZcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJHtQWVRIT05fUE59LXNoZWxswqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAke1BZVEhPTl9QTn0tbm9zZcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgJHtQWVRIT05fUE59LWRvY3Rlc3TCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7
UFlUSE9OX1BOfS1kYXRldGltZcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJHtQWVRIT05f
UE59LWRpc3R1dGlsc8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJHtQWVRIT05fUE59LW1p
c2PCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9OX1BOfS1tbWFwwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAke1BZVEhPTl9QTn0tbmV0Y2xpZW50wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAke1BZVEhPTl9QTn0tbnVtYmVyc8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgJHtQWVRIT05fUE59LXB5ZG9jwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAke1BZ
VEhPTl9QTn0tcGtndXRpbMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJHtQWVRIT05fUE59
LWVtYWlswqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAke1BZVEhPTl9QTn0tY29tcHJlc3Np
b27CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9OX1BOfS1jdHlwZXPCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCR7UFlUSE9OX1BOfS10aHJlYWRpbmcgJnF1b3Q7PGJyPiPC
oCDCoG92ZXJyaWRlW2NsYXNzLW5hdGl2ZV06c2V0IC9ob21lL2pvZWwtY29oZW4vY29kZS9qdWV2
b3MvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcHl0aG9uLW51bXB5L3B5dGhvbi1udW1weS5p
bmM6MTE0PGJyPiPCoCDCoCDCoCZxdW90OyZxdW90Ozxicj4jwqAgwqBvdmVycmlkZVtjbGFzcy1u
YXRpdmVdOnJlbmFtZSBmcm9tIFJERVBFTkRTXyR7UE59X2NsYXNzLW5hdGl2ZSBkYXRhX3NtYXJ0
LnB5OjY0NCBbcmVuYW1lVmFyXTxicj4jwqAgwqAgwqAmcXVvdDsmcXVvdDs8YnI+IyBwcmUtZXhw
YW5zaW9uIHZhbHVlOjxicj4jwqAgwqAmcXVvdDvCoCDCoCDCoCR7UFlUSE9OX1BOfS1zdWJwcm9j
ZXNzICZxdW90Ozxicj5SREVQRU5EU19weXRob24tbnVtcHk9JnF1b3Q7wqAgwqAgwqBweXRob24t
c3VicHJvY2VzcyAmcXVvdDs8L2Jsb2NrcXVvdGU+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48
YnI+PC9kaXY+PGRpdj5BbnlvbmUgaGF2ZSBhbnkgaWRlYXMgZm9yIHdoeSB0aGlzIHJlY2lwZSBk
b2VzbiYjMzk7dCBzZWVtIHRvIGJlIGJlaGF2aW5nIGNvcnJlY3RseT88L2Rpdj48ZGl2Pjxicj48
L2Rpdj48ZGl2PkkmIzM5O20gdXNpbmcgcG9reSAyLjYgYXQgdGhlIG1vbWVudC48L2Rpdj48ZGl2
Pjxicj48L2Rpdj48ZGl2PlRoYW5rcyBmb3IgYW55IGhlbHAsPC9kaXY+PGRpdj5BYXJvbjwvZGl2
PjwvZGl2PjwvZGl2Pg0K

--0000000000008e899905887a1ee2--
