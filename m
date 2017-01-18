Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94FA7E00998; Wed, 18 Jan 2017 01:35:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DABD1E0098A
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:35:27 -0800 (PST)
Received: by mail-qt0-f181.google.com with SMTP id l7so6488858qtd.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:35:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Gudjm1jU36nQ8f3DlAlNPby/hLbJ4e0+kXf0EPjScIk=;
	b=nsx7CY1Hzsj0bejFzfSEVgj73IdaS4efC9YuVEw3duSnqzlyxq3iODk+flpDZ61Nw4
	8n1xZf8dHobycBw/ITXyEoqyU2hyB4lc3uMKbWvrb3p3YvFVmPo1GrZyHMOm3JKSvRvv
	2wgjT9lkO+ZpFYkewvLUjjqTYoPOQ0hLgSzR6O3/25LhPPEVBvjocBybMCOkirqfniI1
	GXe/fIgSmlzb+TTDtCJ+SXH5ccCCyTz3SOtsF4m1DV9c4JdKxtj83J5dltaKnjYCj4UA
	VK8XiPFlx6fNTqbZi1zhDgCU2Ie4GLEfhxxHx9fK1JYH5Gzl8rG03IYqXCUDHj2S7y6f
	J+tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Gudjm1jU36nQ8f3DlAlNPby/hLbJ4e0+kXf0EPjScIk=;
	b=fA7UuYbO1ELSIT8IhjGqwzfX1kgJ4Y9pMTdgGwaquIoT1+XmhzRvGs91EJr6AvvYU7
	zX7IHZWh6vRtH/JA30ZzjGIJ10mqUEyWqeDlm16POIMLlT9cDiSS4bW4wtp72AI6lVDu
	t9JVDNYLjAYgdKYAPZHYO0FAlmk8EdG6Vltf+DmWpgyYXeyZIqY5jBc/re62klW4dF75
	4tjJO691gkTf2ZuNerTRAAQHtAzvC7+ibaOjxObLVvENRq1nV5V0BghZ2rWOIfx9H37A
	M2MASesfC1uMEAF+687kI9fo5NekFyOvVnWZMPNbKJa3zl4UD3qEp/1N4sVXIscGOFou
	BRyw==
X-Gm-Message-State: AIkVDXL81jLsj+R5xfLb150LCFhKviLOtz23uH4HPbO9s9P4Y86/m4/44Zay9kTJTruE0hzdXUXmAzSDhcgKz4tZ
X-Received: by 10.237.39.148 with SMTP id a20mr1961740qtd.65.1484732126808;
	Wed, 18 Jan 2017 01:35:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Wed, 18 Jan 2017 01:35:06 -0800 (PST)
In-Reply-To: <709d0576-a880-c109-b602-73cf671a96ae@mlbassoc.com>
References: <709d0576-a880-c109-b602-73cf671a96ae@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Jan 2017 09:35:06 +0000
Message-ID: <CAJTo0LZina7gy9PAiEj_1Wusvfi8HDMpqfHg5oYKkJbHBdsxgA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sstate-cache and native recipes
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
X-List-Received-Date: Wed, 18 Jan 2017 09:35:28 -0000
Content-Type: multipart/alternative; boundary=f403045ee6d801a34405465b2329

--f403045ee6d801a34405465b2329
Content-Type: text/plain; charset=UTF-8

On 18 January 2017 at 09:13, Gary Thomas <gary@mlbassoc.com> wrote:

> * glib-2.0-native depends on ${DISTRO_FEATURES}
>   To me this seems silly as "native" should be "native" and
>   not depend on any distribution settings.  Here's the code
>   that's causing it (in do_install)
>
>         if [ -f ${D}${datadir}/installed-tests/glib/gdbus-serialization.test
> ]; then
>                 if ${@bb.utils.contains("DISTRO_FEATURES", "x11",
> "false", "true", d)}; then
>                         rm ${D}${datadir}/installed-tests
> /glib/gdbus-serialization.test
>                 fi
>         fi
>
>   Obviously this isn't important for a native package.  Any
>   suggestions on how I might keep this from creeping in?
>

The tests are only installed for target builds anyway, so that do_install
part could be target-specific.

Ross

--f403045ee6d801a34405465b2329
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 January 2017 at 09:13, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":mf" class=3D"a3s aXjC=
H m159b0e74ee52456a">* glib-2.0-native depends on ${DISTRO_FEATURES}<br>
=C2=A0 To me this seems silly as &quot;native&quot; should be &quot;native&=
quot; and<br>
=C2=A0 not depend on any distribution settings.=C2=A0 Here&#39;s the code<b=
r>
=C2=A0 that&#39;s causing it (in do_install)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -f ${D}${datadir}/installed-tests<wbr>/gli=
b/gdbus-serialization.test ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ${@bb.utils.cont=
ains(&quot;DISTRO_F<wbr>EATURES&quot;, &quot;x11&quot;, &quot;false&quot;, =
&quot;true&quot;, d)}; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rm ${D}${datadir}/installed-tests<wbr>/glib/gdbus-serialization.=
test<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
<br>
=C2=A0 Obviously this isn&#39;t important for a native package.=C2=A0 Any<b=
r>
=C2=A0 suggestions on how I might keep this from creeping in?</div></blockq=
uote></div><br>The tests are only installed for target builds anyway, so th=
at do_install part could be target-specific.</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">Ross</div></div>

--f403045ee6d801a34405465b2329--
