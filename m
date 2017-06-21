Return-Path: <kristi.rifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D1CAE00B2F; Tue, 20 Jun 2017 17:24:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kristi.rifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC0A6E00B01
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 17:24:45 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id y25so19696276wrd.1
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 17:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IsFDLXRE59hiRstAH1KhuG2U+t4BUCAHzKlWee2bgrw=;
	b=GOQBuk6pNGO7I4zcf4Au7LuA570c5gRC6vqZBnXrw5e8GyDjXncjN7umZ+JHXm9dVL
	aBQXUlPf20tCuezfPtfzmQ5sbKgJ52EGt+CF+apeYxTQsApXMGDLB3IeXhlyOjoOj369
	Hqha1B4YwuTKJaZOalx3MyD4WVeEzdbiuQ2G7jw++fKz7vPu+CmH/XMCXnCMTm7rgfvn
	j4Eri8o7BUsEjlZ0r98qItCY2YI2fpSa82AR6yliWuBKwLOqgYohYzqEx1iITeDt+jr8
	ewrD1choa6o+H8/WQVHGlhk1d9wACcyC7BcYabdAwSiEshH3PTRwg3ei92x+xBOEHW3Q
	xUgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IsFDLXRE59hiRstAH1KhuG2U+t4BUCAHzKlWee2bgrw=;
	b=ivlEUx+jOfrR5KN8tt9VvFpD8Vp/y2fY2bvjg5dGlL6LF/fw1GyrK0xYbhr0V7Dn8z
	plyWN0WGtjdxeQSvKhxD5th7Cv54hB6b4k1Wz7HQdpTYWoR/m+BBxbDOb7OVC1I9/CuD
	PCVIbjp43RSopC5+QK1aXDE3SHtR2amrZvVmf6z7zcFbgqAaalfFYeYP5xT6cfRsGTiE
	dhSfaxPQKcKNFlnjuyJtUM3gOK6MHSAwpllRPSXwofpAOaTcXyEjtPEZEKkF/KcPUfVn
	bxpEcP/0+iYM/p/ftXuTRatTlPpreehc5i17r72WMDjdJBT0Bs62t8z+N2CO00UGI2Lp
	MwZw==
X-Gm-Message-State: AKS2vOzg6V0B/H04HkXtabzUVNdNRT6p5gH9vf5IWrqNoEYI+VQ//+zh
	kV7520gyXaRjaVPQrjgXM0y8tcBaYQ==
X-Received: by 10.28.68.134 with SMTP id r128mr4736726wma.114.1498004684194;
	Tue, 20 Jun 2017 17:24:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.95.132 with HTTP; Tue, 20 Jun 2017 17:24:43 -0700 (PDT)
In-Reply-To: <CACrLJgC6jT5SUPF=HrTDc6FOJo18gJPvyHMHnSe2N5s3wXO3dQ@mail.gmail.com>
References: <1497240475-2957-1-git-send-email-changhyeok.bae@gmail.com>
	<CACrLJgCVG=mkKukYnG_cTXmS3y-XDQvi7RNCG+R8yE7GTsRQ5Q@mail.gmail.com>
	<CACrLJgC6jT5SUPF=HrTDc6FOJo18gJPvyHMHnSe2N5s3wXO3dQ@mail.gmail.com>
From: Kristi Rifenbark <kristi.rifenbark@gmail.com>
Date: Tue, 20 Jun 2017 17:24:43 -0700
Message-ID: <CAMf=WoUmcDxWZHsk8zror7Ah3p0XbueSxPaJ+rx7V+iGd-ewMw@mail.gmail.com>
To: Changhyeok Bae <changhyeok.bae@gmail.com>
X-Mailman-Approved-At: Mon, 26 Jun 2017 06:38:35 -0700
Cc: Yocto Project <yocto@yoctoproject.org>,
	Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: [yocto-docs][PATCH v2] ref-manual: Replace uclibc to musl
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
X-List-Received-Date: Wed, 21 Jun 2017 00:24:49 -0000
Content-Type: multipart/alternative; boundary="001a1148ed2812ca6905526d6562"

--001a1148ed2812ca6905526d6562
Content-Type: text/plain; charset="UTF-8"

Changhyeok,

Fix is backported to morty (2.2.2) -
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/commit/?h=morty&id=e131c26ee1ab268679f7762dbe26760bd859e0e5

Fix is backported to pyro (2.3.1) -
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/commit/?h=pyro&id=859549a1dbc0b63bc04310a121600ea622509256

