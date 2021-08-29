Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web12.1398.1630224256196837397
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Aug 2021 01:04:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jVEOm2U3;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id eb14so7429765edb.8
        for <yocto@lists.yoctoproject.org>; Sun, 29 Aug 2021 01:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AKUBs3SwO3LMtI8KQqWjJWKm1IZurc3BstUzPMQx+bc=;
        b=jVEOm2U363i4MEfCnZy0Gy0DmEL8Mlq235dwlnl63/F6dCu8jNq3fsu2BetM/YiG06
         HiyqdPo0flCXSRuKjgEli7gZtOEmuUyNRQJSSO3ogkVHV4D1BiFybdlX7sFEw12dB2VA
         7PCpD6bZlUjjpHs2CJQRTOUOr4meMb41OOHL2Z9PN4O9guG1Hs24zGzLpAttfng5TFhn
         vDnWVm/syMU4JWpzMzqwC/FqO6/twbE8KOmYXc2FBsKqjOvZblkbfAJ4R4pFotrYgs5s
         3+8fyAEkPbRbQANgTeh2oj7I0xpj0n1QvMele+kQd77IMQ3kYcabQKA84jRQBmr35sGP
         vsQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AKUBs3SwO3LMtI8KQqWjJWKm1IZurc3BstUzPMQx+bc=;
        b=Z5krcPjsoNM9P6156bYTgKAMIbWZ+rdHm0sNiJ95L/tptYLMBzA/WbwYqqSu1KccrV
         ouahyiPyBkZYQU3ddgpqDPuvCIwO8sOutzRGfp3D8qF6gUfUYh0WjIvl0dzfhNXbDCWF
         wSy39A/FFr4g95Il9DZ4uS9FSqMLwIno0ZlDciTz9kEaqaaSMZwbDqjNMtWYnoaJqdLd
         Ol3JOi4O2i6gWTCeGx6Ju34HoTqfieIrxEJ5D/00SV4ou8oGh9DWv9q05XgntasZzIKk
         0sLso5JvbqaWWMOUcOonHXF4U0TfPo+hg0oYnqGaBsf6g+j5VQiGcPbfFeR2OM3m7G9R
         MuKQ==
X-Gm-Message-State: AOAM530TGuO1gJKQ6BhLxm7fS8r2BeiRwAWQSV9cWLiBZYozCFRs+qYV
	J+A8jmxSscqcVuKKpz0B7MvINQnI5APrlrWlvEs=
X-Google-Smtp-Source: ABdhPJx1reIvoNPm+sofTPHCoUi0rDAJlW3vpy0R5osGIZdkE9DNq9mOkrX7n8KKJ7AUmKlLmgHVNCGrGCSui4ozE0k=
X-Received: by 2002:a05:6402:2925:: with SMTP id ee37mr18626777edb.264.1630224254307;
 Sun, 29 Aug 2021 01:04:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210802090220.10668-1-liuxiwei@inspur.com> <1698168669EBF7A3.25094@lists.yoctoproject.org>
In-Reply-To: <1698168669EBF7A3.25094@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Sun, 29 Aug 2021 10:04:03 +0200
Message-ID: <CA+chaQdxbJBpw9m7NZZ+FJR4Ysg9_n_StUgg+qoqtYe7K8SCgg@mail.gmail.com>
Subject: Re: [yocto] [oe][meta-security][PATCH] meta: Fix typos
To: Martin Jansa <Martin.Jansa@gmail.com>
Cc: George Liu <liuxiwei1013@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-devel <openembedded-devel@lists.openembedded.org>, 
	akuster808 <akuster808@gmail.com>, sergio.prado@toradex.com, 
	George Liu <liuxiwei@inspur.com>
Content-Type: multipart/alternative; boundary="00000000000095103205caae29b5"

--00000000000095103205caae29b5
Content-Type: text/plain; charset="UTF-8"

Please merge this one.

On Wed, Aug 4, 2021 at 1:20 PM Martin Jansa via lists.yoctoproject.org
<Martin.Jansa=gmail.com@lists.yoctoproject.org> wrote:

