Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C4D6E00D4F; Fri, 27 Oct 2017 13:43:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,NORMAL_HTTP_TO_IP,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6ED6E00D48
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 13:43:01 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id r196so5508484wmf.2
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 13:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:date:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:cc:from:message-id;
	bh=mb1qF9R7KVo+aUFMimzaYjsNoTZ8jL0387o9C6J/Th0=;
	b=niYpBe7pBhZp3qDlQAdE7SnR4T1loBBfr6ttwXUKL/BrywoMNKcqBlR1nTvkaj5hMh
	GveessQRApK0Ig4YVYscjiqI6HcWgmf+HmMRqCE0R1XqWnvwyd4b0iE01krrzlPq8lzy
	RKjWbhFDU7hSy2aAvl5du7ZKlNhZY2+n3FLlUfea1980RVldh3UpXK53BCnrquMz6XYE
	srYLw5/9ftqERW0SyLNRRf6JgEyE2RdtuHnYC6p3r4aW2xokoZSGqM+tPSOpv+IHDCHk
	kF3I40GLDLB9GpItRdSrrdJ9J6z4L3czfSquOPJaPNLH3SDkl491uOcDD4qCCBpjcisB
	ZS0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:cc:from:message-id;
	bh=mb1qF9R7KVo+aUFMimzaYjsNoTZ8jL0387o9C6J/Th0=;
	b=ddHn8tCbhc7nWKrnt+U8+uN3R/rR9fgG3lEti/rxDtxrYHwobsuL/vnBIiq8EBuoKi
	B/L/a+KfjfieYWiHA8I+IYf9sQqSQOps9YQZV2ZCdBxR955b48F7NOWUHNjjiyandWqs
	wQ4BHnFZI1VWNEoVor1jVIybmYKhodk/ZY+4kNyCsIk/tZ6eqPTwPOoaEl7b0/5R6k20
	dA3njfnXX4Ykk9Ik42F12Cadfu3rr48pK98z0ftT6MQoxl8PhLXsaspnrhzo/kBsfIx8
	GQHmss8o4aegKHrdhgt+UJt/d+nTy6/0LbHMl4s/i89BcRdUNAfTv8UA+FLK4MigrKmG
	Oxuw==
X-Gm-Message-State: AMCzsaVmsQ+LJN/SI1GS45wNo8zBOa7nvbZJLeG55k+rwrt+PeMjmvYz
	eUrZDVhgFSa66i2pGb9e2VTQ/XN9uR0=
X-Google-Smtp-Source: ABhQp+SHQ8hfUHFcEuUPhIxu+Br1Z5hLWCor1CutTlbhkgHP/Uk9BIhPWlaX6IdU6OJWqGmDdjFsUA==
X-Received: by 10.80.183.229 with SMTP id i34mr2059817ede.227.1509136980283;
	Fri, 27 Oct 2017 13:43:00 -0700 (PDT)
Received: from [192.168.1.127] (host31-53-145-248.range31-53.btcentralplus.com.
	[31.53.145.248]) by smtp.gmail.com with ESMTPSA id
	z23sm7237090edm.62.2017.10.27.13.42.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Oct 2017 13:42:59 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 27 Oct 2017 21:42:56 +0100
In-Reply-To: <20171025054330.23222-1-mgloff@emacinc.com>
References: <20171025054330.23222-1-mgloff@emacinc.com>
MIME-Version: 1.0
To: yocto@yoctoproject.org,Michael Gloff <mgloff@emacinc.com>
From: Andrei Gherzan <andrei@gherzan.com>
Message-ID: <19685B85-0671-4721-9495-0F5D133A4F60@gherzan.com>
Cc: Michael Gloff <mgloff@hotmail.com>
Subject: Re: [meta-raspberrypi][PATCH 1/3] linux-firmware: Replace /lib	with ${nonarch_base_libdir}
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
X-List-Received-Date: Fri, 27 Oct 2017 20:43:03 -0000
X-Groupsio-MsgNum: 38546
Content-Transfer-Encoding: 7bit
Content-Type: multipart/signed; boundary="----FHYHS42EL9BA3OFLNFYER3KTS486WO"; 
	protocol="application/pgp-signature"; micalg="pgp-sha512"

------FHYHS42EL9BA3OFLNFYER3KTS486WO
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="----87KXS0BW7D8L1P4IUX9AWDISH8ESTN"

