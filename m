Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DD64E00CD2; Fri,  8 Sep 2017 00:43:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16AA0E00CC8
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 00:43:42 -0700 (PDT)
Received: by mail-wr0-f175.google.com with SMTP id a43so3062654wrc.0
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 00:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LTWHq2urhSUlAo62VzcbZPMHtZI0x0ACO83V9khvTig=;
	b=TmQEf3L+kk/CXxpnrJF6m/1YdUX2fPHRKFK811wQgvl/T/e+UJgJ8/Eoagm/vONdXn
	Mib1Vk6WFN24OP84XzR/RMGqftk7g+ps6EoyVtJEvp0nBh3NzekBvFuE6m64Do5RH0FW
	fiC84i0JOGwASKU3XoeK8yfj0+JlEUIyCobTRu/efEbrHVMKXgT4XmRzELT7MtArq3m5
	yfCwK/fASdgKepmtOp6wbj0jAABRUmUvgTlK+nXpSPTE47zYWZWQkiGYWW4H2h5+/UtL
	4sw3SsexLxg1zgm5W3qptcfa2n9I9ArBFWzMzMAChwYejXsXoIFD+aN2yj1X4QnE86Gq
	x1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LTWHq2urhSUlAo62VzcbZPMHtZI0x0ACO83V9khvTig=;
	b=WzwOs2D6GASU12ZGNbCMD8810LclBKqNq5QKSfRzAGAu5xy3CMZKHRzltnG4vGuLi6
	q5RM0fZF8dcco3WZBZPe1X/OlH1mib9yvKer4wQus3JiK+VyboJxHeZcqxVWKVUfbaNv
	svhdIp0++5hRZcS+BgnEvJH9L6itrmnggZ9dacvveukHAuUn2zCwNEkNaFvqUW2Yyk0u
	XCICdT3stvzWVpx3u47IMu8CETSFmt/yIY61XyjrExtAtvYXWa5Ld3PuOsJ2MJLf/31G
	UTjVl1ylOIT7/OOBRt/IXaIYvMkqercAc72sM3SbusK2tDH7VsD4jd2IWYwvJtQBlHVV
	1V/w==
X-Gm-Message-State: AHPjjUgWi5VrCH9xTQ5ID2TufbJCmDpXRkIFU1Exp+6yppGMF42H4mvE
	FaJUdclyEGYm7XBe+Z957JpTscNssfd/
X-Google-Smtp-Source: ADKCNb5Qhzl1Icvg+SVyNZWrfuo0uYCh5AlCHueCOMkgaAp8sHY7cBsvb+pd5ev+1/zHL0e5dBSlT7KIavVfCTLck+c=
X-Received: by 10.223.145.5 with SMTP id j5mr807542wrj.114.1504856621836; Fri,
	08 Sep 2017 00:43:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.218.197 with HTTP; Fri, 8 Sep 2017 00:43:41 -0700 (PDT)
In-Reply-To: <1504819047.4961.11.camel@gmail.com>
References: <CAGAf8Lype6p4Dqzab9O0sGfEUhzYUYczjrua49o80baw_OYvpA@mail.gmail.com>
	<1504819047.4961.11.camel@gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 8 Sep 2017 09:43:41 +0200
Message-ID: <CAGAf8LyDeev=ZZypHSBQ+uiAYheawqfj7mS335SjB_ase5-aQA@mail.gmail.com>
To: Max Krummenacher <max.oss.09@gmail.com>, mike.looijmans@topicproducts.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: The basehash value changed from...
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
X-List-Received-Date: Fri, 08 Sep 2017 07:43:44 -0000
Content-Type: multipart/alternative; boundary="94eb2c098dba61ee310558a8bc9f"

--94eb2c098dba61ee310558a8bc9f
Content-Type: text/plain; charset="UTF-8"

Hello Mike,

> You should be able to do "bitbake meta-toolchain-qt5 angstrom-lxde-image"
in one go. That should be faster than two separate runs.

Thank you, Mike. It does work for me.

> If you need two distros, make two build enviroments from them. You should
share the sstate-cache directory between them
> (saves tons on building compilers and such) but not the "tmp" directory.

Mike,

I have heard (unofficially) that Fedora 26 does NOT allow the sharing of
sstate-cache directory between the projects. Myself, I did not very that
yes (first approach worked for me), since I started again YOCTO (I used
very briefly YOCTO 3 years ago) with Fedora 26. Will be interesting to find
out if Fedora 25 allows that (my best guess it does).

Hello Max,

> Please note the '... and all succeeded'. So the basehash error did not
break the build.

Noted (even immediately after load was built/then).

