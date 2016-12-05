Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5577AE00C4F; Mon,  5 Dec 2016 03:15:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7DC1E00A39
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 03:15:42 -0800 (PST)
Received: by mail-qk0-f169.google.com with SMTP id n204so342118946qke.2
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 03:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hq1XToNkGVN4RKhxgLoEYTC4eYW1fY3a5wmUsIy5tOA=;
	b=vfM0C4uj2YKeXgl9UzIKyd3M1iYoYwSfTq62kjsKvKaGcZuahfwa9pVSoT0Fsd+nWv
	yGPSiCoRX+4jUbeMxBxnW3mTaazJ63Ji0wc2BoSdzn7JqVxak4jBzX3Qd6WazLk8ckJK
	F8sQG16/plncZQoeVrSoZhsvL20iGcCPG7R8FoBntPUQxm3CaK7Sm8Rbb9Zg82J8DnDR
	W18s8OkU0w71KbHgBCOjWqVNO3hlgmALvJiLuUYPoo7hisAUs9tZ/JmwCZwUasWWHgmm
	YBPAjdEhykuwtzcbKGvIXARDSEq3LMi/05dByWSgD3VhAWCda4OvywQN/qbkh4iADQCv
	znvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hq1XToNkGVN4RKhxgLoEYTC4eYW1fY3a5wmUsIy5tOA=;
	b=fZabNLL9IeAADH15rO8f1Q74QX184wVoOTofPzxQd3zgQDKRaoQ5BSBcMwNKBMm9ac
	zsoiRFCbx6U5gcuBXArivQfWCsN8WVz8B1WS4Na8XiSFBWQ5Rdrnn01o77D8DJe3loyM
	+v3sb/y2VX4AzO/ddFFey6YU3atRlulCU3hXxlWuovw3XuZwBP3xc+4lUXamboM+0IFv
	ZpfDfcMbd/kylQvn9vOqKhm5ZlBWqt0DkByaUxV7rR904nHScu3Ut5O+Bte+ph4am90k
	9M03HAtUBBVSDK8hj4PGTS0qXY3iKsyKSIIf6N59D64IVScbtslSuaGjSCuQxjVUfboJ
	VfjQ==
X-Gm-Message-State: AKaTC02gPl+o3pH/PcwC06e23KGPSPUXKzPrb8IX38SAr3Uf8NwSt0NSOdIyosNMKv4YLPaVmzh4KKseEElHJRrp
X-Received: by 10.55.106.134 with SMTP id f128mr54865433qkc.121.1480936542028; 
	Mon, 05 Dec 2016 03:15:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Mon, 5 Dec 2016 03:15:21 -0800 (PST)
In-Reply-To: <46bab4e1-e552-12b4-5847-daeeaf93099a@mlbassoc.com>
References: <46bab4e1-e552-12b4-5847-daeeaf93099a@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Dec 2016 11:15:21 +0000
Message-ID: <CAJTo0La8z_DDK3dGT4kh163oPdvkMdU=bPbXBW0ypnTORRPung@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] X11 failure
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
X-List-Received-Date: Mon, 05 Dec 2016 11:15:43 -0000
Content-Type: multipart/alternative; boundary=001a114fddf685d8ed0542e76839

--001a114fddf685d8ed0542e76839
Content-Type: text/plain; charset=UTF-8

On 5 December 2016 at 11:12, Gary Thomas <gary@mlbassoc.com> wrote:

> What do I need to do to get libGL v1 so X11 will work again?
>

That would be part of mesa-gl, but I'm surprised RPi X needs OpenGL (as
that is pure software, not accelerated).

Ross

--001a114fddf685d8ed0542e76839
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 December 2016 at 11:12, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":o2" class=3D"a3s aXjC=
H m158ceb0865bec35e">What do I need to do to get libGL v1 so X11 will work =
again?<br></div></blockquote></div><br>That would be part of mesa-gl, but I=
&#39;m surprised RPi X needs OpenGL (as that is pure software, not accelera=
ted).</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=
Ross</div></div>

--001a114fddf685d8ed0542e76839--
