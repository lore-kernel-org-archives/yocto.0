Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC867E009C9; Tue, 21 Jun 2016 15:13:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CD3BE009AC
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 15:13:34 -0700 (PDT)
Received: by mail-qk0-f180.google.com with SMTP id p10so41524255qke.3
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 15:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/2EO9dAi8SinqyCNjFqYoCqkXlBAPC9zHs4z9O3edJo=;
	b=iimt54D/H+QFDS+P9rmvO6NW4hI10QIfFzXV4u4x5KUyLqV6FKQ8EQImZS4P785FZn
	qE9GnRRz+JZWBe89npV960MGJ9pdg1zkQamnd/DQ2VEEbfknQ8sym/YAYo6DY1LdqosH
	ajirREu8I5gIuK3+2GPeOxUv9Lphr8ldT5mqofRDTw8reAm/mmN3L+UIiW8BTYHr9ywC
	SST1to6N+g8Ms/K65YmCgD4chtPovLahfrPUllwQDmxPpNRNgaDJOJvriISEjvtaGfsw
	Mvh4/6R3Imp74B5Kiju3dt8qh+5jjkRNWnBFQdbcP4wvpjk0C5D2bEIQzx4O2n1BalW8
	Vyqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/2EO9dAi8SinqyCNjFqYoCqkXlBAPC9zHs4z9O3edJo=;
	b=LA5xqfgUHR7YQhNk+xl8FKHrBqcLbvkqqq+2XqYjFG1S2rxh+w/Bw0LidCng0UDElB
	NRPUoYtN2/ND3gW7XiRiHQ+IsCjZlb1O+ZkYUKMIXS5zMREq6vw6Q1HK9/IjfuqScSaV
	hJxG1P2CfzjTSzSyKNtamYgnD4hNLEd8LRKpYk+id2jmwKh2oBfw7YRhqGxSBYKpL3Kh
	BuNvj/Ke4RFrLdriqZfzurAGLloHuxRk2fM8AwF8zL9mJcshWVcyXdTfRZccZ/C8fFBN
	tUYtvfSj5GshjBUha5c8Fbn9qfGRdAUaUNllUIl32gDXE1lj5TGzhpmO7nY8AXUYX826
	9p0Q==
X-Gm-Message-State: ALyK8tLYB/D8X4vPv+/r1Th0OXz7UIPCw7Hde7T/TCcbC5/8A9FJdj0s9hoCJktUZfwF/GOIa/rXWRI5sa3Mdg==
X-Received: by 10.55.39.141 with SMTP id n135mr34305474qkn.149.1466547213231; 
	Tue, 21 Jun 2016 15:13:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.8.133 with HTTP; Tue, 21 Jun 2016 15:13:03 -0700 (PDT)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377986CD4F67D@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377986CD4F67D@AZ-US1EXMB03.global.avaya.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Jun 2016 15:13:03 -0700
Message-ID: <CAMKF1srWbstzuXTk_pahxdoA=XcAZ9M_0rV2yF-n_RwhNoi-gw@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sharing header files between out-of-tree KLMs
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
X-List-Received-Date: Tue, 21 Jun 2016 22:13:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

may be first one stages the header into build sysroot and otherone
adds a DEPENDS on the first one and expects it in
<sysroot>/usr/include/<yourmodule/

On Wed, Jun 8, 2016 at 6:11 AM, Vuille, Martin (Martin)
<vmartin@avaya.com> wrote:
> I am building two out-of-tree KLMs with separate yocto recipes.
>
>
>
> One of the KLMs depends on a data structure defined in the other one. At
>
> present the structure definition is simply duplicated in both KLMs=E2=80=
=99 source.
>
> I would prefer to define it in a header that one KLM can export and the
> other
>
> can #include.
>
>
>
> Is there a recommended/canonical way to do this?
>
>
>
> MV
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

