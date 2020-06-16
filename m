Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.1448.1592351483931884380
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2020 16:51:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q36wnezU;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: edgarchvs11@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id x13so415392wrv.4
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jun 2020 16:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vNQAx4bNGYXo2kzuL1W/m8tsX20fyYu98vm0i0TNh1U=;
        b=q36wnezUAWzW18ceN5FZhGONAXN0CvIlUuVAOfPjgpwiuAYaPsBkb47soKF7wqp8Wi
         2wbsUNWx5bH3iU8z1ed+8NSfBkx+jJT447jAq6FOEvl09IqJZxJTWK7jCPfNPEhtAAC9
         0iRgJt/vj+rQei3H+ACpK6WYwsTQcm0ypJ92fdl5eUGRm1rX/o/G4X8m6OgS7A/aBJgX
         gccGpa6heJZ6MGoV+krpNYevPKPXB8v0Ez7skPS1Q6dLph+gKAt80Gy02QuISyjboUbn
         vxYpaI6/m/zoBacMjQI61uuqW51aqnkilsZUhBAVqptndOs292SxcjrWc0LfnhaTtmX2
         kZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vNQAx4bNGYXo2kzuL1W/m8tsX20fyYu98vm0i0TNh1U=;
        b=me/39GQfLI9Yi0x+kTwgXAP056FvTxThSF//x151tfTRdS8DQTEdUb5Habbl9NMYNh
         AeoAnH+2G3rAFGITtKUvx5YRbFXI6yvCI8tZoB2d045uBpwer0vbPPB2RWuHNkxgx4oY
         PvX/V2VL8w+/jhEvqPaL/ILIZlL+xjm3EHzLWKp+r2Yq3cAGCgX8xZlVbyA6QDm7F+Id
         4A4rMb94VR5BHogQVL2AhF/1U3YKt/d2pmGrWbcNY5qY+CS1Etf9pJkHctA/aKlUUIN6
         n48x84l3fHHGeoRo7anFOMBU6F7O4Jx//4Fhb4tRdXX/n2WMdmRWMz0rt6Wv+jhp+7vD
         QxmA==
X-Gm-Message-State: AOAM533wjRjbLe6tSg/DaJB7jSqchoDoL6GhwbAGpnN+WvP98y0+xpg1
	c/hv/v6UtMKKs34M2d0XOG1tMRTQ9nr/gSFv3II=
X-Google-Smtp-Source: ABdhPJwOGQxKsMjcU6sG9JdrtyFQnUK9oaUBEdligcHhbLkxGZ8Yl1zBrql893kxcsAEe6BDqhhE/aYlxdipe3j1WCw=
X-Received: by 2002:a5d:4fc4:: with SMTP id h4mr5254205wrw.49.1592351482319;
 Tue, 16 Jun 2020 16:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAK6d4ekRt99dBF=d4_nc_C2aRCWcLQG=hyxfLyz4qd_gZXqMSw@mail.gmail.com>
 <a4309ce9-b4d2-afd5-49e2-a65c463c34a6@gmail.com> <CAK6d4ekjJdq4nGF9GeCT5DwZS5G8neuJAe4vUV+6jMGq6RCFFw@mail.gmail.com>
 <CAK6d4ekda-LrmyHtgFgBC1SSafCXb6HmKOYWOd0W2f28JUA_pA@mail.gmail.com>
 <467fc7f8-d447-d85b-511a-4cc103f94b7a@gmail.com> <CAK6d4em_0H0pbjR-328DF6ZOhMjx=5yDTUMv7nx+=G3npv96VA@mail.gmail.com>
In-Reply-To: <CAK6d4em_0H0pbjR-328DF6ZOhMjx=5yDTUMv7nx+=G3npv96VA@mail.gmail.com>
From: edgarchvs11@gmail.com
Date: Tue, 16 Jun 2020 17:51:11 -0600
Message-ID: <CAK6d4emjq5GcYiQhWYEpBErDdPDr3_NvKZMZ_9t0gRDeNdbYoQ@mail.gmail.com>
Subject: Re: [meta-mingw]: Static libraries
To: Joshua Watt <jpewhacker@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000076178705a83c38d1"

--00000000000076178705a83c38d1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I see.

Now, I can tell that you can add manually curl-staticdev to the target. Or
it also gets deployed with the SDKIMAGE_FEATURES. But not for libgcc,
because libgcc-staticdev package does not exist, and that's why
SDKIMAGE_FEATURES couldn't deploy it. I know this now.

The way meta-mingw manage this is adding them, through files
meta-mingw/recipes-devtools/gcc/libgcc_%.bbappend, like this:

FILES_${PN}-dev_append_mingw32 =3D " ${base_libdir}/libgcc*.a"

However, it makes no sense to me to add static libraries to a dynamic
package. Wouldn't better just to make the package!?

This is my questions:
1. Is this recipe-append intended to be used by nativesdk-libgcc-dev or
libgcc-dev?
2. What would be a use case of adding a nativesdk-libgcc/nativesdk-libgcc-d=
ev
to the host? Is this handle automatically anytime you append to target?

Thank you.

