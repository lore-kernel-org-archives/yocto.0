Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 595F9E00E08; Tue,  6 Mar 2018 14:12:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB1C8E00833
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 14:12:44 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id e30so747138ioc.3
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 14:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/cjJ4ioeq5mvecPNOpj9gyu6WxeQp8Ky++HvocYL3bI=;
	b=RqK24Lo+4ASqphFwVq+4cbgd+JKJk/TA99Sz6+j5zSFqCaOB5ObcIwAvBzLRF3Ot4r
	n9rFpDq6E7O3dseQF+UtkrhJp/gX7FhI1sShOKTEB7h828SFwqJlRqFYjMf7ZTJzFLDK
	a7YsI5kwqnPnWMGyJ481bUflWtZJODQRgZ6r7TF5D3NEAGxiGFx70cnF/V36K8v5G1eH
	k67IQUraMUdANCznJBR8RzBtXqxsGe7mftvYR/3TFXaOOeZW/0FMJ4IIJe1MduilvHOp
	ojqNxIaTDpzMSXyua9DjT2Zk+CVKlMHETPttm6TuS1YOIa7GXrwjUq7pF8xQ5kROTbnF
	uzAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/cjJ4ioeq5mvecPNOpj9gyu6WxeQp8Ky++HvocYL3bI=;
	b=m+RZXz1yGu8q+ZPOZqnFqQEEcVj5RQBWCkBfTuTYFy895l9myqDcckpyQ9u4JMvd2s
	hqAn44sBNJBP08aWYW4xPS7nEhtVUJI5N1AxTcJcx72B80hiRfiR2QabEcN+r6VdH8+4
	rdM8ZpCawQR4myIydfQTsEenelAioVinwAv+Db+fbyd4lIFtjTzx7i6m2/Pj02NVTWvS
	Ym2flhmp6e89aNEUocVlYDvXY8s/DATpEBamqYDk9phn+PlzA6z1snGI4tw7f2msgLVD
	LHPhU4WmBhyMUow86ft0q4JaosEjAiCKPPkFeyr8JGw0TdOicbszmHbeztSxbgfMwVyz
	Eo3Q==
X-Gm-Message-State: APf1xPBX7AymqctCJIa8t0/mBuCleNdIA/KFWaat5J8lqHoQ9hh3fTjl
	UzfQduX6MNNeSVYSg9NtT/w7gwMejdCXBn2Q3wI=
X-Google-Smtp-Source: AG47ELuD6BkwCw+cSfXipd8QJZn+O3bKrmV2tJ5y4c5FYnh/iARbUFAWkoq9LTvA00jCRKUC+n1UFvcyK1u4W3t7YE8=
X-Received: by 10.107.102.13 with SMTP id a13mr23542192ioc.61.1520374363862;
	Tue, 06 Mar 2018 14:12:43 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
	<CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
	<CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
	<CAJTo0LaWRz0ku=ESyTghyCnS5rVuo70K88VhL76AQcX2kbf_BQ@mail.gmail.com>
	<CAFzUWGkBGD__BLGC2RXwbo6npoqMT7krRPseT1Ax-9H9PNmVJQ@mail.gmail.com>
	<CAJ86T=Wvf7G6PMXBPXf+X=cbc6o6GbeTsr+pGPQzS-i9hMzKTw@mail.gmail.com>
In-Reply-To: <CAJ86T=Wvf7G6PMXBPXf+X=cbc6o6GbeTsr+pGPQzS-i9hMzKTw@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 22:12:33 +0000
Message-ID: <CAFzUWGkdc0G3yXx3miOWRnKtax472LLYPjXm=uoyH3_CZ7tLkA@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 22:12:45 -0000
Content-Type: multipart/alternative; boundary="089e082d1a58e23c740566c5bd7a"

--089e082d1a58e23c740566c5bd7a
Content-Type: text/plain; charset="UTF-8"

Hi Andre,

I tried without

