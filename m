Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C822CC4167B
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 05:01:47 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.92573.1701752506717027164
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Dec 2023 21:01:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PYIOG8QZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: chuckwolber@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50bf898c43cso1646814e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 04 Dec 2023 21:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701752505; x=1702357305; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QVGmRHkUXiMp1lXJZEBeqcepVR12ZPB4vqOmvVKgZNI=;
        b=PYIOG8QZstH3hGv0f1qwlX8xgA1bn3XzQD8n5HFdOAiykc/uhm1S9nDNcybzVgpay7
         7OyDJV8L4013TA2EYjTCFM/ykzVPK9JvzkbgYGrT/W62SFAzGie3B3YvNCKiVh+I6HEf
         PY8/TKOwHwiM0f9Hh4CAF+XhEL6v2A2yPpcCDCIqFWFxcrMRDe1YtzWfK3MZTQRNYnzE
         NG3d7KqLKinM37w92wSgbFI0HOoOafkSscexjdyBFPYpgBbsVjZI++YEhuoVVjMATm4n
         46hSRZLWS/bXwzfYaBxUO0LnydknLLu2PAeI2IKvx3A9GGhE1g7sM88o1SQAHsArDmUQ
         fU6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701752505; x=1702357305;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QVGmRHkUXiMp1lXJZEBeqcepVR12ZPB4vqOmvVKgZNI=;
        b=BvM9FyX8gtzI7T5pe2zuXb7HExRZ24cK/bJy0snS1bZWXUihz/efUQH9FBMlcO0WiE
         0ik7UaaZQ+Ar3SN+1Msp8eUlOO3AGz1u6ECVm4cUJHO9oOlJ5tXyVCVvm73OjetGqpdT
         aDDKPOEjJmB/hP4jbGNcKGh/bbII/vKh3keFKanmk4pLgADRdqXnfmck5N3U1/9AQnQV
         ZP3JT9Q9N7iTGZTFbBsMJDSb+VWjBSCws/V9H0N/ftsGQ4C5wP/AtI4k86GtvH6vu24P
         RV46rNJnAsuKJluibryM0WN+SfqAQMtBBbMO/nCbrOK/N/s+exX/8iOUbZekCovramc7
         jSwQ==
X-Gm-Message-State: AOJu0YzIYh5eFRbIBj972uxWZBkE5KGNrW0aZXOG8aMpv1o0vg7CaOkk
	3LkBpGpP4Wjhup+Q0xnXaq2TCzJkspAVU+uakTc=
X-Google-Smtp-Source: AGHT+IFpM4RdgGAolL5EmR8BA9IebZzorkU6yAQqZUqoIvMlvs8faHIcOdZ3l4Zg9olUPu6tK+HU0wDgGHf2Y7EYIKY=
X-Received: by 2002:ac2:4a8d:0:b0:50b:f300:204 with SMTP id
 l13-20020ac24a8d000000b0050bf3000204mr919813lfp.70.1701752504521; Mon, 04 Dec
 2023 21:01:44 -0800 (PST)
MIME-Version: 1.0
References: <MWHPR2201MB1054EFB78B365E713E7A14599286A@MWHPR2201MB1054.namprd22.prod.outlook.com>
In-Reply-To: <MWHPR2201MB1054EFB78B365E713E7A14599286A@MWHPR2201MB1054.namprd22.prod.outlook.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Mon, 4 Dec 2023 21:01:33 -0800
Message-ID: <CAB=6tBRey5srN6pOFk7Chj6He8eAOWWuXGTt0ynKxzT=e6HzkA@mail.gmail.com>
Subject: Re: [yocto] #bitbake - Single Recpie Multiple Outputs/Build Types
To: eric_guinn@selinc.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000871958060bbc21bc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 05:01:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61798

--000000000000871958060bbc21bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 4, 2023 at 11:46=E2=80=AFAM Eric Guinn via lists.yoctoproject.o=
rg
<eric_guinn=3Dselinc.com@lists.yoctoproject.org> wrote:

> Hello,
>
> I need some feedback/advice on a "problem" I'm facing with the recipe
> system. Currently, I have a library written in C++ that also has generate=
d
> SWIG bindings and a resultant Python lib to install. In order to do both
> the C++ build/install and the python build/install I have to use two
> different recipes, but really these outputs always need to be present
> together (they're in the same repo). I may also add .NET bindings in the
> future, so any answers related to that will help as well.
>
> Insofar I've not found a way to get a single recipe to do multiple
> builds/installs, if I do:
>
> ```
> inherit cmake
> inherit setuptools3
> ```
>

Probably not ideal, but perhaps you could roll the entire build (C++ and
Python) into your CMakeLists.txt
file and use your recipe to generate separate packages?

..Ch:W..

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000871958060bbc21bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Dec 4, 2023 at 11:46=E2=80=AFAM E=
ric Guinn via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.=
org</a> &lt;eric_guinn=3D<a href=3D"mailto:selinc.com@lists.yoctoproject.or=
g">selinc.com@lists.yoctoproject.org</a>&gt; wrote:</div><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
I need some feedback/advice on a &quot;problem&quot; I&#39;m facing with th=
e recipe system. Currently, I have a library written in C++ that also has g=
enerated SWIG bindings and a resultant Python lib to install. In order to d=
o both the C++ build/install and the python build/install I have to use two=
 different recipes, but really these outputs always need to be present toge=
ther (they&#39;re in the same repo). I may also add .NET bindings in the fu=
ture, so any answers related to that will help as well.<br>
<br>
Insofar I&#39;ve not found a way to get a single recipe to do multiple buil=
ds/installs, if I do:<br>
<br>
```<br>
inherit cmake<br>
inherit setuptools3<br>
```<br clear=3D"all"></blockquote></div><div><br></div><div>Probably not id=
eal, but perhaps you could roll the entire build (C++ and Python) into your=
 CMakeLists.txt</div><div>file and use your recipe to generate separate pac=
kages?<br></div><div><br></div><div>..Ch:W..<br></div><div><br></div><span =
class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gm=
ail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospac=
e">&quot;Perfection must be reached by degrees; she requires the slow hand =
of time.&quot; - Voltaire</span></b></div></div></div></div>

--000000000000871958060bbc21bc--