El mar., 16 jun. 2020 a las 17:44, Edgar Chaves (<edgarchvs11@gmail.com>)
escribi=C3=B3:

> I see.
>
> Now, I can tell that you can add manually curl-staticdev to the target. O=
r
> it also gets deployed with the SDKIMAGE_FEATURES. But not for libgcc,
> because libgcc-staticdev package does not exist, and that's why
> SDKIMAGE_FEATURES couldn't deploy it. I know this now.
>
> The way meta-mingw manage this is adding them, through files
> meta-mingw/recipes-devtools/gcc/libgcc_%.bbappend, like this:
>
> FILES_${PN}-dev_append_mingw32 =3D " ${base_libdir}/libgcc*.a"
>
> However, it makes no sense to me to add static libraries to a dynamic
> package. Wouldn't better just to make the package!?
>
> This are my questions:
> 1. Is this recipe-append intended to be used by nativesdk-libgcc-dev or
> libgcc-dev?
> 2. What would be a use case of adding a
> nativesdk-libgcc/nativesdk-libgcc-dev to the host? Is this handle
> automatically anytime you append to target?
>
> Thank you.
>
> El mar., 16 jun. 2020 a las 13:59, Joshua Watt (<jpewhacker@gmail.com>)
> escribi=C3=B3:
>
>> Please "Reply-All" to keep the discussion on the mailing list
>> On 6/16/20 1:05 PM, Edgar Chaves wrote:
>>
>> Hi, do you have thoughts about this?
>>
>> My concern is that *-staticdev part of nativesdk-* providers is not
>> deployed correctly.
>>
>>
>> nativesdk-*-staticdev packages shouldn't be included in the SDK.
>> nativesdk- recipes are intended to run on the host where the SDK is
>> extracted, and that SDK will be used to compile software for some target=
.
>> The SDK isn't intended to be able to compile more software for running o=
n
>> the SDK host itself, so none of the development files for nativesdk reci=
pes
>> are included in SDK iteself.
>>
>> Practically speaking, this means that the SDK will not include a package
>> like nativesdk-curl-staticdev (which is used to build SDK host software)=
,
>> but it could include curl-staticdev (which is used by the SDK to build
>> target software).
>>
>>
>>
>> El mi=C3=A9., 3 jun. 2020 a las 19:37, Edgar Chaves (<edgarchvs11@gmail.=
com>)
>> escribi=C3=B3:
>>
>>> OK. Let me correct it.
>>>
>>> I believe the layer and recipes are missing some packaging, therefore
>>> I'm missing *some* .a libraries in the SDK.
>>>
>>> Something like this: FILES_${PN} +=3D " ${baselib_dir}"
>>>
>>> El mar., 2 jun. 2020 a las 7:37, Joshua Watt (<jpewhacker@gmail.com>)
>>> escribi=C3=B3:
>>>
>>>> CC'in the mailing list.
>>>> On 6/1/20 10:39 PM, Edgar Chaves wrote:
>>>>
>>>> Hi
>>>>
>>>> I want to ask about meta-mingw static libraries for Windows. The thing
>>>> is that I don't get ".lib" in the SDK. Do you have any information abo=
ut
>>>> that?
>>>>
>>>> meta-mingw is primarily intended to build and SDK that allows you to
>>>> cross compile for a Linux target from a Windows host, so including the
>>>> static libraries for the Windows portions doesn't really make sense. I
>>>> think there has been a little discussions about making and SDK that cr=
oss
>>>> compiles for Windows, but I don't recall where that went.
>>>>
>>>> Perhaps you can clarify what your use case is?
>>>>
>>>>
>>>>
>>>> Thank you, I'd appreciate your answer.
>>>>
>>>> =E2=80=94Edgar
>>>>
>>>>