> I think the basehash error is due to the use of the DATE variable and
> that the following commit fixes it in master:
> http://cgit.openembedded.org/openembedded-core/commit/?id=
4af13a4855c74cea9cf6c168fd73165d7094bf93
<http://cgit.openembedded.org/openembedded-core/commit/?id=4af13a4855c74cea9cf6c168fd73165d7094bf93>
>
> However Stefan is still in the process of backporting said commit, so you
still
> see the error in morty.
> http://lists.openembedded.org/pipermail/openembedded-core/
2017-August/141582.html
<http://lists.openembedded.org/pipermail/openembedded-core/2017-August/141582.html>
I would not go so far. My best take on this topic is Fedora gpg
public/private key usage. Once one installs Fedora 2x distro, the
particular gpg keys are also installed, which are verifying the Fedora repo
packages downloaded, coded by default key pairs.

But other (private) repos sometimes use another pairs of keys. Then, the
packages would not install. Using the option: --nogpgcheck allows to
install such a package (NOT verifying the keys).

Something similar should be done with YOCTO, my best guess... IMHO.

P.S. Max, please note F25/F26 sstate-cashe (potential) sharing issues!

Thank you all,
Zoran


On Thu, Sep 7, 2017 at 11:17 PM, Max Krummenacher <max.oss.09@gmail.com>
wrote:

> Hi Zoran
>
> Am Donnerstag, den 07.09.2017, 09:37 +0200 schrieb Zoran Stojsavljevic:
> > While re-compiling the whole YOCTO load for freescale i.MX6, where I have
> > added Qt5 layers (and it failed many times, so I needed to do some tricks
> > there), I encounter the following warning (in *ORANGE*) and error (in
> *RED*)
> > while finishing the build:
> >
> > *WARNING: Duplicate inclusion for
> > /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/
> meta-toradex-bsp-
> > common/conf/tdx_version.conf
> > in
> > /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/
> meta-toradex-demos/recipes-
> > images/images/tdx-image-fstype.inc*
> > *ERROR: When reparsing
> > /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/
> meta-toradex-demos/recipes-
> > images/images/angstrom-lxde-image.bb.do_image_teziimg,
> > the basehash value changed from b7b4f312b8b657bfdd068ebd8e2dd104 to
> > 1e71714a9c01964cdc724c52290abee4. The metadata is not deterministic and
> > this needs to be fixed.*
> > NOTE: Tasks Summary: Attempted 7415 tasks of which 7394 didn't need to be
> > rerun and all succeeded.
>
> Please note the '... and all succeeded'. So the basehash error did not
> break the
> build.
>
> I think the basehash error is due to the use of the DATE variable and
> that the following commit fixes it in master:
> http://cgit.openembedded.org/openembedded-core/commit/?id=
> 4af13a4855c74cea9cf6c168fd73165d7094bf93
>
> However Stefan is still in the process of backporting said commit, so you
> still
> see the error in morty.
> http://lists.openembedded.org/pipermail/openembedded-core/
> 2017-August/141582.html
>
> Max
>
>

--94eb2c098dba61ee310558a8bc9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Mike,<br><div><br>&gt; You should be able to do &quo=
t;bitbake meta-toolchain-qt5=20
angstrom-lxde-image&quot; in one go. That should be faster than two separat=
e=20
runs.</div><div><br></div><div>Thank you, Mike. It does work for me.</div><=
div><br></div><div>&gt; If you need two distros, make two build enviroments=
 from them. You=20
should share the sstate-cache directory between them</div><div>&gt; (saves =
tons on=20
building compilers and such) but not the &quot;tmp&quot; directory.</div><d=
iv><br></div><div>Mike,</div><div><br></div><div>I have heard (unofficially=
) that Fedora 26 does NOT allow the sharing of sstate-cache directory betwe=
en the projects. Myself, I did not very that yes (first approach worked for=
 me), since I started again YOCTO (I used very briefly YOCTO 3 years ago) w=
ith Fedora 26. Will be interesting to find out if Fedora 25 allows that (my=
 best guess it does).<br></div><div><br></div><div>Hello Max,</div><div><br=
