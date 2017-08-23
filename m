Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B583E00D07; Wed, 23 Aug 2017 00:42:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EFFAE00CAB
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 00:42:46 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id 190so3199791itx.0
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 00:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GvKFI68dhO7ByNfOjzSdUPStVKgdpNlnF7nzYbhdGqM=;
	b=WcgmOMCToMFu3EvV8NGUlTw4scnFBVjfUq7VNH4JlM2gV17/B6n1ecI1oHeTButQag
	Vqmot5jk8SMoqYUkSXWh3AT8O2Gyk596hyMDKvc1dVfSE1RtqzRt4+I8nDc14fJ0HomD
	CjwiD0rKMYaiAHcTpJG7xATeDNpS1E1vL+rFHWB9Ng7bqiwO6lnvI/52qoSgx+Z7EFpd
	ztVC1c07Ngp0iZTzAGmaRSxRyyYH4Xn9gzYuNqy3sHG5bdgyA+VOj+glbat5O8TeoOIX
	jbk7+2d2sIXw6/lVQCGp6Foe/45GUTBJel/VKinv+kcVTXrkkGwuWBcvRjfT0BPfr+FZ
	c//w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GvKFI68dhO7ByNfOjzSdUPStVKgdpNlnF7nzYbhdGqM=;
	b=oTJRzL0FGmeJI068WGsyrvxe071Gf3xVW4uARQJdXBoGd2m6BUsLDiDFikDC2SnVpE
	XKPT9IRUv9tsE8Dnpa1ABWVkOPgq1muikYylxUf+Jev2mUX1AuWq+qQc6x6SGUihW2S4
	WCzdp++M5DqxZ8zgqaE3cnKmFgtRDROqFVYS33dbLhXc8wCIJXf6Q5k9u+sWIu/ftr6O
	CBC/juGNQMC11QPzo8MikTClyErWwUL6cS+LDCiAwWyFro9NPuansCz+vlgz32cXUvNp
	WokRkgHiW70ivgCd4ERDaQJRRZVFW9hQHN/FIjvbubPeFI5/VC/hTOIt1DrjJODtgoqQ
	6y7w==
X-Gm-Message-State: AHYfb5iUAkxpRa/zFAzDXbexe4pmncoteA/KPDj457pZcPi0cs3YM5IL
	c86jbGHnVSbLYwoXzDF8TLLPXVGvcKLl
X-Received: by 10.36.208.132 with SMTP id m126mr1995654itg.41.1503474166096;
	Wed, 23 Aug 2017 00:42:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.200.71 with HTTP; Wed, 23 Aug 2017 00:42:15 -0700 (PDT)
In-Reply-To: <CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
	<CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
	<CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 23 Aug 2017 10:42:15 +0300
Message-ID: <CAHiDW_GPQ4WvxqbkSGAq4K=bGfqX45pJrzUGJ1NsgazLtyv40g@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [DNF YOCTO clarifications] smart was replaced with dnf in Yocto 2.3
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
X-List-Received-Date: Wed, 23 Aug 2017 07:42:48 -0000
Content-Type: multipart/alternative; boundary="001a1146315a997e7a055766db64"

--001a1146315a997e7a055766db64
Content-Type: text/plain; charset="UTF-8"

On 23 August 2017 at 09:56, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Privet Aleks,
>
> Nezacem zlitsja/serditsja. Ja prosto ne znal cto u vas takaja politika.
>
> All Cool. Did not know that this is the policy, to have real names on
> YOCTO list. I removed nobody from it, and added my real name and real @. I
> removed user nobody from the YOCTO @ list.
>
> The/Your answer is too general. I somehow well know DNF service, but in
> FEDORA light. For fedora I do know what I need to do, and where/what are
> the options and which plug-ins to use/add, and ho to remove, upgrade, and
> configure.
>
> I tried all of this in the lieu of the following pointers:
> https://docs.fedoraproject.org/en-US...ositories.html
> <https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Configuring_DNF_and_DNF_Repositories.html>
> https://docs.fedoraproject.org/en-US...y_Options.html
> <https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Setting_repository_Options.html>
>
> And made on my target (which is connected with my server with simplistic
> Apache (it is one machine, which carries F26 on bare metal INTEL CORE) on
> server, client runs as qemux86_64 YOCTO emulator).
>

The answer is generic because the question is quite generic.

Some things you could mention to make it easier for someone to help you:
* explain the steps you took to setup (maybe copy-paste your repo file from
the target), mention what "dnf makecache" says
* mention whether you've verified that manually downloading a rpm from your
server works on image
* most importantly explain what exactly fails and how.


Thanks,
 Jussi

--001a1146315a997e7a055766db64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
3 August 2017 at 09:56, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=
=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavlj=
evic@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Privet Aleks,<div>=
<br></div><div>Nezacem zlitsja/serditsja. Ja prosto ne znal cto u vas takaj=
a politika.</div><div><br></div><div>All Cool. Did not know that this is th=
e policy, to have real names on YOCTO list. I removed nobody from it, and a=
dded my real name and real @. I removed user nobody from the YOCTO @ list.<=
/div><div><br></div><div>The/Your answer is too general. I somehow well kno=
w DNF service, but in FEDORA light. For fedora I do know what I need to do,=
 and where/what are the options and which plug-ins to use/add, and ho to re=
move, upgrade, and configure.</div><div><br></div><div>I tried all of this =
in the lieu of the following pointers:</div><div><a href=3D"https://docs.fe=
doraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Config=
uring_DNF_and_DNF_Repositories.html" style=3D"color:rgb(0,0,0);font-family:=
verdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica,sans-serif,=
sans;font-size:11px;background-color:rgb(250,250,250)" target=3D"_blank">ht=
tps://docs.fedoraproject.org<wbr>/en-US...ositories.html</a></div><a href=
=3D"https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrato=
rs_Guide/sec-Setting_repository_Options.html" style=3D"color:rgb(0,0,0);fon=
t-family:verdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica,sa=
ns-serif,sans;font-size:11px;background-color:rgb(250,250,250)" target=3D"_=
blank">https://docs.fedoraproject.org<wbr>/en-US...y_Options.html</a><div><=
br></div><div>And made on my target (which is connected with my server with=
 simplistic Apache (it is one machine, which carries F26 on bare metal INTE=
L CORE) on server, client runs as qemux86_64 YOCTO emulator).</div></div></=
div></div></blockquote><div><br></div><div>The answer is generic because th=
e question is quite generic.</div><div><br></div><div>Some things you could=
 mention to make it easier for someone to help you:</div><div>* explain the=
 steps you took to setup (maybe copy-paste your repo file from the target),=
 mention what &quot;dnf makecache&quot; says</div><div>* mention whether yo=
u&#39;ve verified that manually downloading a rpm from your server works on=
 image</div><div>* most importantly explain what exactly fails and how.</di=
v><div><br></div><div><br></div><div>Thanks,</div><div>=C2=A0Jussi</div></d=
iv></div></div>

--001a1146315a997e7a055766db64--
