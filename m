Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
 by mx.groups.io with SMTP id smtpd.web10.5402.1632407271436994669
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 07:27:51 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.217.52, mailfrom: fede.evol@gmail.com)
Received: by mail-vs1-f52.google.com with SMTP id x74so6666303vsx.13
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 07:27:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WjmWdLsnPKXGn3UsCghB46D9Dn6ZC2bE8+NTaWCswe0=;
        b=1EVvyObw/n5JAUOyg9qR+5GFwgjOx65ykxbV9vhA1QPhatECGMzPatfvbeqVTjsGGp
         oxmD+wKEqNBtP4CcU/hTmzF74VYEhJhoix/wiakcbI+8hJjkRsRmTXb0rbt68CHeOnQi
         /VjIgbTvQVzRaaQz6lvdYF4WO1wGvrUHmzKCm912Vt65ELqPwaILJBVV6itOESzhmYPO
         +E0RuyMyf1CP4ZJZXFSqEZN037QleriFwpsnzOZHY+MMjqW7fiLHAYYpET7k7fBXcmq4
         hsHOTycl+JRBybtTcEmsJcy6/L1l5GCw5TORymVtfCYdEKkygSJ1TJRU5OUlXmqLNSNF
         ipYg==
X-Gm-Message-State: AOAM533LygMG6XXzUI0dBxKgkKUdfYewtm8L0U3e7GvD6TDazhqv3mDD
	wN6CbYN3+TGMHpzwpo0zOvkxmgpBUF4V4S3Z0Gw=
X-Google-Smtp-Source: ABdhPJzGjctQE2ENFNl9S8/krNmTc2lkmVdyJL4EefC3f/q+tmGlHwToSXGsu0mW8jatQ8zTD/LU08O2t26ne2zj7VY=
X-Received: by 2002:a67:c896:: with SMTP id v22mr4230216vsk.39.1632407270511;
 Thu, 23 Sep 2021 07:27:50 -0700 (PDT)
MIME-Version: 1.0
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
 <AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
 <16A6EE364B338B15.22723@lists.yoctoproject.org> <15166f538f2144adabe2299deb3b2a3c@blackberry.com>
 <4440837f-5f69-28c4-7d8b-57653935790c@gmail.com> <16A735F63BB00E6A.1967@lists.yoctoproject.org>
 <1b84a7a456b54acaae9d98efc5731549@blackberry.com>
In-Reply-To: <1b84a7a456b54acaae9d98efc5731549@blackberry.com>
From: "Federico Pellegrin" <fede@evolware.org>
Date: Thu, 23 Sep 2021 16:27:39 +0200
Message-ID: <CAM6O0Zgs5Fir2k8m+tTVG_OVVe6oq=uRvCEegxzA6x-AvgwSJw@mail.gmail.com>
Subject: Re: [yocto] googletest shared library
To: Lijun Chen <lijchen@blackberry.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007cd91605ccaa6f1d"

--0000000000007cd91605ccaa6f1d
Content-Type: text/plain; charset="UTF-8"

Hi,
To skip the QA you can use:

INSANE_SKIP_${PN} += "dev-elf"

