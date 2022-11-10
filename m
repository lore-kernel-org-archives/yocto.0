Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07CDC433FE
	for <webhook@archiver.kernel.org>; Thu, 10 Nov 2022 15:18:51 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web11.8855.1668093522084735948
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Nov 2022 07:18:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=wbb3+9P3;
 spf=pass (domain: lightyear.one, ip: 209.85.218.48, mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ej1-f48.google.com with SMTP id f27so5864310eje.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 07:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=91i/7fVS6/2Ltm3hPYcCTkCctd/gJcGpoXZx9//aqZ4=;
        b=wbb3+9P3kFsmbub6ueDNGSrFyUGZ4a8+kqv8tq1Q9GUcRpGbhBlkOv9YdTH8RDuIXJ
         YMd+NPmiZBqrn31eQsQvvzlH1Ueq/s4K0K68Fb0VUbCulAO8svhJ5KxFvoJ23HI+/anA
         8CNJPyr/31EKoNaE0ERq0c3xzXpgB9my9OqicHXM+eboOAKKEQcWQpIxgjM2rs5Y+c6S
         xXIdfyKr6qbTzvXQZmTAVv2NKtucKQ5n9QaZ3Zk6RAkEKW3URL7a1WIVokF79rCyB1ao
         nGq5CU0sSpFhrQgqarZHgl9gxRHMaQaAi9rYZn6HR1uS3QKpkQIKgfSb7PxU/e9mZIz+
         KZXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=91i/7fVS6/2Ltm3hPYcCTkCctd/gJcGpoXZx9//aqZ4=;
        b=Ys2iZOdqAkwUWth2BivtpqJtr+8GNUFXTTD9ec82huFn8A1UG4oXarJV6RBihuNhqq
         yYJi1lIhUXd/bdiB6Xy8OFUon4wkX5ROEL3vWRIIdT+nZ1NO/oGJRqxFGVGDqtPWQtSC
         FNmWhMNKFxBnE4CXHjpQGsgZyD0angs/lybrEilN0rAATpLTyQeIPacH3eGLFuLax7ZX
         ob09ZG89sTmMASQaly+El5PT1zSC4kSoZjnt8ZUsb40tiNWuRpKE7lsZ+q9BEkjxisDW
         tlinOssnkhQd8Rm94lsNV9VGB+2PJyXmSaXW+jvWjy23fyUmit4J2Q6KVtnyyVlk1vF1
         K+UA==
X-Gm-Message-State: ACrzQf3HcLWKinsvOrgweO1UgSDAj3JMIxqFQZ7AUfDpsv9RzNWeCU/M
	r8Xn0/L1lG6dRHUhIZ6/YYtd+USLa/k0giC2QvvJd5c3bf3KcMDOD2/vJOsofJAeSywL+WnnRPF
	i4NniNmsL9rpa6d7jhKZyJGmz7gHekEGHG1/Pp7TGBA==
X-Google-Smtp-Source: AMsMyM4MIKVIcgKa/odQ1EWQ7XAwQaPliJapUBCmMMzYHgwOJXoWvbxIYMTILuB1kfFbHFrxqZQbv4/hTy8WST03QyY=
X-Received: by 2002:a17:907:2705:b0:7ad:855d:1050 with SMTP id
 w5-20020a170907270500b007ad855d1050mr59934185ejk.443.1668093519878; Thu, 10
 Nov 2022 07:18:39 -0800 (PST)
MIME-Version: 1.0
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Thu, 10 Nov 2022 16:18:05 +0100
Message-ID: <CAKO9uzot11j-CarPaitPrJ4mSq9rqEQKP2QqW_go56EM+W93rQ@mail.gmail.com>
Subject: Shell function not expanding variable
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b4cefd05ed1f498b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 15:18:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58536

--000000000000b4cefd05ed1f498b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We have a shell function that's being called from a do_install task:
custom_install() {
    DIR=3D$1
    echo "Operating on '${DIR}'"

    install <some params> -m 0644 ${S}/$DIR/<some file> \

 ${D}${some_path}/<some_file>
}

do_install() {
    custom_install "dev"
}

The output of the above is:
Operating on 'dev'

exit 1 from 'install <some params> -m 0644 <recipe path>/1.0-r0/<expanded S
folder>/${DIR}/<some file>
<recipe path>/image/<some_path>/<some_file>'

Why is ${DIR} expanded inside the echo, but not in the install command? I
also tried with and without quotes, and with and without curly braces..
We are on poky sumo.

Thanks,
Kind regards,

Maik Vermeulen

Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one/>
+31 6 16 82 73 79 <+31616827379>

--=20
=20
<https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotli=
ghtroles&utm_medium=3Demail#vacancies>

--=20


Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
www.lightyear.one=20
<https://lightyear.one/>
 <https://www.linkedin.com/company/lightyear.one/>

This email may contain information which is privileged and/or=20
confidential. If you received this e-mail in error, please notify us=20
immediately by e-mail and delete the email without copying or disclosing=20
its contents to any other person. Lightyear is a trade name of Atlas=20
Technologies B.V. and is registered at the Dutch Chamber of Commerce under=
=20
number 67264298.=C2=A0

--000000000000b4cefd05ed1f498b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>We have a shell function that&#39;s=
 being called from a do_install task:</div><div>custom_install() {</div><di=
v>=C2=A0 =C2=A0=C2=A0DIR=3D$1<br>=C2=A0 =C2=A0 echo &quot;Operating on &#39=
;${DIR}&#39;&quot;</div><div><br></div><div>=C2=A0 =C2=A0 install &lt;some =
params&gt; -m 0644 ${S}/$DIR/&lt;some file&gt; \</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${D}${some_path}/&lt;some_file&gt;</div><=
div>}</div><div><br></div><div>do_install() {<br>=C2=A0 =C2=A0 custom_insta=
ll &quot;dev&quot;<br>}</div><div><br></div><div>The output of the above is=
:</div><div>Operating on &#39;dev&#39;</div><div><br></div><div>exit 1 from=
 &#39;install &lt;some params&gt; -m 0644 &lt;recipe path&gt;/1.0-r0/&lt;ex=
panded S folder&gt;/${DIR}/&lt;some file&gt;<br>&lt;recipe path&gt;/image/&=
lt;some_path&gt;/&lt;some_file&gt;&#39;<br></div><div><br></div><div>Why is=
 ${DIR} expanded inside the echo, but not in the install command? I also tr=
ied with and without quotes, and with and without curly braces..</div><div>=
We are on poky sumo.</div><div><div><br></div><div>Thanks,</div><div>Kind r=
egards,<br><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><br><div><span style=3D"color:rgb(=
29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:16px">Maik Verme=
ulen</span></div><br><div><span style=3D"color:rgb(29,29,27);font-family:He=
lvetica,Arial,sans-serif;font-size:13px">Embedded Software Engineer=E2=80=
=82=E2=80=94=E2=80=82<a href=3D"https://www.lightyear.one/" rel=3D"noopener=
 noreferrer" style=3D"color:rgb(51,206,224)" target=3D"_blank">Lightyear</a=
></span></div><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica=
,Arial,sans-serif;font-size:13px"><a href=3D"tel:+31616827379" rel=3D"noope=
ner" style=3D"color:rgb(29,29,27)" target=3D"_blank">+31 6 16 82 73 79</a><=
/span></div></div></div></div></div></div></div></div>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
--000000000000b4cefd05ed1f498b--

