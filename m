Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 907A6E00B9C; Thu, 15 Mar 2018 05:52:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
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
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72FA8E00744
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 05:52:16 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id z10so2757928pfh.13
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 05:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=f+sXTj/IR+U0RW4hig7cYh3KFUjZw3pXttbAn6kyaNM=;
	b=hmX/PT4SMD++aVR2tWz31eFMHBkU5hhVwImYonHAHJLE8cbb5vHugRpwk+Kvel2FGU
	4IzczXAZjx//e7UbVw/KeiHUEudHiNv05dGBz9XgOUh2McN653yhT8vq50XM3vZnZg1+
	s228fBw9zkEy8UT2h5JOu1rMIsLYeQbY6iXxI9Hpt2Pd1PjqD7lZ+fLP8BJIGdRAB1V+
	9u5O0jUmul3LFKs0Sas8Lq7IJxDnn6xSSz4UyBpkJ7DYOxNmae03lEoFhx3KaRW3dZoK
	ZCIX+Nv0yMlqoKCr/mJW+VTD4PTOMKgWW3QiOvuol1A5zbszt1bOM8Ycn+yORhsgeRai
	Tzxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=f+sXTj/IR+U0RW4hig7cYh3KFUjZw3pXttbAn6kyaNM=;
	b=LoehL3pxyn3qWkV/01ooAhy434QtHmUP8D7YUc3Excg1JPcXDgEVS73FOj1b+Hqq4a
	zsfi7IKcvI3qAyGSDgwwVZAgGW0/9onHpyk5hSqcqDi+QgS9cuJbpH2p6mIuPd5F/ZfX
	5pGHgyf3knm8BVcOMwVMawLtUwB/XlH/2ihHyQkyiM5Rzn6i0igYt2VwudUzaGtKiSR+
	V60w9vpxlYHGYX3oZ0eImJaNpKc5R7pHYNj2tLiXcEV9pfGWRHpg5B8VpOBaSZWZNMMq
	pYHGnd+e2dERzYFqEA1IMD/prqBZD9BvKJ0AaLV4gqX3pLbUp/Ek3sIPoEW9nm5SNNSY
	/zUw==
X-Gm-Message-State: AElRT7GtXDFchfQLl74zcY/XtUDskPaqNz2vh4+YLSapqgqN/N8FIme/
	v5wFwPZxRQJTE83hGoCsytHTQfnME9mkDCaA2JPwbw==
X-Google-Smtp-Source: AG47ELuTEukOdzaV+diU82BQm3Tl5zD1uDX8H8u5CfHNyFa2+SSmhMPZYRZn2wNbLOFc62QJK757zvoAh2pkZEfPD+M=
X-Received: by 10.99.8.4 with SMTP id 4mr6685860pgi.289.1521118335777; Thu, 15
	Mar 2018 05:52:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.184.9 with HTTP; Thu, 15 Mar 2018 05:52:15 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 15 Mar 2018 13:52:15 +0100
Message-ID: <CAFq4t4ghBNE+1SXZ7L-KuRMfw6z7E0a4ageKi33UbKbftXL0rQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: OpenCV with python3
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
X-List-Received-Date: Thu, 15 Mar 2018 12:52:17 -0000
Content-Type: multipart/alternative; boundary="94eb2c08efa210bfd4056772f615"

--94eb2c08efa210bfd4056772f615
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I have python module of OpenCV for python 2.7 on my Yocto image adding via
local.conf

IMAGE_INSTALL_append +=3D =E2=80=9C python-opencv=E2=80=9D

Can you advice how to add opencv binding for python 3?

Thanks.

--94eb2c08efa210bfd4056772f615
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>I have python module of Open=
CV for python 2.7=C2=A0on my Yocto image adding via local.conf</div><div><b=
r></div><div>IMAGE_INSTALL_append +=3D =E2=80=9C python-opencv=E2=80=9D<br>=
</div><div><br></div><div>Can you advice how to add opencv binding for pyth=
on 3?</div><div><br></div><div>Thanks.</div></div>

--94eb2c08efa210bfd4056772f615--
