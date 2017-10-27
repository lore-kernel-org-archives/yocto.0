Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64BA7E00D4E; Fri, 27 Oct 2017 13:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92AC0E00D48
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 13:34:45 -0700 (PDT)
Received: by mail-wr0-f169.google.com with SMTP id j15so7238785wre.8
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 13:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:in-reply-to:references:mime-version:content-transfer-encoding
	:subject:to:from:message-id;
	bh=sWv1UFkjlvbsQDD3kYNVusI/7EgJzCwT2uttypwVgc4=;
	b=dao3drsIj6waGSRIak+40dlVkb1rsgFywCfF9reCLhPC4AuyHpqW4xkb/UISRaBryk
	VEP6apBpFUsZwP7Q0ZuDaLypMw30mZrfGhLw6IZFRUZrPkV7EzW4mo2ZrKMePILEJWUk
	bof4Ay/V0a1W0deRw/ZsSIUOMtppBN4sODQF3UgnbYbPQD8/F6gPfuwpBno481cGYKEQ
	EBdevM1gnnyHtfHq+9/ZX3dJjSihjbxBRkjGBXZnrSqwzLLySRpfy4wcO4aCHVRfEaOp
	ldYquaMC9d8aWsInKxajCbir/a3/LVBrptAi7rJuj1J+yIBrBKUXJF9DkXFDN7XIQTj5
	SDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:from:message-id;
	bh=sWv1UFkjlvbsQDD3kYNVusI/7EgJzCwT2uttypwVgc4=;
	b=D5EDDvn+FfIYtTeomDD+iRltb0vXprrdfdFgnZ9sg7Nnjn8lUFXXuZv+ug/i7tCIwj
	sf7L261TbWZrKkvGTBRoLBlyQdUJayivhYhFSxOwQQL7nriJnzrkW9Q2lQwN0n8qAVkp
	7XDKyhza/aoXs45bScU7spJSDiHUfabMCS0bbBO9A92c48CVj1gSUmC8izVmGYp7kCaB
	nb38uleJwrzGAa0RiT1+Okrl27LBUBkaj9MIFm2aNSIKyJKf7keDVKMMo2XX825InVhn
	13YSV1nZMjFIc6CSMRiCQend12SG5sO7PZHDXLmMuU5z5ftIn8uU4ncm9sMiAM5ORnYr
	BGqA==
X-Gm-Message-State: AMCzsaUYcld53IMiZfq2VGGTp55Cq/UeKgl4ix/1TwS7VrmYhODZh6cf
	WIYkQlp3iT9OxG5XUBZbtmc2lHUbPxM=
X-Google-Smtp-Source: ABhQp+S/kbLEg9ZaZCxpmVL2rN901YDukh7LwFM7l9L9RPNsUvQeGCkJ3ysJkATKAOfmPJUB9At85Q==
X-Received: by 10.223.185.77 with SMTP id b13mr1496751wrg.58.1509136484347;
	Fri, 27 Oct 2017 13:34:44 -0700 (PDT)
Received: from [192.168.1.127] (host31-53-145-248.range31-53.btcentralplus.com.
	[31.53.145.248]) by smtp.gmail.com with ESMTPSA id
	u138sm3323747wmd.17.2017.10.27.13.34.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Oct 2017 13:34:43 -0700 (PDT)
Date: Fri, 27 Oct 2017 21:34:40 +0100
In-Reply-To: <CAPyrkgxOa749tUa55nK+XZ9UJBcEHU718KEhN4GW+t4c70U7EQ@mail.gmail.com>
References: <CAPyrkgxOa749tUa55nK+XZ9UJBcEHU718KEhN4GW+t4c70U7EQ@mail.gmail.com>
MIME-Version: 1.0
To: Paul Barker <pbarker@toganlabs.com>,yocto@yoctoproject.org
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <E56D7F51-D088-47C2-BB40-FF8822409284@gherzan.ro>
Subject: Re: [meta-raspberrypi] Rocko branch maintenance
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
X-List-Received-Date: Fri, 27 Oct 2017 20:34:46 -0000
X-Groupsio-MsgNum: 38545
Content-Transfer-Encoding: 7bit
Content-Type: multipart/signed; boundary="----Z3W7ZU5W6LMJITHHD8ZO89UVKD1Y3O"; 
	protocol="application/pgp-signature"; micalg="pgp-sha512"

------Z3W7ZU5W6LMJITHHD8ZO89UVKD1Y3O
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="----EWSGMFXYI7Z5VT39UB40OOLAEXOM7N"

