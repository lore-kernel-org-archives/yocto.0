Return-Path: <dlohar2009@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3668E00BC4; Fri, 16 Oct 2015 00:22:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dlohar2009[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 984D1E00B57
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 00:22:45 -0700 (PDT)
Received: by qkht68 with SMTP id t68so50449757qkh.3
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 00:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=of6CvgaPmnJuBlyVsGuWHBE3xoKSLQqlnlCrjf7W0xw=;
	b=img5Tpz7hnFn5bYaBHt83dGrPgvPASExjOlPfzEomnHwXeFIe//S//BKjg+AOfchIe
	mV8Uwyg9kjY/t8BcyXhBkp1IPcpgk7fNKiO9CjjGyONzCPmwmYwBOu2TW7FEOMhhtenT
	P4aBcHtY1WBq5CsxRD+q7bcq1/5Y5LIL/OpXBV8VdXfV1DhTZOpG2MVzXKcakKawacuy
	2BFpisnSTyzx5+GatFq67vz0SjXhhmhg8c9OUBvw4kTM7vOBpLYia4Z664BlPVKVGzX4
	VhFUOjTvMtZofyKQwWTwBb2fpKJQR2F/HI8v7DUZnRd++A+h9eoVlHjgsdi+Y7VOssG1
	ASnw==
MIME-Version: 1.0
X-Received: by 10.55.209.93 with SMTP id s90mr17424630qki.55.1444980165266;
	Fri, 16 Oct 2015 00:22:45 -0700 (PDT)
Received: by 10.140.39.145 with HTTP; Fri, 16 Oct 2015 00:22:45 -0700 (PDT)
Date: Fri, 16 Oct 2015 00:22:45 -0700
Message-ID: <CAAm4naA+NwGmhvX=PJMP+JMK4ahWjNdh2XW70bNgveE_mpwxTw@mail.gmail.com>
From: Debasmita Lohar <dlohar2009@gmail.com>
To: yocto@yoctoproject.org
Subject: Queries regarding yocto dual booting
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
X-List-Received-Date: Fri, 16 Oct 2015 07:22:49 -0000
Content-Type: multipart/alternative; boundary=001a1147a55e7553fa052233a903

--001a1147a55e7553fa052233a903
Content-Type: text/plain; charset=UTF-8

Hello,
I am using De2i-150 board which provides a yocto iso. I have installed
puppy linux before yocto and now I want to install yocto in the unallocated
portion. Basically I want dual booting. But when I tried to install yocto,
it just started from the live cd and did not show me any install option.
Please help me regarding this issue.
Thank you.

Debasmita Lohar

--001a1147a55e7553fa052233a903
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I am using De2i-150 board which provides a yoct=
o iso. I have installed puppy linux before yocto and now I want to install =
yocto in the unallocated portion. Basically I want dual booting. But when I=
 tried to install yocto, it just started from the live cd and did not show =
me any install option. Please help me regarding this issue.<br clear=3D"all=
"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div><div>Thank=
 you.</div><div><br></div><div>Debasmita Lohar<br></div></div></div><div><d=
iv><div><div><br></div></div></div></div></div></div></div>
</div></div>

--001a1147a55e7553fa052233a903--