(or any QA part you'd like to skip, ie. dev-elf or dev-so ...)

Cheers,
Federico



Il giorno gio 23 set 2021 alle ore 15:33 Lijun Chen <lijchen@blackberry.com>
ha scritto:

> Hi,
>
>
> If I switch to the default setting of the googletest recipe, the header
> files are included in the SDK image. However, the libgtest libraries are
> static.
>
> Looks FILES_SOLIBSDEV = "" disables googletest-dev to be included in the
> SDK.
>
>
> Is there a way to change the library to dynamic and keep the header files?
> i.e. just add EXTRA_OECMAKE = "-DBUILD_SHARED_LIBS=ON " but skip the
> do_package_qa part to avoid the QA issue due to un-versioned library?
>
>
> Thanks,
>
> Lijun
>
>
> ------------------------------
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
> behalf of Lijun Chen <lijchen@blackberry.com>
> *Sent:* Wednesday, September 22, 2021 1:45 PM
> *To:* Khem Raj; yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] googletest shared library
>
>
> Tried adding googletest to TOOLCHAIN_TARGET_TASK. The gtest .h files are
> still not showing up.
>
> Thanks,
> ------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Wednesday, September 22, 2021 11:28:05 AM
> *To:* Lijun Chen; yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] googletest shared library
>
> The .h files will be in dev pkg in this case googletest-dev
> what happens if you add googletest to TOOLCHAIN_TARGET_TASK
>
> On 9/22/21 6:18 AM, Lijun Chen wrote:
> > Hi,
> >
> >
> > Now I included googletest to the IMAGE_INSTALL in my image file, and
> > built both board image and SDK image. I can see libgtest.so is available
> > in both images. However, gtest/gtest.h is a not present in SDK. How do I
> > add the header files to the SDK image? Looks the following lines affect
> > that?
> >
> > SOLIBS = ".so"
> > FILES_SOLIBSDEV = ""
> >
> > Thanks,
> > Lijun
> >
> > ------------------------------------------------------------------------
> > *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
> > behalf of Lijun Chen <lijchen@blackberry.com>
> > *Sent:* Tuesday, September 21, 2021 3:50 PM
> > *To:* Konrad Weihmann; yocto@lists.yoctoproject.org
> > *Subject:* Re: [yocto] googletest shared library
> >
> > Thanks Konrad. That worked.
> >
> > ------------------------------------------------------------------------
> > *From:* Konrad Weihmann <kweihmann@outlook.com>
> > *Sent:* Tuesday, September 21, 2021 10:26:19 AM
> > *To:* Lijun Chen; yocto@lists.yoctoproject.org
> > *Subject:* Re: [yocto] googletest shared library
> >
> > On 21.09.21 16:18, Lijun Chen wrote:
> >> Hi,
> >>
> >> I would like to include libgtest.so into my Yocto image. I added
> >> googletest to IMAGE_INSTALL and added the following line to
> >> sources/meta-openembedded/meta-oe/recipes-test/googletest/
> googletest_git.bb:
> >>
> >> EXTRA_OECMAKE = "-DBUILD_SHARED_LIBS=ON "
> >>
> >>
> >> The shared libraries were built successfully. However, there are errors
> >> in do_package_qc as following:
> >>
> >>
> >> ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package
> >> googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'
> >> -dev package googletest-dev contains non-symlink .so
> >> '/usr/lib/libgtest_main.so'
> >> -dev package googletest-dev contains non-symlink .so
> >> '/usr/lib/libgmock_main.so'
> >> -dev package googletest-dev contains non-symlink .so
> >> '/usr/lib/libgtest.so' [dev-elf]
> >> ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors.
> >> Please consider fixing them.
> >
> >
> https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$
> > <
> https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$>
>
> >
> > (and the next lines) might give you a hint what to do in this case.
> > Although one could also consider that's something that needs to be fixed
> > in the installation script of googletest, as versioned libraries are the
> > expected default
> >
> >>
> >>
> >> Any idea to fix this?
> >>
> >>
> >> Thanks,
> >>
> >> Lijun
> >>
> >>
> >> ------------------------------------------------------------------------
> >> This transmission (including any attachments) may contain confidential
> >> information, privileged material (including material protected by the
> >> solicitor-client or other applicable privileges), or constitute
> >> non-public information. Any use of this information by anyone other
> than
> >> the intended recipient is prohibited. If you have received this
> >> transmission in error, please immediately reply to the sender and
> delete
> >> this information from your system. Use, dissemination, distribution, or
> >> reproduction of this transmission by unintended recipients is not
> >> authorized and may be unlawful.
> >>
> >>
> >>
> >>
> > ------------------------------------------------------------------------
> > This transmission (including any attachments) may contain confidential
> > information, privileged material (including material protected by the
> > solicitor-client or other applicable privileges), or constitute
> > non-public information. Any use of this information by anyone other than
> > the intended recipient is prohibited. If you have received this
> > transmission in error, please immediately reply to the sender and delete
> > this information from your system. Use, dissemination, distribution, or
> > reproduction of this transmission by unintended recipients is not
> > authorized and may be unlawful.
> > ------------------------------------------------------------------------
> > This transmission (including any attachments) may contain confidential
> > information, privileged material (including material protected by the
> > solicitor-client or other applicable privileges), or constitute
> > non-public information. Any use of this information by anyone other than
> > the intended recipient is prohibited. If you have received this
> > transmission in error, please immediately reply to the sender and delete
> > this information from your system. Use, dissemination, distribution, or
> > reproduction of this transmission by unintended recipients is not
> > authorized and may be unlawful.
> >
> >
> >
> >
> ------------------------------
> This transmission (including any attachments) may contain confidential
> information, privileged material (including material protected by the
> solicitor-client or other applicable privileges), or constitute non-public
> information. Any use of this information by anyone other than the intended
> recipient is prohibited. If you have received this transmission in error,
> please immediately reply to the sender and delete this information from
> your system. Use, dissemination, distribution, or reproduction of this
> transmission by unintended recipients is not authorized and may be unlawful.
> ------------------------------
> This transmission (including any attachments) may contain confidential
> information, privileged material (including material protected by the
> solicitor-client or other applicable privileges), or constitute non-public
> information. Any use of this information by anyone other than the intended
> recipient is prohibited. If you have received this transmission in error,
> please immediately reply to the sender and delete this information from
> your system. Use, dissemination, distribution, or reproduction of this
> transmission by unintended recipients is not authorized and may be unlawful.
>
> 
>
>

