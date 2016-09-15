Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DFAEE008E3; Thu, 15 Sep 2016 07:49:04 -0700 (PDT)
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
	*      [209.85.214.54 listed in list.dnswl.org]
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 133BFE0080D
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 07:48:42 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id n143so79337579ita.1
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 07:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qalDSlVnqD9cVQRkhJUzXG3vqLWZ90Dloy7Ub0inzrk=;
	b=cLtOQw9VNNHBymgiuo6mwh+U90/sa/DqH5CQkqG2mlPTuB82Fmw4g+C0n6+al8e8JX
	X1fpA6qzv5xOlcah6bI+ijrwIHrZchEtL4sajNcF/wShTHEXa5D8jS0r2DS+tPuGACWT
	r85ZH2Y/+b2L2Jx3hXMQKpiUZG5IHGaiXBpsEzFVV61mGBlb8qVYxQxZ7Fq5F3dobjPs
	w676yZdaexKHwDjl56bctADTaFLRqUAAUqr8rmyerMKlKEU2vCWmO/tljOxwBsINDnx8
	qnwIfnRXbpuTGxFUnIg4998pKah2JJhAiNr3zSn8LM2gBjSscnXBvJyII5NqcKEbeMoI
	yLbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qalDSlVnqD9cVQRkhJUzXG3vqLWZ90Dloy7Ub0inzrk=;
	b=YvZAtvVQBpmWV8gh7qBgcPzfahzkvvsjcuYTMImE+KhdpyR6huF2dPc33F4iO2bUwi
	abAvqzAoDlQdODudogcHqktSi2DxyrlO4FouEwnejXnsGUdBz3JYxQcq4twONBwgvLYX
	ijSNojC9r8r39qhdtw6g2JABn1ieb8megURjNu3AdpyKAyEO5abgrvj0PV/MbVuVY7T7
	3ocohFqGT2w6u1UFFROm3qdo1NraavzyxnCQGwhnKkm2gvk6vsHS13T6Y/8UQIVpTy1E
	jkyILBcJBBxS3B5z2fJyBmwSi0pT/Cq5Y5GhcVDWg34lDTXiaSZ/8mN71qDG2o2dQFmT
	+d8w==
X-Gm-Message-State: AE9vXwMYcvIkSENrsqMRPykOZo9L8C+MgkaFcY5eOwwydlJfqJbmVuTNSx+XXyL4uVsuWAO6+bqhOhylxFdbQhZO
X-Received: by 10.107.165.80 with SMTP id o77mr17076996ioe.118.1473950921467; 
	Thu, 15 Sep 2016 07:48:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Thu, 15 Sep 2016 07:48:21 -0700 (PDT)
In-Reply-To: <803AC7A90CD4DF4880EDA6182185AD7026D491AD@RCHEXMBP1.fnc.net.local>
References: <803AC7A90CD4DF4880EDA6182185AD7026D491AD@RCHEXMBP1.fnc.net.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Sep 2016 15:48:21 +0100
Message-ID: <CAJTo0LZYbkM+7NghAvvYOC=ZPGZybkdsguzBDDj76vug_6LouQ@mail.gmail.com>
To: "Nadikuda, Lavanya" <Lavanya.Nadikuda@us.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: No /lib64 directory in yocto
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
X-List-Received-Date: Thu, 15 Sep 2016 14:49:04 -0000
Content-Type: multipart/alternative; boundary=001a1141f2a6174841053c8cf1de

--001a1141f2a6174841053c8cf1de
Content-Type: text/plain; charset=UTF-8

On 14 September 2016 at 22:44, Nadikuda, Lavanya <
Lavanya.Nadikuda@us.fujitsu.com> wrote:

> Could you please let me know what the resolution is for /lib64 directory
> not found in yocto.
>
>
If you're bothered by this, you can change your base_libdir to be /lib64
instead of /lib.

Ross

--001a1141f2a6174841053c8cf1de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 September 2016 at 22:44, Nadikuda, Lavanya <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:Lavanya.Nadikuda@us.fujitsu.com" target=3D"_blank">Lavanya.Na=
dikuda@us.fujitsu.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><p class=3D"MsoNormal">Could you please let me know what the resolution =
is for /lib64 directory not found in yocto.<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>If you&#39;re bothered by=
 this, you can change your base_libdir to be /lib64 instead of /lib.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></=
div>

--001a1141f2a6174841053c8cf1de--
