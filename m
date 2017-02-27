Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A6B7E00A51; Mon, 27 Feb 2017 05:41:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.193 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0BF0E009CF
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 05:41:21 -0800 (PST)
Received: by mail-qk0-f193.google.com with SMTP id r90so16938008qki.3
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 05:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+7Xw1nBng/0vTKiz+MXunOb+n2Z4D6OQLtL0p251gvg=;
	b=b90e95oV0W2WU6zooaPVNjxf+ouburyDub2jNPONVtcZLc31jIYQUlQd7WU5MNVDwB
	n/YEisVWllRqqRDcmpszwPeky0dH6SHsx/oc/B6PEKskyPgCRqM37Jf+9heRKgB3FWC6
	qWXsa3wvuvMkVNqRjpGLON0DHH/pIlpqWyMST9R0fr2+hIt7FKnJ8Hy4TWcMm+dWRWHJ
	hp7VEzXQKaMgAFgyGT+hww1FUuWuei9UvNwFd4Xseot4N4R6QyZsJw9t5RADJJmZaaII
	H+H8xOWFq4qRi5qnbpJ1ZSZBfFdndoMpzpTvVx1DaEQYvfOGxtlOpazJXnMd2fePsost
	n+Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+7Xw1nBng/0vTKiz+MXunOb+n2Z4D6OQLtL0p251gvg=;
	b=cdvl56kfjPFJtniXRxO9FMQwjOi7ErseO/YpB3qf8m2jsqyrA5L6JxU7y5iYGpW5tv
	/GdJENscqeof1KV8YYpVKdtDNAgRrpkq4jVkXsiIBEcBJzjkvpQVgIKNgPVpq0VxasPS
	Mxnsaw/RO/nDXyarkTMG04KUZLrNfcTbo/TEizdZP85czJzvr0nlOrAAE6Huj93CEJUO
	mtxCAzmTbAJT4e7hppyIC4YBGIGZN3O4vA4gSLVq0azO6Z+2TcbozepHKdo36qS7GrCo
	L6Jajyped/HKM6gzO+e586g8rLWJrQ8BmtonTDThwSg+WG/kF6HsATIVrLNgiBOM5rdf
	lL1Q==
X-Gm-Message-State: AMke39knWaHeNxff+opNC2MO7bIE6mQ4cWWPNNsgTJZ3csWRknTQs1ARvDe3XI3BX/16IXl0Te5a6H8Kpa8T4g==
X-Received: by 10.237.56.68 with SMTP id j62mr16327696qte.185.1488202880486;
	Mon, 27 Feb 2017 05:41:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.132.68 with HTTP; Mon, 27 Feb 2017 05:41:20 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1702270504160.5510@uk63952.mitel.com>
References: <alpine.LFD.2.20.1702270504160.5510@uk63952.mitel.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 27 Feb 2017 08:41:20 -0500
Message-ID: <CADkTA4O2ugLjGtMfd3bo18bR=yKR1V4gzkrNUJq_JVbamB=2NA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] yocto-docs: kernel-dev, update "3.19" versions to "4.4"
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
X-List-Received-Date: Mon, 27 Feb 2017 13:41:33 -0000
Content-Type: multipart/alternative; boundary=001a1137ac140bbe820549833c9b

--001a1137ac140bbe820549833c9b
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 27, 2017 at 5:07 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
> Update the remaining references to kernel version 3.19 to version 4.4,
> restricted to the section "kernel-dev-common.xml".
>


I just sent a patch to drop 4.4 from master. I'd suggest 4.9 as a version
to use that will persist in master for a bit longer.

Bruce