Fix is the current master branch (2.4) -
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/commit/?id=ed7e62f5937576d7878eb955fda12c18e787db18

If you want to see these changes in the manual see the published ref-manual
for 2.2.2, 2.3.1, and 2.4.

Thanks,
Kristi

On Tue, Jun 20, 2017 at 9:44 AM, Changhyeok Bae <changhyeok.bae@gmail.com>
wrote:

> Hi Scott, Kristi
>
> Could review my changes?
>
> Thanks
> Changhyeok
>
> 2017-06-12 14:52 GMT+09:00 Changhyeok Bae <changhyeok.bae@gmail.com>:
>
>> This patch should be merged in morty (2.2), pryo (2.3), and master branch.
>>
>> Thanks
>> Changhyeok
>>
>> 2017-06-12 13:07 GMT+09:00 Changhyeok Bae <changhyeok.bae@gmail.com>:
>>
>>> uClibc Replaced by musl from Yocto 2.2
>>>
>>> Signed-off-by: Changhyeok Bae <changhyeok.bae@gmail.com>
>>> ---
>>>  documentation/ref-manual/ref-variables.xml | 14 +++++++-------
>>>  1 file changed, 7 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/documentation/ref-manual/ref-variables.xml
>>> b/documentation/ref-manual/ref-variables.xml
>>> index bd9e517..0967e40 100644
>>> --- a/documentation/ref-manual/ref-variables.xml
>>> +++ b/documentation/ref-manual/ref-variables.xml
>>> @@ -5131,9 +5131,9 @@
>>>                      is normally the same as the
>>>                      <link linkend='var-TARGET_OS'><filen
>>> ame>TARGET_OS</filename></link>.
>>>                      The variable can be set to "linux" for
>>> <filename>glibc</filename>-based systems and
>>> -                    to "linux-uclibc" for <filename>uclibc</filename>.
>>> +                    to "linux-musl" for <filename>musl</filename>.
>>>                      For ARM/EABI targets, there are also
>>> "linux-gnueabi" and
>>> -                    "linux-uclibc-gnueabi" values possible.
>>> +                    "linux-musleabi" values possible.
>>>                  </para>
>>>              </glossdef>
>>>          </glossentry>
>>> @@ -14152,9 +14152,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
>>> = "${INC_PR}.3"
>>>  <!--                <para role="glossdeffirst"><imagedata
>>> fileref="figures/define-generic.png" /> -->
>>>                      Specifies the target's operating system.
>>>                      The variable can be set to "linux" for
>>> <filename>glibc</filename>-based systems and
>>> -                    to "linux-uclibc" for <filename>uclibc</filename>.
>>> +                    to "linux-musl" for <filename>musl</filename>.
>>>                      For ARM/EABI targets, there are also
>>> "linux-gnueabi" and
>>> -                    "linux-uclibc-gnueabi" values possible.
>>> +                    "linux-musleabi" values possible.
>>>                  </para>
>>>              </glossdef>
>>>          </glossentry>
>>> @@ -14283,7 +14283,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
>>> = "${INC_PR}.3"
>>>
>>>          <glossentry id='var-TCLIBC'><glossterm>TCLIBC</glossterm>
>>>              <info>
>>> -                TCLIBC[doc] = "Specifies GNU standard C library (libc)
>>> variant to use during the build process. You can select 'glibc' or
>>> 'uclibc'."
>>> +                TCLIBC[doc] = "Specifies GNU standard C library (libc)
>>> variant to use during the build process. You can select 'glibc' or 'musl'."
>>>              </info>
>>>              <glossdef>
>>>                  <para role="glossdeffirst">
>>> @@ -14295,7 +14295,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
>>> = "${INC_PR}.3"
>>>                  </para>
>>>
>>>                  <para>
>>> -                    You can select "glibc" or "uclibc".
>>> +                    You can select "glibc" or "musl".
>>>                  </para>
>>>              </glossdef>
>>>          </glossentry>
>>> @@ -14334,7 +14334,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
>>> = "${INC_PR}.3"
>>>                      <link linkend='var-TCLIBC'><filename
>>> >TCLIBC</filename></link>,
>>>                      which controls the variant of the GNU standard C
>>> library
>>>                      (<filename>libc</filename>) used during the build
>>> process:
>>> -                    <filename>glibc</filename> or
>>> <filename>uclibc</filename>.
>>> +                    <filename>glibc</filename> or
>>> <filename>musl</filename>.
>>>                  </para>
>>>
>>>                  <para>
>>> --
>>> 2.7.4
>>>
>>>
>>
>>
>> --
>> Thanks
>> Changhyeok
>>
>
>
>
> --
> Thanks
> Changhyeok
>

