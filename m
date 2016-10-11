Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA377E00C3A; Mon, 10 Oct 2016 17:44:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BE64E00C08
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 17:44:35 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id t73so6995640oie.1
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 17:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=cdMiOOxSlghciJVFIKurDLKfneca8Jm2DuuRVJKEbbU=;
	b=i0wIGqce56mgxHA6kGDp1Wo3WVle5trUl8x1YkR+vpeZEYDMDZSOyJnI7Tort23B9U
	Xp5NkUSc8SPNMLh7yEimqILh1E1sPLxPSpAy+O0umUNrqIL+gNCg7DoClH6LxoVPjnpa
	4SXzIUQoiMeQwhj1xlZcOkyM4z86QGteKwmtmCse56GKoV/ql9LBdlLFGG0kMuS3fw3g
	xE4dU3h81w4FCXxiEmyzQvf+KZLvJAmloIvyMelHvcboshyrwWNPBJBV57SQg4s8cw/M
	Uch9a3OqZBcQpURCvFsAH6ZtOyE16lquap/QlpjxoUEsRw5MzWwjphMWXrWffQ4OFObv
	eaLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cdMiOOxSlghciJVFIKurDLKfneca8Jm2DuuRVJKEbbU=;
	b=l36cFwir2PQ52s5rOo3KKh+fLWGixYMeL8YZsJO335+ISMm6bPpjewYX1P0NUhn8zh
	c2FIqn6TyLMUv7/7A/Ho39dT7+RAMCiWQq1zR5O7HslFJfTZYcv/tN4q3EciMRmXP45w
	75Nq8IXFAjhq29seezUtih/UEqEqh57dw7WVuHds4gq6dGPjoOu8Qv4eZWnWga70fqXb
	LZ77DLpnqtfbU/ygB09MdAqMfm0OoAYBPaZaf+s1fPkJ8WD+Z6E/GnXC00YwbVjFyI/W
	fAFpHsEWusQzIbTrPr4w406/1A+0gyp8sMHOQzugjD9Obo0YXvwrwZipedM4XFKDyHW+
	HwmQ==
X-Gm-Message-State: AA6/9RnmUJfVPVc7GfI8RfqArq8a17enLXqftzeWT64a6y41TO8Nl9GaPWJMSYsQfzm+HJW3ASSGqF9IqDScxg==
X-Received: by 10.202.1.86 with SMTP id 83mr715499oib.123.1476146674199; Mon,
	10 Oct 2016 17:44:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.21.137 with HTTP; Mon, 10 Oct 2016 17:44:13 -0700 (PDT)
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Mon, 10 Oct 2016 17:44:13 -0700
Message-ID: <CAJ58UN=tw2n70748xW9zoSh1tge-c5MWGUwpRr7pkR_jfh8BXg@mail.gmail.com>
To: yoctoproject <yocto@yoctoproject.org>
Subject: Clarification regarding GCC tool version supported on - Krogoth 2.1.1
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
X-List-Received-Date: Tue, 11 Oct 2016 00:44:38 -0000
Content-Type: multipart/alternative; boundary=001a1137dd4826f26c053e8c2e4b

--001a1137dd4826f26c053e8c2e4b
Content-Type: text/plain; charset=UTF-8

Hello All,

Please can some one tell me the tool chain versions supported on the latest
YPCore-Krogoth.
I know the it uses default GCC5.3, just wanted to know if older tool chain
like 4.9XX is supported or not.

I don't see the feature list like the one listed below for Krogoth 2.1.1.
which clearly states the tool chain versions supported.

https://www.yoctoproject.org/downloads/core/jethro20

Please let me know. Thanks.


Cheers,
Vijay

--001a1137dd4826f26c053e8c2e4b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>Please can some one tell me =
the tool chain versions supported on the latest YPCore-Krogoth.</div><div>I=
 know the it uses default GCC5.3, just wanted to know if older tool chain l=
ike 4.9XX is supported or not.</div><div><br></div><div>I don&#39;t see the=
 feature list like the one listed below for Krogoth 2.1.1. which clearly st=
ates the tool chain versions supported.</div><div><br></div><div><a href=3D=
"https://www.yoctoproject.org/downloads/core/jethro20">https://www.yoctopro=
ject.org/downloads/core/jethro20</a><br></div><div><br></div><div>Please le=
t me know. Thanks.</div><div><br></div><div><br></div><div>Cheers,</div><di=
v>Vijay</div><div><br></div><div><br></div></div>

--001a1137dd4826f26c053e8c2e4b--