>
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
> ---
>
>   if my earlier patch hasn't already been applied, this one can be
> folded in since it simply adds more "3.19" -> "4.4" updates to the
> same kernel-dev-common.xml file, which is already part of the commit
> message for that earlier patch.
>
> diff --git a/documentation/kernel-dev/kernel-dev-common.xml
> b/documentation/kernel-dev/kernel-dev-common.xml
> index a9aafd3..97e2a0b 100644
> --- a/documentation/kernel-dev/kernel-dev-common.xml
> +++ b/documentation/kernel-dev/kernel-dev-common.xml
> @@ -645,8 +645,8 @@
>                      recipe to your layer and give it a meaningful name.
>                      The name should include the version of the Linux
> kernel you
>                      are using (e.g.
> -                    <filename>linux-yocto-myproject_3.19.bb</filename>,
> -                    where "3.19" is the base version of the Linux kernel
> +                    <filename>linux-yocto-myproject_4.4.bb</filename>,
> +                    where "4.4" is the base version of the Linux kernel
>                      with which you would be working).</para></listitem>
>                  <listitem><para>In the same directory inside your layer,
>                      create a matching directory
> @@ -698,7 +698,7 @@
>                              </para></listitem>
>                          <listitem><para><ulink
> url='&YOCTO_DOCS_REF_URL;#var-LINUX_VERSION'><filename>
> LINUX_VERSION</filename></ulink>:
>                              The Linux kernel version you are using (e.g.
> -                            "3.19").</para></listitem>
> +                            "4.4").</para></listitem>
>                          <listitem><para><ulink
> url='&YOCTO_DOCS_REF_URL;#var-LINUX_VERSION_EXTENSION'><
> filename>LINUX_VERSION_EXTENSION</filename></ulink>:
>                              The Linux kernel
> <filename>CONFIG_LOCALVERSION</filename>
>                              that is compiled into the resulting kernel
> and visible
> @@ -724,7 +724,7 @@
>                              The combined results are a string with
>                              the following form:
>                              <literallayout class='monospaced'>
> -     3.19.11+git1+68a635bf8dfb64b02263c1ac80c948647cc76d5f_1+
> 218bd8d2022b9852c60d32f0d770931e3cf343e2
> +     4.4.11+git1+68a635bf8dfb64b02263c1ac80c948647cc76d5f_1+
> 218bd8d2022b9852c60d32f0d770931e3cf343e2
>                              </literallayout>
>                              While lengthy, the extra verbosity in
> <filename>PV</filename>
>                              helps ensure you are using the exact
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a1137ac140bbe820549833c9b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Feb 27, 2017 at 5:07 AM, Robert P. J. Day <span dir=3D"ltr">&lt=
;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcou=
rse.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Update the remaining references to kernel version 3.19 to version 4.4,<br>
restricted to the section &quot;kernel-dev-common.xml&quot;.<br></blockquot=
e><div><br><br></div><div>I just sent a patch to drop 4.4 from master. I&#3=
9;d suggest 4.9 as a version to use that will persist in master for a bit l=
onger.<br><br></div><div>Bruce<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
Signed-off-by: Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca=
">rpjday@crashcourse.ca</a>&gt;<br>
<br>
---<br>
<br>
=C2=A0 if my earlier patch hasn&#39;t already been applied, this one can be=
<br>
folded in since it simply adds more &quot;3.19&quot; -&gt; &quot;4.4&quot; =
updates to the<br>
same kernel-dev-common.xml file, which is already part of the commit<br>
message for that earlier patch.<br>
<br>
diff --git a/documentation/kernel-dev/<wbr>kernel-dev-common.xml b/document=
ation/kernel-dev/<wbr>kernel-dev-common.xml<br>
index a9aafd3..97e2a0b 100644<br>
--- a/documentation/kernel-dev/<wbr>kernel-dev-common.xml<br>
+++ b/documentation/kernel-dev/<wbr>kernel-dev-common.xml<br>
@@ -645,8 +645,8 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0recipe to your layer and give it a meaningful name.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0The name should include the version of the Linux kernel you<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0are using (e.g.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
filename&gt;<a href=3D"http://linux-yocto-myproject_3.19.bb" rel=3D"norefer=
rer" target=3D"_blank">linux-yocto-<wbr>myproject_3.19.bb</a>&lt;/filename&=
gt;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wher=
e &quot;3.19&quot; is the base version of the Linux kernel<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
filename&gt;<a href=3D"http://linux-yocto-myproject_4.4.bb" rel=3D"noreferr=
er" target=3D"_blank">linux-yocto-<wbr>myproject_4.4.bb</a>&lt;/filename&gt=
;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wher=
e &quot;4.4&quot; is the base version of the Linux kernel<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0with which you would be working).&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;In the same directory inside your layer,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0create a matching directory<br>
@@ -698,7 +698,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&lt;listitem&gt;&lt;para&gt;&lt;ulink url=3D&#39;&amp;YOCT=
O_DOCS_REF_URL;#var-<wbr>LINUX_VERSION&#39;&gt;&lt;filename&gt;<wbr>LINUX_V=
ERSION&lt;/filename&gt;&lt;/<wbr>ulink&gt;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The Linux kernel version you are using (e.g.=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;3.19&quot;).&lt;/para&gt;&lt;/listitem&gt;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;4.4&quot;).&lt;/para&gt;&lt;/listitem&gt;<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&lt;listitem&gt;&lt;para&gt;&lt;ulink url=3D&#39;&amp;YOCT=
O_DOCS_REF_URL;#var-<wbr>LINUX_VERSION_EXTENSION&#39;&gt;&lt;<wbr>filename&=
gt;LINUX_VERSION_<wbr>EXTENSION&lt;/filename&gt;&lt;/ulink&gt;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The Linux kernel &lt;filename&gt;CONFIG_LOCA=
LVERSION&lt;<wbr>/filename&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0that is compiled into the resulting kernel a=
nd visible<br>
@@ -724,7 +724,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The combined results are a string with<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the following form:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;literallayout class=3D&#39;monospaced&#3=
9;&gt;<br>
-=C2=A0 =C2=A0 =C2=A03.19.11+git1+<wbr>68a635bf8dfb64b02263c1ac80c948<wbr>6=
47cc76d5f_1+<wbr>218bd8d2022b9852c60d32f0d77093<wbr>1e3cf343e2<br>
+=C2=A0 =C2=A0 =C2=A04.4.11+git1+<wbr>68a635bf8dfb64b02263c1ac80c948<wbr>64=
7cc76d5f_1+<wbr>218bd8d2022b9852c60d32f0d77093<wbr>1e3cf343e2<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/literallayout&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0While lengthy, the extra verbosity in &lt;fi=
lename&gt;PV&lt;/filename&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0helps ensure you are using the exact<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/<wbr>rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt n=
ot follow the NULL pointer, for chaos and madness await thee at its end&quo=
t;</div>
</div></div>

--001a1137ac140bbe820549833c9b--
