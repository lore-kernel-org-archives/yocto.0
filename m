Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C44DDE009E7; Tue, 21 Aug 2018 03:28:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pawan4749[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51559E006AF
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 03:28:07 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id q11-v6so31096066oic.12
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 03:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ke3YB0+K+ShrU41Notk8/upuCG3PgyOeXPfGIQBeUrs=;
	b=vWyeLlkCrlAMbYmEXD8ZBeOPltrJZFfwXsySrcVgItkRWKRK/yZ8xx/4OxICV1lzUF
	6M+FbPMFEl91c3iCVUaX1VQKC9BEKAORbAojL++iVB+Q8EwQjjYOsKorqo6FF9eCJRfJ
	sGUeU6wDOsDnTmhbixQEo7UzFnzmwO5LpRFf6d72dk6VXdxR+Xf2y/2oMcqPQKzUSYD/
	NRtbpx3zry6CaDEYrGoDeeigHObD/RKTjgO5YKJFJauG2khuL9RmkV1g9y/Pfrsou+ld
	jwR1ZLD4dAUxRokxk3Nqh0R1igpWNqCy9WBxuNQ7+W5puCiXp3pc9uyT5tG8/qO973vl
	hGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ke3YB0+K+ShrU41Notk8/upuCG3PgyOeXPfGIQBeUrs=;
	b=FU96NEj/IJzNC3imRC9sllKV8O6kjNEjpL8J/E26kPoSJfSD5AHa7ANUIt+sfBaoL7
	ODI1+i537yC7EPVC6a07kDbX5G/7DjDubMczD1c7Dcwfe8dT0ID7Yi7bClZ0rnfktFW5
	vgZLTom9LQqoJ+bsGf3remWF0qYh1Q88+3Ens4ymRqF3uE0DAvibxMmpqatNETI3Kx4t
	PkDSmnHb93fC7mwVqFtksVQDSMLYWVjeWNQUFy6rEn691mXlDf2647rwvai6MJwKU05Y
	86aqMAR03Ts8wcaWgyPoGCqK6jzZRbDNBWqMQlg4NMyg4ttmgn5zshX3Y41nmAce8bEV
	MF3w==
X-Gm-Message-State: AOUpUlHS9ybkfFe3g8RLlnO7UI4b6SeXKWeBcnd4VTgddncDk0HFISvw
	if40R43V4jQqvaUTU1gnHZJBQGly+azNods1FLYeYg==
X-Google-Smtp-Source: AA+uWPydJ0wb6Gtkd/tATOIFBa1DKre6KgGauMc2V4dZvoZAaUV63hNCgCz/ZY2khVK6yvO6xUDTIfETxm2eVqG2lAM=
X-Received: by 2002:aca:a6d4:: with SMTP id
	t81-v6mr16718952oij.113.1534847286374; 
	Tue, 21 Aug 2018 03:28:06 -0700 (PDT)
MIME-Version: 1.0
From: pawanKumar <pawan4749@gmail.com>
Date: Tue, 21 Aug 2018 15:57:48 +0530
Message-ID: <CALd6x_uaSPoQu6DPi1J3SgfZ9CmMpRsVgJ6u=EposgXUK7CSeA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 21 Aug 2018 23:54:15 -0700
Subject: Cloning
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
X-List-Received-Date: Tue, 21 Aug 2018 10:28:07 -0000
Content-Type: multipart/alternative; boundary="00000000000049f70e0573ef7bb1"

--00000000000049f70e0573ef7bb1
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm new to this clearlinux environment and I want to know how to clone poky
in clearlinux and generate image.

Please forward any link regarding cloning and generating yocto image in
clearlinux.


Thanks,
Pavan

--00000000000049f70e0573ef7bb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;m =
new to this clearlinux environment and I want to know how to clone poky in =
clearlinux and generate image.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Please forward any link regarding cloning and generating yocto image=
 in clearlinux.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Pavan</div></div>

--00000000000049f70e0573ef7bb1--
