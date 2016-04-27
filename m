Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E70A0E00D7F; Wed, 27 Apr 2016 02:24:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B3F6E00D7D
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 02:24:15 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id c3so11947273igl.0
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 02:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+5SGtQwLLNHm2GdCqS7prS6vDPTjTlAoYX7F5KUEF/4=;
	b=yUNckOum+iuLyL7zaRa2FNcfSLucHanm4QNjWATezHThgot98+O3af9d45PbsWe6jC
	X8z8ASqC9Mflb9P1A5wXR7A17KFNiTIHVItKolMCC4n8BpGGGoM+4s9pUE/0h59NuDNm
	ErIjLfrsKeS9D5ASTOXAXu00Z1qC7Pr8tFijVgYgRrBJM/Jf/6DKNVKOV3c28Pqt87cD
	NK4wAa7oxLZu/k6mjls/xFyXVMychEBFWiFTodsJxSUQXoymnfb+EiLhecQpOvX2Hdzv
	Vs/YOyWbZW6lWfE27oulF9NHdh1b6bExcJdO36XA79uX9RdRWLJjxn5lF0IszjPWgavb
	dbNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+5SGtQwLLNHm2GdCqS7prS6vDPTjTlAoYX7F5KUEF/4=;
	b=lDS60mhuQpyaZDWui1WvQHJ78aSR072BQyxzslCM53d2y2OnoCkjQO9mvPSLTGXpet
	PSmYGik2wUNKYS0Ju556F6xxlD2Pbxj/wFEnwP6+vB3uHHjHXvj5iPTxZi9Nz1mh+DaQ
	wcqPwAWwevtvACveAUS+pNTp37GqXQtO5gwKdIBw98UB+SHcHfl2vQlJeQPqXVIjw7w9
	oXiPUOkxsfoRbgUXE5uh8ZbF4l9crsOvnysvSO8eV0L4Vy35fAFOKr5yIUKt5XXdBcbO
	NdEeJZd6IDQ75GjuNDpPXOmqykZqAGtdtCpHgS4smvIm4+KT70LyRjDEOvyz+doowzh+
	Qo1A==
X-Gm-Message-State: AOPr4FV+dod/pGlkZq8ogIdVi+w/jH2JepJtq3fLf65uP3gsA6hw2zPN3JnBfJIqLOHqB0q9moeeUnLw9Ka/te+H
X-Received: by 10.50.233.40 with SMTP id tt8mr25683778igc.78.1461749055235;
	Wed, 27 Apr 2016 02:24:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Wed, 27 Apr 2016 02:23:55 -0700 (PDT)
In-Reply-To: <572084BB.5090307@mlbassoc.com>
References: <57207CC3.3020905@mlbassoc.com>
	<CAJTo0LbHvD417+AkLhM8153DhbpBAE9TTeGMbuEDr+BV0CJAbA@mail.gmail.com>
	<572084BB.5090307@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 10:23:55 +0100
Message-ID: <CAJTo0LZYOE-Sd_8OR0oGHpigWBVQM+mFkmP69gSOO6RuRb7jDQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eudev hwdb?
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
X-List-Received-Date: Wed, 27 Apr 2016 09:24:19 -0000
Content-Type: multipart/alternative; boundary=f46d04287571308c97053173f938

--f46d04287571308c97053173f938
Content-Type: text/plain; charset=UTF-8

On 27 April 2016 at 10:22, Gary Thomas <gary@mlbassoc.com> wrote:

> Can you explain a bit more? - BAD_RECOMMENDS doesn't seem to be documented.
>

My mistake - BAD_RECOMMENDATIONS.

http://www.yoctoproject.org/docs/2.0.1/ref-manual/ref-manual.html#var-BAD_RECOMMENDATIONS

Ross

--f46d04287571308c97053173f938
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 April 2016 at 10:22, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex"><div id=3D":3bz" class=3D"">Can you explain a bit=
 more? - BAD_RECOMMENDS doesn&#39;t seem to be documented.<br></div></block=
quote><div><br></div><div>My mistake - BAD_RECOMMENDATIONS.</div><div><br><=
/div><div><a href=3D"http://www.yoctoproject.org/docs/2.0.1/ref-manual/ref-=
manual.html#var-BAD_RECOMMENDATIONS">http://www.yoctoproject.org/docs/2.0.1=
/ref-manual/ref-manual.html#var-BAD_RECOMMENDATIONS</a></div><div><br></div=
><div>Ross=C2=A0</div></div><br></div></div>

--f46d04287571308c97053173f938--