--0000000000007cd91605ccaa6f1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi,</div><div>To skip the QA you can u=
se:</div><div><br></div><div>INSANE_SKIP_${PN} +=3D &quot;dev-elf&quot;</di=
v><div><br></div><div>(or any QA part you&#39;d like to skip, ie. dev-elf o=
r dev-so ...)</div><div><br></div><div>Cheers,</div><div>Federico</div><div=
><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">Il giorno gio 23 set 2021 alle ore 15:33 Lijun Ch=
en &lt;<a href=3D"mailto:lijchen@blackberry.com">lijchen@blackberry.com</a>=
&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>




<div dir=3D"ltr">
<div id=3D"gmail-m_8376641144616927063divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif,&quot;Em=
ojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,Noto=
ColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbo=
ls" dir=3D"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>If I switch to the default setting of the googletest recipe, the header =
files are included in the SDK image. However, the libgtest libraries are st=
atic.</p>
<p>Looks <font size=3D"2"><span style=3D"font-size:10pt">FILES_SOLIBSDEV =
=3D &quot;&quot;</span></font> disables googletest-dev to be included in th=
e SDK.</p>
<p><br>
</p>
<p><span>Is there a way to change the library to dynamic and keep the heade=
r files? i.e. just add
<font size=3D"2"><span style=3D"font-size:10pt">EXTRA_OECMAKE =3D &quot;-DB=
UILD_SHARED_LIBS=3DON &quot;</span></font> but skip the
<font size=3D"2"><span style=3D"font-size:10pt">do_package_qa</span></font>=
 part to avoid the QA issue due to un-versioned library?</span></p>
<p><span><br>
</span></p>
<p><span>Thanks,</span></p>
<p><span>Lijun</span><br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_8376641144616927063divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoc=
to@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoprojec=
t.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of =
Lijun Chen &lt;<a href=3D"mailto:lijchen@blackberry.com" target=3D"_blank">=
lijchen@blackberry.com</a>&gt;<br>
<b>Sent:</b> Wednesday, September 22, 2021 1:45 PM<br>
<b>To:</b> Khem Raj; <a href=3D"mailto:yocto@lists.yoctoproject.org" target=
=3D"_blank">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>=C2=A0</div>
</div>
<div>

