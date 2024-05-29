Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44BDC25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 09:28:08 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.9584.1716974880395254619
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 02:28:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=crBe9oxQ;
 spf=pass (domain: snapchat.com, ip: 209.85.218.54, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a6269885572so116840566b.1
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 02:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1716974878; x=1717579678; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uNatOeDP6uDVU9eVFMkZ0EK44l8jaxB+mQKzH9pdU5w=;
        b=crBe9oxQN13h1kJz9/LmCBlwRTBOVZRAAwLf8wA9gu2GDeNyI42GK2PW5ZT9spQsDv
         6LzbKHWp6SFGV4dChZZyntDCJFjPmRkt4k1y7SAdStXjuH/JyuNrm1BUjWCm3BgAieje
         wk+zR9dCnlGG2gtgIiuAxdIwYdJOCCOfWw1Zg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716974878; x=1717579678;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uNatOeDP6uDVU9eVFMkZ0EK44l8jaxB+mQKzH9pdU5w=;
        b=PnONnFA9TyVkC1IdQkta0XuWb9g96mr4xq3ZMNhPrXbgPOpjrlaHopfMOtvt3eC9ug
         w6diuiiDLFfv9mVYeK8BS8Rke9j4G1mWh4/ha4di/x7RwuXmakrJ8GmHXufM9T+Pi0/d
         MrFBV5wfArbrjGDBIkcSx6LrIPhcbo6EZ26sBHItkIaVB4w7IaIzfO7uJNgqaVq0znAs
         1rqDR9m1mwkuUFniezWItNspQvdWRAkcimi+HzmRym+VjmsZ93e0gDhxfaDte/AkzIBP
         lvlUVAclPSYvJ1CXyCK7jGgWchAyhw71UFfaXYOfyBpy4cUVxPT7+kAsr0o5Idl6fbtr
         YgYg==
X-Gm-Message-State: AOJu0YysG1OajiDP4xnzXF52IguzHQorzWpUoRN5wnXkXJ+Ayg3mNHuz
	+8K3xOsrMzVrfejN7eSO3DoqbvU8rX7/ck6BKus+MJ+va1J3yqmUOC8P66qJzn8kPWJcilO27gz
	bMq5olKXTeziDlOzqOiooowLh3LZR6bMW28XgkgsAUtaXRydTXJermA==
X-Google-Smtp-Source: AGHT+IHmWCtVYzUayvPj+31ByNn4BM8BvVQ+T2DSPDOo/f09hjMKU7uhtWkSB8UDrzOsciFef/llfgituwHuRtcjaDs=
X-Received: by 2002:a17:906:1dc7:b0:a62:ef39:19c2 with SMTP id
 a640c23a62f3a-a642d2673f8mr134849066b.4.1716974878447; Wed, 29 May 2024
 02:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <sU3Q.1716973567621792975.HgRu@lists.yoctoproject.org>
In-Reply-To: <sU3Q.1716973567621792975.HgRu@lists.yoctoproject.org>
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Wed, 29 May 2024 11:27:47 +0200
Message-ID: <CAHUKmYYuzh0VXBG24PuEydPnPpvPguSyR=ZqkSSGnNUTreSqxg@mail.gmail.com>
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
To: yocto@lists.yoctoproject.org, fabian.hanke@bosch.com
Content-Type: multipart/alternative; boundary="000000000000b80d730619945d6e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 09:28:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63223

--000000000000b80d730619945d6e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fabian,
one commercial option for this use-case is
https://github.com/fossas/meta-fossa

=C3=89tienne

On Wed, May 29, 2024 at 11:06=E2=80=AFAM Hanke Fabian (DC/PAR) via
lists.yoctoproject.org <fabian.hanke=3Dbosch.com@lists.yoctoproject.org>
wrote:

> Hello,
> we were wondering if anyone has experiences / best practices on how to
> detect if packages link to a library from another GPL licensed package? W=
e
> know that there are ways to completely filter out some licenses via
> INCOMPATIBLE_LICENSE. But from our (limited) legal knowledge it is okay t=
o
> include them in our image, if we fulfill all the obligations. One
> obligation implies that code linked to a GPL library will need to have th=
e
> same license (derivative work). Hence we would like to avoid that package=
s
> containing our own closed source software link by accident to a GPL based
> library. Has anyone experiences / best practices on how to detect this
> automatically during the bitbake build?
>
> Best regards,
> Fabian Hanke
> --------------------------------
> Bosch Rexroth AG
> Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart
> HRB 23192 Executive Board: Dr. Steffen Haack (President), Roland
> Bittenauer, Thomas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chair=
man of
> the Supervisory Board: Dr. Markus Forschner
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63222):
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_message_63222&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkIC=
C2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DiBVJk0qE2jSV=
e8hpVUCp4tUbQAuMmUa_ilYT6CSzR40yIxixG_M_uFw58gyZhitZ&s=3D8QGouii8utL2R7Oej2=
99g-epRwVJC1DNkvIUGJEtYDg&e=3D
> Mute This Topic:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_mt_106365537_7048771&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC=
2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DiBVJk0qE2jSVe=
8hpVUCp4tUbQAuMmUa_ilYT6CSzR40yIxixG_M_uFw58gyZhitZ&s=3DFEG9SZsbw_he72lLTr2=
4UNfykx-aFKsPDo3KEEFv3qM&e=3D
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_unsub&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfd=
iw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DiBVJk0qE2jSVe8hpVUCp=
4tUbQAuMmUa_ilYT6CSzR40yIxixG_M_uFw58gyZhitZ&s=3D1WKXyqu5_3k6qoX-wjbZUk-WVC=
C6xTi7w1JmowK3UXo&e=3D
> [ecordonnier@snap.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b80d730619945d6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Fabian,<br>one commercial option for this use-case is <=
a href=3D"https://github.com/fossas/meta-fossa">https://github.com/fossas/m=
eta-fossa</a>=C2=A0<br><br>=C3=89tienne</div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 29, 2024 at 11:06=E2=80=
=AFAM Hanke Fabian (DC/PAR) via <a href=3D"http://lists.yoctoproject.org">l=
ists.yoctoproject.org</a> &lt;fabian.hanke=3D<a href=3D"mailto:bosch.com@li=
sts.yoctoproject.org">bosch.com@lists.yoctoproject.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
we were wondering if anyone has experiences / best practices on how to dete=
ct if packages link to a library from another GPL licensed package? We know=
 that there are ways to completely filter out some licenses via INCOMPATIBL=
E_LICENSE. But from our (limited) legal knowledge it is okay to include the=
m in our image, if we fulfill all the obligations. One obligation implies t=
hat code linked to a GPL library will need to have the same license (deriva=
tive work). Hence we would like to avoid that packages containing our own c=
losed source software link by accident to a GPL based library. Has anyone e=
xperiences / best practices on how to detect this automatically during the =
bitbake build?<br>
<br>
Best regards,<br>
Fabian Hanke <br>
--------------------------------<br>
Bosch Rexroth AG<br>
Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB=
 23192 Executive Board: Dr. Steffen Haack (President), Roland Bittenauer, T=
homas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chairman of the Supe=
rvisory Board: Dr. Markus Forschner<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63222): <a href=3D"https://urldefense.proofpoint.com/v2=
/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_63222&amp;d=3DDwI=
FaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMI=
GRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DiBVJk0qE2jSVe8hpVUCp4tUbQAuMmUa_il=
YT6CSzR40yIxixG_M_uFw58gyZhitZ&amp;s=3D8QGouii8utL2R7Oej299g-epRwVJC1DNkvIU=
GJEtYDg&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.p=
roofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_6=
3222&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp=
;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DiBVJk0qE2jSVe8hpVU=
Cp4tUbQAuMmUa_ilYT6CSzR40yIxixG_M_uFw58gyZhitZ&amp;s=3D8QGouii8utL2R7Oej299=
g-epRwVJC1DNkvIUGJEtYDg&amp;e=3D</a> <br>
Mute This Topic: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__lists.yoctoproject.org_mt_106365537_7048771&amp;d=3DDwIFaQ&amp;c=3D=
ncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsR=
ih1DULJTKUkSGa66m67E&amp;m=3DiBVJk0qE2jSVe8hpVUCp4tUbQAuMmUa_ilYT6CSzR40yIx=
ixG_M_uFw58gyZhitZ&amp;s=3DFEG9SZsbw_he72lLTr24UNfykx-aFKsPDo3KEEFv3qM&amp;=
e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.co=
m/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_mt_106365537_7048771&amp;d=3D=
DwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonV=
uMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DiBVJk0qE2jSVe8hpVUCp4tUbQAuMmUa=
_ilYT6CSzR40yIxixG_M_uFw58gyZhitZ&amp;s=3DFEG9SZsbw_he72lLTr24UNfykx-aFKsPD=
o3KEEFv3qM&amp;e=3D</a> <br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTv=
jIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUk=
SGa66m67E&amp;m=3DiBVJk0qE2jSVe8hpVUCp4tUbQAuMmUa_ilYT6CSzR40yIxixG_M_uFw58=
gyZhitZ&amp;s=3D1WKXyqu5_3k6qoX-wjbZUk-WVCC6xTi7w1JmowK3UXo&amp;e=3D" rel=
=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.com/v2/url?=
u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3Dn=
cDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRi=
h1DULJTKUkSGa66m67E&amp;m=3DiBVJk0qE2jSVe8hpVUCp4tUbQAuMmUa_ilYT6CSzR40yIxi=
xG_M_uFw58gyZhitZ&amp;s=3D1WKXyqu5_3k6qoX-wjbZUk-WVCC6xTi7w1JmowK3UXo&amp;e=
=3D</a>=C2=A0 [<a href=3D"mailto:ecordonnier@snap.com" target=3D"_blank">ec=
ordonnier@snap.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b80d730619945d6e--