------87KXS0BW7D8L1P4IUX9AWDISH8ESTN
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

The entire patch set was merged to master=2E Thanks=2E=20

On 25 October 2017 06:43:28 BST, Michael Gloff <mgloff@emacinc=2Ecom> wrot=
e:
>From: Michael Gloff <mgloff@hotmail=2Ecom>
>
>	Use standard variable name and avoid
>	QA errors when usermerge DISTRO_FEATURE is enabled=2E
>
>Signed-off-by: Michael Gloff <mgloff@emacinc=2Ecom>
>---
> recipes-kernel/linux-firmware/linux-firmware_%=2Ebbappend | 8 ++++----
> 1 file changed, 4 insertions(+), 4 deletions(-)
>
>diff --git a/recipes-kernel/linux-firmware/linux-firmware_%=2Ebbappend
>b/recipes-kernel/linux-firmware/linux-firmware_%=2Ebbappend
>index 565b735=2E=2Edaf1dbc 100644
>--- a/recipes-kernel/linux-firmware/linux-firmware_%=2Ebbappend
>+++ b/recipes-kernel/linux-firmware/linux-firmware_%=2Ebbappend
>@@ -10,17 +10,17 @@ do_install_append() {
> 	# (v7=2E45=2E41=2E46)
> 	local _firmware=3D"brcmfmac43430-sdio=2Ebin"
> 	local _oldmd5=3D9258986488eca9fe5343b0d6fe040f8e
>-	if [ "$(md5sum ${D}/lib/firmware/brcm/$_firmware | awk '{print $1}')"
>!=3D "$_oldmd5" ]; then
>+	if [ "$(md5sum ${D}${nonarch_base_libdir}/firmware/brcm/$_firmware |
>awk '{print $1}')" !=3D "$_oldmd5" ]; then
> 		_firmware=3D""
> 		bbwarn "linux-firmware stopped providing brcmfmac43430 v7=2E45=2E41=2E=
26=2E"
> 	else
> 		_firmware=3D"${WORKDIR}/$_firmware"
> 	fi
>=20
>-	mkdir -p ${D}/lib/firmware/brcm
>-	install -m 0644 $_firmware ${WORKDIR}/brcmfmac43430-sdio=2Etxt
>${D}/lib/firmware/brcm
>+	mkdir -p ${D}/${nonarch_base_libdir}/firmware/brcm
>+	install -m 0644 $_firmware ${WORKDIR}/brcmfmac43430-sdio=2Etxt
>${D}${nonarch_base_libdir}/firmware/brcm
> }
>=20
> FILES_${PN}-bcm43430 +=3D " \
>-	/lib/firmware/brcm/brcmfmac43430-sdio=2Etxt \
>+	${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio=2Etxt \
> "
>--=20
>2=2E14=2E3
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject=2Eorg
>https://lists=2Eyoctoproject=2Eorg/listinfo/yocto

--=20
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

------87KXS0BW7D8L1P4IUX9AWDISH8ESTN
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>The entire patch set was merged to master=2E Thank=
s=2E <br><br><div class=3D"gmail_quote">On 25 October 2017 06:43:28 BST, Mi=
chael Gloff &lt;mgloff@emacinc=2Ecom&gt; wrote:<blockquote class=3D"gmail_q=
uote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204,=
 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">From: Michael Gloff &lt;mgloff@hotmail=2Ecom&gt;<br =