--001a1148ed2812ca6905526d6562
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Changhyeok, <br><br></div>Fi=
x is backported to morty (2.2.2) - <a href=3D"http://git.yoctoproject.org/c=
git/cgit.cgi/yocto-docs/commit/?h=3Dmorty&amp;id=3De131c26ee1ab268679f7762d=
be26760bd859e0e5">http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/comm=
it/?h=3Dmorty&amp;id=3De131c26ee1ab268679f7762dbe26760bd859e0e5</a><br><br>=
</div>Fix is backported to pyro (2.3.1) - <a href=3D"http://git.yoctoprojec=
t.org/cgit/cgit.cgi/yocto-docs/commit/?h=3Dpyro&amp;id=3D859549a1dbc0b63bc0=
4310a121600ea622509256">http://git.yoctoproject.org/cgit/cgit.cgi/yocto-doc=
s/commit/?h=3Dpyro&amp;id=3D859549a1dbc0b63bc04310a121600ea622509256</a><br=
><br></div>Fix is the current master branch (2.4) - <a href=3D"http://git.y=
octoproject.org/cgit/cgit.cgi/yocto-docs/commit/?id=3Ded7e62f5937576d7878eb=
955fda12c18e787db18">http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/c=
ommit/?id=3Ded7e62f5937576d7878eb955fda12c18e787db18</a><br><br></div>If yo=
u want to see these changes in the manual see the published ref-manual for =
2.2.2, 2.3.1, and 2.4.<br><br></div>Thanks, <br></div>Kristi<br></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Jun 20, 2017 a=
t 9:44 AM, Changhyeok Bae <span dir=3D"ltr">&lt;<a href=3D"mailto:changhyeo=
k.bae@gmail.com" target=3D"_blank">changhyeok.bae@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Scott, Kristi<=
div><br></div><div>Could review my changes?</div><div><br></div><div>Thanks=
</div><div>Changhyeok</div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">2017-06-12 14:52 GMT+09:00 Changhyeok Bae <span dir=3D"ltr">&lt;<=
a href=3D"mailto:changhyeok.bae@gmail.com" target=3D"_blank">changhyeok.bae=
@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"lt=
r">This patch should be merged in morty (2.2), pryo (2.3), and master branc=
h.<div><br></div><div>Thanks</div><div>Changhyeok</div></div><div class=3D"=
gmail_extra"><div><div class=3D"m_-4339762172169817172h5"><br><div class=3D=
"gmail_quote">2017-06-12 13:07 GMT+09:00 Changhyeok Bae <span dir=3D"ltr">&=
lt;<a href=3D"mailto:changhyeok.bae@gmail.com" target=3D"_blank">changhyeok=
.bae@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>uC=
libc Replaced by musl from Yocto 2.2<br>
<br>
Signed-off-by: Changhyeok Bae &lt;<a href=3D"mailto:changhyeok.bae@gmail.co=
m" target=3D"_blank">changhyeok.bae@gmail.com</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-<wbr>variables.xml | 14 +++++++-------<b=
r>
=C2=A01 file changed, 7 insertions(+), 7 deletions(-)<br>
<br>
diff --git a/documentation/ref-manual/ref<wbr>-variables.xml b/documentatio=
n/ref-manual/ref<wbr>-variables.xml<br>
</span>index bd9e517..0967e40 100644<br>
<span>--- a/documentation/ref-manual/ref<wbr>-variables.xml<br>
+++ b/documentation/ref-manual/ref<wbr>-variables.xml<br>
@@ -5131,9 +5131,9 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0is normally the same as the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;link linkend=3D&#39;var-TARGET_OS&#39;&gt;&lt;filen<wbr>ame&gt;TARGE=
T_OS&lt;/filename&gt;&lt;/link<wbr>&gt;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0The variable can be set to &quot;linux&quot; for &lt;filename&gt;glibc&l=
t;/filename&gt;-bas<wbr>ed systems and<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to &=
quot;linux-uclibc&quot; for &lt;filename&gt;uclibc&lt;/filename&gt;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to &=
quot;linux-musl&quot; for &lt;filename&gt;musl&lt;/filename&gt;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0For ARM/EABI targets, there are also &quot;linux-gnueabi&quot; and<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quo=
t;linux-uclibc-gnueabi&quot; values possible.<br>
</span>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;linux-musleabi&quot; values possible.<br>
<span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/pa=
ra&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossentry&gt;<br>
@@ -14152,9 +14152,9 @@ recipes-graphics/xorg-font/fon<wbr>t-alias_1.0.3.bb=
:PR =3D &quot;${INC_PR}.3&quot;<br>
=C2=A0&lt;!--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;pa=
ra role=3D&quot;glossdeffirst&quot;&gt;&lt;imagedat<wbr>a fileref=3D&quot;f=
igures/define-generi<wbr>c.png&quot; /&gt; --&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Specifies the target&#39;s operating system.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0The variable can be set to &quot;linux&quot; for &lt;filename&gt;glibc&l=
t;/filename&gt;-bas<wbr>ed systems and<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to &=
quot;linux-uclibc&quot; for &lt;filename&gt;uclibc&lt;/filename&gt;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 to &=
quot;linux-musl&quot; for &lt;filename&gt;musl&lt;/filename&gt;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0For ARM/EABI targets, there are also &quot;linux-gnueabi&quot; and<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quo=
t;linux-uclibc-gnueabi&quot; values possible.<br>
</span>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;linux-musleabi&quot; values possible.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossentry&gt;<br>
<div class=3D"m_-4339762172169817172m_-9199944395357155871HOEnZb"><div clas=
s=3D"m_-4339762172169817172m_-9199944395357155871h5">@@ -14283,7 +14283,7 @=
@ recipes-graphics/xorg-font/fon<wbr>t-alias_1.0.3.bb:PR =3D &quot;${INC_PR=
}.3&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;glossentry id=3D&#39;var-TCLIBC&#39;&=
gt;&lt;glossterm&gt;TCL<wbr>IBC&lt;/glossterm&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;info&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TCLIBC[doc] =3D &q=
uot;Specifies GNU standard C library (libc) variant to use during the build=
 process. You can select &#39;glibc&#39; or &#39;uclibc&#39;.&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TCLIBC[doc] =3D &q=