> Acked-by: Martin Jansa <Martin.Jansa@gmail.com>
>
> On Mon, Aug 2, 2021 at 11:02 AM George Liu <liuxiwei1013@gmail.com> wrote:
>
>> Fix the variable spelling errors
>> s/SKIP_META_SECUIRTY_SANITY_CHECK/SKIP_META_SECURITY_SANITY_CHECK
>>
>> Signed-off-by: George Liu <liuxiwei@inspur.com>
>> ---
>>  classes/sanity-meta-security.bbclass | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/classes/sanity-meta-security.bbclass
>> b/classes/sanity-meta-security.bbclass
>> index b6c6b9c..f9e2698 100644
>> --- a/classes/sanity-meta-security.bbclass
>> +++ b/classes/sanity-meta-security.bbclass
>> @@ -1,7 +1,7 @@
>>  addhandler security_bbappend_distrocheck
>>  security_bbappend_distrocheck[eventmask] = "bb.event.SanityCheck"
>>  python security_bbappend_distrocheck() {
>> -    skip_check = e.data.getVar('SKIP_META_SECUIRTY_SANITY_CHECK') == "1"
>> +    skip_check = e.data.getVar('SKIP_META_SECURITY_SANITY_CHECK') == "1"
>>      if 'security' not in e.data.getVar('DISTRO_FEATURES').split() and
>> not skip_check:
>>          bb.warn("You have included the meta-security layer, but \
>>  'security' has not been enabled in your DISTRO_FEATURES. Some bbappend
>> files \
>> --
>> 2.30.2
>>
>>
>>
>>
>>
> 
>
>

--00000000000095103205caae29b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please merge this one.</div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 4, 2021 at 1:20 PM Marti=
n Jansa via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.or=
g</a> &lt;Martin.Jansa=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org=
">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Acked-by:=C2=A0Martin Ja=
nsa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin.=
Jansa@gmail.com</a>&gt;</div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Aug 2, 2021 at 11:02 AM George Liu &lt;<a hr=
ef=3D"mailto:liuxiwei1013@gmail.com" target=3D"_blank">liuxiwei1013@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Fix the variable spelling errors<br>
s/SKIP_META_SECUIRTY_SANITY_CHECK/SKIP_META_SECURITY_SANITY_CHECK<br>
<br>
Signed-off-by: George Liu &lt;<a href=3D"mailto:liuxiwei@inspur.com" target=
=3D"_blank">liuxiwei@inspur.com</a>&gt;<br>
---<br>
=C2=A0classes/sanity-meta-security.bbclass | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/classes/sanity-meta-security.bbclass b/classes/sanity-meta-sec=
urity.bbclass<br>
index b6c6b9c..f9e2698 100644<br>
--- a/classes/sanity-meta-security.bbclass<br>
+++ b/classes/sanity-meta-security.bbclass<br>
@@ -1,7 +1,7 @@<br>
=C2=A0addhandler security_bbappend_distrocheck<br>
=C2=A0security_bbappend_distrocheck[eventmask] =3D &quot;bb.event.SanityChe=
ck&quot;<br>
=C2=A0python security_bbappend_distrocheck() {<br>
-=C2=A0 =C2=A0 skip_check =3D e.data.getVar(&#39;SKIP_META_SECUIRTY_SANITY_=
CHECK&#39;) =3D=3D &quot;1&quot;<br>
+=C2=A0 =C2=A0 skip_check =3D e.data.getVar(&#39;SKIP_META_SECURITY_SANITY_=
CHECK&#39;) =3D=3D &quot;1&quot;<br>
=C2=A0 =C2=A0 =C2=A0if &#39;security&#39; not in e.data.getVar(&#39;DISTRO_=
FEATURES&#39;).split() and not skip_check:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.warn(&quot;You have included the meta-=
security layer, but \<br>
=C2=A0&#39;security&#39; has not been enabled in your DISTRO_FEATURES. Some=
 bbappend files \<br>
-- <br>
2.30.2<br>
<br>
<br>
<br>
<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--00000000000095103205caae29b5--
