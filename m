Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ED61E008E4; Thu, 29 Mar 2018 01:08:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot0-f170.google.com (mail-ot0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5946EE008A2
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 01:08:32 -0700 (PDT)
Received: by mail-ot0-f170.google.com with SMTP id o9-v6so5567126otj.5
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 01:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=wfF6Fec2oeqBwHtVg/KDayrQROo65D6NCkC21cpd7Zg=;
	b=EHMca5Spn6zyR2/bZpMz6yExP/r8PjBO3Or7HPIjR4ZcoAdQJDkv6S9Z8/kMh/2Qis
	DJLJ/6+bliK6GRBuXzZuuckblWqNZ4m7kbXAY+fgKGYSB2V1ZjnmAx+/Z0NlKAyji6Iu
	cFJUu9kTFaL5SYQ+RATiuEzV/UIjFPw4EeYTpRJNpODRdrgnzJ5MZ5sTzpINKjnJMnf0
	vb2Uhl3iORBFKo4JJjqaVcb8FiZ1+0zo3DPjkzXBIk9h+TKh+aknxiajqfZD/+P3okva
	b3aFVoeLqK9it4YYErtPH0DjDIaKDE6wdkFlzDOy6pkNM2ScQdl+wSNGXy8gsv0uIyBe
	fn4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wfF6Fec2oeqBwHtVg/KDayrQROo65D6NCkC21cpd7Zg=;
	b=dnEIQFzJIRTfA0WQlEQ0TqBM3IHylFE82H5eyP2TfVpA0GSKqFc6qdW5ACVPsAbJ73
	lYudYQm7IQTP5lmMETN46ihl9ToPyy822sKnL1gJA1VLye8XVcJKYU65964yLnk6h15O
	W23ARhpvkqtzyMBbj0nRInxcXwf6RL3wIwutr4dLkljJ1HXHEw0BhamnpOQ85lzcRce5
	35UbcklOypwqvaKAPlO7PREV99o08doxdAmrPfDEv/MXjaKRgF6QYodT00daQB8LVGvU
	3eOugpC+W/A+VsPKbkyKAxc7jJiQMYbdJ1ArcP36rvFYOeFSROAAmEL1IfYwUDrw8P6v
	pBJg==
X-Gm-Message-State: AElRT7GYZtDnEsjzR/dyu3Li8J78zYE73upE8GVqGZ1kwdAKvdDwlR/u
	4gHpt2F5UB3zWUKZJdmbmJe/gyQdUqwD6At7ySQ=
X-Google-Smtp-Source: AIpwx4/NLWLWxrxDb/Ruu+DfMHNS4QmPFqQbMg2Zk+O7KhkciJpoPnCacwchyutDhUljZ2MgditlO4mG+5NygAQWy7w=
X-Received: by 2002:a9d:509:: with SMTP id 9-v6mr4456780otw.342.1522310912196; 
	Thu, 29 Mar 2018 01:08:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.77.209 with HTTP; Thu, 29 Mar 2018 01:08:31 -0700 (PDT)
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Thu, 29 Mar 2018 10:08:31 +0200
Message-ID: <CAEhQi8kP7X9yc04d33Ub+ukGR-5fegP_zG=sFB0mRmfiD7tVnQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: What is the preferred way to add build data to os-release
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
X-List-Received-Date: Thu, 29 Mar 2018 08:08:34 -0000
Content-Type: multipart/alternative; boundary="00000000000028c70e056888a12b"

--00000000000028c70e056888a12b
Content-Type: text/plain; charset="UTF-8"

Hi,

I see a lot of systems making use of the /etc/os-release where they put in
build information like sha, build numbers and version numbers. When doing
that you will encounter basehash errors and taskhash errors from bitbake in
my experience (or I might be doing something wrong). To remove these errors
adjustments needs to be taken on the os-release recipe.  These adjustments
will likely result in re-generating rootfs everytime. Is this really what
is the preferred way of doing things? If not, what is the preferred way of
getting build data included in the os-release?

BR
Mans Zigher

--00000000000028c70e056888a12b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I see a lot of systems making use o=
f the /etc/os-release where they put in build information like sha, build n=
umbers and version numbers. When doing that you will encounter basehash err=
ors and taskhash errors from bitbake in my experience (or I might be doing =
something wrong). To remove these errors adjustments needs to be taken on t=
he os-release recipe.=C2=A0 These adjustments will likely result in re-gene=
rating rootfs everytime. Is this really what is the preferred way of doing =
things? If not, what is the preferred way of getting build data included in=
 the os-release?</div><div><br></div><div>BR</div><div>Mans Zigher</div></d=
iv>

--00000000000028c70e056888a12b--
