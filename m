Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E497E00AD8; Mon, 26 Nov 2018 03:59:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53F1FE009AA
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 03:59:11 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id z18so3247692wmc.4
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 03:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=kFnGF6pcgu1FbggDJ7L8+uTftFBF6o6iM+H2zeCx57M=;
	b=l4LfIbjHH5A3mGuL31TlXpQlgCsnNgRiSzLs590/UeSS5C2JZzRZEcyA/ctVqI6KYO
	3K9D3Q10fx1542HjYW3z7ZTnuXsBfsDg0MYmCf2Rh5knVlCmD8Q1t9lR51VD6UkwUtzI
	axkq0UwE4x/ZRWyqa2fz+iSnC4cefS6scIrWPpOX8Aru3gE0qd9G2o/Z82T/VC5C0tDc
	HNPN2xrBaMqAueVWiAjhRw+JdaiXgC+DcpGw8iW2BHdO/6Mss67KGnA6CRscB6tQc2mK
	IVcfebKnyorU2rxyvwbWaig98XIiBPZ2Ekh3PSbimiHAjZcu7SVnY1IJH2RiwvxFFpC5
	KYJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=kFnGF6pcgu1FbggDJ7L8+uTftFBF6o6iM+H2zeCx57M=;
	b=PD6ddk/xbOFqEDlUcsyAPYfxf6nknej9vxXrzWIZgVti/lnTcAe9MngBuFK6OzN1AO
	qJLjUduRjY36qsg6hNrcvK5Kb7/q2bRfJONvAAhDYxPwKCpPL+lxuDTxONFALFVc8NIQ
	nfdMQ8XKQcWYdZAELtotBkGWSvwHOKV86a29i62YblrvukxW9k1rrANmkZTV7ml3TZk/
	pkTpCQlTXwvG5vFova4qQnMO78/ASfa9bDOUD6hXREKOtIXKDRfNTP/1rZofG1mXiMO/
	7naFjKf/M8rMiViagDqUM5MUdXzf9LeWV+vNXlGRb+ZTr+JpJbeIHhGjkeXpjvN0onHX
	sjVg==
X-Gm-Message-State: AA+aEWY4mg/RXkACuyacUl8NhAuh2oJxNERrjQwocIDUjyxguCjco5p6
	OcADQ+g4syqx9kwCltAgRt1hifRzUufN26Ylnco=
X-Google-Smtp-Source: AFSGD/VqB/CK2ppv3NRC6RsdsUWfq5/2aRw3NT9LJ5q8XWZMVi4TvC8rViz043q0qLiDlzyeePYviBFT9Y7XHNDJ4ow=
X-Received: by 2002:a1c:95c9:: with SMTP id x192mr8167218wmd.45.1543233550460; 
	Mon, 26 Nov 2018 03:59:10 -0800 (PST)
MIME-Version: 1.0
References: <CABj1EzHdrsR71h4UGCg2P0EutEhw8TkZL=oZjEUzZazsj51qCg@mail.gmail.com>
In-Reply-To: <CABj1EzHdrsR71h4UGCg2P0EutEhw8TkZL=oZjEUzZazsj51qCg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 26 Nov 2018 12:58:58 +0100
Message-ID: <CAAfyv37y3WQ7Seqorho7a8r6vxS5f2MNMD+=dF62TwEHMKOAeA@mail.gmail.com>
To: donal.morrissey@gmail.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Date/Time Update Without NTP
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
X-List-Received-Date: Mon, 26 Nov 2018 11:59:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 26, 2018 at 12:57 PM Donal Morrissey
<donal.morrissey@gmail.com> wrote:
>
> Hi There,
>
> I'm using yocto sumo with systemd, and have an issue where I can't identi=
fy which service is grabbing time from the ethernet based network.
>
> If I start the unit without a network connection, the time is reported as=
 EPOC. As soon as I connect the network, the date/time is updated. However,=
 there isn't anything in the logs that I can see which tells details of the=
 service which has updated time. Also, the ntpd binary is not installed.
>
> Is there a time service, other than NTP, which would typically be enabled=
 on Yocto builds?
it should be probably systemd-timesyncd service (check if it's running)
>
> Cheers,
> Donal
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

