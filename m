Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9396E00D2F; Thu, 31 Jan 2019 08:31:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 068CCE00D0F
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 08:31:29 -0800 (PST)
Received: by mail-lf1-f48.google.com with SMTP id b20so2767563lfa.12
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 08:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=If7KMuZBWNE74Tso88nNWrdTXc/180mqlgtNNCrvA40=;
	b=MjKutm5j5lRyRwdK/6XFfZmsjSvH9qyb9m6hV+xqmi0t5S8vEvMh4L8mh0xS4YNwfI
	kQnMUsanjl/HsipRgUjp1qSHq8sofL2EOYNz/gnSS+UfO3epJg+vbKuKBOxrpM7oB+tG
	UwFaaZ6xoQHPPGN9BHIBMFV7p6dxHxaYzMV7p8J/kATGthRhe6K8r3XOHk62lRmrSGA9
	QojMsc+pWlj1BT2+KZqTaPzjI6u6CV0c4XfRtdquZT10jJRjo3medg4KzFaSjgNyZTxE
	wB1qDh9Z5Ue3K1ePLk+vXoHImNkwHbefGIyt3/J9qapilm/BEwLEzjGmm9WKvEXqLP3M
	d1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=If7KMuZBWNE74Tso88nNWrdTXc/180mqlgtNNCrvA40=;
	b=gM3Hn+cfLIqMQZs5sB6Evk3rU90G32UjEuT6FS6rtP6qxGn6Y8Loqm/wkshEz3FC2M
	gSTlqs22NPuHrAwWp/XqhoRqqAnJ956tt9HfMD39Uq2vfIMGm8GxWqBrIbuGxpVhv/6v
	Ejy8XaFOkTSGhMV3Xh0LvpKt++VMEgRy+q5JpPOeB4Jhx57qczwJQ+KiDRsEiwdWUIEE
	Yi3vzydF0X4GoHDR+P6RphJKt63HALlrRGFt9yJI7/vky0WMbPIXbcYQzjga7UzcaUrx
	hAodcUs4d9MQzwj732kZhg7OK73UG1XdZ/EE522DQJv8HUfva+LwdMftA8tF2sBpxLzv
	NEeA==
X-Gm-Message-State: AJcUukcc5sf/YkoWu2mSZZWT9nO/zBmxiF8V5Xkw3KvXoP5Aap/o0xkw
	VnlGnpQrwcIqpAx1VL82G+gwCG5Mo8CvkTfx5Ek=
X-Google-Smtp-Source: ALg8bN5xr4ttfojLHWrrrcNsnibWZebVI2qqIWecUW8Q6nZ8qvKn+RVVgLpnBCXb+u+CYpX8+ayQ9LNTyj7jQejUEOw=
X-Received: by 2002:a19:9dd1:: with SMTP id
	g200mr27558099lfe.127.1548952288912; 
	Thu, 31 Jan 2019 08:31:28 -0800 (PST)
MIME-Version: 1.0
References: <CAHUNapTBZZRA4+RiFLVHYX6CAkAC8_s9jA0KrFc8Rvs0ksLG-Q@mail.gmail.com>
	<CAC+thW3KsvrR3X++ywQRQvqjNcs7z7pocq9CBH_s7-jYJXe9bg@mail.gmail.com>
In-Reply-To: <CAC+thW3KsvrR3X++ywQRQvqjNcs7z7pocq9CBH_s7-jYJXe9bg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 31 Jan 2019 11:31:16 -0500
Message-ID: <CAHUNapR7edqX1VyV0hCXegL5hFrAKC_Xa+YZ57iSWQwnrbfSAQ@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-members@lists.openembedded.org,
	openembedded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [oe] OE Summit @ SCaLE 17x - Sunday March 10th 2019 - Pasadena CA
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
X-List-Received-Date: Thu, 31 Jan 2019 16:31:30 -0000
Content-Type: multipart/alternative; boundary="000000000000f46afd0580c38e3e"

--000000000000f46afd0580c38e3e
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 31, 2019 at 5:40 AM Andrea Galbusera <gizero@gmail.com> wrote:

> On Thu, Jan 31, 2019 at 8:26 AM Trevor Woerner <twoerner@gmail.com> wrote:
> > The schedule for the OE Summit has been posted:
> > https://www.socallinuxexpo.org/scale/17x/schedule/sunday
> > https://www.socallinuxexpo.org/scale/17x/open-embedded-summit-0
>
> To whoever can double check and fix the schedule... it looks like
> there's a typo at the second link, where Alistair's talk is listed
> twice. From the first link "Lokesh Kumar Goel
> OpenEmbedded in LG Products" should be at 11.30am instead.
>

Thanks.

There are a bunch of other snafus with the webpages (i.e. the title of
Alistair's talk is actually "RISC-V and OpenEmbedded", and some of the
links to the speakers' bios doesn't seem to work properly). I had notified
the organizers even before I sent out this email, but didn't want to wait
even longer to let everyone know about this event. Hopefully the organizers
can get around to fixing them soon-ish.

--000000000000f46afd0580c38e3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Jan 31, 2019 at 5:40 AM Andrea Galbusera &lt;<a href=3D"mail=
to:gizero@gmail.com">gizero@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">On Thu, Jan 31, 2019 at 8:26 AM Trevor=
 Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoern=
er@gmail.com</a>&gt; wrote:<br>&gt; The schedule for the OE Summit has been=
 posted:<br>
&gt; <a href=3D"https://www.socallinuxexpo.org/scale/17x/schedule/sunday" r=
el=3D"noreferrer" target=3D"_blank">https://www.socallinuxexpo.org/scale/17=
x/schedule/sunday</a><br>
&gt; <a href=3D"https://www.socallinuxexpo.org/scale/17x/open-embedded-summ=
it-0" rel=3D"noreferrer" target=3D"_blank">https://www.socallinuxexpo.org/s=
cale/17x/open-embedded-summit-0</a><br>
<br>
To whoever can double check and fix the schedule... it looks like<br>
there&#39;s a typo at the second link, where Alistair&#39;s talk is listed<=
br>
twice. From the first link &quot;Lokesh Kumar Goel<br>
OpenEmbedded in LG Products&quot; should be at 11.30am instead.<br></blockq=
uote><div><br></div>Thanks.</div><div class=3D"gmail_quote"><br></div><div =
class=3D"gmail_quote">There are a bunch of other snafus with the webpages (=
i.e. the title of Alistair&#39;s talk is actually &quot;RISC-V and OpenEmbe=
dded&quot;, and some of the links to the speakers&#39; bios doesn&#39;t see=
m to work properly). I had notified the organizers even before I sent out t=
his email, but didn&#39;t want to wait even longer to let everyone know abo=
ut this event. Hopefully the organizers can get around to fixing them soon-=
ish.<br></div></div>

--000000000000f46afd0580c38e3e--