<div dir=3D"ltr">
<div id=3D"gmail-m_8376641144616927063x_divtagdefaultwrapper" dir=3D"ltr" s=
tyle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-=
serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Em=
oji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&qu=
ot;,EmojiSymbols">
<p>Tried adding googletest to <font size=3D"2"><span style=3D"font-size:10p=
t">TOOLCHAIN_TARGET_TASK</span></font>. The gtest .h files are still not sh=
owing up.</p>
<p>Thanks,<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_8376641144616927063x_divRplyFwdMsg" dir=3D"ltr"><font st=
yle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fr=
om:</b> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, September 22, 2021 11:28:05 AM<br>
<b>To:</b> Lijun Chen; <a href=3D"mailto:yocto@lists.yoctoproject.org" targ=
et=3D"_blank">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div>The .h files will be in dev pkg in this case googletest-dev<br>
what happens if you add googletest to TOOLCHAIN_TARGET_TASK<br>
<br>
On 9/22/21 6:18 AM, Lijun Chen wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; <br>
&gt; Now I included googletest to the IMAGE_INSTALL in my image file, and <=
br>
&gt; built both board image and SDK image. I can see libgtest.so is availab=
le <br>
&gt; in both images. However, gtest/gtest.h is a not present in SDK. How do=
 I <br>
&gt; add the header files to the SDK image? Looks the following lines affec=
t <br>
&gt; that?<br>
&gt; <br>
&gt; SOLIBS =3D &quot;.so&quot;<br>
&gt; FILES_SOLIBSDEV =3D &quot;&quot;<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Lijun<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_bla=
nk">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoct=
oproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on <br=
>
&gt; behalf of Lijun Chen &lt;<a href=3D"mailto:lijchen@blackberry.com" tar=
get=3D"_blank">lijchen@blackberry.com</a>&gt;<br>
&gt; *Sent:* Tuesday, September 21, 2021 3:50 PM<br>
&gt; *To:* Konrad Weihmann; <a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a><br>
&gt; *Subject:* Re: [yocto] googletest shared library<br>
&gt; <br>
&gt; Thanks Konrad. That worked.<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com" t=
arget=3D"_blank">kweihmann@outlook.com</a>&gt;<br>
&gt; *Sent:* Tuesday, September 21, 2021 10:26:19 AM<br>
&gt; *To:* Lijun Chen; <a href=3D"mailto:yocto@lists.yoctoproject.org" targ=
et=3D"_blank">yocto@lists.yoctoproject.org</a><br>
&gt; *Subject:* Re: [yocto] googletest shared library<br>
&gt; <br>
&gt; On 21.09.21 16:18, Lijun Chen wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt; <br>
&gt;&gt; I would like to include libgtest.so into my Yocto image. I added <=
br>
&gt;&gt; googletest to IMAGE_INSTALL and added the following line to <br>
&gt;&gt; sources/meta-openembedded/meta-oe/recipes-test/googletest/<a href=
=3D"http://googletest_git.bb" target=3D"_blank">googletest_git.bb</a>:<br>
&gt;&gt; <br>
&gt;&gt; EXTRA_OECMAKE =3D &quot;-DBUILD_SHARED_LIBS=3DON &quot;<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; The shared libraries were built successfully. However, there are e=
rrors <br>
&gt;&gt; in do_package_qc as following:<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package =
<br>
&gt;&gt; googletest-dev contains non-symlink .so &#39;/usr/lib/libgmock.so&=
#39;<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; &#39;/usr/lib/libgtest_main.so&#39;<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; &#39;/usr/lib/libgmock_main.so&#39;<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; &#39;/usr/lib/libgtest.so&#39; [dev-elf]<br>
&gt;&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal erro=
rs. <br>
&gt;&gt; Please consider fixing them.<br>
&gt; <br>
&gt; <a href=3D"https://urldefense.com/v3/__http://git.yoctoproject.org/cgi=
t/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__=
;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4=
iMsNNleww$" target=3D"_blank">
https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/=
tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb=
7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$</a>
<br>
&gt; &lt;<a href=3D"https://urldefense.com/v3/__http://git.yoctoproject.org=
/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n=
34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0N=
ANM4iMsNNleww$" target=3D"_blank">https://urldefense.com/v3/__http://git.yo=
ctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-too=
ls_2021.2.bb*n34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3n=
YTCBoGJTY9-K0NANM4iMsNNleww$</a>&gt;
<br>
&gt; <br>
&gt; (and the next lines) might give you a hint what to do in this case.<br=
>
&gt; Although one could also consider that&#39;s something that needs to be=
 fixed<br>