FILES_${PN}_append = "${includedir}/open62541.h"

and got a QA error about a file installed that was not added to a
package.... I don't understand the ${PN}-dev here, and I'm not sure how
packaging works in this context - since it's not clear to me which files
get installed and which don't... except for when a recipe that depends on
this breaks because it can't find the header file.

Giordon

On Tue, Mar 6, 2018 at 4:06 PM Andre McCurdy <armccurdy@gmail.com> wrote:

> On Tue, Mar 6, 2018 at 1:03 PM, Giordon Stark <kratsg@gmail.com> wrote:
> > Yes. The CMakeLists file definitely doesn't install that (annoyingly).
> > Playing around a bit, I created a test recipe, added these lines in my
> > open62541.inc file (original recipe here)
> >
> > do_install_append() {
> >   install -d ${D}${includedir}
> >   install -m 644 ${B}/open62541.h ${D}${includedir}
> > }
> >
> > FILES_${PN}_append = "${includedir}/open62541.h"
>
> This is trying to put the header in the runtime package (ie the
> package containing files which typically end up in the target rootfs).
> Header files should be in the ${PN}-dev package instead.
>
> Since the default packaging rules already cover header files, you
> don't actually need to add anything here in order to have the header
> packaged correctly - just remove that line.
>
> Note that you also tried to use _append without a leading space -
> which is wrong in this context (it's wrong in almost every context).
>
> > and it looks like the test recipe can pick up that header file
> correctly. So
> > I think this is correct-er (at least for code that uses #include
> > <open62541.h>).
> >
>
-- 
Giordon Stark

--089e082d1a58e23c740566c5bd7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andre,<div><br></div><div>I tried without</div><div><br=
></div><div><div>FILES_${PN}_append =3D &quot;${includedir}/open62541.h&quo=
t;</div></div><div><br></div><div>and got a QA error about a file installed=
 that was not added to a package.... I don&#39;t understand the ${PN}-dev h=
ere, and I&#39;m not sure how packaging works in this context - since it&#3=
9;s not clear to me which files get installed and which don&#39;t... except=
 for when a recipe that depends on this breaks because it can&#39;t find th=
e header file.</div><div><br></div><div>Giordon</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 6, 2018 at 4:06 PM Andre McCu=
rdy &lt;<a href=3D"mailto:armccurdy@gmail.com">armccurdy@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">On Tue, Mar 6, 2018 at 1:03 =
PM, Giordon Stark &lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank"=
>kratsg@gmail.com</a>&gt; wrote:<br>
&gt; Yes. The CMakeLists file definitely doesn&#39;t install that (annoying=
ly).<br>
&gt; Playing around a bit, I created a test recipe, added these lines in my=
<br>
&gt; open62541.inc file (original recipe here)<br>
&gt;<br>
&gt; do_install_append() {<br>
&gt;=C2=A0 =C2=A0install -d ${D}${includedir}<br>
&gt;=C2=A0 =C2=A0install -m 644 ${B}/open62541.h ${D}${includedir}<br>
&gt; }<br>
&gt;<br>
&gt; FILES_${PN}_append =3D &quot;${includedir}/open62541.h&quot;<br>
<br>
This is trying to put the header in the runtime package (ie the<br>
package containing files which typically end up in the target rootfs).<br>
Header files should be in the ${PN}-dev package instead.<br>
<br>
Since the default packaging rules already cover header files, you<br>
don&#39;t actually need to add anything here in order to have the header<br=
>
packaged correctly - just remove that line.<br>
<br>
Note that you also tried to use _append without a leading space -<br>
which is wrong in this context (it&#39;s wrong in almost every context).<br=
>
<br>
&gt; and it looks like the test recipe can pick up that header file correct=
ly. So<br>
&gt; I think this is correct-er (at least for code that uses #include<br>
&gt; &lt;open62541.h&gt;).<br>
&gt;<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--089e082d1a58e23c740566c5bd7a--
