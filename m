Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FA8EE00C6E; Tue,  9 Feb 2016 01:10:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6579BE00C59
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 01:10:25 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id 5so7874508igt.0
	for <yocto@yoctoproject.org>; Tue, 09 Feb 2016 01:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=q2YVsgtBkJp2GGDybBw8QjzciTomir9E7gf3RjubCWo=;
	b=A5JNmqoCRPv/nxgw3p/UAEWPvWRTeBalCvQQBiaGKTfGa0K0sk6vlghBHd3q2zvrHH
	PmUl5kAupvnEgvW5ESisW/R1LdonAH301Zp10aJJUt4082v3mNsiCikSXWYacayvzVOz
	pKqMOfeMuw+R3xB1Y2up8VrqRjBzUyNXcOluhgAytFWi1VsOjEMoydSu+8CNbWzREemR
	YvaVIJ/+VMgtsoRXBQZx/7NyOGeacG58MwwPMz+vqkvIzEG532g05QdGD8vNpwlFiv7Q
	fnsIoL43JdaYc41QzH91ESG0V+7xsDSVwoUQV6Ue+7+9x1NJ1B3+LIS3/4LdP/NI3VSW
	CuZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=q2YVsgtBkJp2GGDybBw8QjzciTomir9E7gf3RjubCWo=;
	b=B8s4KtOxnP8+PP8TjRweWJ10qWUz02CfFJGcXWiXpFwPeJgkoTQLvxSALe5Z8SFBW3
	+7ddiJnlu9flcnUZ/CC4L9OLv3qZrO587FnOSLpehS/qpHxA9wAew+7wB52Aa7wCqTZe
	3KEy3CaUsNuK+Kly8hhMtE8U4QDWl3cLA0ujUUsRDbcrS8OYLm8WE40y9e9JAhwF2thJ
	6Tuo8jA61wr20+/8GXRxabwnUUsE0+Ki2RxLZmp4LqAU1NBKka+ALbXXkwEWlJexd8Eb
	OD6k3xGsQnr44WO6+Y7rVwGOph43KnKNc1DwqNyYbGbmz+4na6ymBEbQVOYImUiggzAP
	tnQg==
X-Gm-Message-State: AG10YOTXWszNPDRDdPZ8SwTJKri8xxgBiOzu4xkmRAf2XPIoS5bmT+w6jV/NzG2tL2gTOfmgtN7020abkPzXKv+l
X-Received: by 10.50.160.7 with SMTP id xg7mr3147539igb.64.1455009024947; Tue,
	09 Feb 2016 01:10:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Tue, 9 Feb 2016 01:10:05 -0800 (PST)
In-Reply-To: <56B9A55A.9040607@nokia.com>
References: <56B1D2D1.5010508@nokia.com> <1454497513.3990.6.camel@open-rnd.pl>
	<56B33100.9020903@nokia.com> <56B89638.9060905@nokia.com>
	<1454939078.3938.18.camel@open-rnd.pl> <56B9A55A.9040607@nokia.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Feb 2016 09:10:05 +0000
Message-ID: <CAJTo0LYj05btWH+pnLkp-gwd+S1qefys+_ZhdEMBGShqm08nrQ@mail.gmail.com>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where should I append Yocto bitbake task to create work folder symlink ?
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
X-List-Received-Date: Tue, 09 Feb 2016 09:10:29 -0000
Content-Type: multipart/alternative; boundary=001a11339de813eada052b52b063

--001a11339de813eada052b52b063
Content-Type: text/plain; charset=UTF-8

On 9 February 2016 at 08:37, Woronicz, Bartosz ( NSN - PL/Wroclaw) <
bartosz.woronicz@nokia.com> wrote:

> Ok, but I don't want to run it everytime, just after the do_unpack. What I
> need to put it in requirements for each recipe ?
> Maybe something like
>
> do_unpack[require] = "latest_link"
>

do_unpack[postfuncs] += "latest_link" will run latest_link after unpack has
executed.

Ross

--001a11339de813eada052b52b063
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 February 2016 at 08:37, Woronicz, Bartosz ( NSN - PL/Wroclaw) <span di=
r=3D"ltr">&lt;<a href=3D"mailto:bartosz.woronicz@nokia.com" target=3D"_blan=
k">bartosz.woronicz@nokia.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div id=3D":283" class=3D"a3s" style=3D"overflow:hidden">Ok, but=
 I don&#39;t want to run it everytime, just after the do_unpack. What I nee=
d to put it in requirements for each recipe ?<br>
Maybe something like<br>
<br>
do_unpack[require] =3D &quot;latest_link&quot;<br></div></blockquote></div>=
<br>do_unpack[postfuncs] +=3D &quot;latest_link&quot; will run latest_link =
after unpack has executed.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Ross</div></div>

--001a11339de813eada052b52b063--
