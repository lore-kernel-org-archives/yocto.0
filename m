Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web09.14617.1576540081918525429
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 15:48:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xBGNm0IR015123
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 16 Dec 2019 15:48:00 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Mon, 16 Dec 2019
 15:47:59 -0800
Subject: Re: [yocto] Applying grpc fix to `zeus`
To: <dmitri.toubelis@litmusautomation.com>, <yocto@lists.yoctoproject.org>
References: <19rG.1576538799715893391.H96x@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <cddcfff6-be88-dbae-8b73-ea539f638631@windriver.com>
Date: Mon, 16 Dec 2019 18:47:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <19rG.1576538799715893391.H96x@lists.yoctoproject.org>
X-Originating-IP: [172.25.44.8]
Content-Type: multipart/alternative;
	boundary="------------B528FF13D1C203325939408E"
Content-Language: en-CA

--------------B528FF13D1C203325939408E
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id xBGNm0IR015123

On 12/16/19 6:26 PM, dmitri.toubelis@litmusautomation.com wrote:
> Hi,
>
> Would it be possible to retrofit this patch=20
> https://patchwork.openembedded.org/patch/168023/=C2=A0to `zeus`? This f=
ixes=20
> an issue with grpc package build failing when multilib is enabled.

HI Dmitri,

The patch is undergoing tests in master-next as of 20 hours ago:
http://git.openembedded.org/meta-openembedded/log/?h=3Dmaster-next

So wait a day or two and if it gets merged to master, cherry-pick it=20
back to zeus and
send it in if no one else does that before you do.

https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded#S=
ending_using_git-send-email

Thanks,

../Randy


>
> Regard,
> -Dmitri
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47704): https://lists.yoctoproject.org/g/yocto/mess=
age/47704
> Mute This Topic: https://lists.yoctoproject.org/mt/68746345/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [randy.macle=
od@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
# Randy MacLeod
# Wind River Linux


--------------B528FF13D1C203325939408E
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id xBGNm0IR015123

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/16/19 6:26 PM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:dmitri.toubeli=
s@litmusautomation.com">dmitri.toubelis@litmusautomation.com</a> wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:19rG.1576538799715893391.H96x@lists.yoctoproject.org">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      Hi,<br>
      <br>
      Would it be possible to retrofit this patch=C2=A0<a
        href=3D"https://patchwork.openembedded.org/patch/168023/"
        moz-do-not-send=3D"true">https://patchwork.openembedded.org/patch=
/168023/</a>=C2=A0to
      `zeus`? This fixes an issue with grpc package build failing when
      multilib is enabled.<br>
    </blockquote>
    <p>HI Dmitri,</p>
    <p>The patch is undergoing tests in master-next as of 20 hours ago:<b=
r>
      =C2=A0=C2=A0
      <a class=3D"moz-txt-link-freetext" href=3D"http://git.openembedded.=
org/meta-openembedded/log/?h=3Dmaster-next">http://git.openembedded.org/m=
eta-openembedded/log/?h=3Dmaster-next</a></p>
    <p>So wait a day or two and if it gets merged to master, cherry-pick
      it back to zeus and<br>
      send it in if no one else does that before you do. <br>
    </p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://www.openembedde=
d.org/wiki/How_to_submit_a_patch_to_OpenEmbedded#Sending_using_git-send-e=
mail">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbe=
dded#Sending_using_git-send-email</a></p>
    <p>Thanks,</p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:19rG.1576538799715893391.H96x@lists.yoctoproject.org"><=
br>
      Regard,<br>
      -Dmitri
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47704): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47704">https://lists.yoctopr=
oject.org/g/yocto/message/47704</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/68746345/3616765">https://lists.yoctoproject.org/mt/=
68746345/3616765</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a>  [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod=
@windriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------B528FF13D1C203325939408E--
