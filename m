Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7094AE00E44; Fri, 25 Nov 2016 20:09:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22AE0E00E42
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 20:09:15 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id 189so16965688pfz.3
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 20:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=9jVTCxEFr9QJVNMr081MyRphLyv925XCjHfh9t3wCmE=;
	b=a7osXZWWsI40pB8lpoFad++jiP14TKkxZenj2hmlxzEH+lhBwMpo/OvuCfD43DivDJ
	RUnQbwue/MN8qaBtiFWaIqOHksvHIgonTX/ndRIYHvoB5AGsV1IKQXy2HBrrUqy32Zb7
	nzioIYqr+R+bhx7ATLf+JLntqg1iu7CjvHVnqL3SKiZZjkTeuJjTm0EQ/cgHsik5sZYH
	p1BX9jizAH12VtHZR26VbFy/Gwxiuk2VgmvvaQMw++LqW8PZxOcDup9YgXk2rSxA7gql
	Iuf2AThBYPuvPLxWwFDRfCDo5hMe/i2Ie/hqCoiQwKH0GUqCpA6/uGDGsf/ygOk+6VEz
	mrCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=9jVTCxEFr9QJVNMr081MyRphLyv925XCjHfh9t3wCmE=;
	b=Yqm9BPlK4UBYpavMtRQ4jvjo5fQSzTrm9H9CAQAt6gkoEMY5s74OSntYRhoNC3sM2c
	DBDqoHMaxZBDykDPIVFcBDyeF/UwPrdjSpg5uM8kYQZTHgyHXxmK+LGCE0DcGmuBZUwI
	bD04byZ2agJWMCEwD4yS6v7869K+c3b8vPSPnw+7hzzdhtL+qwAzQxAkAsLhJnAwfRHD
	pSHG50wjwc+QTM4GTW9nloh6VX1nFZqo+7KoZ4wvkk2dQ+AAwq3rFplrb0B9zoT/iK2i
	UbQ+a9xEQj+LTl5dWhFGZ4cH3E5q+j2ZsAvGroVDftSm2gKW2c1UsxLmZ4e24aou3jwo
	vxZA==
X-Gm-Message-State: AKaTC01dtgf6xxuSzzUtD447Mo3npo+gUg14QKKVrixn/V99wlho+mUhG96+J8yKj3hZZA==
X-Received: by 10.99.234.21 with SMTP id c21mr20639335pgi.166.1480133354672;
	Fri, 25 Nov 2016 20:09:14 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:38de:4871:ed5d:b69f?
	([2601:646:8882:b8c:38de:4871:ed5d:b69f])
	by smtp.gmail.com with ESMTPSA id
	o126sm52948078pga.34.2016.11.25.20.09.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 25 Nov 2016 20:09:14 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
X-Priority: 3
In-Reply-To: <9CB0D1D1DC954DE9B86D53CCBE548085@IWDTP166>
Date: Fri, 25 Nov 2016 20:09:13 -0800
Message-Id: <953CCA51-8D96-4360-AB41-5784380EE549@gmail.com>
References: <9CB0D1D1DC954DE9B86D53CCBE548085@IWDTP166>
To: Ambika <ambika@iwavesystems.com>
X-Mailer: Apple Mail (2.3251)
Cc: yocto@yoctoproject.org
Subject: Re: Renderring image using QT + eglfs and OpenGL
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
X-List-Received-Date: Sat, 26 Nov 2016 04:09:19 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_37BBCF33-6CBF-400F-B562-9A1153190C68"

--Apple-Mail=_37BBCF33-6CBF-400F-B562-9A1153190C68
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Nov 25, 2016, at 2:00 AM, Ambika <ambika@iwavesystems.com> wrote:
>=20
> Hii,
> I'm running the application (yocto dizzy release) to display the =
sequence of the image using QT + eglfs as well as OpenGL, below are the =
observations.
> When using QT5 + eglfs:
> i. Frame rate is around 56fps with 800*480 resolution display.
> ii.Frame rate is around 23fps with 1280 *720 resolution display.
> iii.Frame rate is around 11fps with 1920*1080 resolution display.
> iv.CPU usage for above three cases is 99%.

