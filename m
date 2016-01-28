Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36FFFE0073D; Thu, 28 Jan 2016 09:25:55 -0800 (PST)
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
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C79A0E00444
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:25:53 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id g73so62812645ioe.3
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=aeFYp6nGujDe2bIJc7MbZqINrUWqmGiyJAxHecPwMyE=;
	b=t16bboxTZLZ7RBEq1BcfGc6A+s5GzziCeW0zoKxXU5rlzeWQm2qN1I7l1g5OFa3XQx
	61cFISsuf+ue6lvpVpqTouoLumayKvJDmC2DxZgD0DA2tlNlkPtOCJ75/S7PvVQtbd7G
	mN36uKwsam66YKlSYC6G06htMi8Ooz4ic3wRzBcqLaUlz5OjXZyaKZmEDnSpoKmKs14j
	+lu8lRQ/hUexRapC+/hVOh+zE/2bzEh+a4v7SRu0nDtmecjJtMdCojHl+dhQLV+u9RMv
	3lkz3CSBrU+7U8aj3ZJhdxegGI3WEAlubWfTspKRUOsGh0fsHIqSlXHgqjCshMqH7P8E
	V1vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=aeFYp6nGujDe2bIJc7MbZqINrUWqmGiyJAxHecPwMyE=;
	b=AZqvTTPXEPyNHM7jlqc2yDVVCBzcqWMp0CcRtOYSqN5aOKKh2p5PQhYw3u++AT/8m/
	P6qiRjOHwJW9bQZL846AHuBP14zyMJnZcWPqi/TQSg32dvE6mRdXy8td36b19xBfRgjg
	T11VdDVCt+/1UGSQIOPjPDIB7Tp73GXoz1ta7Ig/CiaMSIOD+1OoRSDtarICFBprjk9I
	JuNxrNCecO8ZA8BznntZUazCaEVWHXN5V7YbD5g+kvrIEeW708WIs5Hv0dQStbObKbjF
	rCge2kCdaMpKbXAWmVnHUGk+sFDDZobsLADJSXoiLNeLOGw/Q8Q7uggsJ2jsjoU2K8KV
	ozWg==
X-Gm-Message-State: AG10YOTllKDPB4225UExxVXQTlbjgxnAMEvyoX3OWmY8PWfEtsYX/XlK6gLcNn9CgBI3IXpwU1NMwC8XZH8Mactp
X-Received: by 10.107.164.38 with SMTP id n38mr4827628ioe.148.1454001952743;
	Thu, 28 Jan 2016 09:25:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 28 Jan 2016 09:25:33 -0800 (PST)
In-Reply-To: <20160128172539.GB2574@jama>
References: <1454000855-26774-1-git-send-email-ross.burton@intel.com>
	<20160128172539.GB2574@jama>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Jan 2016 17:25:33 +0000
Message-ID: <CAJTo0LbcreXfS=+6=4iRfyWSy30=3e0bcqSMJp9eonv6a+SLgg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-autobuilder] nightly-world-lsb: blacklist qwt
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
X-List-Received-Date: Thu, 28 Jan 2016 17:25:55 -0000
Content-Type: multipart/alternative; boundary=001a11422632e57c2a052a683593

--001a11422632e57c2a052a683593
Content-Type: text/plain; charset=UTF-8

On 28 January 2016 at 17:25, Martin Jansa <martin.jansa@gmail.com> wrote:

> Why not set INSANE_SKIP to make it more specific?
>

Because I prefer to be harsh instead of silencing errors.

Ross

--001a11422632e57c2a052a683593
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 January 2016 at 17:25, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"=
mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2um" class=
=3D"a3s" style=3D"overflow:hidden">Why not set INSANE_SKIP to make it more =
specific?</div></blockquote><div><br></div><div>Because I prefer to be hars=
h instead of silencing errors.</div><div><br></div><div>Ross=C2=A0</div></d=
iv></div></div>

--001a11422632e57c2a052a683593--
