Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B332E013C0; Mon,  2 Jul 2018 19:33:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FCABE00E36
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 19:33:11 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id t21-v6so293303lji.0
	for <yocto@yoctoproject.org>; Mon, 02 Jul 2018 19:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YW8I5GfP4vyYo6IngyyZH1QZ3+Sv2ZGf08fcKCXSGqQ=;
	b=AQZ64+dRpXQp7X9eQv/VTkpJrveD3QvdgWJhT7qcWGrmRXodNIEOMeVw2xkchH5Jt9
	rHc1au44gxjSnNQvBxXYA6MFIwsgZBdCRBFevU80HJ4KZrQpGc+a5X2TZS4t5mN9Cv1P
	Tnx/iAE50uo3ovC8fe2/5R3qMjAJYjaahaASUdszwvVHTJvW6NNWImHi01h/FMog0dkv
	6u0VIFr6FmWRzp7vhmewjPgmwVX2J6pWX1Pj7CfX5fqBqwml2MBnLQOj0VNAgTt9cv+G
	e9JgL3g09J059xkQiRMMUcWQxzbcyg68KV+42cTl7ubBRsEdW0QubWRllYz1/IYR8/4b
	JK8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YW8I5GfP4vyYo6IngyyZH1QZ3+Sv2ZGf08fcKCXSGqQ=;
	b=DzDrmvTLpKXa39QOc7nhftislqPo0Hz2llxwng2L+l1zs6JNCvZ5RxNxO3iFZtZm6b
	eXOAf1myw1YzvqWD2QlOPF0psFnWlTgUCV8ij+DRA0I5SZ7BCjGaWYjrYmX5uJdemICu
	A39YN1hMFN0aNfFUOS2UJ+pB/8/BoVQLJWnGwmtTbS/Z/QZYqsaLX/0sWAJZQ1pZGmTn
	D9H/nOeghqoNNKWDoLWBwnPHtx9FLTBeYAiME2RPJUgAsjAlTtXsRg6kTCAGtfb+T6Hw
	yntOQj92BdBJ/uU5gBWD7LPjGkb2ku4Nul3cv0W2TUFa3FgFDwAdrDDJ1UWMph07V5tq
	LVDQ==
X-Gm-Message-State: APt69E2EaVaMWPUR9yM/cPcmEwHwu/TUCIP4tuUFH0zy+HCrYnYllP+q
	A+20l9GDUw8z7QewkdKa0h1dXA16v8tA7toJQk/g5OVh
X-Google-Smtp-Source: AAOMgpcQToCawnz9+EdvK6mOJHvdXb+9b0Gz8QWpgO18ftfBqwI3gimtoHq42FcGzksUnKmGRU20lv1Ge5uXA7lQrCI=
X-Received: by 2002:a2e:84d7:: with SMTP id
	q23-v6mr17434062ljh.126.1530585190363; 
	Mon, 02 Jul 2018 19:33:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:2195:0:0:0:0:0 with HTTP;
	Mon, 2 Jul 2018 19:33:09 -0700 (PDT)
In-Reply-To: <CAMDWK9W30-W2Ooo5yzAjEgJHT_xS9rcq9BiYhnhFC-Jo7L27YA@mail.gmail.com>
References: <CAMDWK9W30-W2Ooo5yzAjEgJHT_xS9rcq9BiYhnhFC-Jo7L27YA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 2 Jul 2018 22:33:09 -0400
Message-ID: <CAHUNapTMgE5pVfe77OfkPF=h_mcZCVZU_dp8vh8xKmzXpY30_A@mail.gmail.com>
To: Michele Tirinzoni <miketiri@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Waveshare touchscreen
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
X-List-Received-Date: Tue, 03 Jul 2018 02:33:12 -0000
Content-Type: multipart/alternative; boundary="00000000000091f81805700f225b"

--00000000000091f81805700f225b
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 27, 2018 at 7:38 AM, Michele Tirinzoni <miketiri@gmail.com>
wrote:
>
> I saw in the documentation page that the Waveshare touchscreen is
> supported.
> Before buying one of those I'd like to know if anyone tried it recently
> with a rpi zero w or if there's any known issue.
>

I added the support for the waveshare screen and use it regularly with a
Raspberry Pi 3 (B and B+) 32-bit. My _latest_ build and test from master
for RPi3B+-32 was just last week. Check the commit message for the specific
one I'm using:

https://github.com/agherzan/meta-raspberrypi/commit/da32aac453da278e254d37b816602410af85d162#diff-a8b738ce971c646d8c30f0d75c6c45b9

I haven't tried it with the Zero, in fact, I haven't tried a Zero at all.

--00000000000091f81805700f225b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Jun 27, 2018 at 7:38 AM, Michele Tirinzoni <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:miketiri@gmail.com" target=3D"_blank">miketiri@gmail.com</a>&gt=
;</span> wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div style=3D"font-family:arial,helvetica,sans-serif">I saw in the=
 documentation page that the Waveshare touchscreen is supported.</div><div =
style=3D"font-family:arial,helvetica,sans-serif">Before buying one of those=
 I&#39;d like to know if anyone tried it recently with a rpi zero w or if t=
here&#39;s any known issue.</div><div style=3D"font-family:arial,helvetica,=
sans-serif"></div></div></blockquote></div><br></div><div class=3D"gmail_ex=
tra">I added the support for the waveshare screen and use it regularly with=
 a Raspberry Pi 3 (B and B+) 32-bit. My _latest_ build and test from master=
 for RPi3B+-32 was just last week. Check the commit message for the specifi=
c one I&#39;m using:</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra"><a href=3D"https://github.com/agherzan/meta-raspberrypi/co=
mmit/da32aac453da278e254d37b816602410af85d162#diff-a8b738ce971c646d8c30f0d7=
5c6c45b9">https://github.com/agherzan/meta-raspberrypi/commit/da32aac453da2=
78e254d37b816602410af85d162#diff-a8b738ce971c646d8c30f0d75c6c45b9</a><br></=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I haven=
&#39;t tried it with the Zero, in fact, I haven&#39;t tried a Zero at all.<=
/div></div>

--00000000000091f81805700f225b--
