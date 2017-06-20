Return-Path: <changhyeok.bae@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C70AEE00B01; Tue, 20 Jun 2017 09:45:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (changhyeok.bae[at]gmail.com)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6337E0094C
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 09:44:59 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id n136so4459063lfn.2
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 09:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UGEvhwLOQ3dBROtDTtanZzSaKenp+XX9DT0eDnWMmL8=;
	b=hkpZ64XeVtYrjNK5oXoLu5kzDBBIYmHXv/xjIaiYzSdfJeQkOla6beRi/1L5F5xg+d
	Z+uE2FqCZQBloD+k2e0a82OMCweZkJkRX6exn2rS7m1mHyfLEAph0ai+8B451tXoDvum
	63mx0ZLwHqhlwFoJlFeMe9fCEMNHUFYKKq8RxNqWM1VrPTfSS3mVOaMNZXTkkD75CNdq
	azjcUryRVEo4XwiA34Hi0caK36mr9ezBlh8Ssr2tEsn6c7gwauqSUcE1tAPCkcfXYRAd
	FPccMkpIYvMQQAZttli32KW6alQAfGrTVrnzRUJZsxcx8Ek0I/97Hwalc46SLf/D3TFg
	FVQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UGEvhwLOQ3dBROtDTtanZzSaKenp+XX9DT0eDnWMmL8=;
	b=NNhjShgXBm+q+knwVS+SfinUnOilRJslEBkyWLO1S9wtHyK5q7bozSywx2h2/i90eZ
	dgAXK+j3eguwFRvwraaxCO0xg3aEEnlBymwm/p9y9OaPgtMkjFxnvG4otzHL6SzdCwTH
	sMoBGSM2BiAXhFwIj2P0DfhZSFUITlWLKZ4D/eksZM4BehGhtlAZkVfsgAeiUq1cwuNr
	Ytf/QR0i/AZDQGtEaOswmDCbsQhgqekUH81zfOJ5BXHzY9mLa+1IEuZjz1gJtiPbVFTv
	d3Gc48ZFKyBOUx711NpA7MRjcRbhJDA9Ib+bVdYFmUzV7n8VxF3i81fapyy57/21vxRp
	YNyQ==
X-Gm-Message-State: AKS2vOxig5Q17N4LBoNKyUAaLWIpYCkpjcLRWlAaP3DxdOpyhRmCOnH0
	hZ3DXIjtfr7Cqm3OppOha/DItMW0Cw==
X-Received: by 10.80.165.108 with SMTP id z41mr21997396edb.60.1497977098322;
	Tue, 20 Jun 2017 09:44:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.161.135 with HTTP; Tue, 20 Jun 2017 09:44:57 -0700 (PDT)
In-Reply-To: <CACrLJgCVG=mkKukYnG_cTXmS3y-XDQvi7RNCG+R8yE7GTsRQ5Q@mail.gmail.com>
References: <1497240475-2957-1-git-send-email-changhyeok.bae@gmail.com>
	<CACrLJgCVG=mkKukYnG_cTXmS3y-XDQvi7RNCG+R8yE7GTsRQ5Q@mail.gmail.com>
From: Changhyeok Bae <changhyeok.bae@gmail.com>
Date: Wed, 21 Jun 2017 01:44:57 +0900
Message-ID: <CACrLJgC6jT5SUPF=HrTDc6FOJo18gJPvyHMHnSe2N5s3wXO3dQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Scott Rifenbark <srifenbark@gmail.com>, kristi.rifenbark@gmail.com
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
X-List-Received-Date: Tue, 20 Jun 2017 16:45:02 -0000
Content-Type: multipart/alternative; boundary="f403045c1098d3ca0c055266f837"

--f403045c1098d3ca0c055266f837
Content-Type: text/plain; charset="UTF-8"

Hi Scott, Kristi

Could review my changes?

Thanks
Changhyeok

2017-06-12 14:52 GMT+09:00 Changhyeok Bae <changhyeok.bae@gmail.com>:

