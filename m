Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A275E0076B; Fri,  8 Aug 2014 01:07:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52D39E00744
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 01:06:57 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id x69so3436747oia.17
	for <yocto@yoctoproject.org>; Fri, 08 Aug 2014 01:06:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=P/m4/rsx4tTuqdmn+K8/s8gbqBqV17kpV1OjBQT8wlE=;
	b=Pn0pHXxe7f5ScS79KkdX1dm2leI/wHE0aVj6qRiDbu+1Crg1VXV/HvrRaaXSbCtv7O
	ruwOPfv7vSoPu24B+SjRJA0a5n+XXKM+eYq2DRseV3lzMlzNIDJDOUNT9FZqr0+/4xpQ
	J/fai4YN/ySRhE24p51FZzqJTJqkNMBiTEotq9YFUs1X0367ZRT0kOq1fE7hAUMFBf62
	VaXZxhR36xG06nuwPK7cTmI61lW9Yi7RMSRAsDfvV7z7P8JOB/l39+8hkVu0DFms9ezB
	Mon7sxJI3M6wZpZu8a9y8QtpN5k38xVTM9TLErJKJjc5VMbTrDG0KMquQ23Rl/HYbWg3
	hHSA==
X-Gm-Message-State: ALoCoQlT6rh/CsJiZXw8exPtJPfnpBVxdQao/NyjQRi3XUki9wXQYBToYaEWVkjfo66Gouz0aJUT
X-Received: by 10.60.176.225 with SMTP id cl1mr28659444oec.36.1407485216268;
	Fri, 08 Aug 2014 01:06:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Fri, 8 Aug 2014 01:06:36 -0700 (PDT)
In-Reply-To: <CAE_REAuAi3yDstb14WDbmXwKmn0b7s9Rr+Rnw=yjkTju4LwZkA@mail.gmail.com>
References: <D0095026.15910%pourya.shirazian@daimler.com>
	<CAE_REAuAi3yDstb14WDbmXwKmn0b7s9Rr+Rnw=yjkTju4LwZkA@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 8 Aug 2014 10:06:36 +0200
Message-ID: <CAP71WjwXEUrm6M12M7jC+JWY8WMyPgKi+eucwFPVGVcYjB01cg@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about Package Splitting
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
X-List-Received-Date: Fri, 08 Aug 2014 08:07:03 -0000
Content-Type: multipart/alternative; boundary=047d7bd75e6457b4de050019b089

--047d7bd75e6457b4de050019b089
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 8, 2014 at 9:43 AM, Gaurang Shastri <gmshastri@gmail.com> wrote:

> You can do something like this if you want your own package:
>
> PACKAGES += "${PN}-frontend ${PN}-backend ${PN}-tests"
>
> Here ${PN} means "project" and yes "project-dbg" and "project-dev" will be
> created by default.
>
> And than you can put your required files in particular package by,
>
> FILES_${PN}-frontend = "${bindir}" -- just example...likewise you can have
> your own packages with required files.
>

and in addition to that:
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#splitting-an-application-into-multiple-packages

--047d7bd75e6457b4de050019b089
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Aug 8, 2014 at 9:43 AM, Gaurang Shastri <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:gmshastri@gmail.com" target=3D"_blank">gmshastri@gmail.com</a>=
&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>You can do something like this if you want your own p=
ackage:</div>

<div><br></div><div>PACKAGES +=3D &quot;${PN}-frontend ${PN}-backend ${PN}-=
tests&quot;</div><div><br></div><div>Here ${PN} means &quot;project&quot; a=
nd yes &quot;project-dbg&quot; and &quot;project-dev&quot; will be created =
by default.</div>


<div><br></div><div>And than you can put your required files in particular =
package by,</div><div><br></div><div>FILES_${PN}-frontend =3D &quot;${bindi=
r}&quot; -- just example...likewise you can have your own packages with req=
uired files.</div>


<div></div></blockquote></div><br>and in addition to that: <a href=3D"http:=
//www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#splitting-an-=
application-into-multiple-packages">http://www.yoctoproject.org/docs/latest=
/dev-manual/dev-manual.html#splitting-an-application-into-multiple-packages=
</a></div>

</div>

--047d7bd75e6457b4de050019b089--
