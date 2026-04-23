Return-Path: <xaver.max.gruber@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEB18FDEE40
	for <webhook@archiver.kernel.org>; Thu, 23 Apr 2026 18:04:24 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3980.1776967463025162360
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Apr 2026 11:04:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20251104 header.b=hKdFhEog;
 spf=pass (domain: googlemail.com, ip: 209.85.219.47, mailfrom: xaver.max.gruber@googlemail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8a032383008so69646006d6.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 Apr 2026 11:04:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776967462; cv=none;
        d=google.com; s=arc-20240605;
        b=ELr1Zl9ANv0uqu8V94grDDuH0Oqkum//7Zq+Gc5VY1pDwORhKdmK8mcWGElbgrR6K7
         RHSbiCXOC9hLCW/MpESY8h8scTgWmo2/mbW6r81N7ozdvkoQjCUNcN88gleG20OA/h7Y
         teh9VxR7QcIbwDtIaAucsxRQ/2/cXkiSBBafzGQmBOtq5C6IKYLBSEixxShZmIHDXRRW
         Zzq0SojeRHCF1bOCg5JrQRGLdPvJoaElRWSpnWkYqqxWOxwPF9ShR0rGVw79LFxy+ipa
         fccxWGNksnsM2vCVAKAggkhEaFnKVxGwDHJRVczTpupDJpBYuYBptQyxU42QZJtpgNu+
         0p0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=bCAE10YNRAgELKbxIB1TWzyTXJBXE1du0cf8LAst2e0=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=OXB88TyEv0t72nVz3viPBfdaZTQ8b7ITlzmuONK71fFTifFgsbi7KRXv+H2kbPqiKl
         KtiP8zWpzjMvXwJElStqXPq9fY8S2nloPX3olvdMg4xsFeaThrrnZOMk22+JHmgcfsTk
         MfoMTTFQS1fHEjtmc6NyfUk0v/hT+RY2K+PFgiodyCF0L/ur6FZ0v9sUzaGN7nQaVOTH
         ta2EnGFYPb79UDmZvLZ35CyqEezyIlTsNlXaTFiglGqPMfOYHHkjFtGfvuy/HzelnK0F
         y+rUyTGWuytILSpTFZjUFYv1TCzDtuF7wNWL6sAWjvGHMj+3rxCAG9GyGDyC0sLF57Ms
         rzNw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20251104; t=1776967462; x=1777572262; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bCAE10YNRAgELKbxIB1TWzyTXJBXE1du0cf8LAst2e0=;
        b=hKdFhEogV5I8rvB0K7uliHzVN00FimjzOkigRacdl7jYZZ4Ei/ss3c/926crjnxmAB
         7YLRw7RHL1p0lHpPmngnAfzzptaKKYRqFPgdykjuJgR6n4nLJ3+efJ25r5eeobabec1E
         WxLLONBGx+UEJQrzcxyQFCID4Wsa2ifyHKFmTY/OEiMLUU/PgSwAgCYaDLWUd1PTicmi
         HvVT+VmMz/sZnOaK+IWnd3fClzmmxL8WCBk0QD/AKqNOrFCs+7AHTy1+iYBAgrNKEQM6
         AqzU+QYqUHuyxMJNu1CgKajtOMGzNl2o9TNjl9xikCjLm7v4tB4pMvQPx/NFDknHB3+Q
         +XAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776967462; x=1777572262;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bCAE10YNRAgELKbxIB1TWzyTXJBXE1du0cf8LAst2e0=;
        b=fEtR18107BZqlDsm0bBxxp2H7fhS135Pp1D7KmeEBrJK58b+WDZ+YdecoeVAgEQ+bE
         Z1iqEp0ejideXJ1ayVZ7FWlji6DZ4fOc+mbpGHq0aIAdUDLc6JJhtBva3gFk3tQmTJUQ
         ytL+bU9bC7RQCjc6NCCfPhau0+SXQUxZwtU2kiQWW/bJXltORCXii6aLRXxHIUHB/NqR
         X5vQdN+0PEbK4YXnyqONrsqBptVNdp7uIuiVENuj2hvvIQVT7mJ5fdMbF83Q3EMu/Md8
         +BWDFzDJ5iVZPIwcVwwibkCYuxQ2nNVspj6JQARqWoNE6wMhcdgDKE3vSILwRTxFzO3N
         nSzg==
X-Gm-Message-State: AOJu0YxIuxEDla5eJp1LsYViN9ZesgfIlPDleDsnVvsf60Df0QTsKlOD
	NGk2W0ahzPqATWVF/x37mXqXrLRzMjDDs2G2J+TqBpQkxjH0Ujp2DJbf10ddyg/ceohTp4j265x
	HUix8y19NqnAJ1pxgayPeqQPt7lVIBlmLovzNpMY=
X-Gm-Gg: AeBDies7QPfQWkxXwJf2f/3ngand50mtek9e5Nl8T4TP/QmQ1NJazMbaoMD/QNHeI8Z
	y8B4h6N8odqyKGDgPqid53rWUPVyqEx9yD4z5wlt4KTcyR/kWTzECzXHncT3V67ScVAR1uI2moE
	h6zoBilWEiFy8S3rD7UU1BFL0pkMAlYUUIDv+BPVj5GhXGuAZSu/u1eZDievATfczNMKCB20SLM
	oKRr3mIaEb7ZWf6g+OykDDTINmTU91zp5iVdr0329SbzAzLwQaJfiM/TGN2Rk+frdxsbYg1BFqs
	6FxY+mykmwr6wvJD18lj4qZG5fkz5DEG9U9mITH38SMh70jZl1BN4j+/MDeQfnCKzWmbkuAE1rQ
	KvcfPXOH0c5eVGxXoZBw7PQ==
X-Received: by 2002:a05:6214:3a87:b0:8ac:bb62:fe3e with SMTP id
 6a1803df08f44-8b028023d6fmr427010506d6.8.1776967461673; Thu, 23 Apr 2026
 11:04:21 -0700 (PDT)
MIME-Version: 1.0
From: Xaver Gruber <xaver.max.gruber@googlemail.com>
Date: Thu, 23 Apr 2026 20:04:09 +0200
X-Gm-Features: AQROBzA17gnVHRXmnKRY4qmZfDCzHHyvZ275KhXtsL4DpLUGgaLzPaTodlb1-JA
Message-ID: <CACxWsr7otZCPmzAPP=LE2XDyO+vmY_fnat-4fjG7KecTjN6NHg@mail.gmail.com>
Subject: Handling sysroots
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000549e8d0650247a6f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Apr 2026 18:04:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66436

--000000000000549e8d0650247a6f
Content-Type: text/plain; charset="UTF-8"

Hey guys,


Clang-native builds clang, however I have another native, let us call it
native X, building clang as well. I get an error that it is duplicated in
global sysroot. I only need clang-native to build native X. How do I make
sure clang-native does not reach global sysroot, however still being
available for native X?
Best regards,
Xaver Gruber

--000000000000549e8d0650247a6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"font-size:inherit"><h3 style=3D"font-style:normal;letter-spac=
ing:normal;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:1px;font-family:system-ui,&quot;segoe ui&quot;,roboto,&quot;helvetica n=
eue&quot;,&quot;noto sans&quot;,&quot;liberation sans&quot;,arial,sans-seri=
f,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui s=
ymbol&quot;,&quot;noto color emoji&quot;;font-weight:500;line-height:1.1;ma=
rgin-top:20px;margin-bottom:10px;font-size:inherit;background-color:rgba(0,=
0,0,0);border-color:rgb(38,41,46);color:rgb(38,41,46)"><p style=3D"margin:0=
px;font-size:15px;line-height:normal;font-family:system-ui,&quot;segoe ui&q=
uot;,roboto,&quot;helvetica neue&quot;,&quot;noto sans&quot;,&quot;liberati=
on sans&quot;,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui=
 emoji&quot;,&quot;segoe ui symbol&quot;,&quot;noto color emoji&quot;;backg=
round-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)"><span s=
tyle=3D"font-family:uictfonttextstylebody;font-size:0.9375rem;background-co=
lor:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)">Hey guys,</span=
></p><p style=3D"margin:0px;font-size:15px;line-height:normal;font-family:s=
ystem-ui,&quot;segoe ui&quot;,roboto,&quot;helvetica neue&quot;,&quot;noto =
sans&quot;,&quot;liberation sans&quot;,arial,sans-serif,&quot;apple color e=
moji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;,&quot;not=
o color emoji&quot;;background-color:rgba(0,0,0,0);border-color:rgb(0,0,0);=
color:rgb(0,0,0)"><span style=3D"font-family:uictfonttextstylebody;backgrou=
nd-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)"><br></span=
></p><p style=3D"margin:0px;font-size:15px;line-height:normal;font-family:s=
ystem-ui,&quot;segoe ui&quot;,roboto,&quot;helvetica neue&quot;,&quot;noto =
sans&quot;,&quot;liberation sans&quot;,arial,sans-serif,&quot;apple color e=
moji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;,&quot;not=
o color emoji&quot;;background-color:rgba(0,0,0,0);border-color:rgb(0,0,0);=
color:rgb(0,0,0)"><span style=3D"font-family:uictfonttextstylebody;font-siz=
e:0.9375rem;background-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rg=
b(0,0,0)">Clang-native builds clang, however I have another native, let us =
call it native X, building clang as well. I get an error that it is duplica=
ted in global sysroot. I only need clang-native to build native X. How do I=
 make sure clang-native does not reach global sysroot, however still being =
available for native X?</span></p></h3><span style=3D"font-size:inherit;fon=
t-style:normal;font-weight:400;letter-spacing:normal;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:1px;text-decoration:none;floa=
t:none;display:inline!important;background-color:rgba(0,0,0,0);border-color=
:rgb(0,0,0);color:rgb(0,0,0)">Best regards,</span><div style=3D"font-size:i=
nherit;font-style:normal;font-weight:400;letter-spacing:normal;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:1px;background-colo=
r:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)">Xaver Gruber</div=
></div>

--000000000000549e8d0650247a6f--

