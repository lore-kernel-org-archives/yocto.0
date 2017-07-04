Return-Path: <lakshmikanthr36@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF79BE00C32; Mon,  3 Jul 2017 21:48:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lakshmikanthr36[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.43 listed in dnsbl.sorbs.net]
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
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBD51E00C30
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 21:48:34 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id b207so112003897lfg.2
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 21:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=i7JVwRkEmk1+GmUqB99bmX9ZV9KmSLdhvay81hcmMWQ=;
	b=QtamGypE6LyfMq29rlv189DJZIh0MhY+S9qEaKfqxW09kW8fZsvYvn+9m4nHfWaPUe
	RCC6j6U3q58FRhohVzYdx5npWOC2GKjO3RMmaR/pnRAAAwL5//6vbLLiWjBxkWYsdpJh
	XtkjoANkuRLxZgDvUhnUKJhqsmW7NYYERB6PrjBl+bOJdkl2RnKXjus5evjsPbKW070v
	YO4aeJV+GtlHduvS+WIta9k4wjSGtTDmULzGPyY80PaI6v5n+ZBFKacZ8tRGVeGMu6fl
	Gb0fdFa3UL6cGUkhaSidsV404tD3/oeNhj28GVhE+fv+nrtuZgLAOOETtBolEjXq99pl
	S6bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=i7JVwRkEmk1+GmUqB99bmX9ZV9KmSLdhvay81hcmMWQ=;
	b=tWGAanPi6Am0EqJXYNwU3XTgqxWappbpMqbg1+S96vGmy6hujUwJtsEJWKyxpKDfzj
	XfYa6CjDma08OFGl0ICXtfoSPzcW9mkX63XnlYaIxxCrIcollPhe+A28rR2QIlH09/eE
	0y4xkdZ1juOYOWazG6T3AiU84S6jBac0VXhpXKRMs3fdsWi4XgHX+YQbMVa7lYqySmAK
	vXfxG0ezFFug3TR6LwCZknPaolEEwPPCHP3H8KS85FuSq4QqTK/2sYGLiWcsB2qnejdq
	exVBJNj3W+Di7uS8j96NS/4udLNRFTgdAh16vlLoZc73TjpvbYMIu9MmfTbQRWGFDC+I
	GTpw==
X-Gm-Message-State: AIVw110MDvGSZTwRyN71ASPr8rtRM8NBBkWEldWodbcZJOQnHswG7dYS
	apqJQL0IeOI/z7p5YOTeZ2JtpWsiY75B
X-Received: by 10.46.70.9 with SMTP id t9mr3878352lja.40.1499143713018; Mon,
	03 Jul 2017 21:48:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.71.67 with HTTP; Mon, 3 Jul 2017 21:48:32 -0700 (PDT)
Received: by 10.46.71.67 with HTTP; Mon, 3 Jul 2017 21:48:32 -0700 (PDT)
From: lakshmikanth r <lakshmikanthr36@gmail.com>
Date: Tue, 4 Jul 2017 10:18:32 +0530
Message-ID: <CAKc9Xff_afmPZ2YgahWyMkQxOij5PQkapNKW4vQp7CUiHxUuNw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Got error while building boundary-eval-image ( adding Qt plug in )
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
X-List-Received-Date: Tue, 04 Jul 2017 04:48:36 -0000
Content-Type: multipart/alternative; boundary="f403045f798c7b56cd055376983d"

--f403045f798c7b56cd055376983d
Content-Type: text/plain; charset="UTF-8"

Hi,

I 'm trying to do bitbake using Morty branch with respective boundary image.

I was got error keeps appearing like this

Firmware-imx- 1_5.4-r0 do_fetch error.

Unable to fetch the firmware. I'm looking forward for your response.


Thanks & Regards ,
Lakshmikanth R

--f403045f798c7b56cd055376983d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I &#39;m=
 trying to do bitbake using Morty branch with respective boundary image.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">I was got error keeps appe=
aring like this=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Fi=
rmware-imx- 1_5.4-r0 do_fetch error.=C2=A0</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">Unable to fetch the firmware. I&#39;m looking forward fo=
r your response.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Thanks &amp; Regards ,</div><div dir=3D"auto">Lakshmik=
anth R</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></div>

--f403045f798c7b56cd055376983d--
