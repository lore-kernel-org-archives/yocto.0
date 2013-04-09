Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F366E014AE
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 04:21:32 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id hr11so2026486vcb.36
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 04:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=rxHlyazt3WHNhcJW0lSkJgTunCoNmutWrZ4bOoC2rCQ=;
	b=NZDFD9+GzBAlgltItdRvsYMaPhlAiOoB9R1v2NK/hPfsgqfiPQ2QqB62PPHC8gQ2zq
	KboHE+UUfvpiP3MYGJDeF4CGly5B1o3a6C6ie2RNQokljfpjfqhobVEO7XMYKNFnzQ8P
	iAa3kuWhOgC8io0P6bc3oTkl4qZ+uF3NdT70hNkovALG7FA//PDUrI6SEhyoYdqVhpU3
	CvYJjpF5eqj4Ax8vJaKFMgaf6UM/FmVnRsUVhzplYOlPweookij5bg1GT9hqnG3WeqSW
	lnI/ok6iGREdzCRLmzPb7pSV1t6ZoTpicTg9QXYifynhQ0+Fx7o/fAErE9qobKsWn78O
	i3Cg==
MIME-Version: 1.0
X-Received: by 10.220.39.69 with SMTP id f5mr19065374vce.45.1365506491839;
	Tue, 09 Apr 2013 04:21:31 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.70.141 with HTTP; Tue, 9 Apr 2013 04:21:31 -0700 (PDT)
Date: Tue, 9 Apr 2013 13:21:31 +0200
X-Google-Sender-Auth: 9MOkOuLpGQFzqvWx5xXFxXM8xyI
Message-ID: <CAFMfyzLjJPfRY++w1WPn24rHu6wJr_H_V9D8MZhUXc5N1u8XWQ@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: yocto@yoctoproject.org
Subject: systemd vs sysvinit
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
X-List-Received-Date: Tue, 09 Apr 2013 11:21:32 -0000
Content-Type: multipart/alternative; boundary=bcaec54eebba627a9504d9ebc135

--bcaec54eebba627a9504d9ebc135
Content-Type: text/plain; charset=ISO-8859-1

Hi, I created two images first by using sysvinit and the other using
systemd... The image using sysvinit works perfectly but the image with
systemd works only from the second boot. In the first boot it hangs. What
could be the possible reasons?

Greets,
Satya

--bcaec54eebba627a9504d9ebc135
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I created two images first by using sysvinit and the o=
ther using systemd... The image using sysvinit works perfectly but the imag=
e with systemd works only from the second boot. In the first boot it hangs.=
 What could be the possible reasons?<div>
<br></div><div style>Greets,</div><div style>Satya</div></div>

--bcaec54eebba627a9504d9ebc135--
