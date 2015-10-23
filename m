Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51373E00B36; Fri, 23 Oct 2015 15:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06D3AE00B27
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 15:18:33 -0700 (PDT)
Received: by qgem9 with SMTP id m9so78135948qge.1
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 15:18:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/OY/gDHuhlgYUNRro9Meqj+aGVBNlVUVrSyhpVN/Dbc=;
	b=XWibclVCi8Lmuk2Mzmm+1cgNFQ3sFG5MEpDuALg0i69Bm4BE5X0yWHNcrCr6YCtCwy
	lnDJdVjfVLGSl9li+SN7ReauE3j1zkxPRIYBv3gxGLunhCqntESDxNG0w3hVYmadFJYd
	t1m+tUsJUJlHXNzl6JyhTh4WI59LyXhR1RskSOatLlxYxXjDf1m5hptm+9Z5cpVYqOo2
	S+z/gOSkDYnhqDo+0DoOyb1SF1v/a4IGXpE49fSSW4cJ9Lkriyph2gVQwnBeuesyng6G
	flzZ9GX56hjWFiO3LBL5J53UpNxd69RV35mzoKmxCYaURdPetUFP3ceAEU5qKn8NaAfs
	cLkg==
X-Gm-Message-State: ALoCoQk6D2XkoPNT91Uur8chwnvwhzEqFCUKPiIXMHw4wTkyG1IEBBvsLxo2DkpesRdAXjByMR8r
X-Received: by 10.140.16.21 with SMTP id 21mr14782899qga.87.1445638712779;
	Fri, 23 Oct 2015 15:18:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.82 with HTTP; Fri, 23 Oct 2015 15:18:13 -0700 (PDT)
In-Reply-To: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5771@EX2010-CO-02.AERO.BALL.com>
References: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5771@EX2010-CO-02.AERO.BALL.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 23 Oct 2015 23:18:13 +0100
Message-ID: <CAJTo0LafOAZwA8Q+XzJGkoc86Lipo4vpoLNGtp2o4N0hOZAyEw@mail.gmail.com>
To: "Smith, Daniel W" <dwsmith@ball.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Packaging an externally built library?
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
X-List-Received-Date: Fri, 23 Oct 2015 22:18:37 -0000
Content-Type: multipart/alternative; boundary=001a11c051d4f2fd370522ccfdc5

--001a11c051d4f2fd370522ccfdc5
Content-Type: text/plain; charset=UTF-8

On 23 October 2015 at 23:05, Smith, Daniel W <dwsmith@ball.com> wrote:

> If I look through the packaging logs it looks like it attampts to create a
> bunch of different packages (cdp-fsw, cdp-fsw-dbg, cdp-fsw-dev,
> cdp-fsw-doc, cdp-fsw-locale) but most of them end up being empty except
> cdp-fsw-dev.  Then if I look through the RPMs there is no cdp-fsw there is
> only a cdp-fsw-dev and cdp-fsw-dbg.
>
>
The problem is that the default packaging assumes that any libraries are
versioned, shared libraries (as 99% of libraries are), so libfoo.so.* goes
into PN and libfoo.so (the development-time symlink) goes into PN-dev.

However your library isn't versioned, so these defaults don't apply.  At
least you'll want to override FILES_${PN} and FILES_${PN}-dev so that
FILES_PN contains ${libdir}/lib*.so, and set FILES_PN-dev to just install
the headers.

Ross

--001a11c051d4f2fd370522ccfdc5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 October 2015 at 23:05, Smith, Daniel W <span dir=3D"ltr">&lt;<a href=
=3D"mailto:dwsmith@ball.com" target=3D"_blank">dwsmith@ball.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal">If I lo=
ok through the packaging logs it looks like it attampts to create a bunch o=
f different packages (cdp-fsw, cdp-fsw-dbg, cdp-fsw-dev, cdp-fsw-doc, cdp-f=
sw-locale) but most of them end up being empty except cdp-fsw-dev.=C2=A0 Th=
en if I look
 through the RPMs there is no cdp-fsw there is only a cdp-fsw-dev and cdp-f=
sw-dbg.<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>The problem is that the d=
efault packaging assumes that any libraries are versioned, shared libraries=
 (as 99% of libraries are), so libfoo.so.* goes into PN and libfoo.so (the =
development-time symlink) goes into PN-dev.</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">However your library isn&#39;t versio=
ned, so these defaults don&#39;t apply.=C2=A0 At least you&#39;ll want to o=
verride FILES_${PN} and FILES_${PN}-dev so that FILES_PN contains ${libdir}=
/lib*.so, and set FILES_PN-dev to just install the headers.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c051d4f2fd370522ccfdc5--
