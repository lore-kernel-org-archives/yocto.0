Return-Path: <haiqing.bai@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E8F3E00C5F; Tue,  1 Jan 2019 23:05:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (haiqing.bai[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.44 listed in list.dnswl.org]
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35645E00B9D
	for <yocto@yoctoproject.org>; Tue,  1 Jan 2019 23:05:02 -0800 (PST)
Received: by mail-lf1-f44.google.com with SMTP id a16so20389707lfg.3
	for <yocto@yoctoproject.org>; Tue, 01 Jan 2019 23:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=h2zEBSvnZ0BXjUjP44BNDe7PHHrXg9ltEd8Q85F6fF4=;
	b=FpKhFCR0I3rKfipPOTw6RxygWED0wf1Kmd6bDZS/7lrMjVIqvcO0QIVNVh2bQYw285
	Bv8rBJ6Fpt8alXXfzuDYXt5kkHlxwQFtVhZ0LF94sS9q3vERSq8tv4x+v1lWbM7tBiw9
	HRMgjcW6Z4KEdgy2LtMf4mCU43AxzjJ9Eod1HDXZPlUcUuSGJst1OSQCQAIwXxzmUkID
	u5+sEolJI47yi7bBPrd4q2HeGQoNfaq0909vEH/cm0vB6LK+nKb0Tu+TK/ZW0oxzhanz
	OOyp4BBT9bm+Qx0tClPNV7fPwPXuFRtNrBZu29EfWC73x7/eUPQ9sTY+9zb3otypvt3b
	NxSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=h2zEBSvnZ0BXjUjP44BNDe7PHHrXg9ltEd8Q85F6fF4=;
	b=PrY5N/10EwgOCKUbJLbIp+acsV4RceXtcrtt4jpsJoKQVoBkZHaD9VWFaCc/SKkrXR
	XoGir3fleJ/UI9mtwH22N7qTxvwhM+XCdnf7xHq6GpgynjEBWpxLUwQn4OVj1yn5GyM3
	1F1kOK9DPgbyU6udlDirQ9Cbs+e8HXLkfCFGHhTsv3aUWwoBMV1CKvZGycbUhV23DQWo
	l5kCEZw5yQBF3yrKfziazKQpUizYUqhQD7Xh91T8pcKrDU6CSDl8n+xwXEDsNJJmvUMa
	GGUZB8Wy6+8lCiahlC4ObKK6/mkUEdB282edSE4LPbIoOG7lQfPrfeDuRkjOYEuNCDxv
	y5dg==
X-Gm-Message-State: AA+aEWY5KbCH9uLNJLmMGggAkYPxFIgqE1L6IStNXQwwys20uVWq7C8c
	eHwmQHccY5ihranhgbjgC06/R65o9Vt8KxkigEExvg==
X-Google-Smtp-Source: AFSGD/Uww1zOVKgUfNw5DSXr2fUzjH2EspTKj6Y5BeO2JxIthMYzS1Vv3s8J3XMoXCZUiJFnpuqmvP2P5432qHdhOYI=
X-Received: by 2002:a19:690d:: with SMTP id e13mr20956523lfc.84.1546412701619; 
	Tue, 01 Jan 2019 23:05:01 -0800 (PST)
MIME-Version: 1.0
From: bai xiao <haiqing.bai@gmail.com>
Date: Wed, 2 Jan 2019 15:04:47 +0800
Message-ID: <CALf4YCxyTRp5M=4DjeOGtQpjNWdnHy+MgyjVYeaSpM2mAfcNMQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 03 Jan 2019 01:08:45 -0800
Subject: The Yocto compatible of 'meta' layer with script/yocto-check-layer
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
X-List-Received-Date: Wed, 02 Jan 2019 07:05:04 -0000
Content-Type: multipart/alternative; boundary="000000000000c19ada057e74437e"

--000000000000c19ada057e74437e
Content-Type: text/plain; charset="UTF-8"

hello,

     I am not sure whether this email list is right list to discuss the
question about the Yocto
compatible of 'meta' layer when checking with 'script/yocto-check-layer',
the error message like below:
ERROR: meta: Can't be DISTRO and BSP type at the same time. The conf/distro
and conf/machine folders was found.

     My questions are:
      a. Is this mean that 'meta' layer is not Yocto project compatible
even though it is the base layer in Yocto poky, thud project?

      b.  Is there any plan for 'meta' layer to pass this script checking
to get the Yocto project compatible logo?

      c.  Or any modifications should be done on script
'yocto-check-layer'?

thanks

--000000000000c19ada057e74437e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>hello,</div><div><br></div><div>=C2=A0=C2=A0=C2=A0=C2=
=A0 I am not sure whether this email list is right list to discuss the ques=
tion about the Yocto</div><div>compatible of &#39;meta&#39; layer when chec=
king with &#39;script/yocto-check-layer&#39;, the error message like below:=
</div><div>ERROR: meta: Can&#39;t be DISTRO and BSP type at the same time. =
The conf/distro and conf/machine folders was found.</div><div><br></div><di=
v>=C2=A0=C2=A0=C2=A0=C2=A0 My questions are:</div><div>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 a. Is this mean that &#39;meta&#39; layer is not Yocto project=
 compatible even though it is the base layer in Yocto poky, thud project?</=
div><div><br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 b.=C2=A0 Is there an=
y plan for &#39;meta&#39; layer to pass this script checking to get the Yoc=
to project compatible logo?</div><div><br></div><div>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 c.=C2=A0 Or any modifications should be done on script &#39;yocto=
-check-layer&#39;? <br></div><div><br></div><div>thanks<br></div><div><br><=
/div></div>

--000000000000c19ada057e74437e--
