Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84288E00ADB; Fri,  3 Mar 2017 23:15:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.50 listed in dnsbl.sorbs.net]
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2060E00ABE
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 23:15:32 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id 203so25373280ith.0
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 23:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hY0L3HnfQ6GFz3EwhIYMwx+c9ooUJxCf7OqDhRUM0gY=;
	b=sb2HqJ3yMDRlA4XfdPUQ0xhwYiBabI+htgU5SsM5ezWnUqmztY9PPaJmuic/P+EhDD
	IiRlwzNsiXCuRTWdfBJX4y22TXq7UQGjIw3N55rBUt6BVKof+DfsN9XawJ+XR5ibrzcw
	kmSJiBpbbNUzpxmLu/qQlkvac7/sr6bXCr4B4DUh7eMuftD0Lx+kaj9qj0h7jVaJzILh
	gqFKFA2kG8PKF7PAAIdGR0cqFigrzFoscHD0RCFU0b47LWzweRGmQnn7yShnzjJvS3HW
	K5BaBtRoGiVwSIWNxi3Cg65gOrBotu0rg4P0dSGX9iG/qzca9P4KjQij2UYZPoWgk/tW
	kuyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hY0L3HnfQ6GFz3EwhIYMwx+c9ooUJxCf7OqDhRUM0gY=;
	b=uilIvAPgnDUX0u0XQr4W7uUVOEleURfIGJpPSfp0C1n/QUTh7DaxToA+6OuVwgB72a
	4HH9l9UVXtaSfvY0mwtkxuyGWaXnyuE+yGjvXxGgIC9Y5KufjHCtn+v7Whz/1k46G9cI
	CrkEIz/jMIcb+MOEXl/XHdkeIPdpEClx8+Xq0Nthksy72Hke3uz9aR9Tuoz0EFlzGzJ/
	aLy2mesR6v29I0w8l+gLeILZw1jG9+vq8+a+AX41aJfmzJQLwwwIRB4jzwd2TA5nw1xh
	KlYXE3B9DOTBsGHYwd8o/5pH9bBQUXUFulQ285st7vlPfw+QiycfEOTHeXCgSfk3TO8G
	/PTQ==
X-Gm-Message-State: AMke39nunYJqFGEN3nzRxL2ry3pksal9hulMbQooc2LPuOpj78xRkbNRzvrGFW9S/gyjRCu0KOBE/wg7afiWNw==
X-Received: by 10.36.51.68 with SMTP id k65mr6177852itk.4.1488611732073; Fri,
	03 Mar 2017 23:15:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.158.69 with HTTP; Fri, 3 Mar 2017 23:15:31 -0800 (PST)
Received: by 10.79.158.69 with HTTP; Fri, 3 Mar 2017 23:15:31 -0800 (PST)
In-Reply-To: <CAJTo0LZ3_iu=z1DhqFfDrPsFRCkDNgA47Os3aOKHPhb6i-YisA@mail.gmail.com>
References: <CAFq4t4h_PuOC8JDN2z6NWRZGHZMZWRr7aB+XYDCta1cvJV49CA@mail.gmail.com>
	<CAJTo0LZPA1ta5Jp9q6yeEz+V3Vt+pye6NpmEHg97U87FjXqwUQ@mail.gmail.com>
	<CAFq4t4gLoQfM5gtD73Nx-_h6SCMa8Qyf807nFo-BOTF4kbOpfA@mail.gmail.com>
	<CAFq4t4jZSOB+_0pm0Bx8a0d2AzH29V2R+MD7Yqx65OiLXmAZaw@mail.gmail.com>
	<CAJTo0LZ3_iu=z1DhqFfDrPsFRCkDNgA47Os3aOKHPhb6i-YisA@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sat, 4 Mar 2017 08:15:31 +0100
Message-ID: <CAFq4t4iwUNGAaTi8e9u8wT2sS8r5hwu4v7_ON4NaaTOFe=9gRA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto's framebuffer-vncserver
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
X-List-Received-Date: Sat, 04 Mar 2017 07:15:35 -0000
Content-Type: multipart/alternative; boundary=001a1143cdb07fb5410549e26dbe

--001a1143cdb07fb5410549e26dbe
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I change libvncserver to 0.9.10 but it has depandancy on GTK+. Can't
compile. Unfortunately framebuffer has no in that distro.

Any other option for remote display on framebuffer?

Thank you.





Dne 3. 3. 2017 6:43 odpoledne napsal u=C5=BEivatel "Burton, Ross" <
ross.burton@intel.com>:


On 3 March 2017 at 16:23, Peter Balazovic <balazovic.peter@gmail.com> wrote=
:

> | ../libvncserver/.libs/libvncserver.so: undefined reference to
> `gcry_md_open'
>

So many possibilities.  Is gcry_* something that is also built by
libvncserver? If so then it's link order related and you'll need to fix the
makefiles.  If it's an external library then you'll need to add that to
DEPENDS.

It looks like you're using a very old meta-oe though, the current meta-oe
has libvncserver 0.9.10:

http://cgit.openembedded.org/meta-openembedded/tree/meta-
oe/recipes-graphics/libvncserver/libvncserver_0.9.10.bb

Ross

--001a1143cdb07fb5410549e26dbe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I c=
hange libvncserver to 0.9.10 but it has depandancy on GTK+. Can&#39;t compi=
le. Unfortunately framebuffer has no in that distro.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Any other option for remote display on framebu=
ffer?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thank you.</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br=
></div><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">Dne 3.=
 3. 2017 6:43 odpoledne napsal u=C5=BEivatel &quot;Burton, Ross&quot; &lt;<=
a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt;:<br t=
ype=3D"attribution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D=
"quoted-text"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
3 March 2017 at 16:23, Peter Balazovic <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);=
border-left-style:solid;padding-left:1ex"><div>| ../libvncserver/.libs/libv=
ncse<wbr>rver.so: undefined reference to `gcry_md_open&#39;</div><div></div=
></blockquote></div><br></div></div><div class=3D"gmail_extra">So many poss=
ibilities.=C2=A0 Is gcry_* something that is also built by libvncserver? If=
 so then it&#39;s link order related and you&#39;ll need to fix the makefil=
es.=C2=A0 If it&#39;s an external library then you&#39;ll need to add that =
to DEPENDS.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">It looks like you&#39;re using a very old meta-oe though, the current=
 meta-oe has libvncserver 0.9.10:</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra"><a href=3D"http://cgit.openembedded.org/meta-op=
enembedded/tree/meta-oe/recipes-graphics/libvncserver/libvncserver_0.9.10.b=
b" target=3D"_blank">http://cgit.openembedded.org/<wbr>meta-openembedded/tr=
ee/meta-<wbr>oe/recipes-graphics/<wbr>libvncserver/libvncserver_0.9.<wbr>10=
.bb</a></div><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></font></div>
</blockquote></div><br></div></div></div>

--001a1143cdb07fb5410549e26dbe--