--00000000000076178705a83c38d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><span style=3D"color:rgb(7,55,99)">I s=
ee.<br><br></span></div><span style=3D"color:rgb(7,55,99)">Now, I can tell =
that you can add manually curl-staticdev to the target. Or it also gets dep=
loyed with the SDKIMAGE_FEATURES. But not for libgcc, because libgcc-static=
dev=20
package does not exist, and that&#39;s why SDKIMAGE_FEATURES couldn&#39;t d=
eploy it. I know this now.<br></span></div><span style=3D"color:rgb(7,55,99=
)"><br></span></div><span style=3D"color:rgb(7,55,99)">The way meta-mingw m=
anage this is adding them, through files meta-mingw/recipes-devtools/</span=
><span style=3D"color:rgb(7,55,99)">gcc/libgcc_%.bbappend, like this:<br><b=
r>FILES_${PN}-dev_append_mingw32 =3D &quot; ${base_libdir}/libgcc*.a&quot;<=
br></span></div><div><span style=3D"color:rgb(7,55,99)"><br>However, it mak=
es no sense to me to add static libraries to a dynamic package. Wouldn&#39;=
t better just to make the package!?<br><br></span></div><div><span style=3D=
"color:rgb(7,55,99)">This is my questions:<br></span></div><div><span style=
=3D"color:rgb(7,55,99)">1. Is this recipe-append intended to be used by nat=
ivesdk-libgcc-dev or libgcc-dev? <br>2. What would be a use case of adding =
a nativesdk-libgcc/nativesdk-</span><span style=3D"color:rgb(7,55,99)">libg=
cc-dev to the host? Is this handle automatically anytime you append to targ=
et?<br></span></div><div><div><span style=3D"color:rgb(7,55,99)"><br></span=
></div><div><span style=3D"color:rgb(7,55,99)">Thank you.</span></div></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>El mar., 16 jun. 2020 a las 17:44, Edgar Chaves (&lt;<a href=3D"mailto:edg=
archvs11@gmail.com">edgarchvs11@gmail.com</a>&gt;) escribi=C3=B3:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><di=
v><div><div>I see.<br><br></div>Now, I can tell that you can add manually c=
url-staticdev to the target. Or it also gets deployed with the SDKIMAGE_FEA=
TURES. But not for libgcc, because libgcc-staticdev package does not exist,=
 and that&#39;s why SDKIMAGE_FEATURES couldn&#39;t deploy it. I know this n=
ow.<br></div><br></div>The way meta-mingw manage this is adding them, throu=
gh files meta-mingw/recipes-devtools/gcc/libgcc_%.bbappend, like this:<br><=
br>FILES_${PN}-dev_append_mingw32 =3D &quot; ${base_libdir}/libgcc*.a&quot;=
<br></div><div><br>However, it makes no sense to me to add static libraries=
 to a dynamic package. Wouldn&#39;t better just to make the package!?<br><b=
r></div><div>This are my questions:<br></div><div>1. Is this recipe-append =
intended to be used by nativesdk-libgcc-dev or libgcc-dev? <br>2. What woul=
d be a use case of adding a nativesdk-libgcc/nativesdk-libgcc-dev to the ho=
st? Is this handle automatically anytime you append to target?<br></div><di=
v><div><br></div><div>Thank you.<br></div></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mar., 16 jun. 2020 a las=
 13:59, Joshua Watt (&lt;<a href=3D"mailto:jpewhacker@gmail.com" target=3D"=
_blank">jpewhacker@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Please &quot;Reply-All&quot; to keep the discussion on the mailing l=
ist<br>
    </p>
    <div>On 6/16/20 1:05 PM, Edgar Chaves wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi, do you have thoughts about this?<br>
          <br>
        </div>
        My concern is that *-staticdev part of nativesdk-* providers is
        not deployed correctly. <br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>nativesdk-*-staticdev packages shouldn&#39;t be included in the SDK.
      nativesdk- recipes are intended to run on the host where the SDK
      is extracted, and that SDK will be used to compile software for
      some target. The SDK isn&#39;t intended to be able to compile more
      software for running on the SDK host itself, so none of the
      development files for nativesdk recipes are included in SDK
      iteself.</p>
    <p>Practically speaking, this means that the SDK will not include a
      package like nativesdk-curl-staticdev (which is used to build SDK
      host software), but it could include curl-staticdev (which is used
      by the SDK to build target software).<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9., 3 jun. 2020 a l=
as
          19:37, Edgar Chaves (&lt;<a href=3D"mailto:edgarchvs11@gmail.com"=
 target=3D"_blank">edgarchvs11@gmail.com</a>&gt;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">OK. Let me correct it.<br>
            <div><br>
              I believe the layer and recipes are missing some
              packaging, therefore I&#39;m missing <i>some</i> .a libraries
              in the SDK.<br>
              <br>
            </div>
            <div>Something like this: FILES_${PN} +=3D &quot; ${baselib_dir=
}&quot;<br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">El mar., 2 jun. 2020 a la=
s
              7:37, Joshua Watt (&lt;<a href=3D"mailto:jpewhacker@gmail.com=
" target=3D"_blank">jpewhacker@gmail.com</a>&gt;)
              escribi=C3=B3:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div>
                <p>CC&#39;in the mailing list.<br>
                </p>
                <div>On 6/1/20 10:39 PM, Edgar Chaves wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">
                    <div>
                      <div>
                        <div>Hi<br>
                          <br>
                        </div>
                        I want to ask about meta-mingw static libraries
                        for Windows. The thing is that I don&#39;t get
                        &quot;.lib&quot; in the SDK. Do you have any inform=
ation
                        about that?<br>
                      </div>
                    </div>
                  </div>
                </blockquote>
                <p>meta-mingw is primarily intended to build and SDK
                  that allows you to cross compile for a Linux target
                  from a Windows host, so including the static libraries
                  for the Windows portions doesn&#39;t really make sense. I
                  think there has been a little discussions about making
                  and SDK that cross compiles for Windows, but I don&#39;t
                  recall where that went.<br>
                </p>
                <p>Perhaps you can clarify what your use case is?<br>
                </p>
                <p><br>
                </p>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">
                    <div>
                      <div><br>
                      </div>
                      Thank you, I&#39;d appreciate your answer.<br>
                      <br>
                    </div>
                    <span>=E2=80=94</span>Edgar<br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </div>

</blockquote></div>
</blockquote></div>

--00000000000076178705a83c38d1--
