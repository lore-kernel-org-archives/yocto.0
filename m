Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B596CE008CC; Thu, 13 Nov 2014 21:30:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og112.obsmtp.com (exprod8og112.obsmtp.com [64.18.3.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB307E00837
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 21:30:10 -0800 (PST)
Received: from mail-lb0-f176.google.com ([209.85.217.176]) (using TLSv1) by
	exprod8ob112.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVGWTYabAaIViSCQvwO61AQCXai2RIGE9@postini.com;
	Thu, 13 Nov 2014 21:30:13 PST
Received: by mail-lb0-f176.google.com with SMTP id 10so12414937lbg.35
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 21:30:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=ZXc+g0ZJSBAKDnzF+ZpPh50Avy6roHtUcnitaC0BIWI=;
	b=GKSdGI6M8vRGjldLF9MwXK13FVORrVs5gh2jjkkhuDPFOHXPe0tWx8uP+ueSdGPtxE
	32dteBGbv9hSRjUv1oiWv1LZB75jGDr4IIkxlycCfGPrLpCNFauft8N+ylj9dmhsuTtX
	bvP+SCeICUIvYnJ7D6uRWfscR5QEttbAh0Xm/nfBmu9/bQ4Bo2R02kRTWPvvRqgykv0O
	uhJhTMHAPZe8ky8zNPgEV6gcscxKEl3abDBue42NOKEMOMxg4+ffltJjZykTXWZxjhLh
	SLov9j9giHyLy6vuiTb9KGviOAgXlaYyXzyZTivi1iqYAnNQmFA4cPmQCody9kOdfy9x
	8PuA==
X-Gm-Message-State: ALoCoQl9VA0S/1GzCOGruxSMhApoS0PwV4qhwfPZtg7BC0AskRcIud15LykaVtctdGsSznTX/5uejlqHBK/fAy/Jf0QkWbq2aC5SO5spGD0OVbkS6KDxpu0poEL1P/l4VYskEoFjFkMeCcVnscGxxrDYM5ETqB33KA==
X-Received: by 10.112.202.104 with SMTP id kh8mr6346002lbc.46.1415943008295;
	Thu, 13 Nov 2014 21:30:08 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.112.202.104 with SMTP id kh8mr6345987lbc.46.1415943007959;
	Thu, 13 Nov 2014 21:30:07 -0800 (PST)
Received: by 10.152.2.40 with HTTP; Thu, 13 Nov 2014 21:30:07 -0800 (PST)
Date: Fri, 14 Nov 2014 13:30:07 +0800
Message-ID: <CAJrRHk4BDYQ44V+-JCCjev+vvGuzF5bDYZbE2EqwQ8NaXRjNAA@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Split package in native and nativesdk
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
X-List-Received-Date: Fri, 14 Nov 2014 05:30:15 -0000
Content-Type: multipart/alternative; boundary=001a11c371980312590507caec4c

--001a11c371980312590507caec4c
Content-Type: text/plain; charset=UTF-8

Good day Yocto dev community,

I would like to ask how do I make a certain package only publishable in
native in just one recipe? I would want that my scripts will be published
as a separate package ${PN}-scripts but not publishable in target sysroot.
I want it be placed in host sysroot both in native and nativesdk.

Right now here's what I did:

PROVIDES_${PN}_class-native += "${PN}-scripts"
PACKAGES_class-native += " ${PN}-scripts"
FILES_${PN} += "${datadir}/sample/*"
FILES_${PN}-scripts += "${bindir}/*"

BBCLASSEXTEND += "native nativesdk"


With the above changes, the sample unit still publishes the script in
target sysroot in SDK and in image.

Please enlighten me.

Thanks,
Joseph

--001a11c371980312590507caec4c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Yocto dev community,<div><br></div><div>I would l=
ike to ask how do I make a certain package only publishable in native in ju=
st one recipe? I would want that my scripts will be published as a separate=
 package ${PN}-scripts but not publishable in target sysroot. I want it be =
placed in host sysroot both in native and nativesdk.</div><div><br></div><d=
iv>Right now here&#39;s what I did:</div><div><br></div><div>PROVIDES_${PN}=
_class-native +=3D &quot;${PN}-scripts&quot;</div><div>PACKAGES_class-nativ=
e +=3D &quot; ${PN}-scripts&quot;</div><div>FILES_${PN} +=3D &quot;${datadi=
r}/sample/*&quot;</div><div>FILES_${PN}-scripts +=3D &quot;${bindir}/*&quot=
;</div><div><br></div><div>BBCLASSEXTEND +=3D &quot;native nativesdk&quot;<=
/div><div><br></div><div><br></div><div>With the above changes, the sample =
unit still publishes the script in target sysroot in SDK and in image.</div=
><div><br></div><div>Please enlighten me.</div><div><br></div><div>Thanks,<=
/div><div>Joseph</div></div>

--001a11c371980312590507caec4c--
