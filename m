Return-Path: <nicolas.dechesne@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EA8ECAAD2
	for <webhook@archiver.kernel.org>; Mon, 29 Aug 2022 16:35:38 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.350.1661790936225945840
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Aug 2022 09:35:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Mhf70sDm;
 spf=pass (domain: linaro.org, ip: 209.85.218.50,
 mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ej1-f50.google.com with SMTP id og21so16841706ejc.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 29 Aug 2022 09:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=8ecITP1g/Bk56ya+rEhTifEcwOHhYi45sZcH/84jjMk=;
        b=Mhf70sDmS8BFv1gM3KD8ryTDAu1FtUSocyhvavNPvfIoY0ZZuRlLnN2cfTiDEuyuER
         rCkxeLj+1ojXu2e+zmVk7yC3UK1KzpqmRiSbPoORA1ef4n7gBbYS2kDgPbJoCIko4ORL
         U95K8f+hhQtIuWZoZOdIHfnZ5OCagHHCAtBUbNo0RebgLP8fobs3D0EGx0rumLFq8fz9
         wN2SqoZwMMv/a+SFtLE1SoOxqfzK4AFC2oIPwl+GZrGsddGhSt7DNvb76UY4aT2T5dtu
         oVyABhfenPwuLnVQQ8GVYDRWMlkwG/DuCerQK8pUXrOmIl+lBonZ9j4a4ECrA5p25b0c
         S/lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=8ecITP1g/Bk56ya+rEhTifEcwOHhYi45sZcH/84jjMk=;
        b=KAG4gKrf8F/Ic5ENY0388uePsy6GnyWuE0w3q147GM1/Uzo9OS3MsFqP+7vIxQBh8b
         oIs3BKX75QAfA7YkxUNk9xWafwoa+TXf+9nok7MGpyyDsayLRYkfVRiT6ks5r3hDIGm6
         mMdRVmwIYpbLDTEXScmixDiTTNy9uTFRBLpP5LgMl1vhyf9DqWpuy97nCoUoBW/wC3F+
         8dMdCiXjIH82hoblGMLikzcLd1pZEoyYZQRpRF04x1AalnFeUkY9Ioh94jIGGPiiKz3a
         OMfuzHxdsDbJpSApxVGd+QS+yRh3LOrhpwQDxDsfpKQ7IbIxqzSWf3TaNnNw1mPfJ8Ov
         eewA==
X-Gm-Message-State: ACgBeo3tmY3jXvtA/tiJSHUmQ447htAkBgoX0Y3cGQN05lRl2xAhs8QN
	9CwNTcxZ3BEnCoyOgrCaA6Im3YFmmikr9Zcx7vMo3g==
X-Google-Smtp-Source: 
 AA6agR7/KanQwEXDXcp4a67m6YkBuIstLubWBDo6jWq9ZMux5PzIOK0mi9NQRGGoknXL6gsvNmilZOSn5tu488GBGnM=
X-Received: by 2002:a17:906:b84a:b0:73d:bacd:84e5 with SMTP id
 ga10-20020a170906b84a00b0073dbacd84e5mr14696975ejb.750.1661790933897; Mon, 29
 Aug 2022 09:35:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220829140432.3169225-1-jerome.forissier@linaro.org>
In-Reply-To: <20220829140432.3169225-1-jerome.forissier@linaro.org>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 29 Aug 2022 18:35:22 +0200
Message-ID: 
 <CAP71WjzFD3ns9BQKXo+F8K7UrDpoN5ECMqtDAM6FsXW09WS39A@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH resend] Parsec-service: add parsec
 user to teeclnt group when optee is present
To: Jerome Forissier <jerome.forissier@linaro.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004e761905e763da9c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Aug 2022 16:35:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57935

--0000000000004e761905e763da9c
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 29, 2022 at 4:05 PM Jerome Forissier <
jerome.forissier@linaro.org> wrote:

> The optee-client package provides a PKCS#11 interface that may be used by
> Parsec with the below configuration. For this to work, the parsec user
> needs to be a member of the teeclnt group. Therefore, add it when 'optee'
> is present in MACHINE_FEATURES.
>
>  # Provider configuration in /etc/parsec/config.toml
>  [[provider]]
>  name = "pkcs11-optee"
>  provider_type = "Pkcs11"
>  key_info_manager = "sqlite-manager"
>  library_path = "/usr/lib/libckteec.so.0"
>
> Signed-off-by: Jerome Forissier <jerome.forissier@linaro.org>
> ---
>  .../recipes-parsec/parsec-service/parsec-service_1.0.0.bb        | 1 +
>  1 file changed, 1 insertion(+)
>
> This is a resend because a few hours after my initial post I still can't
> find it at https://lists.yoctoproject.org/g/yocto/messages. I am now
> subscribed to the list so hopefully it will help (although
> https://git.yoctoproject.org/meta-security/tree/README doesn't mention
> subscription).
>

Subscription is not required, but then you end up in the moderation queue.
I can see your message in the moderation queue, I will delete the original
message.


