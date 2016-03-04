Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E9D0E00CB3; Fri,  4 Mar 2016 06:58:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3DE4E00B6F
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 06:58:02 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id l127so64728807iof.3
	for <yocto@yoctoproject.org>; Fri, 04 Mar 2016 06:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=LvKt5P+nIR3HIuYuWG4Ag19Owsku4pTguC/43QwsGqc=;
	b=f37yuLsogSxftNCxaHNp1mCMb+6E+SUaJwhSWgZZCqmveJQJ4JoUraFDATP5pAr+kA
	eGGV18D8mjwtlLrzuRgczfaNlRkdWBC6uvEeIWNALO+SWPrVeT2V80IA56cBEnOI5/a4
	GZTMx23srEBc8k1C3uKq/FQPD03c9bIWZpfrsm9FYpPSADNCrleYVxD7onzNCUeltpwx
	QAO/nyKDObSB94O8x6lh5RB+yKpDptMNrGTVmQQd7J3eux0WIywzTb1voP0XKaV0B9Zz
	gwO/Pp/YLUcAdZsP5sPY5ykwOwzCnMUy/Ag1REhfMKFKl63r1CfVR8w85ss0+aqYP+pt
	1eSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=LvKt5P+nIR3HIuYuWG4Ag19Owsku4pTguC/43QwsGqc=;
	b=UdFpn7AMCqhRKlYacZKIczjL6XtlAzat3qj2tQobGjcielcSVD6rwCgEl+y9tq39Yd
	LfWgfs7lFgdZz3zot7zbRzOx5qH0t4xJZM+Dr78JnRnDezmvZMnspe+0L5WsiX2MCbp/
	HNorckwmpYPkktdkvaOugsBMXZF038oWTLOMP4oCau0LEncrkxKoDUe5EI71vicMTvZW
	t8QrXx30BbIHCFpiEQw402/5Yq4s+qIYbHV9lGrPfKqW1Rb2NyndWDf79Ogw7nlmAgXt
	FnqmN/x7fHzduQJX3zVHQJCxUTQ1ooy0zJ9QC22/o5gUH7dd3wdOzKFOfFaf2CWfIvCe
	cN1A==
X-Gm-Message-State: AD7BkJJE/rL/CXyFWEyLNosPgJN0Pz/4B4ChJdEoa63Jz/6YtHsYakJWK/Tpd7CnKLrmUJm1YGzbve9T3Ogyow==
X-Received: by 10.107.15.223 with SMTP id 92mr8492965iop.3.1457103481770; Fri,
	04 Mar 2016 06:58:01 -0800 (PST)
MIME-Version: 1.0
References: <20160304135527.GA769@graute-opti>
In-Reply-To: <20160304135527.GA769@graute-opti>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 04 Mar 2016 14:57:52 +0000
Message-ID: <CABcZAN=oPmp_OUor_4poPmgzpF4uNzeUdYD2HhA+QPMATseG6w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Howto change the default shell in yocto?
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
X-List-Received-Date: Fri, 04 Mar 2016 14:58:06 -0000
Content-Type: multipart/alternative; boundary=001a113ff3186ebdf3052d3a57a1

--001a113ff3186ebdf3052d3a57a1
Content-Type: text/plain; charset=UTF-8

The default *system* shell (/bin/sh) or the default shell for users, or for
root? Folks often conflate them, but they're not the same.

On Fri, Mar 4, 2016 at 7:01 AM Oliver Graute <oliver.graute@gmail.com>
wrote:

> Hello,
>
> how can I change the default shell on the yocto target from bash to
> another shell like dash?
>
> is there a variable for local.conf? or do I need to adapt my passwd for
> every user?
>
> Best Regards,
>
> Oliver
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113ff3186ebdf3052d3a57a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The default *system* shell (/bin/sh) or the default shell =
for users, or for root? Folks often conflate them, but they&#39;re not the =
same.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Mar 4, 2=
016 at 7:01 AM Oliver Graute &lt;<a href=3D"mailto:oliver.graute@gmail.com"=
>oliver.graute@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Hello,<br>
<br>
how can I change the default shell on the yocto target from bash to<br>
another shell like dash?<br>
<br>
is there a variable for local.conf? or do I need to adapt my passwd for<br>
every user?<br>
<br>
Best Regards,<br>
<br>
Oliver<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a113ff3186ebdf3052d3a57a1--
