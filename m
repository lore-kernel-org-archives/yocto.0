Return-Path: <parkch98@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0ED9E00D9A; Wed, 10 Jan 2018 17:31:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (parkch98[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4533E00D9A
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 17:31:04 -0800 (PST)
Received: by mail-wr0-f182.google.com with SMTP id 16so755508wry.12
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 17:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yYAoj1CiWhAl5b4obrszTsatNlIhGjsRzENk5/VTNR0=;
	b=C0qhnTlSgJMoLPVbARN6eGPyilDwuln7+XEF2lcFjQqf+8vog96GyK1c7EOjVYeDip
	g3au5AxgtfR8YGPNRFlgHkTacYbKE0zxgKI+bX0hy8TEfB7OJwBoZXtSMQpdkfOrKIql
	9SAKuxDjKtLwUFrtZ6OA7k3CoANZZgrC5/N/bJvQdaIDE6Or2yya6HcnON37Z10an2Rn
	6omYrFcwXnXm7AD0Uf1XmlMJJhbg03fybYD9FtHaEB+xIrgzaw7FBsm0ku/U8d515gi8
	Nk51XwmaDl3gqBWjvYas8sctbZJJva2xgZ8LcgcEddvSxwFPP9CQOUpscWXMbu8M5+6N
	C5vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yYAoj1CiWhAl5b4obrszTsatNlIhGjsRzENk5/VTNR0=;
	b=l/SRxVesVYs1KeH3cPoN7mOi623kaayy5+eKhSsGqCVt7ycq4kqlMuEC7RBlRrGmz1
	8ADcsCntXemercpCoZ/OaYUKOQDOFxqsQe4eQmk244/Sr/iPrKjSqxRNjKWCNXCjDXC4
	qzgYKOz2RZh1ow0uNOvvLVzlsqUWQp/GZJRo6q2PxTRVwQqOgIaXIWALyuKob15eiHpM
	LfBBTBKFH6SY16fTawVwI1LSvgxX/Adx8MKovqIjRNGxhKu1InffgAH1XOe9mHGJkK1C
	1sz7FXvBnA8Ufw8Vp1NxfLBImWZrhxEQnC7ehJyT2Q/n0EM8uGEt9lP/4nuufVJUCikE
	OtdA==
X-Gm-Message-State: AKGB3mKxsAU0mUyuAw7aCVuFvdcg2hFv4aYJmquvGYRYmNFN4hKxje5u
	6xV7s/d1cTHWq3OB2pkUsBrNbKE3nOkP5KY+b8s=
X-Google-Smtp-Source: ACJfBovVe1qGZn37UPLrLdE0ondbWd+NUIFUeLDPa7l5BJRoBFcfRYQq59TlkQtw+DlLFJ3CqaN9z58/87SCGo3w6a0=
X-Received: by 10.223.134.26 with SMTP id 26mr17519596wrv.218.1515634263618;
	Wed, 10 Jan 2018 17:31:03 -0800 (PST)
MIME-Version: 1.0
From: Chanho Park <parkch98@gmail.com>
Date: Thu, 11 Jan 2018 01:30:53 +0000
Message-ID: <CAPTzV16hShVj_HsC4Ykd-HC_J+hGewG+DQYyB+=kD1mgsu56gA@mail.gmail.com>
To: "philippe.coval@osg.samsung.com" <philippe.coval@osg.samsung.com>,
	yocto@yoctoproject.org
Subject: [meta-oic] Question about Iotivity 1.3.0/1 and fixes status
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
X-List-Received-Date: Thu, 11 Jan 2018 01:31:05 -0000
Content-Type: multipart/alternative; boundary="001a1146b7b8e479da05627619c9"

--001a1146b7b8e479da05627619c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Philippe,

I found you already prepared iotivity 1.3.0, 1.3.1 recipes and fixes in
your github tree[1].
I wonder why you don=E2=80=99t post them in the meta-oic. Do you have a pla=
n to
upstream them?

Best Regards,
Chanho Park

[1]:
https://github.com/TizenTeam/meta-oic/tree/sandbox/pcoval/on/master/review

--001a1146b7b8e479da05627619c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Philippe,</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">I found you already prepared iotivity 1.3.0, 1.3.1 recipes and fixes=
 in your github tree[1].</div><div dir=3D"auto">I wonder why you don=E2=80=
=99t post them in the meta-oic. Do you have a plan to upstream them?</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Best Regards,</div><div dir=3D=
"auto">Chanho Park</div><div dir=3D"auto"><br></div><div dir=3D"auto">[1]:=
=C2=A0<a href=3D"https://github.com/TizenTeam/meta-oic/tree/sandbox/pcoval/=
on/master/review">https://github.com/TizenTeam/meta-oic/tree/sandbox/pcoval=
/on/master/review</a></div>

--001a1146b7b8e479da05627619c9--
