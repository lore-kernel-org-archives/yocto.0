Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67FE3E00C43; Tue, 12 Mar 2019 16:24:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
	[209.85.217.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A30E00C1E
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 16:24:53 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id z18so2689899vso.7
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 16:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XTAaIQjqahg4wGOhVxK0wvwugVysxMgogG4+QOVW25k=;
	b=k+0cScG/UhcF4xGkSffM+IoDWY9NtpqjXiZxaIYK1hxSQz/aifn/VFRSA8M3WETtnM
	jUztERK07BW0SqdSBR82BF1keN8QgpH+S5bzCnVrUrQWTX0mEjxeX/2b1U4PohcQoulG
	lHtTLKVdPcXbBb/VhWGx61DYMuZRjsNfX0JsxJgIfEIxzwtLmuS0X7ONauWbyjNK8Yhx
	+HjWHS0l1P8TF7lZyIUilZRAB8faxgSAz9pSU66yr56oJ0Sntuyh3UGFTv9nl7K17yp/
	/LAyri5PHdFf3mfjSrkpKtQdTfaQkGBWKEAZ6S6jLnXsNDa9mvB+tL3WUZHmv1idB9Bn
	zEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XTAaIQjqahg4wGOhVxK0wvwugVysxMgogG4+QOVW25k=;
	b=FXtihnEktz0SbSRtxwh2O0zTMXQvAXmKIifEY9jy6MnHUEHg7oYWu8Hj7Yo3B32Wy7
	twCdulvN67Endvb9+we7U8HLu+2BqfjcwtSrQOLS1e1Va2JU801tKGGRrrIrPtfLynmy
	6ksW1YxdmfnZagFWFnal4NcnlXlGQhAAXJVZD2yC7QM04whamMha4g4HL0zhL2/j+SQ0
	1YnDpn6aMU8CIOwYSKx3qVUJW+z2r4SbzQlitJ/Ua2ULs9685DisH5zSUutLzQVExn3T
	ciFEjHWVLZjMQczGwHgo/PSZaAS+SYvNGCBt5vXlQs2jkx9CzFxd5qznrccZbNhch3lw
	0QlQ==
X-Gm-Message-State: APjAAAXEw9C49O9QU6tjdk+UHDxGtx0t2LyT8Ja5J8d+ErpbmW3RMnIz
	2I4Qz5j72b7XN3J5RMHoJr66oNPeuIv8mFym0rV/Uw==
X-Google-Smtp-Source: APXvYqyOJ+E9+FVRAbcjK6/Yxe66SO/fas0zrkmNC8X/n88zkpa9w1Dj3gotX8HBbxoALTb2+LaQqp6jk6qrUVSFbJ4=
X-Received: by 2002:a67:f05a:: with SMTP id q26mr22232528vsm.174.1552433092392;
	Tue, 12 Mar 2019 16:24:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
	<CAMjhiJgiag68y4UmRGN16NnPoRZt9iC=L=-Q8kDHMQjzsjEVMg@mail.gmail.com>
	<CAAV2bM2QGuTSc9F_DRfw1P_T0NYtb_1c2GyTKWgDB6KYM1OqaQ@mail.gmail.com>
	<CAMjhiJgL4be=AvT03ecR62tRQpar8NJV4=yij-cg+-YoGDkY8w@mail.gmail.com>
	<CAAV2bM2Mdht08DxVZ5q-1QTaCZu7DNSNG9qegQ1kkM_zx2e68A@mail.gmail.com>
In-Reply-To: <CAAV2bM2Mdht08DxVZ5q-1QTaCZu7DNSNG9qegQ1kkM_zx2e68A@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Wed, 13 Mar 2019 00:24:41 +0100
Message-ID: <CAMjhiJimZDYScR0oC5bisurq+38OL2wozV1qT+ZEMz3dzq2anQ@mail.gmail.com>
To: Emily S <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: /usr/bin/env requires coreutils?
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
X-List-Received-Date: Tue, 12 Mar 2019 23:24:54 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Emily,

On Tue, Mar 12, 2019 at 11:53 PM Emily S <easmith5555@gmail.com> wrote:
>
> When you ask if there is anything in /usr/bin at all I'm not sure what you mean, could you elaborate?
>
On the root filesystem, do you see other executables in the /usr/bin/ directory?

> Ahh so you're saying something in the init-clock recipe itself is incorrect in the way it uses ${bindir}? I did not actually write this recipe so I may be not understanding it fully, but I don't actually see ${bindir} in it anywhere.
>
That last part of the sentence might be the actual problem, in case
you do not have /usr/bin/env (but /bin/env for example).

> Yes that link is the correct recipe!
>
Google power.

Regards,

Leon.

