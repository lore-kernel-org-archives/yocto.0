Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D95E00854; Sat, 14 Mar 2015 05:53:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.180 listed in list.dnswl.org]
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BABDE003FA
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 05:53:14 -0700 (PDT)
Received: by obcxo2 with SMTP id xo2so7608334obc.0
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 05:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=ASMhOlTp9hyMYFWQdW4SRynyYndP4+st2MvvucUxgks=;
	b=fc9BoqNhApTf9bobGH8KzYQIeuBn1ERewNf6k2nS6A7ndRugvVNhFpr6jWOf1vW7LF
	889Kmq8zus+yBOI+s78EjjxkNh6LmYrgImkP2cUUm6K4nLI2E9MqEH04dLcDTnv2LKQS
	Sm/Aw2ImlGxxOK+v+srmX/W+Xf9VxCquTGslAeZpMZlv6NI+xkVsXR5OviwEdQR1kYMu
	wFq242nWQeDXZMctI/rTvBMiu6MEaemdZFWX+p/jzU00N2DtAyjUrmVoe+yYXVFvjJV+
	IGftBPJZxyW+vn8wA17CA5wgP+REWOiKdp3TpJTqZHfiqkd3MFouMESSYp1b/O4BEKSr
	rhXw==
X-Gm-Message-State: ALoCoQmCIz0iLS8iBcDsObZ/NoPOlEI3ILZa9wqwx9zlI64To2//DZzY7b5E7TT4edL5E73CT26d
MIME-Version: 1.0
X-Received: by 10.60.115.99 with SMTP id jn3mr41948549oeb.68.1426337594393;
	Sat, 14 Mar 2015 05:53:14 -0700 (PDT)
Received: by 10.60.102.104 with HTTP; Sat, 14 Mar 2015 05:53:14 -0700 (PDT)
Date: Sat, 14 Mar 2015 18:23:14 +0530
Message-ID: <CABNKip+YOMUvYR3qQtpb2Fk9iWpXjOQo29ktF_WtdQxwsEotdQ@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: Qt with X11 server
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
X-List-Received-Date: Sat, 14 Mar 2015 12:53:17 -0000
Content-Type: multipart/alternative; boundary=089e0116126ea4dfcd05113f19e3

--089e0116126ea4dfcd05113f19e3
Content-Type: text/plain; charset=UTF-8

i built qt4e-demo-image without x11 server, i choose to build qt4 with x11,
so what are modifications have to do for this build?

-- 
thanks and regards,
parthiban
      +919790329795

--089e0116126ea4dfcd05113f19e3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i built qt4e-demo-image without x11 server, i choose to bu=
ild qt4 with x11, so what are modifications have to do for this build?<br c=
lear=3D"all"><div><br>-- <br><div class=3D"gmail_signature"><div style=3D"t=
ext-align:right">thanks and regards,<br>parthiban =C2=A0 =C2=A0 =C2=A0 <br>=
<div style=3D"text-align:right">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +91979032979=
5=C2=A0=C2=A0 <br></div></div></div>
</div></div>

--089e0116126ea4dfcd05113f19e3--
