Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E02F8E00A1C; Tue, 27 Mar 2018 07:22:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44E6CE008D3
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 07:22:47 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id z143-v6so16151727itc.0
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 07:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:cc:date:in-reply-to:references
	:mime-version; bh=gBYrfNK5pTPuvdkJ2q2/OZIZHVLmvMdlLVAOJO23L8U=;
	b=gzBo9flTwjNbvzC3G2B1oVhR0vaO+/g//eiKZTDwzNR/aEf1TfTSYR2v2Nr6QBuLdd
	2iw+Uhm9PlFzxJMVFeNDz40Ed/RDWFBktKpRzPIY4+TZx0DVf9y7bidMKn4e+kbkBoiR
	oJCuLx8jngEWxBK5wIlNi5Xmj6RBhmm+SPCdZUM5i3TXPfmUvE6XHZKHBJis6KO1Hovh
	fatCPm96JFUDzEAyWm+UPFls3M3aPqfI3zOxyVLE3/ag68fCKldAwhwR92mR9nSWTdLw
	TDw7RewLbkE3m/2WqMvm84/O9Ei1b3GyO89oqGAiVnfQSxSmcZbRHmFShbmvEdWpFdIr
	ijug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:cc:date:in-reply-to
	:references:mime-version;
	bh=gBYrfNK5pTPuvdkJ2q2/OZIZHVLmvMdlLVAOJO23L8U=;
	b=eHWwLfg5hmuVwzqeMze+TcrRish8oqBX9WLZujvJmxpW/BVzgQfBiS0EGN4V1CyRpb
	mCyj98IEyXeFMfzNOPnphkzRCE1faqus/boGJHGoyfdT7tnmpD1dV7nbEYEcbYR31yHh
	+ySTHO1GQFAch2VaUWfDLkd4Pm42syHS9sjRzlgFpL1NjCLV31oAtQirWpcmbo2trRfM
	b3L3/2IjTDDsRqZ0/iZz/7DEVyX4Tmf1x/3OlAc+xAzuwpD/9uW2kMnJ7/9F6u/7NmJQ
	5FZ2KadKHshP9fiAkORw0ERKVpdIctFDuv8pgkds+20NEdYWFyD1rBPQWU5M/Fx94VZ7
	LKpw==
X-Gm-Message-State: AElRT7HkKuKQO+/FEeJm/Ny1SFiIav0uZROa2EXZJdiIN/ETq2jw3vdP
	taK6y6hIypRc2YkJI6axWwo=
X-Google-Smtp-Source: AG47ELtazQJJ0yYzQFNf8Lg9EtzIKAEiyvnjKrdJQqLhGzQxLG25MsuFenIswSNFAE37O3RHD8Cetw==
X-Received: by 2002:a24:c184:: with SMTP id
	e126-v6mr27614095itg.98.1522160567145; 
	Tue, 27 Mar 2018 07:22:47 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	t134-v6sm1237275itt.43.2018.03.27.07.22.46
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 27 Mar 2018 07:22:46 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1522160565.3242.241.camel@gmail.com>
To: pawanKumar <pawan4749@gmail.com>
Date: Tue, 27 Mar 2018 09:22:45 -0500
In-Reply-To: <CALd6x_s20N1+cW6XmF0BE1g0UnONXq9i+m4_y5hVHg+Cic6gcw@mail.gmail.com>
References: <CALd6x_uezA39f9aRX_de7SrTCcdFUoLKW1_2URuVR_prMMhQsg@mail.gmail.com>
	<1521820243.3242.187.camel@gmail.com>
	<CALd6x_s20N1+cW6XmF0BE1g0UnONXq9i+m4_y5hVHg+Cic6gcw@mail.gmail.com>
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake failure:
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
X-List-Received-Date: Tue, 27 Mar 2018 14:22:49 -0000
Content-Type: multipart/alternative; boundary="=-2P4Mk/KIdP9RmDLEjyqP"

--=-2P4Mk/KIdP9RmDLEjyqP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-03-27 at 09:19 +0000, pawanKumar wrote:
> Thanks for your tip.Can I use capital c in place of small c.

Not quite sure what you mean. If you are trying to do:
 bitbake -C fetchall core-image-sato
that doesn't work anymore AFAIK. I don't think there is currently a way
to do a "force invalidate" (e.g. -f) with --runall, although TBH I'm
not sure if 'bitbake -C fetchall' did that anyway. Perhaps someone more
familiar with the recursive dependencies can chime in. 
However, I recently ran into a case where having -f apply to --runall
was useful, so I have a patch in my contrib tree to add support for it.
If that's what you're trying to do, I'm curious what the use case is? I
haven't pushed the patch to the mailing list because I'm not sure if my
use is actually valid.
> On Fri, Mar 23, 2018, 9:20 PM Joshua Watt <jpewhacker@gmail.com>
> wrote:
> > On Fri, 2018-03-23 at 07:31 +0000, pawanKumar wrote:
> > > Hi team,When I tried to run (bitbate -c fetchall) it is giving
> > > error as
> > > "target do_fetchall is not found for image core-image-sato". 
> > > How to over come this error.
> > 
> > I believe fetchall was superseded by --runall. Try:
> > bitbake --runall fetch core-image-sato
> > > Regards
> > > Pavan.

--=-2P4Mk/KIdP9RmDLEjyqP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>On Tue, 2018-03-27 at 09:19 +0000, pawanKumar=
 wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-l=
eft:2px #729fcf solid;padding-left:1ex"><div dir=3D"auto">Thanks for your t=
ip.<div dir=3D"auto">Can I use capital c in place of small c.</div></div></=
blockquote><div><br></div><div>Not quite sure what you mean. If you are try=
ing to do:</div><div><br></div><div> bitbake -C fetchall core-image-sato</d=
iv><div><br></div><div>that doesn't work anymore AFAIK. I don't think there=
 is currently a way to do a "force invalidate" (e.g. -f) with --runall, alt=
hough TBH I'm not sure if 'bitbake -C fetchall' did that anyway. Perhaps so=
meone more familiar with the recursive dependencies can chime in.&nbsp;</di=
v><div><br></div><div>However, I recently ran into a case where having -f a=
pply to --runall was useful, so I have a patch in my contrib tree to add su=
pport for it. If that's what you're trying to do, I'm curious what the use =
case is? I haven't pushed the patch to the mailing list because I'm not sur=
e if my use is actually valid.</div><div><br></div><blockquote type=3D"cite=
" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1e=
x"><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Mar 23, 2018, 9:=
20 PM Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewhacker@gm=
ail.com</a>&gt; wrote:<br></div><blockquote type=3D"cite" style=3D"margin:0=
 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div><div>On Fri=
, 2018-03-23 at 07:31 +0000, pawanKumar wrote:</div><blockquote type=3D"cit=
e" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1=
ex"><div dir=3D"auto">Hi team,<div dir=3D"auto">When I tried to run (bitbat=
e -c fetchall) it is giving error as</div><div dir=3D"auto">"target do_fetc=
hall is not found for image core-image-sato".&nbsp;</div><div dir=3D"auto">=
How to over come this error.</div></div></blockquote><div><br></div><div>I =
believe fetchall was superseded by --runall. Try:</div><div><br></div><div>=
bitbake --runall fetch core-image-sato</div><div><br></div><blockquote type=
=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding=
-left:1ex"><div dir=3D"auto"><div dir=3D"auto"><br></div><div dir=3D"auto">=
Regards</div><div dir=3D"auto">Pavan.</div></div>
</blockquote></div></blockquote></div>
</blockquote></body></html>

--=-2P4Mk/KIdP9RmDLEjyqP--
