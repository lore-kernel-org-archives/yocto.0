Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 728A1E00CBA; Mon,  1 Jul 2019 02:28:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.170 listed in list.dnswl.org]
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9287E00798
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 02:28:57 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id a21so12375776ljh.7
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2019 02:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=QoYP1GgHFrK+r/KsTB283HprsM7yKQgeiw8x4eCK/Yw=;
	b=SPLEZblzbIyt7Rm07FL8mBQOyYPNmzAsGjg5dFeTkpB5c7g8k3pWqf4C3EZhb+n+1B
	lUhscqNZ2eBSJaV0Xd7MwbpPYZu43RTwOtplf/pLFqUzQ+a2qUJnzPZCiixDp31iKtn7
	jtzQZgtess3RCDI/HvHrwxCtTzpSXaKgQWrZy2OLD/ELGE8AdG3LbeJofjhAwTHwsUjD
	E/BDgG8OeGwNeY9CzUfUNVvp3L1wDVFLC/LqECeAG5UeydKMBq9R/WIxFPMboc+4vuIY
	VmDgos1YPkI5gVVyrRBxwU/4d32HylZCiYprA7CS5DyEqfMmwcRsQJhqlQRyemDpmN97
	7HVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=QoYP1GgHFrK+r/KsTB283HprsM7yKQgeiw8x4eCK/Yw=;
	b=CXttRv1Y5/KcrU5G5iNTL+AcVQNPMhgoTUi66OpqftCHulA0uI0Mo58uf/PZziSpz7
	m4cxR3TGi+P1mZOX6ZpeWzL2pCLcIgWm5fN2dm6qC4rSQdbCbo1lKctaRrgLcOF0O7d8
	OdHIMKDIcl8xeNU2ldr5jhs8vgw3/YEMNROWhqoVO8Qch4KPsbFQkaBpkpTyu9lH8FJo
	u4QPOkrvMajLesITL6Tej1MF6OmOo9PQC1HM2xb4sCVRX6VqrP6ZsSDFL5kvjV6xXHrL
	q0+QVKJvIpCxaxmRCGYE3eDhWsNNhCSK7kKAuWO25vSXC3RGcOLP2DX5TrkCUX1gkeva
	38gA==
X-Gm-Message-State: APjAAAVy/+k4dOZ/24MZSPNr5vqPEZKgKMe4HFUL2Cre5GA0dZMMbORI
	4USsoxG/qA9xMg/2M0C8Q7275c+LuhUDGJgecdadIg==
X-Google-Smtp-Source: APXvYqxNeI/oX4mp0b4iYYUESDC4vLzWaDhJ6FmzwRf7RaTXXyJMQeKdeEarXB15N+wNt9cW170UzJ8kyIXFfwhASaM=
X-Received: by 2002:a2e:5c88:: with SMTP id
	q130mr13783030ljb.176.1561973336839; 
	Mon, 01 Jul 2019 02:28:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCCs+z5ctCrmM25YHh84S2L9y+E85KnuDvKNNFqe304Uw@mail.gmail.com>
In-Reply-To: <CAAx3WaCCs+z5ctCrmM25YHh84S2L9y+E85KnuDvKNNFqe304Uw@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 1 Jul 2019 11:28:45 +0200
Message-ID: <CAAx3WaCPyfPKHDsrHa5EP_WxSAg0xsr+HW2DwiRem7N6pQmOWw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Getting a package PV from another
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
X-List-Received-Date: Mon, 01 Jul 2019 09:28:58 -0000
Content-Type: multipart/alternative; boundary="000000000000e41aae058c9b41fa"

--000000000000e41aae058c9b41fa
Content-Type: text/plain; charset="UTF-8"

Up, with more details:

I have a top recipe that depends on *my-image:do_build*. I'd like to
retrieve the PV of a couple of packages (from that top recipe) that are
used to mark our custom software. Any suggestions?

Gabriele

Il giorno ven 28 giu 2019 alle ore 11:25 Gabriele Zampieri <
gabbla.malist@gmail.com> ha scritto:

> Hi all,
>
> is there a way to get a specific package version from another?
>
> Best regards,
> Gabriele
>

--000000000000e41aae058c9b41fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Up, with more details:<br></div><div><br></div><div>I=
 have a top recipe that depends on <b>my-image:do_build</b>. I&#39;d like t=
o retrieve the PV of a couple of packages (from that top recipe) that are u=
sed to mark our custom software. Any suggestions?</div><div><br></div><div>=
Gabriele<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">Il giorno ven 28 giu 2019 alle ore 11:25 Gabriele Zampier=
i &lt;<a href=3D"mailto:gabbla.malist@gmail.com">gabbla.malist@gmail.com</a=
>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>is there a way to =
get a specific package version from another? <br></div><div><br></div><div>=
Best regards,</div><div>Gabriele<br></div></div>
</blockquote></div>

--000000000000e41aae058c9b41fa--
