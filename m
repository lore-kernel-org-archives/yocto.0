Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FCABE00346
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 09:23:26 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so1507406qcs.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 09:23:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=Wg5M60j0n6MFMqzMuEusBJ8PUYwpn0XUjUzVx3FgQjI=;
	b=RxVeCvUOJdxB6AIOPCEDrPL/G5eyeJFiAvHfoqV306gp5shgE5U9JzsJB3aNRtCubp
	4h4YIvyJifqs8ChFL0PuXyBP5AwHwudrmiTityU8Y5S74kzlUXkf3TIW1/OyptLbR9Z6
	3B3IrQB3q6AxJlcPsytIhxbs8PH80I016/Sx7aqnc757Ji2EhfIyIJpZZfoV4uZw2UNQ
	Ue3fqnyHHd6qExlICFQPYTs1C9rBjTgds6NoQRN0yE4NI6/TqYg1xAIl2iix0m4lwYea
	LtM5mpLnaKXo5/OTyBIffS7L/hEjWrf9W+Auo0rdQXmGCApedW74pn+K972L7GRcno9z
	ttjg==
MIME-Version: 1.0
Received: by 10.224.78.83 with SMTP id j19mr12475735qak.56.1347467005855; Wed,
	12 Sep 2012 09:23:25 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.116.77 with HTTP; Wed, 12 Sep 2012 09:23:25 -0700 (PDT)
In-Reply-To: <1391749.2csV02vdze@helios>
References: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
	<CABcZANnkt30OvFX3BNctHf115jQbX4piKMxb3b2N8saP4Prrmg@mail.gmail.com>
	<CA+gsK-rSTj418hLedGJ8VgdUgrP7=eRqNw5etpb21gBWwGAYkA@mail.gmail.com>
	<1391749.2csV02vdze@helios>
Date: Wed, 12 Sep 2012 09:23:25 -0700
X-Google-Sender-Auth: J3TGwMhev_Skv1igqlch9JQHtMY
Message-ID: <CA+gsK-rGm6zjVL6sAUoLYwYFJKwRn1oVEE7ubtXi3W=qrd6=dA@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQmeOy6JVVlPjNDy0B4Q76qxEKSTLkAW8jGF4td5kvETs4cF1Z76kqcW+Rq4xsbW4oLqsbwK
Cc: yocto@yoctoproject.org, Chris Larson <clarson@kergoth.com>
Subject: Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake linux-yocto -c compile -f' does not create image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 16:23:26 -0000
Content-Type: multipart/alternative; boundary=20cf3074d81a3b081804c9839cde

--20cf3074d81a3b081804c9839cde
Content-Type: text/plain; charset=ISO-8859-1

Thanks. That explains -C. But what happened to -f in the 1.15.2? It seems
that it does not trigger a rerun of the dependent tasks anymore when
bitbake is invoked again specifying the package only.

I am actually teaching a class right now and it happens to all of the
systems including my dev box. So it's not isolated to one system only.

Thanks,
Rudi

On Wed, Sep 12, 2012 at 9:01 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Wednesday 12 September 2012 08:16:46 Rudolf Streif wrote:
> > Thanks, Chris. From what bitbake version on is that command available?
> The
> > bitbake version bundled with YP Denzil 7.0.1 is 1.15.2 and it does not
> > recognize that command:
> >
> > ...
> > bitbake: error: no such option -C
>
> That's correct. This has been implemented in master (and will be in the
> upcoming stable release).
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--20cf3074d81a3b081804c9839cde
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks. That explains -C. But what happened to -f in the 1.15.2? It seems t=
hat it does not trigger a rerun of the dependent tasks anymore when bitbake=
 is invoked again specifying the package only.<div><br></div><div>I am actu=
ally teaching a class right now and it happens to all of the systems includ=
ing my dev box. So it&#39;s not isolated to one system only.</div>
<div><br></div><div>Thanks,</div><div>Rudi<br><br><div class=3D"gmail_quote=
">On Wed, Sep 12, 2012 at 9:01 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleto=
n@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wednesday 12 September =
2012 08:16:46 Rudolf Streif wrote:<br>
&gt; Thanks, Chris. From what bitbake version on is that command available?=
 The<br>
&gt; bitbake version bundled with YP Denzil 7.0.1 is 1.15.2 and it does not=
<br>
&gt; recognize that command:<br>
&gt;<br>
&gt; ...<br>
&gt; bitbake: error: no such option -C<br>
<br>
</div>That&#39;s correct. This has been implemented in master (and will be =
in the<br>
upcoming stable release).<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--20cf3074d81a3b081804c9839cde--
