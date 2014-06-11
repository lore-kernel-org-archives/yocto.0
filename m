Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 854D2E00C12; Wed, 11 Jun 2014 10:01:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96EF6E00BC2
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 10:01:14 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id cc10so1538774wib.0
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 10:01:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+2jEzyPFXq29X2zl9eZ4BXTcnttkvPPPeiV4NmuCkPg=;
	b=SWCW+MrglvSIEjtGwJCsgzzrYlYD3x6E6k6wjO9qtXRlaHl/yU2kuqe/Vt/K104x1g
	qBEtzZOCPNsiyWjHTCw+YUyooRGTAW1PbUY28Lm9UtqABLFPQGe8v29Fb4qHur6dJWW6
	gXzH5Aqx0OLizvng+xmkbyhond6veVBJddKI69rapxs3BI7DhGCcjRJn20PZxZCQAlpv
	9lU8+zgXgAw0Y/UuvL/zDHVKu6RJr6U0GmtMAVSQDtuWHMcpfEHwYwj5NQrzJJ9DGn77
	4UDPAfuufFc2ixXhS0T+pUTqZg+xxU0KH/PRfB9HVQtBp6bdQwhsu2f0wy9qDQfuv3Ex
	T4dw==
X-Gm-Message-State: ALoCoQntDDs3uJvzU3f2oedevEqN2MRNMuwnsRLqnGxm7wDclOgKv3rVrnkUe7bs2n2vMF74kVlc
X-Received: by 10.180.94.163 with SMTP id dd3mr48944571wib.26.1402506073339;
	Wed, 11 Jun 2014 10:01:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Wed, 11 Jun 2014 10:00:53 -0700 (PDT)
X-Originating-IP: [82.137.12.98]
In-Reply-To: <5398518B.7070904@dynamicdevices.co.uk>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
	<528B9049.7010704@mlbassoc.com>
	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
	<5381D5B3.1070509@dynamicdevices.co.uk>
	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>
	<538319DB.40309@dynamicdevices.co.uk>
	<5383805E.4020603@dynamicdevices.co.uk>
	<CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>
	<5383891A.4050109@dynamicdevices.co.uk>
	<CABwVrCoNRULO9xBFLeXMfrX7sc+dHCb1o-t_oR5vBtuc+Jeiww@mail.gmail.com>
	<538B95F6.6070008@dynamicdevices.co.uk>
	<CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com>
	<538B9CA5.8040704@dynamicdevices.co.uk>
	<538BD0DE.1020207@dynamicdevices.co.uk>
	<CAK18fxFc1vnXUMuDP7g8WS20NUDZPUtCC+9yGtnFKdTJcg0qJA@mail.gmail.com>
	<CAK18fxFkAt3TZRHAqxN5bpp47KC-rGRodOyX=BDsF6PcbPc36w@mail.gmail.com>
	<5398518B.7070904@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Jun 2014 20:00:53 +0300
Message-ID: <CAK18fxF=4ePdQqgtP_Za=rW6DM-qj4O2vCUhXkm3y6KGvN-yFA@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>,
	Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Wed, 11 Jun 2014 17:01:51 -0000
Content-Type: multipart/alternative; boundary=f46d04462e5e4c05a604fb926417

--f46d04462e5e4c05a604fb926417
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 11, 2014 at 3:54 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> > I merged the patches but there is a strange behavior. With --as-needed
> > removed i still get the unneeded dependency.
> >  0x00000001 (NEEDED)                     Shared library:
> [libmmal_core.so]
> >  0x00000001 (NEEDED)                     Shared library:
> [libmmal_util.so]
> >  0x00000001 (NEEDED)                     Shared library:
> > [libmmal_vc_client.so]
> >  0x00000001 (NEEDED)                     Shared library: [libvcos.so]
> >  0x00000001 (NEEDED)                     Shared library: [libbcm_host.so]
> >  0x00000001 (NEEDED)                     Shared library:
> [libpthread.so.0]
> >  0x00000001 (NEEDED)                     Shared library: [libdl.so.2]
> >  0x00000001 (NEEDED)                     Shared library: [librt.so.1]
> >  0x00000001 (NEEDED)                     Shared library:
> [libvchiq_arm.so]
> >  0x00000001 (NEEDED)                     Shared library: [libc.so.6]
> >
> > Alex, can you take another look on this? It seems like somehow the fix
> > doesn't work for me.
>
> If I understand you correctly the issue is that by default bitbake is
> providing --no-as-needed into the userland configuration step
>
> This has the effect that libmmal_vc_client is removed as a needed
> library, therefore not loaded when raspivid loads,
> and therefore doesn't register components that it would register when it
> was loaded (because of use of
> __attribute__((constructor,used)) decorating functions in that library).
>
> We override --as-needed with --no-as-needed so that the dependency upon
> libmmal_vc_client is no longer removed,
> which I think is what you show above. If you remove my patch you should
> see libmmal_vc_client disappear I believe.
>

My bad. Clear now. Thanks.


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d04462e5e4c05a604fb926417
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jun 11, 2014 at 3:54 PM, Alex J Lennon <span dir=3D"ltr">&l=
t;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlenn=
on@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D""><br>
&gt; I merged the patches but there is a strange behavior. With --as-needed=
<br>
&gt; removed i still get the unneeded dependency.<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libmmal_core.so]<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libmmal_util.so]<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library:<br>
&gt; [libmmal_vc_client.so]<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libvcos.so]<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libbcm_host.so]<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libpthread.so.0]<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libdl.so.2]<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [librt.so.1]<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libvchiq_arm.so]<br>
&gt; =C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libc.so.6]<br>
&gt;<br>
&gt; Alex, can you take another look on this? It seems like somehow the fix=
<br>
&gt; doesn&#39;t work for me.<br>
<br>
</div>If I understand you correctly the issue is that by default bitbake is=
<br>
providing --no-as-needed into the userland configuration step<br>
<br>
This has the effect that libmmal_vc_client is removed as a needed<br>
library, therefore not loaded when raspivid loads,<br>
and therefore doesn&#39;t register components that it would register when i=
t<br>
was loaded (because of use of<br>
__attribute__((constructor,used)) decorating functions in that library).<br=
>
<br>
We override --as-needed with --no-as-needed so that the dependency upon<br>
libmmal_vc_client is no longer removed,<br>
which I think is what you show above. If you remove my patch you should<br>
see libmmal_vc_client disappear I believe.<br></blockquote><div><br></div><=
div>My bad. Clear now. Thanks.=C2=A0</div></div><br clear=3D"all"><div><br>=
</div>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></div><div s=
tyle=3D"text-align:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =C2=A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--f46d04462e5e4c05a604fb926417--