>
> diff --git a/meta-parsec/recipes-parsec/parsec-service/
> parsec-service_1.0.0.bb b/meta-parsec/recipes-parsec/parsec-service/
> parsec-service_1.0.0.bb
> index ad7e560..ea2b0c9 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
> @@ -68,6 +68,7 @@ USERADD_PACKAGES = "${PN}"
>  USERADD_PARAM:${PN} = "-r -g parsec -s /bin/false -d
> ${localstatedir}/lib/parsec parsec"
>  GROUPADD_PARAM:${PN} = "-r parsec"
>  GROUPMEMS_PARAM:${PN} = "${@bb.utils.contains('PACKAGECONFIG_CONFARGS',
> 'tpm-provider', '-a parsec -g tss', '', d)}"
> +GROUPMEMS_PARAM:${PN} = "${@bb.utils.contains('MACHINE_FEATURES',
> 'optee', '-a parsec -g teeclnt', '', d)}"
>
>  FILES:${PN} += " \
>      ${sysconfdir}/parsec/config.toml \
> --
> 2.34.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57934):
> https://lists.yoctoproject.org/g/yocto/message/57934
> Mute This Topic: https://lists.yoctoproject.org/mt/93326818/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> nicolas.dechesne@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000004e761905e763da9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 29, 2022 at 4:05 PM Jerom=
e Forissier &lt;<a href=3D"mailto:jerome.forissier@linaro.org">jerome.foris=
sier@linaro.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">The optee-client package provides a PKCS#11 interface that m=
ay be used by<br>
Parsec with the below configuration. For this to work, the parsec user<br>
needs to be a member of the teeclnt group. Therefore, add it when &#39;opte=
e&#39;<br>
is present in MACHINE_FEATURES.<br>
<br>
=C2=A0# Provider configuration in /etc/parsec/config.toml<br>
=C2=A0[[provider]]<br>
=C2=A0name =3D &quot;pkcs11-optee&quot;<br>
=C2=A0provider_type =3D &quot;Pkcs11&quot;<br>
=C2=A0key_info_manager =3D &quot;sqlite-manager&quot;<br>
=C2=A0library_path =3D &quot;/usr/lib/libckteec.so.0&quot;<br>
<br>
Signed-off-by: Jerome Forissier &lt;<a href=3D"mailto:jerome.forissier@lina=
ro.org" target=3D"_blank">jerome.forissier@linaro.org</a>&gt;<br>
---<br>
=C2=A0.../recipes-parsec/parsec-service/<a href=3D"http://parsec-service_1.=
0.0.bb" rel=3D"noreferrer" target=3D"_blank">parsec-service_1.0.0.bb</a>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
This is a resend because a few hours after my initial post I still can&#39;=
t<br>
find it at <a href=3D"https://lists.yoctoproject.org/g/yocto/messages" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/me=
ssages</a>. I am now<br>
subscribed to the list so hopefully it will help (although<br>
<a href=3D"https://git.yoctoproject.org/meta-security/tree/README" rel=3D"n=
oreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-security/tre=
e/README</a> doesn&#39;t mention<br>
subscription).<br></blockquote><div><br></div><div>Subscription is not requ=
ired, but then you end up in the moderation queue. I can see your message i=
n the moderation queue, I will delete the original message.=C2=A0</div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
diff --git a/meta-parsec/recipes-parsec/parsec-service/<a href=3D"http://pa=
rsec-service_1.0.0.bb" rel=3D"noreferrer" target=3D"_blank">parsec-service_=
1.0.0.bb</a> b/meta-parsec/recipes-parsec/parsec-service/<a href=3D"http://=
parsec-service_1.0.0.bb" rel=3D"noreferrer" target=3D"_blank">parsec-servic=
e_1.0.0.bb</a><br>
index ad7e560..ea2b0c9 100644<br>
--- a/meta-parsec/recipes-parsec/parsec-service/<a href=3D"http://parsec-se=
rvice_1.0.0.bb" rel=3D"noreferrer" target=3D"_blank">parsec-service_1.0.0.b=
b</a><br>
+++ b/meta-parsec/recipes-parsec/parsec-service/<a href=3D"http://parsec-se=
rvice_1.0.0.bb" rel=3D"noreferrer" target=3D"_blank">parsec-service_1.0.0.b=
b</a><br>
@@ -68,6 +68,7 @@ USERADD_PACKAGES =3D &quot;${PN}&quot;<br>
=C2=A0USERADD_PARAM:${PN} =3D &quot;-r -g parsec -s /bin/false -d ${localst=
atedir}/lib/parsec parsec&quot;<br>
=C2=A0GROUPADD_PARAM:${PN} =3D &quot;-r parsec&quot;<br>
=C2=A0GROUPMEMS_PARAM:${PN} =3D &quot;${@bb.utils.contains(&#39;PACKAGECONF=
IG_CONFARGS&#39;, &#39;tpm-provider&#39;, &#39;-a parsec -g tss&#39;, &#39;=
&#39;, d)}&quot;<br>
+GROUPMEMS_PARAM:${PN} =3D &quot;${@bb.utils.contains(&#39;MACHINE_FEATURES=
&#39;, &#39;optee&#39;, &#39;-a parsec -g teeclnt&#39;, &#39;&#39;, d)}&quo=
t;<br>
<br>
=C2=A0FILES:${PN} +=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0${sysconfdir}/parsec/config.toml \<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57934): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57934" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57934</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93326818/1279=
857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93326818/1279857</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000004e761905e763da9c--

