Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F146E00AC5; Mon, 27 Feb 2017 05:40:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23E71E00A4C
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 05:40:30 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id u188so96713868qkc.2
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 05:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+XhnmDeXVhDKgpm2Vm6uhtHjlOn7ZbnTv/QoQEhEoc8=;
	b=V4dDNXV5aImfqhU+xl6ddUoyF97UtW1NLTY7NM52M74RiEnoOdbaE99OPlZPL4XIvF
	PxHR0z7V9jeSkKv8pQVIIy5Y4W+Ym4q2yvEQYv2QBTbb3B9OOoUzX56c2TeaL/CncZma
	giRUN6z7McYcVgIRWNJVQI0kli+PBiB5AzhlgUnPTaT3g9Nqfj+8ZrRl/2R82MqztZMB
	4Wj6yX6BG+TlWeljFWsMT1vtMbTLN1l0RC4f/I/kXNl7k557ClpU5UkArWkKMCYwI9Km
	YaJ8UIbIDP1VWL+XT8d4pRFD9XcUv9IuG/52LiQIEUwJl02VUhiOvpHcAJsGrWEmpEIW
	yMrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+XhnmDeXVhDKgpm2Vm6uhtHjlOn7ZbnTv/QoQEhEoc8=;
	b=ttJfxLmGPXUSwrm+1UK4jXXTFajhbVJ25Dd257OHSGIFYdF62ymTmvedSPyn9FHt5S
	aOTJgZufLO+tdopv8vUdU4ZcBK/ve/wU9VzigxWrdtcX8xvRLaMieFDG+PBZYXTQCmaG
	qZY7AkL9Y2d7dOyMjQelkFzV8ei6v1p5k6SIuyw2gFKUihG1NbzEE7Oc17KLViGqygPH
	o/8IVCOMqKUbvezfnKZ+GgvU+77qVQzjz0Pq8xW+9jebSRDHp2WIShNj9FW6aNSk5IGR
	TPFzv0JkrBteeJRlz6peq6QRv0jMg4E80n3/rCSOUmLYbrtgL9J5B06lln3vJt1FmXIP
	u9Ww==
X-Gm-Message-State: AMke39m+tmk8Atna6ZirExkG3KORCbdwBifeStKgwx6j7/IZbZwx3ZurwD2ggjiaq2Af9KuwaUDtQ5pr+awxtA==
X-Received: by 10.55.65.70 with SMTP id o67mr14844518qka.254.1488202830086;
	Mon, 27 Feb 2017 05:40:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.132.68 with HTTP; Mon, 27 Feb 2017 05:40:29 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1702270526001.30746@uk63952.mitel.com>
References: <alpine.LFD.2.20.1702270526001.30746@uk63952.mitel.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 27 Feb 2017 08:40:29 -0500
Message-ID: <CADkTA4Oxtk1PrwG7oJs2AN8MLdMN4YusN7Lj+jLJZKRjYqSOtg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: kernel-dev manual, section 2.6.2, do tags like "systemtap" exist?
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
X-List-Received-Date: Mon, 27 Feb 2017 13:40:35 -0000
Content-Type: multipart/alternative; boundary=001a114abc7e0ad2e0054983395b

--001a114abc7e0ad2e0054983395b
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 27, 2017 at 5:27 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   section 2.6.2 refers to how to display changes based on a tag, and
> uses the alleged tag name "systemtap" ... do tags like that even exist
> anymore? i see no such tag in my current build directories.
>


Correct. The tagged features were dropped a few years ago. So any section
that
references them could be dropped.

Bruce


>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a114abc7e0ad2e0054983395b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Feb 27, 2017 at 5:27 AM, Robert P. J. Day <span dir=3D"ltr">&lt=
;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcou=
rse.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
=C2=A0 section 2.6.2 refers to how to display changes based on a tag, and<b=
r>
uses the alleged tag name &quot;systemtap&quot; ... do tags like that even =
exist<br>
anymore? i see no such tag in my current build directories.<br></blockquote=
><div><br><br></div><div>Correct. The tagged features were dropped a few ye=
ars ago. So any section that<br></div><div>references them could be dropped=
.<br><br></div><div>Bruce<br></div><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">
<br>
rday<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/<wbr>rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt n=
ot follow the NULL pointer, for chaos and madness await thee at its end&quo=
t;</div>
</div></div>

--001a114abc7e0ad2e0054983395b--
