Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF57FE00867; Wed,  5 Apr 2017 05:46:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CEE6E006CD
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 05:45:59 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id r203so13410270oib.3
	for <yocto@yoctoproject.org>; Wed, 05 Apr 2017 05:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ov09vTHbd+8NlnYNjm09/Ad1/ODTt3BR19CGtPBUqoI=;
	b=cw/Thpcc8RraL7MUQmvwupRNVKAYLeSflg5h2OuEA5tvSYXYe1VIHeY8v4Di9kln7l
	/WBRqXUGw8yVQpjDQENxxGdoFfzXZo5bVsRocnkPnu66qDm4kaspTM+Ra5BQs/IM38PV
	NhNrfGCQEwrEOZ1yi4hjXKXnu268Vx2gbSULdz7zcOygt3bYVxlTsgc/09RykcZBUzeU
	Tq2wmBxitNahmycgY70nEb+EUy3QTtTx32ZAVT47CTJJKMjyA/7mVn8ngVFw1wMZHE9F
	U/CgeY8aJrthJ3fAsKnS8xyDMtcrErQfBN3V6pk8RcggJ2dhk1O1zGxdHepR9SQeZ59d
	88rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ov09vTHbd+8NlnYNjm09/Ad1/ODTt3BR19CGtPBUqoI=;
	b=J9OBl4VisDGrB3sIuLVP+c8x4ou+4XYo/qG10rALQ5rPpbcUGJEy0tf1N+hFJDnTXO
	ocafXbMEjBeAtJIYy1l6v8yTvVAS5RRXAijobVGXTLnMXyKBebWrnOGq1ay/thOrna5P
	RixvvciOpDYWuMgKMs1oSlbRNvkpu+0UabUz7cte6dFZDSHYgn75EXVOXQddoeVJ+34f
	Aw66xc8RYaZodiRnSKWk3vaZhnd5A8RZxxfzn8McPOWoaaiKXznFvOrWIq+HlyrE060Y
	+J1qb2qMg4rUT6vuDjm8Mp7/ODQ3apvRksfvjDtUaHRPW9FGzR/A1H66GACtgEqh1ZS5
	XCpA==
X-Gm-Message-State: AFeK/H2yIUaPDaJqoRwQ+EbTQTSnrh+1K/LNOnRXE01ecRUx+BHC7vNzSggYgOGUyBnto6/xKtm7ifMOTJYR5w==
X-Received: by 10.157.36.226 with SMTP id z89mr16097691ota.173.1491396358136; 
	Wed, 05 Apr 2017 05:45:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.219.109 with HTTP; Wed, 5 Apr 2017 05:45:57 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Wed, 5 Apr 2017 14:45:57 +0200
Message-ID: <CAFq4t4gV3N8Z0epsq7K5dprhsBHu+Yk-UnNAQL4QF68AxceVjQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: GNU/Octave
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
X-List-Received-Date: Wed, 05 Apr 2017 12:46:02 -0000
Content-Type: multipart/alternative; boundary=94eb2c04ffa425a73f054c6ac6c7

--94eb2c04ffa425a73f054c6ac6c7
Content-Type: text/plain; charset=UTF-8

Dears,

do you know is there recipe for GNU/Octave "
https://www.gnu.org/software/octave/"?
Is it possible to get it running on Yocto/Linux machine?

Thanks.

--94eb2c04ffa425a73f054c6ac6c7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dears,<div><br></div><div>do you know is there recipe for =
GNU/Octave=C2=A0&quot;<a href=3D"https://www.gnu.org/software/octave/">http=
s://www.gnu.org/software/octave/</a>&quot;?</div><div>Is it possible to get=
 it running on Yocto/Linux machine?</div><div><br></div><div>Thanks.</div><=
div><br></div></div>

--94eb2c04ffa425a73f054c6ac6c7--
