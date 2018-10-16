Return-Path: <marwen.brikcha@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 734E7E00B6C; Tue, 16 Oct 2018 03:16:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marwen.brikcha[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 122BAE00AD1
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 03:16:27 -0700 (PDT)
Received: by mail-it1-f175.google.com with SMTP id l191-v6so32446434ita.4
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 03:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dIR/kg5nZNQlylMuAZxi10gIgk2mRJJCAk1o2ugkrIU=;
	b=A+/wMOnMvTEd3mC9WMWmTFmT2e3XK2br1ExfUSB+u/H/mnXqYIe6yXeGJy/cmLBsfk
	0Ru/L/qm1E8eMSWpT6ORlwKNRKCaRZhKPdcSf5MGScVztIbOhCH9wZecDsjRt0aHEh9Q
	OBQnjIXwWTeAfKP5OsJ5uqxIAJfk5aXaqSDcM3zM6j7heeIcpOEifMhq98vs64oHcxtE
	fYLH03SJHG/FP7ra3fhJKvJ9SMWkP2P4UEO4WHWGiKwV0ffzsNldpGEVlM7lq2SfGBa0
	7WkIJj3rXnNPVN8VWGLV0Yi6TMLLJ4xfBSexPwvkMsaFSEE3A4PzWi0XRbTl7C+qWUd/
	vbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dIR/kg5nZNQlylMuAZxi10gIgk2mRJJCAk1o2ugkrIU=;
	b=iQO3lKNtg6yS9uDhO/WKyy+k4xDqQBldHpL/dwfa3nsKb0lWdr4OcOsg+Xbmgw/dG2
	SwnmVXGCcS2vOhh5cng328y43m8fTzYhfWQBebAQcSfuKYYVZUJWpN4ngx04TkNhq+ce
	+azJLC9VufGmPW0WoHuR3zH+zvUAfvWIvNrhGvSkrkm7dTqeWWAXldtIs7eCCsOX/pFd
	ohrirR1LDKb/PB6aWWhycwhp+1beKbeQpY4VLR2gOJpgbnlWlRziS5eczk43wGWRSVkH
	jjFvcSqOgC4RFD0+KYaiQUO15dCI9NWMfvfiJDH48WAnP9OuH+9BqJpTwg0OSL3J4N97
	AJ6g==
X-Gm-Message-State: ABuFfogZ/I1p2jgajDP8l0LjrHTnnpwP9eco/mbuOLHECd/DHDpfE5So
	EpANjTcoAY+Dj8tCwarh3mlUkhbrXSi9geCBM+P55VBL
X-Google-Smtp-Source: ACcGV61UYq1bUqt/ZnjZ7PXDw8LlvgdLh9ZVgJNGjhKRwqnN6kkReqxcltWuVFXQhEO232eSpMBjPFXZVhzPBd3d9dI=
X-Received: by 2002:a02:7b2c:: with SMTP id
	q44-v6mr17255992jac.27.1539684987177; 
	Tue, 16 Oct 2018 03:16:27 -0700 (PDT)
MIME-Version: 1.0
From: Marwen BRIKCHA <marwen.brikcha@gmail.com>
Date: Tue, 16 Oct 2018 12:16:16 +0200
Message-ID: <CAFjmEbDYvLenPW1D4=x+HxOmC4JUiJ4495xCbYzp6BZkxbAzwA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Poky 2.4.1 - Remove python3 from build
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
X-List-Received-Date: Tue, 16 Oct 2018 10:16:28 -0000
Content-Type: multipart/alternative; boundary="000000000000ba1127057855d886"

--000000000000ba1127057855d886
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm using Yocto Poky 2.4.1 and bitbake version 1.6.0 to build a xilinx
embedded linux for zcu102 board.

I've integrated OpenCV libraries on my image.

So, I want to remove python3 from image build .

Can you help me here on how to do that ?

----
Best regards,
Marwen

--000000000000ba1127057855d886
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m using=
=C2=A0Yocto Poky 2.4.1 and bitbake version 1.6.0 to build a xilinx embedded=
 linux for zcu102 board.</div><div><br></div><div>I&#39;ve integrated OpenC=
V libraries on my image.</div><div><br></div><div>So, I want to remove pyth=
on3 from image build .</div><div><br></div><div>Can you help me here on how=
 to do that ?</div><div><br></div><div>----</div><div>Best regards,</div><d=
iv>Marwen</div></div></div>

--000000000000ba1127057855d886--
