Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 975CBE00724; Fri,  3 Mar 2017 09:43:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64FD8E00566
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 09:43:31 -0800 (PST)
Received: by mail-qk0-f175.google.com with SMTP id 1so68402791qkl.3
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 09:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nJ9wQ3+gcnVL2iKBIejJBXvRA4NLlWlEDrSDOyyMX/8=;
	b=sIHUIUXOUjc86B4Yen8iv6Q8+WcWNitOE7RyWzkYzPVpODUUcSYHRuvRJPB3pnPWQX
	jbmywwXL3nVrGZEW/qTCIkQuVyW7EQr7GSAQN7bA+IXoefQPFWbPnFqNZCQiaYysFoZm
	sprYXWq4s7dE9O17i1kGgA9yTUjfQteGuPuGr2/hp0G1OyMOxPdoQ7f25MVxEkfWu+48
	BqWHuZGao3VdP9qvROQlQlb7bN73ZjXJ0yn1zd7MXZpKYiMabQcnHCAHlEhI1oDvKoyx
	DQnTac+MotVaZRnGsGbbft9bYiFWnb8AkZAkDt+PMC9AXdBJ/JjvJIZR2oOkdBzZipn+
	qEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nJ9wQ3+gcnVL2iKBIejJBXvRA4NLlWlEDrSDOyyMX/8=;
	b=dB5h7YvLJUKIMNyhjsQNWspM0YqOowOANe0m55bof8Be8/XsO7S+xR35/BX/sqKzjI
	JVc3d1S/UFuAUdGoDmFNbqB4TS/CBh/lI2JyY+EMuV+GkZ7btJXzF+2CV1P1Xq+qmS+C
	vTYXJBzcWvGrn1Ht5SDob+pTVkTRkN9a/KJzmpwVpfNrEquPU0LpRwqZBYr7Pww+fdMS
	N7oNyAdWsIcKpdmn3TPRwe8Pn4y5BYBQCcSeYJF4RpFsOf9HeN828Ezlhc0gkUCF+0YE
	URBXqDk22Ur31LBe/a0p89RSopZN/mESTbAOs307jfAB5cQSeQCaDHpvFZvYpMUHxNOE
	KhnA==
X-Gm-Message-State: AMke39nSHlUUUAS5wBG06XgYq0Rwpy0iK0eVK9pmC+Lq+pTIaKLUTe8nfIa65X/y8Zz+XAkjOtLHgfpmofzJixdy
X-Received: by 10.55.175.195 with SMTP id y186mr3796308qke.26.1488563010307;
	Fri, 03 Mar 2017 09:43:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 3 Mar 2017 09:43:09 -0800 (PST)
In-Reply-To: <CAFq4t4jZSOB+_0pm0Bx8a0d2AzH29V2R+MD7Yqx65OiLXmAZaw@mail.gmail.com>
References: <CAFq4t4h_PuOC8JDN2z6NWRZGHZMZWRr7aB+XYDCta1cvJV49CA@mail.gmail.com>
	<CAJTo0LZPA1ta5Jp9q6yeEz+V3Vt+pye6NpmEHg97U87FjXqwUQ@mail.gmail.com>
	<CAFq4t4gLoQfM5gtD73Nx-_h6SCMa8Qyf807nFo-BOTF4kbOpfA@mail.gmail.com>
	<CAFq4t4jZSOB+_0pm0Bx8a0d2AzH29V2R+MD7Yqx65OiLXmAZaw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 3 Mar 2017 17:43:09 +0000
Message-ID: <CAJTo0LZ3_iu=z1DhqFfDrPsFRCkDNgA47Os3aOKHPhb6i-YisA@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
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
X-List-Received-Date: Fri, 03 Mar 2017 17:43:34 -0000
Content-Type: multipart/alternative; boundary=94eb2c06093c74aa100549d715b3

--94eb2c06093c74aa100549d715b3
Content-Type: text/plain; charset=UTF-8

On 3 March 2017 at 16:23, Peter Balazovic <balazovic.peter@gmail.com> wrote:

> | ../libvncserver/.libs/libvncserver.so: undefined reference to
> `gcry_md_open'
>

So many possibilities.  Is gcry_* something that is also built by
libvncserver? If so then it's link order related and you'll need to fix the
makefiles.  If it's an external library then you'll need to add that to
DEPENDS.

It looks like you're using a very old meta-oe though, the current meta-oe
has libvncserver 0.9.10:

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-graphics/libvncserver/libvncserver_0.9.10.bb

Ross

--94eb2c06093c74aa100549d715b3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 March 2017 at 16:23, Peter Balazovic <span dir=3D"ltr">&lt;<a href=3D"=
mailto:balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex"><div>| ../libvncserver/.libs/<=
wbr>libvncserver.so: undefined reference to `gcry_md_open&#39;</div><div></=
div></blockquote></div><br></div><div class=3D"gmail_extra">So many possibi=
lities.=C2=A0 Is gcry_* something that is also built by libvncserver? If so=
 then it&#39;s link order related and you&#39;ll need to fix the makefiles.=
=C2=A0 If it&#39;s an external library then you&#39;ll need to add that to =
DEPENDS.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">It looks like you&#39;re using a very old meta-oe though, the current me=
ta-oe has libvncserver 0.9.10:</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra"><a href=3D"http://cgit.openembedded.org/meta-opene=
mbedded/tree/meta-oe/recipes-graphics/libvncserver/libvncserver_0.9.10.bb">=
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-graphic=
s/libvncserver/libvncserver_0.9.10.bb</a></div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c06093c74aa100549d715b3--
