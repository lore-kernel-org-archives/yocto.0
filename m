Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DEDCE00CE5; Tue, 29 Jan 2019 09:52:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55D38E00C91
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 09:52:53 -0800 (PST)
Received: by mail-ed1-f46.google.com with SMTP id d39so16668072edb.12
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 09:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=X0qzBGW6ztnogKR0P/OtoGR7190yad/lasszuhd8iek=;
	b=Ib+DVuICJbXmWyJyrkbThegWlU1ZjajbE9Tp2XApPEDA3zonvZlkuqIhEvdD3AlXYh
	JGWmwCW9CxaPr6HCexnBFiHvUVCNlIqairfGbWeRRK4ga7MYv9WfjFicfcgCcwISWdxr
	j6JbEjs7slvrh2cSAfff7tNR4dEZMemRzJlXOaYUUVMo+rVCJV3YZtMpmWasmLtvBh6Y
	SkjRONASUW42K34asoCx6AlH+Y3EsA56eUvweXO2/IIfdSl4/IhCQJ2atXS7qfx0QlOf
	jUfLjBynl/6zNvBro5naROeke2DE7M9o5PvlZGmRDHoEe53Jk231NiunYtbcz7pe4WM2
	G7xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=X0qzBGW6ztnogKR0P/OtoGR7190yad/lasszuhd8iek=;
	b=JWnW3tt8i6YcGF/Tok6iaIX77RR3VFihchqmU4L/wwpHS59VWoLbVxJYiFl5T1YM43
	3Xu6vEU9FQZZ7LhYUMawfk3y6ucMEQ+OGGcR+izXjF7nEWh1boDkYhd9sYT2q1LJikkz
	EoOeFJvYKPbVWXDhBJm6wja38QjKlFiIxO9PNNDzOQwVhIwOzYa2Xau1fhlmis+MoA1O
	J7tkfcIh9cyPmHbMt01e+rsgCTC4yg3jWm8bP9IrJzFinvyzDuwsICedNmnJg3dJ4oJY
	zhbYxbVOq+mC68jToYmwj723Dr9cQmAxYeJuzEeihURfb62pqld3Rsh0ipMEpq/OMWY3
	iqmg==
X-Gm-Message-State: AJcUukcJpyJvpuH8RlAIRJ4xLb4gJhhyrDEPGTmeY+yWzCXhtDsK7suD
	MOnzlI7FptQrqY7uHzfQ5t4yAYPuV6uDaOIFufk=
X-Google-Smtp-Source: ALg8bN6dsGf7FpaTd8mweEvb4/k6+nHg8EH+Xewy39LEH1kXYinZmMqoPUNZdNCXnXR7a6jSGKHLFd9CWXYq987UDw0=
X-Received: by 2002:a50:9849:: with SMTP id h9mr25285527edb.36.1548784372394; 
	Tue, 29 Jan 2019 09:52:52 -0800 (PST)
MIME-Version: 1.0
References: <0EACE12BE5CA844DB512EF10CAC5B840448B06B4@DEFRVAI0013.vaillant.vhgroup.lan>
In-Reply-To: <0EACE12BE5CA844DB512EF10CAC5B840448B06B4@DEFRVAI0013.vaillant.vhgroup.lan>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 29 Jan 2019 09:52:41 -0800
Message-ID: <CAFNP8Ov9acRVmiRe+E+8guTmGTuR23JaKn=32AZNs4J2m7eu2Q@mail.gmail.com>
To: "Hopp, Denis" <Denis.Hopp@vaillant-group.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [YP Core] Thud moved out of active releases
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
X-List-Received-Date: Tue, 29 Jan 2019 17:52:54 -0000
Content-Type: multipart/alternative; boundary="00000000000059b05305809c7604"

--00000000000059b05305809c7604
Content-Type: text/plain; charset="UTF-8"

Denis,

I don't understand this myself.  I don't believe 2.6.1 has released just
yet.  I have symlinks set such that the "current" documentation points to
"2.6" so any URL for a manual such as
https://yoctoproject.org/docs/current/ref-manual/ref-manual.html resolves
to the "2.6" manual.

Scott

On Mon, Jan 28, 2019 at 10:33 PM Hopp, Denis <Denis.Hopp@vaillant-group.com>
wrote:

> Hello all,
>
> is it intended that the thud release 2.6 documents overview went
> into archived documents? I can't find any news about it and thud is
> still promoted as latest release on the frontpage.
> (https://www.yoctoproject.org/)
> Or is this standard procedure and 2.6.1 will follow shortly?
>
> Greetings
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000059b05305809c7604
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Denis, <br></div><div><br></div><div=
>I don&#39;t understand this myself.=C2=A0 I don&#39;t believe 2.6.1 has re=
leased just yet.=C2=A0 I have symlinks set such that the &quot;current&quot=
; documentation points to &quot;2.6&quot; so any URL for a manual such as <=
a href=3D"https://yoctoproject.org/docs/current/ref-manual/ref-manual.html"=
>https://yoctoproject.org/docs/current/ref-manual/ref-manual.html</a> resol=
ves to the &quot;2.6&quot; manual.=C2=A0 <br></div><div><br></div><div>Scot=
t<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Jan 28, 2019 at 10:33 PM Hopp, Denis &lt;<a href=
=3D"mailto:Denis.Hopp@vaillant-group.com">Denis.Hopp@vaillant-group.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hell=
o all,<br>
<br>
is it intended that the thud release 2.6 documents overview went <br>
into archived documents? I can&#39;t find any news about it and thud is<br>
still promoted as latest release on the frontpage.<br>
(<a href=3D"https://www.yoctoproject.org/" rel=3D"noreferrer" target=3D"_bl=
ank">https://www.yoctoproject.org/</a>)<br>
Or is this standard procedure and 2.6.1 will follow shortly?<br>
<br>
Greetings<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000059b05305809c7604--
