Return-Path: <jefro.net@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC3CE00770
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2013 08:59:51 -0800 (PST)
Received: by mail-la0-f41.google.com with SMTP id em20so2142358lab.0
	for <yocto@yoctoproject.org>; Wed, 09 Jan 2013 08:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=0SfRZCMbS/A7U+NdxIdGagCIPYvpIvbSpXZnQk9uOs4=;
	b=cHOwwA04AcUsq/R0k2LJ0toYTxvwR4rk15veWaisyDK9CjqhuBK44yEdqUDQiFHKBF
	Dh/5Waw53kSuqDYjKtoE1WdFurKcOT0UBwHCR8obIkwTWEpR5RoiPeUgr5zPH/B8wP1h
	KpniH7N973xhfFDoV4CLPRspow76bSzuUX2iP+vO++qhEPi0feB3moH9k0mQifn2V9ri
	BbBoskXuP9uP6omHRSnbk2/KB9r3po9SLCpzNFUmhtJmp0x3eUBQor+t+VGOLJWyJh/o
	bP0BwbESdMfLDgoSY9Y729xouEJTwvv87h/j2RaD5rAvBSn0cmrlQH559Poiew3upbqr
	MQdA==
MIME-Version: 1.0
Received: by 10.152.110.18 with SMTP id hw18mr66262240lab.22.1357750790062;
	Wed, 09 Jan 2013 08:59:50 -0800 (PST)
Sender: jefro.net@gmail.com
Received: by 10.112.81.194 with HTTP; Wed, 9 Jan 2013 08:59:49 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1301080914250.19857@oneiric>
References: <alpine.DEB.2.02.1301080746080.18817@oneiric>
	<50EC277F.8010507@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301080914250.19857@oneiric>
Date: Wed, 9 Jan 2013 08:59:49 -0800
X-Google-Sender-Auth: R6V02Q6EHWcS_RW9UFYkS_varkI
Message-ID: <CA+YB3rYN0m_Sv-5-1TL1UfmTY1vgrgTpFA9mT2N54XY-T2VWvA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: wiki page for building basic image for raspberry pi
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
X-List-Received-Date: Wed, 09 Jan 2013 16:59:52 -0000
Content-Type: multipart/alternative; boundary=bcaec54d4de88903ec04d2ddfdf2

--bcaec54d4de88903ec04d2ddfdf2
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 8, 2013 at 6:15 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

> On Tue, 8 Jan 2013, Alex J Lennon wrote:
>
> > On 08/01/2013 12:49, Robert P. J. Day wrote:
> > >
> > >   after reading what's available, i gave it a shot and documented the
> > > results here:
> > >
> > > http://www.crashcourse.ca/wiki/index.php/Building_basic_RPi_image
> > >
> > >   the build seems to have worked, although i have no rpi unit on which
> > > to test the generated artifacts.
>

Thanks for writing this up, Robert. If you would like to host this on the
Yocto Project wiki I'd be glad to help set it up.

-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--bcaec54d4de88903ec04d2ddfdf2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Jan 8, 2013 at 6:15 AM, Robert P. J. Day <span dir=3D"ltr">=
&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crash=
course.ca</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tue, 8 Jan 2013, Alex J=
 Lennon wrote:<br>
<br>
&gt; On 08/01/2013 12:49, Robert P. J. Day wrote:<br>
&gt; &gt;<br>
&gt; &gt; =A0 after reading what&#39;s available, i gave it a shot and docu=
mented the<br>
&gt; &gt; results here:<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"http://www.crashcourse.ca/wiki/index.php/Building_basi=
c_RPi_image" target=3D"_blank">http://www.crashcourse.ca/wiki/index.php/Bui=
lding_basic_RPi_image</a><br>
&gt; &gt;<br>
&gt; &gt; =A0 the build seems to have worked, although i have no rpi unit o=
n which<br>
&gt; &gt; to test the generated artifacts.<br></div></blockquote><div><br><=
/div><div style>Thanks for writing this up, Robert. If you would like to ho=
st this on the Yocto Project wiki I&#39;d be glad to help set it up.</div>
<div style>=A0</div></div>-- <br>Jeff Osier-Mixon <a href=3D"http://jefro.n=
et/blog" target=3D"_blank">http://jefro.net/blog</a><div>Yocto Project Comm=
unity Manager @Intel <a href=3D"http://yoctoproject.org" target=3D"_blank">=
http://yoctoproject.org</a></div>

</div></div>

--bcaec54d4de88903ec04d2ddfdf2--
