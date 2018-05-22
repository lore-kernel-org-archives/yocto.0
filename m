Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5A06E009AC; Tue, 22 May 2018 00:43:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9179CE008D2
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 00:43:56 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id g14-v6so17353528ioc.7
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 00:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ea91yf2M6xbRWKm9VYZP7urzg76QhsDyqhJEH/I/Oxg=;
	b=sQh+ODSf4mDB4zrzjauFCqQ2/EVfnrOwRadMXZ0LbbC5welC/Kry35uLtB7oBVSbup
	36K3gWXHoiwV6fhAie89mqo06feJabSYfkDnQFd7wNDey6csY65cFd1Tf0AvVda4XAfC
	A+QwQKjletYgNpVDB7IL/ElSLa43aHXcz7oAfndv7K3/iRt6PK5AEIYVQih8zyHs/s7z
	9bpAhsMAk2VVfTBTpgoRyv86mBER0P5JWUsZM4qapZoSBsM2UCYo9i8ShmrJen0jzk4z
	RrpbC/rheb/Xy3eVShuh61ssDWwearwORBZHcIv8djmLVZw/XVHZZTAFUqf6Zb23HlNd
	n23Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ea91yf2M6xbRWKm9VYZP7urzg76QhsDyqhJEH/I/Oxg=;
	b=f1fEnRoypIn+YLEju9uFBccu12c5kNIp+sylRb68s0NZd2pfD9lsCq2zNRqJ1JP50+
	DFFMPviGk3R3RLsY4tkFNHOhEn/BI05g1UdCwdRqggwOK9EX7tXd0eTi42un1hdAb194
	TokPGYgJwzYqg2mnZKA9Pto5nZkbbViddfVviR8Tw7fOnlq9FVVg9hlyhA9oRZkQE3Tm
	xYWaqhEv4NzQ3I1Z32ySKiQ62FlDKw7yT0bkSa84U68T0cF3c5N2U2YFCyux3uFXKoS0
	4ptuG2bzAZwed67Qq27A4UIk7CHjRDFQnYs1HNJjyeuy/KM9WOqhArfOeUO6WmOOp7cT
	chCw==
X-Gm-Message-State: ALKqPwequSHW0BPXPGrXK9GNhUnM6tlkTLdwtSGhRaoXpeKh5Ja5m28+
	obbB16ZnmoDRxIcjkxbizNo3c2GoEQvmNfPPxyJ2
X-Google-Smtp-Source: AB8JxZry0YMKvFOFp7+borY4YHSaUDrjes41Gj6dbYjh+U1hpWZxJTNlqh6tVJcx0Qa81pp9RDEH8iAGe3GAvFZC9wU=
X-Received: by 2002:a6b:ac42:: with SMTP id
	v63-v6mr23817099ioe.261.1526975035446; 
	Tue, 22 May 2018 00:43:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:7a4d:0:0:0:0:0 with HTTP; Tue, 22 May 2018 00:43:54
	-0700 (PDT)
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Tue, 22 May 2018 10:43:54 +0300
Message-ID: <CA+FhBv_pki=SYi3V4OXCn65Hgph6R=y3tphsJLFeVocQKLV6hw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: native recipe question
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
X-List-Received-Date: Tue, 22 May 2018 07:43:57 -0000
Content-Type: multipart/alternative; boundary="000000000000919ea9056cc694de"

--000000000000919ea9056cc694de
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm having to build a package (arrayfire) for Tegra. This package requires
to first build a x86_64 utility (bin2cpp) which is then used for building
the tegra arrayfire.

Do I understand correctly that I should create:

   - arrayfire-native.bb: for compiling the x86_64 utility. If so how do I
   instruct the platform?
   - arrayfire.bb: for compiling the tegra platform. This recipe requires
   arrayfire-native.bb and I should get a copy in the recipe-sysroot-native
   folder?

Thanks
-Damien

--000000000000919ea9056cc694de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m having to build a package (=
arrayfire) for Tegra. This package requires to first build a x86_64 utility=
 (bin2cpp) which is then used for building the tegra arrayfire.</div><div><=
br></div><div>Do I understand correctly that I should create:</div><div><ul=
><li><a href=3D"http://arrayfire-native.bb">arrayfire-native.bb</a>: for co=
mpiling the=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">x86_64 utility. If so how do I i=
nstruct the platform?</span></li><li><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transfor=
m:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255=
);text-decoration-style:initial;text-decoration-color:initial;float:none;di=
splay:inline"><a href=3D"http://arrayfire.bb">arrayfire.bb</a>: for compili=
ng the tegra platform. This recipe requires=C2=A0<span style=3D"color:rgb(3=
4,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline"><=
a href=3D"http://arrayfire-native.bb">arrayfire-native.bb</a> and I should =
get a copy in the recipe-sysroot-native folder?</span></span><br></span></l=
i></ul><div>Thanks</div></div><div>-Damien</div></div>

--000000000000919ea9056cc694de--