it seems there is no h/w acceleration enabled here. You need to figure =
out why=20

> When using OpenGL:
> i. Frame rate is around 56fps with 800480 1280720 and 1920*1080 =
resolutions.
> ii.CPU usage slightly increases with resolution from around 10% to =
18%.
> Whats affecting Frame rate in QT5 and how can I increase the frame =
rate and improve CPU performance.
> I'm new to QT as well as image processing. Kindly let me know your =
thoughts on this to solve.

Its a question better suited for qt mailing lists. There are several =
optimizations that can affect this but you have to know
your load.

> Thanks in advance.
> Regards,
> Ambika
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_37BBCF33-6CBF-400F-B562-9A1153190C68
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=""><br class=""><div><blockquote type="cite" class=""><div class="">On Nov 25, 2016, at 2:00 AM, Ambika &lt;<a href="mailto:ambika@iwavesystems.com" class="">ambika@iwavesystems.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><div class="">
<div dir="ltr" class="">
<div dir="ltr" class="">
<div style="font-size: 12pt; font-family: Calibri;" class="">
<div class="content" component="post/content" itemprop="text"><div class=""><font face="Times New Roman" class="">Hii,</font></div><div class=""><font face="Times New Roman" class="">I'm running the application (yocto dizzy 
release) to display the sequence of the image using QT + eglfs as well as 
OpenGL, below are the observations.</font></div><div class=""><font face="Times New Roman" class="">When using QT5 + eglfs:<br class="">i. Frame rate is 
around 56fps with 800*</font><font face="Times New Roman" class=""><em class="">480 resolution 
display.<br class="">ii.Frame rate is around 23fps with 1280 *</em>720 resolution 
display.<br class="">iii.Frame rate is around 11fps with 1920*1080 resolution 
display.<br class="">iv.CPU usage for above three cases is 99%.</font></div></div></div></div></div></div></blockquote><div><br class=""></div><div>it seems there is no h/w acceleration enabled here. You need to figure out why&nbsp;</div><br class=""><blockquote type="cite" class=""><div class=""><div dir="ltr" class=""><div dir="ltr" class=""><div style="font-size: 12pt; font-family: Calibri;" class=""><div class="content" component="post/content" itemprop="text"><div class=""><font face="Times New Roman" class="">When using OpenGL:<br class="">i. Frame rate is around 
56fps with 800<em class="">480 1280</em>720 and 1920*1080 resolutions.<br class="">ii.CPU usage 
slightly increases with resolution from around 10% to 18%.</font></div><div class=""><font face="Times New Roman" class="">Whats affecting Frame rate in QT5 and how can I 
increase the frame rate and improve CPU performance.</font></div><div class=""><font face="Times New Roman" class="">I'm new to QT as well as image processing. 
Kindly let me know your thoughts on this to solve.<br class=""></font></div></div></div></div></div></div></blockquote><div><br class=""></div><div>Its a question better suited for qt mailing lists. There are several optimizations that can affect this but you have to know</div><div>your load.</div><br class=""><blockquote type="cite" class=""><div class=""><div dir="ltr" class=""><div dir="ltr" class=""><div style="font-size: 12pt; font-family: Calibri;" class=""><div class="content" component="post/content" itemprop="text"><div class=""><font face="Times New Roman" class="">Thanks in 
advance.</font></div><div class=""><font face="Times New Roman" class="">Regards,<br class="">Ambika</font></div></div></div></div></div>
-- <br class="">_______________________________________________<br class="">yocto mailing list<br class=""><a href="mailto:yocto@yoctoproject.org" class="">yocto@yoctoproject.org</a><br class="">https://lists.yoctoproject.org/listinfo/yocto<br class=""></div></blockquote></div><br class=""></body></html>

--Apple-Mail=_37BBCF33-6CBF-400F-B562-9A1153190C68--