uot;Specifies GNU standard C library (libc) variant to use during the build=
 process. You can select &#39;glibc&#39; or &#39;musl&#39;.&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/info&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;para role=
=3D&quot;glossdeffirst&quot;&gt;<br>
@@ -14295,7 +14295,7 @@ recipes-graphics/xorg-font/fon<wbr>t-alias_1.0.3.bb=
:PR =3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;para&gt;<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 You =
can select &quot;glibc&quot; or &quot;uclibc&quot;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 You =
can select &quot;glibc&quot; or &quot;musl&quot;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossentry&gt;<br>
@@ -14334,7 +14334,7 @@ recipes-graphics/xorg-font/fon<wbr>t-alias_1.0.3.bb=
:PR =3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;link linkend=3D&#39;var-TCLIBC&#39;&gt;&lt;filename<wbr>&gt;TCLIBC&l=
t;/filename&gt;&lt;/link&gt;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0which controls the variant of the GNU standard C library<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(&lt;filename&gt;libc&lt;/filename&gt;) used during the build process:<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
filename&gt;glibc&lt;/filename&gt; or &lt;filename&gt;uclibc&lt;/filename&g=
t;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
filename&gt;glibc&lt;/filename&gt; or &lt;filename&gt;musl&lt;/filename&gt;=
.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;para&gt;<=
br>
--<br>
2.7.4<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><span class=3D"HOEnZb"=
><font color=3D"#888888"><div><br></div></font></span></div></div><span cla=
ss=3D"HOEnZb"><font color=3D"#888888"><span class=3D"m_-4339762172169817172=
HOEnZb"><font color=3D"#888888">-- <br><div class=3D"m_-4339762172169817172=
m_-9199944395357155871gmail_signature" data-smartmail=3D"gmail_signature"><=
div dir=3D"ltr">Thanks<div>Changhyeok</div></div></div>
</font></span></font></span></div><span class=3D"HOEnZb"><font color=3D"#88=
8888">
</font></span></blockquote></div><span class=3D"HOEnZb"><font color=3D"#888=
888"><br><br clear=3D"all"><div><br></div>-- <br><div class=3D"m_-433976217=
2169817172gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr">Thanks<div>Changhyeok</div></div></div>
</font></span></div></div>
</blockquote></div><br></div>

--001a1148ed2812ca6905526d6562--
