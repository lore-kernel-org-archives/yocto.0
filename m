Return-Path: <nishantpoorswani@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47C4FE0053F; Thu,  4 Oct 2018 13:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nishantpoorswani[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8DB7E003D9
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 13:06:41 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id c18-v6so10485374otm.3
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 13:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=uOxzMEwUlHA397NuDU780vT07xzrZh19zKhqjJ2LQns=;
	b=mqBDatWrECB37DVj6LAQUFcXZ9BPyEvR/ZAC7aizT2OrOmBUMSFt56Np842EaxZX/S
	dF8p/Rrmd+FHtqUNmFTQ9J8I1ENhK5I3DXf1IfW7GNI7tJMNSZ2usQZ6cYqsCpt8Nek9
	lTwFFKXZi/rScShbtdfAKpkyUP1N+IiH5rTJzCB4i3/t+Lza+k+ZQHEV7PEWgdHhRueg
	SGf82b/0jYJRYWsMHXyazDpzHZe9HMWIxgrRX8cHVEF+6PNXTvEdI5aOHnIFVcCL38qe
	NlaYuDvQzKUe3zF4xjnsQLw0yYTWLXcH/tQeXK0uTYh0npFVuM7/wlALe99EBQOJuCvg
	YkjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uOxzMEwUlHA397NuDU780vT07xzrZh19zKhqjJ2LQns=;
	b=I/A7Tdy7G8z50YeMJYR7wMnuGhoC3Dg3lO3CxSmu8ATjHGgD+aYut73ig0xNwlikFU
	dahAQToIcqw+ibfEjU1Sx0J++q9V7Tmgr0WqSVgZpUFAf7uQ7nn2hAmucQt0mnN9Txv1
	D0hOYjz0uHd1DjDXCs6fxDnLlz/S3umc6M1Xm8X5aPlgxlO7mF/taCEAsOZe1Dj4P4lD
	mOh/qbhmwJl2ClehdAnNDKdeq/lesU8X+H1qCsAHzgFDXbaePxQArOxnfdIbI/xmWh6J
	iwmtLwLu80EtFbkT+Fh5+ss2FzXWgoJtjcb3uvtcuEXSVAPKDyx5irKQCIrHAhjsdd1f
	7LIQ==
X-Gm-Message-State: ABuFfojnfvJbP+rCF0mkjAiGn/ahQlZ/EZUxUZY02mdnM/vqLFzlxO2v
	nKqf5OqDQ8Lvlmzu0ywlu2lP1kcGJLddZQ5lwG7dEaa3c1g=
X-Google-Smtp-Source: ACcGV62SJuhMWxrq84Bq3tjPdzXt4YxJQcs7gKURNxVKmj8AIYBPQ2jywNj3mqEJpfCZ+yYkM8mKgCY0y6a28C1y42I=
X-Received: by 2002:a9d:1723:: with SMTP id i35mr4928423ota.223.1538683600929; 
	Thu, 04 Oct 2018 13:06:40 -0700 (PDT)
MIME-Version: 1.0
From: nishant poorswani <nishantpoorswani@gmail.com>
Date: Fri, 5 Oct 2018 01:36:28 +0530
Message-ID: <CAN70yQVCzQs-yt7M+J-bbuiaYJy4-hr+ceZFxE_xX6M1L++xGA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Python-tkinter
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
X-List-Received-Date: Thu, 04 Oct 2018 20:06:42 -0000
Content-Type: multipart/alternative; boundary="0000000000007489a505776cb15b"

--0000000000007489a505776cb15b
Content-Type: text/plain; charset="UTF-8"

Hey. I want to add python-tkinter into my image.
I've added in my local.conf . When I try to use it I cannot import Tkinter
into my code. Can anyone help with this? I get an error If this fails
Python may not be configured properly. ImportError: No module named
_tkinter. Any help would be appreciated.

--0000000000007489a505776cb15b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hey. I want to add python-tkinter into my image.<div dir=
=3D"auto">I&#39;ve added in my local.conf . When I try to use it I cannot i=
mport Tkinter into my code. Can anyone help with this? I get an error If th=
is fails Python may not be configured properly. ImportError: No module name=
d _tkinter. Any help would be appreciated.=C2=A0</div></div>

--0000000000007489a505776cb15b--