></div><div>&gt; Please note the &#39;... and all succeeded&#39;. So the ba=
sehash error did not break the build.</div><div><br></div><div>Noted (even =
immediately after load was built/then).<br></div><div>
<br>
&gt; I think the basehash error is due to the use of the DATE variable and<=
br>
&gt; that the following commit fixes it in master:<br>
<a href=3D"http://cgit.openembedded.org/openembedded-core/commit/?id=3D4af1=
3a4855c74cea9cf6c168fd73165d7094bf93" rel=3D"noreferrer" target=3D"_blank">=
&gt; http://cgit.openembedded.org/<wbr>openembedded-core/commit/?id=3D<wbr>=
4af13a4855c74cea9cf6c168fd7316<wbr>5d7094bf93</a><br>
&gt;<br>&gt; However Stefan is still in the process of backporting said com=
mit, so you still<br>
&gt; see the error in morty.<br>
<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2017-A=
ugust/141582.html" rel=3D"noreferrer" target=3D"_blank">&gt; http://lists.o=
penembedded.org/<wbr>pipermail/openembedded-core/<wbr>2017-August/141582.ht=
ml</a><div class=3D"gmail-yj6qo gmail-ajU"><div id=3D"gmail-:xe" class=3D"g=
mail-ajR" tabindex=3D"0"><img class=3D"gmail-ajT" src=3D"https://ssl.gstati=
c.com/ui/v1/icons/mail/images/cleardot.gif"></div></div></div><div>I would =
not go so far. My best take on this topic is Fedora gpg public/private key =
usage. Once one installs Fedora 2x distro, the particular gpg keys are also=
 installed, which are verifying the Fedora repo packages downloaded, coded =
by default key pairs.</div><div><br></div><div>But other (private) repos so=
metimes use another pairs of keys. Then, the packages would not install. Us=
ing the option: --nogpgcheck allows to install such a package (NOT verifyin=
g the keys).</div><div><br></div><div>Something similar should be done with=
 YOCTO, my best guess... IMHO.<br></div><div><br></div><div>P.S. Max, pleas=
e note F25/F26 sstate-cashe (potential) sharing issues!<br></div><div><br><=
/div><div>Thank you all,</div><div>Zoran<br></div><div><br></div></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Sep 7, 2017 a=
t 11:17 PM, Max Krummenacher <span dir=3D"ltr">&lt;<a href=3D"mailto:max.os=
s.09@gmail.com" target=3D"_blank">max.oss.09@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Hi Zoran<br>
<span class=3D""><br>
Am Donnerstag, den 07.09.2017, 09:37 +0200 schrieb Zoran Stojsavljevic:<br>
&gt; While re-compiling the whole YOCTO load for freescale i.MX6, where I h=
ave<br>
&gt; added Qt5 layers (and it failed many times, so I needed to do some tri=
cks<br>
</span>&gt; there), I encounter the following warning (in *ORANGE*) and err=
or (in *RED*)<br>
&gt; while finishing the build:<br>
&gt;<br>
&gt; *WARNING: Duplicate inclusion for<br>
&gt; /home/user/toradex/Qt5-plus-<wbr>x11/oe-core/build/../layers/<wbr>meta=
-toradex-bsp-<br>
&gt; common/conf/tdx_version.conf<br>
&gt; in<br>
&gt; /home/user/toradex/Qt5-plus-<wbr>x11/oe-core/build/../layers/<wbr>meta=
-toradex-demos/recipes-<br>
&gt; images/images/tdx-image-<wbr>fstype.inc*<br>
&gt; *ERROR: When reparsing<br>
&gt; /home/user/toradex/Qt5-plus-<wbr>x11/oe-core/build/../layers/<wbr>meta=
-toradex-demos/recipes-<br>
&gt; images/images/angstrom-lxde-<wbr>image.bb.do_image_teziimg,<br>
<span class=3D"">&gt; the basehash value changed from b7b4f312b8b657bfdd068=
ebd8e2dd1<wbr>04 to<br>
&gt; 1e71714a9c01964cdc724c52290abe<wbr>e4. The metadata is not determinist=
ic and<br>
</span>&gt; this needs to be fixed.*<br>
<span class=3D"">&gt; NOTE: Tasks Summary: Attempted 7415 tasks of which 73=
94 didn&#39;t need to be<br>
&gt; rerun and all succeeded.<br>
<br>
</span>Please note the &#39;... and all succeeded&#39;. So the basehash err=
or did not break the<br>
build.<br>
<br>
I think the basehash error is due to the use of the DATE variable and<br>
that the following commit fixes it in master:<br>
<a href=3D"http://cgit.openembedded.org/openembedded-core/commit/?id=3D4af1=
3a4855c74cea9cf6c168fd73165d7094bf93" rel=3D"noreferrer" target=3D"_blank">=
http://cgit.openembedded.org/<wbr>openembedded-core/commit/?id=3D<wbr>4af13=
a4855c74cea9cf6c168fd7316<wbr>5d7094bf93</a><br>
<br>
However Stefan is still in the process of backporting said commit, so you s=
till<br>
see the error in morty.<br>
<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2017-A=
ugust/141582.html" rel=3D"noreferrer" target=3D"_blank">http://lists.openem=
bedded.org/<wbr>pipermail/openembedded-core/<wbr>2017-August/141582.html</a=
><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Max<br>
<br>
</font></span></blockquote></div><br></div>

--94eb2c098dba61ee310558a8bc9f--