------EWSGMFXYI7Z5VT39UB40OOLAEXOM7N
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Paul for your help with this BSP layer=2E You were a real help with =
pyro branch until now and I'm happy to see that you want to continue the sa=
me great work with rocko=2E I know that maintaining multiple stable branche=
s is not an easy task so I'll take the pyro one=2E We will be able to maint=
ain two stable branches in this way which should be great for our users=2E

If anybody is interested in maintaining older stable release, please ping =
me and we can sort out something=2E

On 25 October 2017 09:50:02 BST, Paul Barker <pbarker@toganlabs=2Ecom> wro=
te:
>Hi all,
>
>I'd like to put myself forward as stable branch maintainer for
>meta-raspberrypi again=2E The plan is to maintain rocko for 12 months in
>line with the Yocto Project's current maintenance period=2E I'm
>currently looking after pyro and I think it's gone well over the last
>6 months=2E Obviously, pyro will also continue to be maintained until
>it's around 12 months old=2E
>
>However, if anyone else wants to help spread the load then feel free
>to step forward and propose yourself for rocko branch maintenance=2E
>
>Cheers,
>
>--=20
>Paul Barker
>Tog=C3=A1n Labs Ltd

--=20
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

------EWSGMFXYI7Z5VT39UB40OOLAEXOM7N
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Thanks Paul for your help with this BSP layer=2E Y=
ou were a real help with pyro branch until now and I&#39;m happy to see tha=
t you want to continue the same great work with rocko=2E I know that mainta=
ining multiple stable branches is not an easy task so I&#39;ll take the pyr=
o one=2E We will be able to maintain two stable branches in this way which =
should be great for our users=2E<br>
<br>
If anybody is interested in maintaining older stable release, please ping =
me and we can sort out something=2E<br><br><div class=3D"gmail_quote">On 25=
 October 2017 09:50:02 BST, Paul Barker &lt;pbarker@toganlabs=2Ecom&gt; wro=
te:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; =
border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hi all,<br /><br />I'd like to put myself forward as=
 stable branch maintainer for<br />meta-raspberrypi again=2E The plan is to=
 maintain rocko for 12 months in<br />line with the Yocto Project's current=
 maintenance period=2E I'm<br />currently looking after pyro and I think it=
's gone well over the last<br />6 months=2E Obviously, pyro will also conti=
nue to be maintained until<br />it's around 12 months old=2E<br /><br />How=
ever, if anyone else wants to help spread the load then feel free<br />to s=
tep forward and propose yourself for rocko branch maintenance=2E<br /><br /=
>Cheers,<br /></pre></blockquote></div><br>
-- <br>
Andrei Gherzan<br>
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan</body></html>

------EWSGMFXYI7Z5VT39UB40OOLAEXOM7N--

------Z3W7ZU5W6LMJITHHD8ZO89UVKD1Y3O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQJBBAABCgArJBxBbmRyZWkgR2hlcnphbiA8YW5kcmVpQGdoZXJ6YW4uY29tPgUC
WfOYYAAKCRBzu+hrfnq3z8+DD/4jsEhXVb7Yz3a3YOEBzZQYab0I+c4KwNmzLJ1H
lRpLuhAX8+Xu5oSa6W+Q0tnUIIWuR5RpkkVLry2mPEDH50rD1Qq4DUrargJcX6Ma
cmEGVcLaSmUkCVNru75lPn05tBHRmvSL7uY1JPLXgZlb9FjRG2w+T7q7OwAG61uK
3n7cx5SyIlcPkrabBlqfnv4jlpVeDrwbT/xgRfQKPFbBvTzbwrJlcV55+kw0UfPq
lBQsls3o0yYhy4grYZmKON46RfpjdpiHGiP6Qeui3hLXE9cwTJ8TPd4KjLFFCJR2
JaW8I4gmjMYczsSpON3CXi2Esq1KuHlhGXaOIGeIIjZdXgXJlwR42jCPHtp7055S
7nxue61kIUtAgEREwLdX+eRcIevwI6G1RnpnPhmH6JqIXbHpEyUU0HO7Cm2q9q9o
Me7YBPU+Rm1fdzSTFdCiWgVHxYGw1zoxZZMgsDRUEDTdW4yDF674kVM77iA7ZJh9
lHpghgFAT2mcdMQXm4m+7wu7B3ORmahS86UOS24ycpcUQ/T8/qb6MFfplIKzd8Q8
kfRVDy1busCqdduJoEhyuFXU9dHBDPla5cPc81hIN+XbOQUxJCpjgOovW2Ogjlry
FdouAdfhhsM/B/IFBTT4IL4WC5NKiZEKojHd/XXocrja6whtpAA7+AWagoDENWeG
R5NGcQ==
=u6PK
-----END PGP SIGNATURE-----

------Z3W7ZU5W6LMJITHHD8ZO89UVKD1Y3O--
