Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9846.1590139599357217305
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 May 2020 02:26:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CxMnc5/J;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED581E01BDF; Fri, 22 May 2020 02:26:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B181E01BCE
	for <yocto@yoctoproject.org>; Fri, 22 May 2020 02:26:37 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id i89so3569734uad.5
        for <yocto@yoctoproject.org>; Fri, 22 May 2020 02:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s1Bj2ZOpTbo96y8jMyvEbag/wYbtl3L9DBWt8yxKQ3E=;
        b=CxMnc5/JIiGM7e79PIg+R4lHdsJ/vTdSPgbGmnl5JL/VU22giImCLGVNPtrZIVt7Ez
         4DJsCNmNNv0z30XdS7zQGYocjWhP4rIcZG8h8/VuvaeyiUzkd0JO4ZOTwhtCh2WlfoT7
         1ohpWkCsLkx8mkZBGXnDY08BuohOqHaFs1dArPccNxuk6pJ/TLAtTFCceEOoIfxmILCK
         nwgaPLgcJW4UfLOrbsqKM+PP8eTqJzoVnAR7w6TdCpFUY5BJmxXAIOcK97V27uZUhSKB
         plQKam53821biRdiIRUcCu+zll0EULjAP0/cTFf5cCg4AsAgRi95er5H5HOnVe1wjX3e
         eipA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s1Bj2ZOpTbo96y8jMyvEbag/wYbtl3L9DBWt8yxKQ3E=;
        b=YlsomZihrpBioALZfkDOr6zsaKKlah0sJN1ERrSLGhs2aR2fyobLxiG7f94XWNSp8M
         zpuhPoHIbXwTi8Zuf7UJ6AuhklVmUuIMEnAFuln0aJH1SjHXzlK/+UsK+4bWCIJZRTgF
         Fsu3Zd/sS4MsDlkehf+CBoIhXOk0eivz8UJ07M+l+uWPF3+xTMVlXle5p0sYX4H6po/a
         7m5l42OSjyd3+RIIvoqoHwNO8JShlpVJApA/CZqZ440U9ZjpUEusZ6magT4Lx8P5nBV0
         W1No2MiKdyPR4wAs50N69ZJXbzUdLXJZw+psSpDgNfplQrnvZqK6pfgv3892SsFPZRzQ
         2OEA==
X-Gm-Message-State: AOAM532jjWkf8x5KwnaTER81DmdhD7bHj+BmVerNQ5E4aciohh7ykkQI
	dLheM6kf4JIjMyVWXV2M3zkYfmzsRutjdBkeW8U=
X-Google-Smtp-Source: ABdhPJxVnEd4HXJVBuARD/WhZjU5FNAJpF8r2+Pr6Cgd1iMDiQTjlzk66itpch4yTETP+LTI9L7QxVtbJsv8tv9NZxg=
X-Received: by 2002:ab0:6688:: with SMTP id a8mr9858029uan.93.1590139597287;
 Fri, 22 May 2020 02:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <1590152009-5052-1-git-send-email-zangrc.fnst@cn.fujitsu.com>
In-Reply-To: <1590152009-5052-1-git-send-email-zangrc.fnst@cn.fujitsu.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 22 May 2020 11:26:26 +0200
Message-ID: <CANNYZj9VT3M1-nP18j6b5zZk9NMxAAZ2TnLoPptdZabwt=VbjA@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner] Added output processing to pytest
To: zangrc <zangrc.fnst@cn.fujitsu.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Anibal Limon <anibal.limon@linaro.org>
Content-Type: multipart/alternative; boundary="000000000000d6f47005a6393967"

--000000000000d6f47005a6393967
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 May 2020 at 05:54, zangrc <zangrc.fnst@cn.fujitsu.com> wrote:

> +               char pytest_append[] = "| sed -e 's/\\[...%\\]//g'| sed -e
> 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP/g'| awk
> '{if ($NF==\"PASS\" || $NF==\"FAIL\" || $NF==\"SKIP\" || $NF==\"XFAIL\" ||
> $NF==\"XPASS\"){printf \"%s: %s\\n\", $NF, $0}else{print}}'| awk '{if
> ($NF==\"PASS\" || $NF==\"FAIL\" || $NF==\"SKIP\" || $NF==\"XFAIL\" ||
> $NF==\"XPASS\") {$NF=\"\";print $0}else{print}}'";
>

Is it possible to process the output directly, rather than tweak it via
sed/awk shell pipelines that are very difficult to read?

Alex

--000000000000d6f47005a6393967
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, 22 May 2020 at 05:54, zangrc &lt;=
<a href=3D"mailto:zangrc.fnst@cn.fujitsu.com">zangrc.fnst@cn.fujitsu.com</a=
>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0char pytest_append[] =3D &quot;| sed -e &#39;s/\\[...%\\]//g&#39;| se=
d -e &#39;s/PASSED/PASS/g&#39;| sed -e &#39;s/FAILED/FAIL/g&#39;|sed -e &#3=
9;s/SKIPPED/SKIP/g&#39;| awk &#39;{if ($NF=3D=3D\&quot;PASS\&quot; || $NF=
=3D=3D\&quot;FAIL\&quot; || $NF=3D=3D\&quot;SKIP\&quot; || $NF=3D=3D\&quot;=
XFAIL\&quot; || $NF=3D=3D\&quot;XPASS\&quot;){printf \&quot;%s: %s\\n\&quot=
;, $NF, $0}else{print}}&#39;| awk &#39;{if ($NF=3D=3D\&quot;PASS\&quot; || =
$NF=3D=3D\&quot;FAIL\&quot; || $NF=3D=3D\&quot;SKIP\&quot; || $NF=3D=3D\&qu=
ot;XFAIL\&quot; || $NF=3D=3D\&quot;XPASS\&quot;) {$NF=3D\&quot;\&quot;;prin=
t $0}else{print}}&#39;&quot;;<br></blockquote><div><br></div><div>Is it pos=
sible to process the output directly, rather than tweak it via sed/awk shel=
l pipelines that are very difficult to read?</div><div><br></div><div>Alex<=
br></div></div></div>

--000000000000d6f47005a6393967--
