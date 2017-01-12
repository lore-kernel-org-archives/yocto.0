Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59267E0043F; Thu, 12 Jan 2017 09:47:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 292B7E0033D
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 09:47:42 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id a20so28557257qkc.1
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 09:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P09s5ESutK1XqbyTmsbaEqCHqsX83omEdrpFFylphVE=;
	b=s8cd701UIucvQQ6yUXThbeL3LiJfIg5eeHmklnXab+r/lKL31voQl9TfwJH6bpV1Ui
	5era8KvsyFnQPZJUdJz/SMaDCRIX8Nisiri3S95ZU/K61F4wxwsWhDcBoC1+MwfDsJP7
	5Dv2AVPpi8J3Y7+aHnpKy3oEkZStPlsIOTvHECe3Hu7rH0qc7eXZ9y1n3LaBmLcn/lJm
	iSLcRfLh1hDL++WZEXXDt9ZXnGsJadhTmPj2j5T5RwBftfUzOTv1/H+8nl2WTZOpE8zh
	A1WPwfc5A2Q6Jnesm8Qe7HHvvY79804AfVfm5ojUkwHx8tHskSYWCNs6k/v4apS3QYHC
	qlmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P09s5ESutK1XqbyTmsbaEqCHqsX83omEdrpFFylphVE=;
	b=LGwk5qNODQZL8NEFfrmYb15o/hEz7p9AveA1KNFdoZrxNGYS6Fz8biH5zsbX5F2fvt
	uUbW0PTFZlysG02DbjN9bHBO0/Y8kOYj67vzn/+aRuVIRjVHhPlm92G2m7igyDXJ+BkL
	voW0iUjB0g2AHIOwplnfkCS/jBECQKfnkFsxmiyCbPhU05N75fEvvevEjqrSAnv+q8gu
	5gDhw+LVOWMK9RhgwTfvfEjHbRR48wT3qM/092Q7IF/S2pgdsA8Eq7Ou7kDlYq2eg5Ah
	gP3Ik7drOLMgWouFfYUWDv/CEyaFDaBPt9QhDr6pG/ZHUGh69Prjtb3ObL87pC6vq6QJ
	6Eew==
X-Gm-Message-State: AIkVDXIhB1cJClFFKCZAHLd89rEkT7Xffi4DmR3Riw5MA5dI26JHQ31N9rKUWCX5hlMcgtsk7c8bFuLS/fsUVHHA
X-Received: by 10.55.15.231 with SMTP id 100mr13838920qkp.244.1484243261878;
	Thu, 12 Jan 2017 09:47:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Thu, 12 Jan 2017 09:47:21 -0800 (PST)
In-Reply-To: <448FE605-0D5E-4057-BF49-9EFFBC5CB8DD@sentientblue.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
	<CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
	<448FE605-0D5E-4057-BF49-9EFFBC5CB8DD@sentientblue.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jan 2017 17:47:21 +0000
Message-ID: <CAJTo0LYZ6jya+PRMeCCnjEYBHKWz4cohVzaKd00EkB7=Ezkntw@mail.gmail.com>
To: Roger Smith <roger@sentientblue.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 17:47:47 -0000
Content-Type: multipart/alternative; boundary=001a1147603262a2f30545e9500c

--001a1147603262a2f30545e9500c
Content-Type: text/plain; charset=UTF-8

On 12 January 2017 at 17:41, Roger Smith <roger@sentientblue.com> wrote:

> As I mentioned, I tried to simply source the oe-init-build-env, and got an
> error that the readlink command that yocto is using is incompatible with
> the bsd version of readlink built into os x.
>

Yes, we assume GNU tools.  That was the first step I posted: use brew to
install gnu awk/coreutils/etc etc.  But thats also the easy bit...

Ross

--001a1147603262a2f30545e9500c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 January 2017 at 17:41, Roger Smith <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:roger@sentientblue.com" target=3D"_blank">roger@sentientblue.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>As I mentioned, I =
tried to simply source the oe-init-build-env, and got an error that the rea=
dlink command that yocto is using is incompatible with the bsd version of r=
eadlink built into os x.=C2=A0</div><div></div></blockquote></div><br>Yes, =
we assume GNU tools.=C2=A0 That was the first step I posted: use brew to in=
stall gnu awk/coreutils/etc etc.=C2=A0 But thats also the easy bit...</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--001a1147603262a2f30545e9500c--
