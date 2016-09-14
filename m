Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD834E00A21; Wed, 14 Sep 2016 06:27:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.174 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31ECAE00A16
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 06:27:28 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id t67so15908998ywg.3
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 06:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=MhgGOG1GC+qiPSSOKiNyl9yJ2R4uveaaAMcd4bHDXoY=;
	b=VUWxgnA7HAmZ1/Z9ninMcp7g1Z8V2myUd9blmXUY4GLfB5C6oFAquz+LaEiQXGj2rX
	Dy338EroxnbJp98+03sOLL4OQeQSzhi3tPqKXt6D+kBNh04NkMOCawKiqx682SanJ9+j
	BCe7KmlBymfoykkyzpjYtCPCJvH0C4dam66hlESyKD0Yz4f5NZIMlckjbsa2CttNP2Wy
	jXKGyg9yKvE6U+qXpGOXcYVfA5TkXavXUKn4OZYtMopaAK56ZJA2CoDmW4C/ufGPESMB
	C4av9plko0r0dugfHKAR9qwUioN8nIgjsB35zOObTORnd7Xy8DB/TxMk2BudG4I1+F5T
	4cbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=MhgGOG1GC+qiPSSOKiNyl9yJ2R4uveaaAMcd4bHDXoY=;
	b=AG0aNrW30OKV657/6E/xXSKSE6w4YovMzf7vDXoZHYJaammtcV880O3ch+gdFAruTN
	SrdPsPeR8Q7KjZKQsNYnLrT1Sk2vVr7xm007XmCixR5odInl2JKYC1lYoJOGEilnb3dY
	Y6WfYecXqiw/JbLSqWxg9cQsEAwkooco11v51MQTU9z6PEZ8Djagso5TX2B0SugxViDL
	pwhQsdO3/j6SepJgo8FEIYQ7KPsXKoxARQ9THZXs8HTDxUqSggnrG5f8V80acbQgT7/M
	iomc0JJRmPinIrQKS26VZdEtbllfm8QjrvEgIdvY9SB9AA0rbt9e0OYjHvXQqHxATENb
	enrA==
X-Gm-Message-State: AE9vXwPEWoGPxvaw5zUrywmUdcK67U4ojT7GQ/bTGyapCbGEl3LjugJn5tOP0zeli+3BuANQyrAhKzFEPAW9vg==
X-Received: by 10.129.115.138 with SMTP id o132mr2345265ywc.152.1473859648026; 
	Wed, 14 Sep 2016 06:27:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.35.72 with HTTP; Wed, 14 Sep 2016 06:27:27 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F821DF@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
	<CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F8216B@MBX114.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20F821AC@MBX114.d.ethz.ch>
	<CAF3SDA6XyxtCNhKRZfPfdNVgvqAMyosBjfbUUpf=msjVPdyQPw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F821C8@MBX114.d.ethz.ch>
	<CAJTo0LbkjuCFqmzUx0uWVd+dMzA9U3_u56HANcDpkV_hyLMuTw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F821DF@MBX114.d.ethz.ch>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 14 Sep 2016 10:27:27 -0300
Message-ID: <CAF3SDA7JQ8hNVipjsYzgp2AOcesAiph66aNXmdVKWT+9HDxHqw@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure
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
X-List-Received-Date: Wed, 14 Sep 2016 13:27:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

try:
python -c 'import urllib; print urllib.urlopen("http://www.example.com").re=
ad()'


I'm running out of ideias :). I already had received "Connection reset
by peer" because dupplicate IPs on network.

Regards,

2016-09-14 9:58 GMT-03:00 Anicic Damir (PSI) <damir.anicic@psi.ch>:
> Ups, typo.
>
> It also works
>
>
> wget https://www.example.com/
> --2016-09-14 14:58:03--  https://www.example.com/
> Resolving www.example.com... 93.184.216.34,
> 2606:2800:220:1:248:1893:25c8:1946
> Connecting to www.example.com|93.184.216.34|:443... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 1270 (1.2K) [text/html]
> Saving to: =E2=80=9Cindex.html.1=E2=80=9D
>



--=20
"Do or do not. There is no try"
  Yoda Master

