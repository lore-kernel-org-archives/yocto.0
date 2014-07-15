Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3809E00572; Tue, 15 Jul 2014 06:07:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
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
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6002DE002AA
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 06:06:56 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id hn18so2820839igb.9
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 06:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=1BH4fOpXifyRcpwGsglzsIs7rX2koYkZZA34hUHv04g=;
	b=b9ckcjOzFNaWMjgerGfRMgDspUhbVvk3CM61b+OKz8RiybveXeFyLjQCaCCe+nYPmZ
	CdQkPfrhc1gq0DO9b82127tWLZ9Zd4HTuDR/ApoXdU1DF294rVfp78mrSbXANYYw6aq8
	ctBokb5XdxtvzE2ECSUGL5vmLsJl86UPI3vJI/u8JLy7jFJ1TBfkafyNtXf7lwujoCcu
	lomUHs9o7Goo6JC+wxAzvFckcSg4kon4BjemMUuHZIZZtVGIugC3z9WhoJGDSXxF8ioF
	hRGPyD2h06aagiTDyL51SW3aZqjDnMxVv0uuZG3pLMz62EWMk1szf2ySzErD2oIE1uAD
	IY/w==
MIME-Version: 1.0
X-Received: by 10.50.80.116 with SMTP id q20mr6420981igx.22.1405429615826;
	Tue, 15 Jul 2014 06:06:55 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Tue, 15 Jul 2014 06:06:55 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Tue, 15 Jul 2014 06:06:55 -0700 (PDT)
In-Reply-To: <31866b6cf9d84744aff245a947cb80a0@KCHJEXMBX01.kpit.com>
References: <31866b6cf9d84744aff245a947cb80a0@KCHJEXMBX01.kpit.com>
Date: Tue, 15 Jul 2014 18:36:55 +0530
Message-ID: <CAH21_vEM74a_fFdXUhGuQ_8Jthxa2DyqTwDTwY6mE_9-na_21w@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: MinGW support for qemux86-64
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
X-List-Received-Date: Tue, 15 Jul 2014 13:07:01 -0000
Content-Type: multipart/alternative; boundary=089e01536682021d5804fe3b1592

--089e01536682021d5804fe3b1592
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,

Please let me know what I need to be updated for SDKMACHINE, when I am
building meta-toolchain with MACHINE as =E2=80=9Cqemux86-64=E2=80=9D in loc=
al.conf

For qemux86, we are mentioning it as SDKMACHINE ?=3D "i686-mingw32".


Thanks and Regards,
ATUL KUMAR SINGH

--089e01536682021d5804fe3b1592
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi All,<br></p>
<p>Please let me know what I need to be updated for SDKMACHINE, when I am b=
uilding meta-toolchain with MACHINE as =E2=80=9Cqemux86-64=E2=80=9D in loca=
l.conf</p>
<p>For qemux86, we are mentioning it as SDKMACHINE ?=3D &quot;i686-mingw32&=
quot;.</p>
<p>=C2=A0<br>
Thanks and Regards,<br>
ATUL KUMAR SINGH</p>

--089e01536682021d5804fe3b1592--
