Return-Path: <joel.zhou@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B0E3E008F5; Wed, 10 Feb 2016 11:02:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9670E008B4
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 11:02:24 -0800 (PST)
Received: by mail-ob0-f176.google.com with SMTP id wb13so41870222obb.1
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 11:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ofh1qLXLnvA3pK0AV1Cx/RvL5Z+ymk+YtssqXsXfgoI=;
	b=BuX+LzV6Ru35ocKizmV42Tn9QiGvadmpy4Evwdw7KpDGcLBjPqKPfeQJb314M1IsZO
	FXHBjehtp0QR7+GU9979dFMuAvvgViRj2GeexLl9g8DkTEgt+3L8t2vN8J+kkvbp6J56
	Kir/pz5F52TAOUftfnP9Kk4h3kp/+H8UJCuxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=ofh1qLXLnvA3pK0AV1Cx/RvL5Z+ymk+YtssqXsXfgoI=;
	b=M8qkph01/LvDDIkyv58SjJk4tDT38vOWKuNgdIz4nOxaCb2m7hU8Cb5kEHjV3FbW1Z
	6zm6F8pXxi0DpWOQfxi+k9pDfVe0VDTlsbF62qAk6kSfaVlgWMrGNlgqAauxHeXIEMvS
	hZ+BpCBVsKBm4bi2olkNBKimY4qPJwscpMXKxM8PFnM5TRBnvxDcauSxkCElhmOu6+mL
	gVJOtzFpQ5atKkgP9rcHDzCdKFA8/Uip4PVfOmQx6ax4fuMPYDsLH+5mIiH08095r45Q
	pPwlZ+iiCrzEeioMumepUGnoMNMMZdCFZC5eramY++sAvH8XhtZDI8ApOfOU22+W4Dx5
	46lA==
X-Gm-Message-State: AG10YORDUsbSiOX2Hvv6la6UQYsk8aZOOBnpWGyZt3yRrPryL2QM8Nt1Ryi48nq4OXHpXFMtHiJOxGN7N8uWBisl
MIME-Version: 1.0
X-Received: by 10.182.138.7 with SMTP id qm7mr38800945obb.37.1455130943905;
	Wed, 10 Feb 2016 11:02:23 -0800 (PST)
Received: by 10.202.93.69 with HTTP; Wed, 10 Feb 2016 11:02:23 -0800 (PST)
Date: Wed, 10 Feb 2016 14:02:23 -0500
Message-ID: <CAAJbk1FY6R1urdH-5oMynmprX4jS1-NkHR2V-z3rnBabN9_ZsQ@mail.gmail.com>
From: Xi Zhou Zhou <joel.zhou@broadcom.com>
To: yocto@yoctoproject.org
Subject: Inline Python function name define
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
X-List-Received-Date: Wed, 10 Feb 2016 19:02:26 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cca803f8ff052b6f1397

--e89a8ff1cca803f8ff052b6f1397
Content-Type: text/plain; charset=UTF-8

Hi,

I want to manipulate a variable with inline python function in a recipe.
The code is something like this.

python newpv() {
    return 999
}

PV = "${@newpv()}"


The error is "name 'newpv' is not defined"

ERROR: ExpansionError during parsing /home/joelz/poky/build/
../meta-test/recipes-bsp/mytest/mytest.bb: Failure expanding variable PV,
expression was ${@newpv()} which triggered exception NameError: name 'newpv'
is not defined


What's the right way to create inline python function in Yocto recipe?


Thanks,
Joel

--e89a8ff1cca803f8ff052b6f1397
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I want to manipulate a variable wit=
h inline python function in a recipe.=C2=A0</div><div>The code is something=
 like this.</div><div><br></div><blockquote style=3D"margin:0px 0px 0px 40p=
x;border:none;padding:0px"><div><div></div></div></blockquote><div><div cla=
ss=3D"" style=3D"display:block;padding:0.5em;color:rgb(51,51,51);font-famil=
y:monospace;background:rgb(248,248,248)"><blockquote style=3D"margin:0px 0p=
x 0px 40px;border:none;padding:0px"><div><div><span class=3D"" style=3D"col=
or:rgb(153,0,0);font-weight:bold">python</span> newpv() {</div></div><div><=
div>=C2=A0 =C2=A0 <span class=3D"" style=3D"color:rgb(153,0,0);font-weight:=
bold">return</span> <span class=3D"" style=3D"color:rgb(0,128,128)">999</sp=
an></div></div><div><div>}</div></div></blockquote><blockquote style=3D"mar=
gin:0px 0px 0px 40px;border:none;padding:0px"><div><div>PV =3D <span class=
=3D"" style=3D"color:rgb(221,17,68)">&quot;<span class=3D"" style=3D"color:=
rgb(0,128,128)">${@newpv()}</span>&quot;</span></div></div></blockquote></d=
iv></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0=
px"><div><div></div></div></blockquote><div><div><br></div><div>The error i=
s &quot;name &#39;newpv&#39; is not defined&quot;</div><div><br></div></div=
><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div=
><div></div></div></blockquote><div><div class=3D"hljs coffeescript" style=
=3D"display:block;overflow-x:auto;padding:0.5em;color:rgb(51,51,51);font-fa=
mily:monospace;background:rgb(248,248,248)"><blockquote style=3D"margin:0px=
 0px 0px 40px;border:none;padding:0px"><div><div><span class=3D"hljs-attrib=
ute" style=3D"color:rgb(0,128,128)">ERROR</span>: ExpansionError during par=
sing <span class=3D"hljs-regexp" style=3D"color:rgb(0,153,38)">/home/joelz/=
poky/build/</span>../meta-test/recipes-bsp/mytest/mytest.<span class=3D"hlj=
s-attribute" style=3D"color:rgb(0,128,128)">bb</span>: Failure expanding va=
riable PV, expression was ${<span class=3D"hljs-property">@newpv</span>()} =
which triggered exception <span class=3D"hljs-attribute" style=3D"color:rgb=
(0,128,128)">NameError</span>: name <span class=3D"hljs-string" style=3D"co=
lor:rgb(221,17,68)">&#39;newpv&#39;</span> <span class=3D"hljs-keyword" sty=
le=3D"color:rgb(51,51,51);font-weight:bold">is</span> <span class=3D"hljs-k=
eyword" style=3D"color:rgb(51,51,51);font-weight:bold">not</span> defined</=
div></div></blockquote><div><div><div class=3D"gmail_signature"><div dir=3D=
"ltr"></div></div></div></div></div></div><div><div><div class=3D"gmail_sig=
nature"><div dir=3D"ltr"><br></div><div>What&#39;s the right way to create =
inline python function in Yocto recipe?</div><div dir=3D"ltr"><br></div><di=
v dir=3D"ltr"><br><div>Thanks,</div><div>Joel</div></div></div></div>
</div></div>

--e89a8ff1cca803f8ff052b6f1397--