> This patch should be merged in morty (2.2), pryo (2.3), and master branch.
>
> Thanks
> Changhyeok
>
> 2017-06-12 13:07 GMT+09:00 Changhyeok Bae <changhyeok.bae@gmail.com>:
>
>> uClibc Replaced by musl from Yocto 2.2
>>
>> Signed-off-by: Changhyeok Bae <changhyeok.bae@gmail.com>
>> ---
>>  documentation/ref-manual/ref-variables.xml | 14 +++++++-------
>>  1 file changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/documentation/ref-manual/ref-variables.xml
>> b/documentation/ref-manual/ref-variables.xml
>> index bd9e517..0967e40 100644
>> --- a/documentation/ref-manual/ref-variables.xml
>> +++ b/documentation/ref-manual/ref-variables.xml
>> @@ -5131,9 +5131,9 @@
>>                      is normally the same as the
>>                      <link linkend='var-TARGET_OS'><filen
>> ame>TARGET_OS</filename></link>.
>>                      The variable can be set to "linux" for
>> <filename>glibc</filename>-based systems and
>> -                    to "linux-uclibc" for <filename>uclibc</filename>.
>> +                    to "linux-musl" for <filename>musl</filename>.
>>                      For ARM/EABI targets, there are also "linux-gnueabi"
>> and
>> -                    "linux-uclibc-gnueabi" values possible.
>> +                    "linux-musleabi" values possible.
>>                  </para>
>>              </glossdef>
>>          </glossentry>
>> @@ -14152,9 +14152,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
>> = "${INC_PR}.3"
>>  <!--                <para role="glossdeffirst"><imagedata
>> fileref="figures/define-generic.png" /> -->
>>                      Specifies the target's operating system.
>>                      The variable can be set to "linux" for
>> <filename>glibc</filename>-based systems and
>> -                    to "linux-uclibc" for <filename>uclibc</filename>.
>> +                    to "linux-musl" for <filename>musl</filename>.
>>                      For ARM/EABI targets, there are also "linux-gnueabi"
>> and
>> -                    "linux-uclibc-gnueabi" values possible.
>> +                    "linux-musleabi" values possible.
>>                  </para>
>>              </glossdef>
>>          </glossentry>
>> @@ -14283,7 +14283,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
>> = "${INC_PR}.3"
>>
>>          <glossentry id='var-TCLIBC'><glossterm>TCLIBC</glossterm>
>>              <info>
>> -                TCLIBC[doc] = "Specifies GNU standard C library (libc)
>> variant to use during the build process. You can select 'glibc' or
>> 'uclibc'."
>> +                TCLIBC[doc] = "Specifies GNU standard C library (libc)
>> variant to use during the build process. You can select 'glibc' or 'musl'."
>>              </info>
>>              <glossdef>
>>                  <para role="glossdeffirst">
>> @@ -14295,7 +14295,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
>> = "${INC_PR}.3"
>>                  </para>
>>
>>                  <para>
>> -                    You can select "glibc" or "uclibc".
>> +                    You can select "glibc" or "musl".
>>                  </para>
>>              </glossdef>
>>          </glossentry>
>> @@ -14334,7 +14334,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
>> = "${INC_PR}.3"
>>                      <link linkend='var-TCLIBC'><filename
>> >TCLIBC</filename></link>,
>>                      which controls the variant of the GNU standard C
>> library
>>                      (<filename>libc</filename>) used during the build
>> process:
>> -                    <filename>glibc</filename> or
>> <filename>uclibc</filename>.
>> +                    <filename>glibc</filename> or
>> <filename>musl</filename>.
>>                  </para>
>>
>>                  <para>
>> --
>> 2.7.4
>>
>>
>
>
> --
> Thanks
> Changhyeok
>



-- 
Thanks
Changhyeok

--f403045c1098d3ca0c055266f837
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Scott, Kristi<div><br></div><div>Could review my change=
s?</div><div><br></div><div>Thanks</div><div>Changhyeok</div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">2017-06-12 14:52 GMT+09:00 Chan=
ghyeok Bae <span dir=3D"ltr">&lt;<a href=3D"mailto:changhyeok.bae@gmail.com=
" target=3D"_blank">changhyeok.bae@gmail.com</a>&gt;</span>:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div dir=3D"ltr">This patch should be merged in morty (=
2.2), pryo (2.3), and master branch.<div><br></div><div>Thanks</div><div>Ch=
anghyeok</div></div><div class=3D"gmail_extra"><div><div class=3D"h5"><br><=
div class=3D"gmail_quote">2017-06-12 13:07 GMT+09:00 Changhyeok Bae <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:changhyeok.bae@gmail.com" target=3D"_blank=
">changhyeok.bae@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><span>uClibc Replaced by musl from Yocto 2.2<br>
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
T_OS&lt;/filename&gt;&lt;/<wbr>link&gt;.<br>
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
<div class=3D"m_-9199944395357155871HOEnZb"><div class=3D"m_-91999443953571=
55871h5">@@ -14283,7 +14283,7 @@ recipes-graphics/xorg-font/fon<wbr>t-alias=
_1.0.3.bb:PR =3D &quot;${INC_PR}.3&quot;<br>
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
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div></div><=
/div><span class=3D"HOEnZb"><font color=3D"#888888">-- <br><div class=3D"m_=
-9199944395357155871gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr">Thanks<div>Changhyeok</div></div></div>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Th=
anks<div>Changhyeok</div></div></div>
</div></div>

--f403045c1098d3ca0c055266f837--