/><br /> Use standard variable name and avoid<br /> QA errors when usermerg=
e DISTRO_FEATURE is enabled=2E<br /><br />Signed-off-by: Michael Gloff &lt;=
mgloff@emacinc=2Ecom&gt;<br />---<br /> recipes-kernel/linux-firmware/linux=
-firmware_%=2Ebbappend | 8 ++++----<br /> 1 file changed, 4 insertions(+), =
4 deletions(-)<br /><br />diff --git a/recipes-kernel/linux-firmware/linux-=
firmware_%=2Ebbappend b/recipes-kernel/linux-firmware/linux-firmware_%=2Ebb=
append<br />index 565b735=2E=2Edaf1dbc 100644<br />--- a/recipes-kernel/lin=
ux-firmware/linux-firmware_%=2Ebbappend<br />+++ b/recipes-kernel/linux-fir=
mware/linux-firmware_%=2Ebbappend<br />@@ -10,17 +10,17 @@ do_install_appen=
d() {<br />  # (v<a href=3D"http://7=2E45=2E41=2E46">7=2E45=2E41=2E46</a>)<=
br />  local _firmware=3D&quot;brcmfmac43430-sdio=2Ebin&quot;<br />  local =
_oldmd5=3D9258986488eca9fe5343b0d6fe040f8e<br />- if [ &quot;$(md5sum ${D}/=
lib/firmware/brcm/$_firmware | awk '{print $1}')&quot; !=3D &quot;$_oldmd5&=
quot; ]; then<br />+ if [ &quot;$(md5sum ${D}${nonarch_base_libdir}/firmwar=
e/brcm/$_firmware | awk '{print $1}')&quot; !=3D &quot;$_oldmd5&quot; ]; th=
en<br />   _firmware=3D&quot;&quot;<br />   bbwarn &quot;linux-firmware sto=
pped providing brcmfmac43430 v<a href=3D"http://7=2E45=2E41=2E26">7=2E45=2E=
41=2E26</a>=2E&quot;<br />  else<br />   _firmware=3D&quot;${WORKDIR}/$_fir=
mware&quot;<br />  fi<br /> <br />- mkdir -p ${D}/lib/firmware/brcm<br />- =
install -m 0644 $_firmware ${WORKDIR}/brcmfmac43430-sdio=2Etxt ${D}/lib/fir=
mware/brcm<br />+ mkdir -p ${D}/${nonarch_base_libdir}/firmware/brcm<br />+=
 install -m 0644 $_firmware ${WORKDIR}/brcmfmac43430-sdio=2Etxt ${D}${nonar=
ch_base_libdir}/firmware/brcm<br /> }<br /> <br /> FILES_${PN}-bcm43430 +=
=3D &quot; \<br />- /lib/firmware/brcm/brcmfmac43430-sdio=2Etxt \<br />+ ${=
nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio=2Etxt \<br /> &quot;<=
/pre></blockquote></div><br>
-- <br>
Andrei Gherzan<br>
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan</body></html>

------87KXS0BW7D8L1P4IUX9AWDISH8ESTN--

------FHYHS42EL9BA3OFLNFYER3KTS486WO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQJBBAABCgArJBxBbmRyZWkgR2hlcnphbiA8YW5kcmVpQGdoZXJ6YW4uY29tPgUC
WfOaUAAKCRBzu+hrfnq3z8+DD/4ssN9A+lFWf9EYMAxoPsUjrzNjuFrkefMkgb7h
y7n43dXmgvAPAqmD+qpa+kDCxwxTomcw9k3iQJJNWHTDUJPGOM2GyhurWvVzjb4g
bEQijnFXjs07lggA4xPZhqdtf0hj49n5bVwmnhI2Rxozx4qZhs8BmOUE1xt6MFIW
5zoULB4jQ1oi1Sc18dYlopwVYnc/zrCtsL3dO8ZOHG2PZCzVJ1Uo/CZYcAGEyX2V
Ia9B+IcejdAIAKJ6Y9s7WFXXt5PYT+vXf6n8BZRhimekHcVBV1ck/HD2rXEEWJLe
+ebfxLnLt1pExoNyXHlNh3Gin7CjE0kYoIH3VynZWN8YZGQFCWZ8pk+Hg7qggOh+
2DMRd7s2/t0G9cJpV+XwaW9ttqIz/XSvwut8XXGOvbUQ4ZOIrmZZ78Kbu7Baj1OP
RKhl+e8vMEoIHlcikHhHfk03nkVZ51ktXY2p3wKH9hfdmZWN5/NBuGJ6w+vDow1e
S2hbQafxnV5JQNez5eVf+v8mGR2sJsiGLi5a5UgJ4MFZzkCzPkEPDzg4HXJtv5nj
zghn4bL2WdweBzUWPcAR19Bv5xCn+h/ObxVIKJdwJKMomuXEstvQ7WVzWablVxUu
qaIbGQ9OqMCsc2749dAPSbnKroaNAutDAHpOlDxw769PtD93llt4aN/fISTzbigv
qIn8UA==
=GNpI
-----END PGP SIGNATURE-----

------FHYHS42EL9BA3OFLNFYER3KTS486WO--