&gt; in the installation script of googletest, as versioned libraries are t=
he<br>
&gt; expected default<br>
&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; Any idea to fix this?<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; Thanks,<br>
&gt;&gt; <br>
&gt;&gt; Lijun<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; ------------------------------------------------------------------=
------<br>
&gt;&gt; This transmission (including any attachments) may contain confiden=
tial <br>
&gt;&gt; information, privileged material (including material protected by =
the <br>
&gt;&gt; solicitor-client or other applicable privileges), or constitute <b=
r>
&gt;&gt; non-public information. Any use of this information by anyone othe=
r than <br>
&gt;&gt; the intended recipient is prohibited. If you have received this <b=
r>
&gt;&gt; transmission in error, please immediately reply to the sender and =
delete <br>
&gt;&gt; this information from your system. Use, dissemination, distributio=
n, or <br>
&gt;&gt; reproduction of this transmission by unintended recipients is not =
<br>
&gt;&gt; authorized and may be unlawful.<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; This transmission (including any attachments) may contain confidential=
 <br>
&gt; information, privileged material (including material protected by the =
<br>
&gt; solicitor-client or other applicable privileges), or constitute <br>
&gt; non-public information. Any use of this information by anyone other th=
an <br>
&gt; the intended recipient is prohibited. If you have received this <br>
&gt; transmission in error, please immediately reply to the sender and dele=
te <br>
&gt; this information from your system. Use, dissemination, distribution, o=
r <br>
&gt; reproduction of this transmission by unintended recipients is not <br>
&gt; authorized and may be unlawful.<br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; This transmission (including any attachments) may contain confidential=
 <br>
&gt; information, privileged material (including material protected by the =
<br>
&gt; solicitor-client or other applicable privileges), or constitute <br>
&gt; non-public information. Any use of this information by anyone other th=
an <br>
&gt; the intended recipient is prohibited. If you have received this <br>
&gt; transmission in error, please immediately reply to the sender and dele=
te <br>
&gt; this information from your system. Use, dissemination, distribution, o=
r <br>
&gt; reproduction of this transmission by unintended recipients is not <br>
&gt; authorized and may be unlawful.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</div>
</span></font>
<hr>
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information
 by anyone other than the intended recipient is prohibited. If you have rec=
eived this transmission in error, please immediately reply to the sender an=
d delete this information from your system. Use, dissemination, distributio=
n, or reproduction of this transmission
 by unintended recipients is not authorized and may be unlawful.<br>
</div>
</div>
</div>

<hr>This transmission (including any attachments) may contain confidential =
information, privileged material (including material protected by the solic=
itor-client or other applicable privileges), or constitute non-public infor=
mation. Any use of this information by anyone other than the intended recip=
ient is prohibited. If you have received this transmission in error, please=
 immediately reply to the sender and delete this information from your syst=
em. Use, dissemination, distribution, or reproduction of this transmission =
by unintended recipients is not authorized and may be unlawful.<br>
</div>

<br>
<br>
<br>
</blockquote></div>

--0000000000007cd91605ccaa6f1d--
