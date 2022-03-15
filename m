Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BB23C433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 16:08:45 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web11.13003.1647360523863681824
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:08:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=s5zd/3Mx;
 spf=neutral (domain: ibeeto.com, ip: 209.85.210.178,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pf1-f178.google.com with SMTP id g19so20445190pfc.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=WMIkM/a2Icnq7RdzTQpB0+bVY6+jxZwp2UeKGLIHUyQ=;
        b=s5zd/3MxLuGx5+6T67wFdJ4pxx1U1FtdcvcLMAae1dCf61sH5hqbbK4dZE1tq3g6hl
         2Tc9JDVWrX5hWL/XMNYSrMtMEzr6uV1oE7b6FjamaqDwNeW1WOzs38ZIz71yotVgaH73
         dWzTRZVgLXzF1usPWtaVNLGr8fV0DuPvtXjip74WM+ZhGxVrLQ9yvjKWVMcb1Vd+t3dH
         nCR6yWB5p6KEMcSmR212mFoI2wfNvpVn2lEzUfkzCj0nCalLUcRoJTPaMfXBZK8kd+1m
         xnx1Vlq+ZntEyieHt7gqX0XCYOwM4LvK0hNvvEivJSCB5fsVDV0A7GN9u6CSwP2+vRsO
         kOOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=WMIkM/a2Icnq7RdzTQpB0+bVY6+jxZwp2UeKGLIHUyQ=;
        b=F5ZE2W+OmdSpU6Ymz1n8lIsN3HSuLa6YR8ZafiS2UC0Grl1mgy3EvJbNEZYQwexTMd
         /JnUrHmCf8/LaSWasKNp4r7IC3gNAdNloU3c7yWT4ZsUECGzeqG3R/TfgNkFsiLzG0B7
         DBXstub9Vth4RBExVH6fHMZ6pX8e7DMGoDq8eQuK7tPNIs5AjbHzKWGsqqZM2RVtqyEM
         aj/IBPwyLTAh7nueItWlTYdWL2SNay3FyRu/KkcX7qSg0N4ou4HXfqRVKhAfWz7GJNPE
         c3OK5VJuROGiDzyeAd3tUf0FNT/lJKtN5Sbgxqe5twOf9/YxBjXSbDsuo+RTDOqqjpFA
         ceDA==
X-Gm-Message-State: AOAM531Z9dFzouY0Ygd7QsI0cJIVRkUsTg0H6JK8h1l310w7Rd6hubBJ
	yxpXExlcrNM0UdiNy2mNZtZa6vhhHBXZdrXj
X-Google-Smtp-Source: 
 ABdhPJwRtH2irFpTWlYgncwgB927btGaivS8af9nRqm5Dg1DcHFtgsMTBFCMVtVLVuz6WmHdgMqTOA==
X-Received: by 2002:a65:6a8e:0:b0:378:b62d:f397 with SMTP id
 q14-20020a656a8e000000b00378b62df397mr25162314pgu.239.1647360522531;
        Tue, 15 Mar 2022 09:08:42 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d2a:a304:93dc:834e:6555:ccaa?
 ([2600:8801:8d2a:a304:93dc:834e:6555:ccaa])
        by smtp.gmail.com with ESMTPSA id
 q18-20020a637512000000b003816cf04406sm2349136pgc.22.2022.03.15.09.08.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 09:08:41 -0700 (PDT)
Subject: Re: [yocto] Query regarding yocto build
To: Nupur Purohit <nupur100299@gmail.com>, info@yoctoproject.org,
 yocto@lists.yoctoproject.org
References: 
 <CADKSc-hd-e=X83ot5KN=4tLQZqYVvGAnZBK-na6zRi=Fvb-tOw@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAHNKlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvzsBNBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Message-ID: <38204145-1c2b-5bbf-5cb8-51268b0a7778@ibeeto.com>
Date: Tue, 15 Mar 2022 09:08:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <CADKSc-hd-e=X83ot5KN=4tLQZqYVvGAnZBK-na6zRi=Fvb-tOw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="0naIYeapJfQ0g4I8yJ9E1Fv0tTeJpPKMf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 16:08:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56446

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--0naIYeapJfQ0g4I8yJ9E1Fv0tTeJpPKMf
Content-Type: multipart/mixed; boundary="9zbVKCaJ0SKrDEFIgbcBx7OGfJsEQ22zg";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Nupur Purohit <nupur100299@gmail.com>, info@yoctoproject.org,
 yocto@lists.yoctoproject.org
Message-ID: <38204145-1c2b-5bbf-5cb8-51268b0a7778@ibeeto.com>
Subject: Re: [yocto] Query regarding yocto build
References: <CADKSc-hd-e=X83ot5KN=4tLQZqYVvGAnZBK-na6zRi=Fvb-tOw@mail.gmail.com>
In-Reply-To: <CADKSc-hd-e=X83ot5KN=4tLQZqYVvGAnZBK-na6zRi=Fvb-tOw@mail.gmail.com>

--9zbVKCaJ0SKrDEFIgbcBx7OGfJsEQ22zg
Content-Type: multipart/mixed;
 boundary="------------8AAD95823B64CCBC603F888C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8AAD95823B64CCBC603F888C
Content-Type: multipart/alternative;
 boundary="------------6DBF339B53E8D539FF020BA7"


--------------6DBF339B53E8D539FF020BA7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,

Topposting since the problem is in the screenshot.

The issue is the naming of the shared object. Linux convention is that a =

shared object contains the version number e.g. log_wrapper.so.1 and=20
log_wrapper.so is a link to that file.

In you make file either change the install target or use=20
-soname=3Dlog_wrapper.so.1 when invoking gcc to create the shared object.=


:rjs

On 3/15/22 12:52 AM, Nupur Purohit wrote:
> Hi,
>
> Please find the below error snapshot.
>
> I am trying to integrate OMADM (Open mobile alliance device=20
> management) on the top of yocto 3.4.2 (honister) poky. And facing the=20
> following issue with bitbake log-wrapper ( one of the APIs I'm trying=20
> to integrate).
>
> Please provide assistance to resolve the error.
>
> Thanks and regards,
> Nupur
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56439): https://lists.yoctoproject.org/g/yocto/mess=
age/56439
> Mute This Topic: https://lists.yoctoproject.org/mt/89793406/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [rudolf.strei=
f@ibeeto.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------6DBF339B53E8D539FF020BA7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hello,</p>
    <p>Topposting since the problem is in the screenshot.</p>
    <p>The issue is the naming of the shared object. Linux convention is
      that a shared object contains the version number e.g.
      log_wrapper.so.1 and log_wrapper.so is a link to that file.</p>
    <p>In you make file either change the install target or use
      -soname=3Dlog_wrapper.so.1 when invoking gcc to create the shared
      object.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 3/15/22 12:52 AM, Nupur Purohit
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CADKSc-hd-e=3DX83ot5KN=3D4tLQZqYVvGAnZBK-na6zRi=3DFvb-tOw@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Hi,
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Please find the below error snapshot.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I am trying to integrate OMADM (Open mobile
          alliance device management) on the top of yocto 3.4.2
          (honister) poky. And facing the following issue with bitbake
          log-wrapper ( one of the APIs I'm trying to integrate).</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Please provide assistance to resolve the error.=
</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks and regards,</div>
        <div dir=3D"auto">Nupur</div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#56439): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/56439">https://lists.yoctopr=
oject.org/g/yocto/message/56439</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
=2Eyoctoproject.org/mt/89793406/3617932">https://lists.yoctoproject.org/m=
t/89793406/3617932</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:rudolf.streif@=
ibeeto.com">rudolf.streif@ibeeto.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------6DBF339B53E8D539FF020BA7--

--------------8AAD95823B64CCBC603F888C
Content-Type: application/pgp-keys;
 name="OpenPGP_0x8D8CA82927339B75.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0x8D8CA82927339B75.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvDQ=
pe+
Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ/Qymy=
+7C
bh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969cQD/S9LNn=
dnK
5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM3sPiHrF+Y2HTd=
K7j
7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEBAAHNKlJ1ZG9sZiBKI=
FN0
cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgAIQUCWFAUBAIbAwULCQgHA=
gYV
CAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf03GsVMG6C5QOLaPx6rOgj5qexC=
H3r
fYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBktxioE384/51QTIfCmW8ZG5X0cMC5d=
38L
Fvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xllpeOfKQD3wn99w5dzXYhvajXCWwAjjpWr=
R84
ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+wXl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq=
4x5
LZhUhGYoqbYwNy9imoBkUAZkbbViNOtXzaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBh=
jVL
mLHvzsBNBFhQFAQBCADXoLKCuF485eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOm=
Tqk
3fb9+Ao6C6IliC9ZRXyAVLD/RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwR=
IFp
PBpxHRrZnDdEd5IKsy+zw6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDsp=
JSH
WMBh0OMKDeBik5wlsvtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/=
mCB
CZ+IKhBQR36vtUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIA=
AkF
AlhQFAQCGwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2=
LYU
pLNjs4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9M=
byE
fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8TzY=
f9m
2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/NlouvceP41ts=
C5d
axZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/ANROZj4g=3D=
=3D
=3DLHwf
-----END PGP PUBLIC KEY BLOCK-----

--------------8AAD95823B64CCBC603F888C--

--9zbVKCaJ0SKrDEFIgbcBx7OGfJsEQ22zg--

--0naIYeapJfQ0g4I8yJ9E1Fv0tTeJpPKMf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmIwuggFAwAAAAAACgkQjYyoKSczm3Vh
5Af/UrdVpWGAjH9QsuVRLTDsL8st9F5tR3A4MOnbjzrR1z4+IAvCLVPltzxtixK/9lgVr0ypY3xZ
mul+3Se84LWLvWwWbar3Qm1e9eg/E2CIQ+7xzfpl0mhu0y56Jvav9C0DFv/nuz4qsWlFihKubamL
5nPnkPKJacw80v3RIkcTT+2dfgK45nEugVEHeFVYbRQ3LS8ry8sT3+FMpddFKf1em2WQV01Gazsp
WNUTi7+lKVrQTuDgpcvBhYfTBZwFn26ocWumISwu91YiSoqqwKMMPcM2eCB4POSjcXNIVSVYeELL
42mKJsYZkPuhGV7/768BVqLa/vSIWlLN0TjPmysWpw==
=J+hp
-----END PGP SIGNATURE-----

--0naIYeapJfQ0g4I8yJ9E1Fv0tTeJpPKMf--

