Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BF7AC54E67
	for <webhook@archiver.kernel.org>; Thu, 28 Mar 2024 08:10:37 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.10549.1711613436023143676
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Mar 2024 01:10:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Nm83UVzv;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-515caffe2b5so136733e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 28 Mar 2024 01:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711613434; x=1712218234; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/eoylj1QI2C1bsP1C7cUMEIN54wuMXBwaWs/vH2ZkQo=;
        b=Nm83UVzvMXtbJNMfEuXRjoMS1Rfkh4RvNZ8NWsgPaxhzWN2hZijNTTDuRxb+m30zKy
         JQ9omsW/dj/M8Ai1Xf/oKfFqysdJmDJ/Bu/IWYJCfIjiIhUBlRjmtJ5Zoi7XvKZUWrEy
         JyvdTEZHHQOS0Bh97rjl1BC7uQLyFpJN/zdJlEVA0TV3seEkPnLmb00drTuAvagX48eG
         kWN03bbF+27KZKSCrUI/+Nw/IDs0LqmeJozYiGZkCerNqozTRVb6/Hfjf+cRINlZY5/B
         JxYsJHfyk6T632Ac4FHP0Zj0yt++lBIs/AfSvMdasVvnASgBsT0UdBdk3GYbenq9h4I7
         +4Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711613434; x=1712218234;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/eoylj1QI2C1bsP1C7cUMEIN54wuMXBwaWs/vH2ZkQo=;
        b=Mkn2/zDbUNJzFumo5yZ6eTv7Y6tgFZb1tDLb+OqmzTkwFRMCBmrpd3SAjX+ZJz3VVW
         npK9gbWa1YgFjO2oc4HWEW5kVF2mjuNpaozRTF20TJKdcMpR2A08cCxj59jq5ebeef3Y
         MabMcD3vAW53/Avw2x56fdnJw4EKCnNAIOgyRdOyHVzs5c+5sQCLVQFYvK2jaxkBc+b1
         S+epHRvREgOlm5+DYnaLqnQxOT/squzk+Sge4NLGgeugiKp9gFlKfHEx1b/P9Zh5shFB
         szlh4GbW16nSKkL8tHwjH6/ENLQl0QHoFF/JNx+vsES0Fmt+tECrwx9iM4IEczk8OpiN
         kVjw==
X-Gm-Message-State: AOJu0Ywmu3nhkFGAOaeiCCPf9lj12ccJLjOVPbp75juqsfLEX4/qjPeo
	5ocQxCSdGfdu+n5CuOar+HruqiYrHXvNfYUJDi7yQLjd2DFj8WZcrtlQeDTZUoUD2zZslHji+TF
	NZhNE5kwPBV4Vf8cfEN5CuKrv9dM=
X-Google-Smtp-Source: AGHT+IGRfuVno+gcekw8tms23XYAecxGP+XI7AAAIP0B/s2w82C/WwEgEoH+NkUfBDreziKicgGLBuC47gqeuAyYYZg=
X-Received: by 2002:a19:7609:0:b0:515:ab7b:fc23 with SMTP id
 c9-20020a197609000000b00515ab7bfc23mr1257416lff.34.1711613433476; Thu, 28 Mar
 2024 01:10:33 -0700 (PDT)
MIME-Version: 1.0
References: <m2J0.1711006186858455727.l7Zd@lists.yoctoproject.org>
 <CANNYZj9LmNwaSWh9d+fDgAqJpjdmazBEH5chfc+32eBrb82yoA@mail.gmail.com>
 <CAKjBKDNWqKq=P6CdWKd6WAivMZyzH9sco9B9=jq68gZ+S56o+g@mail.gmail.com>
 <CAKjBKDNiKYPTdaoafx3e63_S5PvNJSZUyX4KVGFx5e3tvYcbyw@mail.gmail.com>
 <CANNYZj9qjjs4d+FDkYh+Q7oy0FoAQaiUQt4iiukUud56JcTPUA@mail.gmail.com>
 <CAKjBKDM_jmLX5MpReLxd0rTCom36vYhRhO9ZL_vH09vhMrrYJA@mail.gmail.com>
 <CANNYZj-tgkoAdM+fecrAg+kPB2D+Gvu3Jny+=QnT_3u7gU2WWw@mail.gmail.com>
 <CAKjBKDMBTcZJ0G37RghMxG96gibd9BzHoaLuNXDGAOHsX7K-EA@mail.gmail.com>
 <CANNYZj86MQiKU=QS2OL7DTJroFcrdkog3Xk+oVG7BsArjti-bA@mail.gmail.com>
 <CAKjBKDM3T+jRTsbg_ooHzSBxc7RLw8jAFEmCsd0QVTuShFErcA@mail.gmail.com>
 <CANNYZj_8UAixvSnPxXbfsbm+ZyaJqiXbVR5Gt852S5F_f_ctHA@mail.gmail.com>
 <CAKjBKDPygA8cERT441_KbWBe=ChVOzx4qPDGuAZ2qB0+_o2fzA@mail.gmail.com> <CAKjBKDNTafOsG477LyhSCh2AQFEoZKE2WQtSaPnLvvY5fH+gkQ@mail.gmail.com>
In-Reply-To: <CAKjBKDNTafOsG477LyhSCh2AQFEoZKE2WQtSaPnLvvY5fH+gkQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 28 Mar 2024 09:10:22 +0100
Message-ID: <CANNYZj-w8hkAsnXi80aGuo5vZu_0sCtKzhtYP-He4XveMzt8jA@mail.gmail.com>
Subject: Re: [yocto] Export python packages installed using pypi to target
To: Ashu Joshi <ashujoshi35@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/related; boundary="000000000000b21bfd0614b40e33"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Mar 2024 08:10:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62854

--000000000000b21bfd0614b40e33
Content-Type: multipart/alternative; boundary="000000000000b21bfc0614b40e32"

--000000000000b21bfc0614b40e32
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think you have to get an expert to boot your system and look at it
directly. If we can=E2=80=99t reproduce the issue, it=E2=80=99s just too mu=
ch effort to
exchange emails for no reward at all other than thanks. It=E2=80=99s open s=
ource,
that=E2=80=99s how it works.

Alex

On Thu 28. Mar 2024 at 8.36, Ashu Joshi <ashujoshi35@gmail.com> wrote:

> Does anyone knows aby other way how to resolve this python related issue?
> I even tried to export path in local.conf file but even that is not worki=
ng.
> Also tried to create soft link for /lib pointing to /usr/lib but it gives
> permission denied error. When trying with sudo there is LD_PRELOAD relate=
d
> error.
>
> On Sun, 24 Mar 2024, 8:53 am Ashu Joshi, <ashujoshi35@gmail.com> wrote:
>
>> I am not able to figure out.. Is there any way we can override the
>> location where application looks for python may be in recipe file or som=
e
>> setting, conf file?
>>
>>
>>
>> On Fri, 22 Mar 2024, 8:24 pm Alexander Kanavin, <alex.kanavin@gmail.com>
>> wrote:
>>
>>> Do you have something odd in the shell environment that prevents python
>>> from looking in the right location?
>>>
>>> Alex
>>>
>>> On Fri 22. Mar 2024 at 9.11, Ashu Joshi <ashujoshi35@gmail.com> wrote:
>>>
>>>> But I can see python3.8 present in usr/lib and if I go in that
>>>> directory, I can see encodings as well.. see below output in target's
>>>> terminal.
>>>>
>>>> /usr/lib/python3.8 $
>>>> /usr/lib/python3.8 $ find -iname "encodings"
>>>> ./encodings
>>>>
>>>>
>>>> On Fri, Mar 22, 2024 at 1:29=E2=80=AFPM Alexander Kanavin <
>>>> alex.kanavin@gmail.com> wrote:
>>>>
>>>>> This means the python installation on the target is incomplete/broken=
.
>>>>> You need to look into how the image was formed because encodings modu=
le is
>>>>> included in the core python package and is normally always present.
>>>>>
>>>>> Alex
>>>>>
>>>>> On Fri 22. Mar 2024 at 8.38, Ashu Joshi <ashujoshi35@gmail.com> wrote=
:
>>>>>
>>>>>> How do i start python3 because when i try to start python by writing
>>>>>> python3 in target's terminal, i get above error message related to
>>>>>> encodings.
>>>>>>
>>>>>> On Fri, Mar 22, 2024 at 11:48=E2=80=AFAM Alexander Kanavin <
>>>>>> alex.kanavin@gmail.com> wrote:
>>>>>>
>>>>>>> You need to first start python3 and run it there, not directly from
>>>>>>> the shell.
>>>>>>>
>>>>>>> Alex
>>>>>>>
>>>>>>> On Fri, 22 Mar 2024 at 07:00, Ashu Joshi <ashujoshi35@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> It doesn't allow me to run import encodings as it is giving anothe=
r
>>>>>>>> error import:not found
>>>>>>>>
>>>>>>>> On Thu, Mar 21, 2024 at 7:53=E2=80=AFPM Alexander Kanavin <
>>>>>>>> alex.kanavin@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> It's a little odd that the application is looking for python
>>>>>>>>> modules in /lib and not /usr/lib.
>>>>>>>>>
>>>>>>>>> If you run python3 on the target and issue 'import encodings',
>>>>>>>>> does that work? Then they are installed in /usr/lib, and you need=
 to find
>>>>>>>>> out why the app redirects python to look elsewhere.
>>>>>>>>>
>>>>>>>>> Alex
>>>>>>>>>
>>>>>>>>> On Thu, 21 Mar 2024 at 14:36, Ashu Joshi <ashujoshi35@gmail.com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> It seems I have been able to install the package in gateway but
>>>>>>>>>> getting some encoding related error. Below is the error:
>>>>>>>>>>
>>>>>>>>>> ~ $ wm-gw --help
>>>>>>>>>> Python path configuration:
>>>>>>>>>>   PYTHONHOME =3D '/'
>>>>>>>>>>   PYTHONPATH =3D (not set)
>>>>>>>>>>   program name =3D 'python3'
>>>>>>>>>>   isolated =3D 0
>>>>>>>>>>   environment =3D 1
>>>>>>>>>>   user site =3D 1
>>>>>>>>>>   import site =3D 1
>>>>>>>>>>   sys._base_executable =3D '/usr/bin/python3'
>>>>>>>>>>   sys.base_prefix =3D '/'
>>>>>>>>>>   sys.base_exec_prefix =3D '/'
>>>>>>>>>>   sys.executable =3D '/usr/bin/python3'
>>>>>>>>>>   sys.prefix =3D '/'
>>>>>>>>>>   sys.exec_prefix =3D '/'
>>>>>>>>>>   sys.path =3D [
>>>>>>>>>>     'lib/python38.zip',
>>>>>>>>>>     '/lib/python3.8',
>>>>>>>>>>     '/lib/python3.8/lib-dynload',
>>>>>>>>>>   ]
>>>>>>>>>> Fatal Python error: init_fs_encoding: failed to get the Python
>>>>>>>>>> codec of the file
>>>>>>>>>>                                                   system encodin=
g
>>>>>>>>>> Python runtime state: core initialized
>>>>>>>>>> ModuleNotFoundError: No module named 'encodings'
>>>>>>>>>>
>>>>>>>>>> I even tried to unset PYTHONHOME and  PYTHONPATH  by adding belo=
w
>>>>>>>>>> in the recipe file but still encountering the same error. Any id=
ea how to
>>>>>>>>>> fix this?
>>>>>>>>>>
>>>>>>>>>> do_configure(){
>>>>>>>>>>     unset PYTHONPATH
>>>>>>>>>>     unset PYTHONHOME
>>>>>>>>>> }
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On Thu, Mar 21, 2024 at 3:13=E2=80=AFPM Ashu Joshi <ashujoshi35@=
gmail.com>
>>>>>>>>>> wrote:
>>>>>>>>>>
>>>>>>>>>>> Entire recipe is:
>>>>>>>>>>>
>>>>>>>>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>>>>>>>>>>> DESCRIPTION =3D "Wirepas gateway transport service that connect=
s
>>>>>>>>>>> the local dbus to a remote MQTT broker"
>>>>>>>>>>> LICENSE =3D "Apache-2.0"
>>>>>>>>>>> LIC_FILES_CHKSUM =3D
>>>>>>>>>>> "file://LICENSE;md5=3Dcb6bb17b0d0cca188339074207e9f4d8"
>>>>>>>>>>>
>>>>>>>>>>> SRC_URI =3D "file://wirepasTransport.service \
>>>>>>>>>>>            file://settings.yml \
>>>>>>>>>>> "
>>>>>>>>>>>
>>>>>>>>>>> PYPI_PACKAGE =3D "wirepas_gateway"
>>>>>>>>>>> PV =3D "1.4.3"
>>>>>>>>>>> inherit pypi pkgconfig setuptools3
>>>>>>>>>>>
>>>>>>>>>>> SRC_URI[md5sum] =3D "941a4407513445c64f16b57a1474fc43"
>>>>>>>>>>>
>>>>>>>>>>> DEPENDS +=3D "systemd python3 python3-pkgconfig-native python3-=
pip"
>>>>>>>>>>>
>>>>>>>>>>> SYSTEMD_SERVICE_${PN} =3D "wirepasTransport.service"
>>>>>>>>>>> SYSTEMD_AUTO_ENABLE_${PN} =3D "enable"
>>>>>>>>>>>
>>>>>>>>>>> do_install() {
>>>>>>>>>>>       install -m 0755 -d ${D}${sysconfdir}/systemd/system
>>>>>>>>>>>       install -m 0755 ${WORKDIR}/wirepasTransport.service
>>>>>>>>>>> ${D}${sysconfdir}/systemd/system
>>>>>>>>>>>
>>>>>>>>>>>       install -m 0755 -d ${D}/usr/share
>>>>>>>>>>>       install -m 0644 ${WORKDIR}/settings.yml ${D}/usr/share
>>>>>>>>>>>
>>>>>>>>>>> #      install -m 0755 -d ${D}/usr/share/wirepas_gateway
>>>>>>>>>>> #      install -m 0644 ${WORKDIR}/wirepas_gateway-1.4.3
>>>>>>>>>>> ${D}/usr/share/wirepas_gateway
>>>>>>>>>>> }
>>>>>>>>>>>
>>>>>>>>>>> FILES_${PN} +=3D "usr/share/wirepas_gateway"
>>>>>>>>>>> #FILES_${PN} +=3D
>>>>>>>>>>> "/usr/share/wirepas_gateway/wirepas_gateway-1.4.3"
>>>>>>>>>>> FILES_${PN} +=3D
>>>>>>>>>>> "${sysconfdir}/systemd/system/wirepasTransport.service"
>>>>>>>>>>> FILES_${PN} +=3D "/usr/share/settings.yml"
>>>>>>>>>>>
>>>>>>>>>>> Error was basically because of commented code wherein I was
>>>>>>>>>>> trying to export the entire directory. I have commented out tha=
t for now..
>>>>>>>>>>> I found that by creating rpm or opkg package we can export the =
package to
>>>>>>>>>>> target. Need help around that, if that is the correct way and h=
ow to use
>>>>>>>>>>> this method in yocto recipe. If not, what can be the other way =
using which
>>>>>>>>>>> we can ship or install the package in target.
>>>>>>>>>>>
>>>>>>>>>>> On Thu, Mar 21, 2024 at 1:26=E2=80=AFPM Alexander Kanavin <
>>>>>>>>>>> alex.kanavin@gmail.com> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Please share your complete recipe and all of the error message=
,
>>>>>>>>>>>> otherwise it=E2=80=99s impossible to tell what is happening.
>>>>>>>>>>>>
>>>>>>>>>>>> Alex
>>>>>>>>>>>>
>>>>>>>>>>>> On Thu 21. Mar 2024 at 8.29, Ashu Joshi <ashujoshi35@gmail.com=
>
>>>>>>>>>>>> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>>> Hello,
>>>>>>>>>>>>> I am trying to install wirpas_gateway package from pypi using
>>>>>>>>>>>>> yocto recipe.. Once service is build completely and  I flash =
image to
>>>>>>>>>>>>> target, i don't see any of the installed packages. Does anyon=
e has nay
>>>>>>>>>>>>> reference how to install these packages in target as well. I =
dont see any
>>>>>>>>>>>>> generated binary which i can ship tp target. However, source =
code of the
>>>>>>>>>>>>> package can be seen in work directory. Currently I am trying =
to do
>>>>>>>>>>>>> something like below:
>>>>>>>>>>>>>
>>>>>>>>>>>>> do_install() {
>>>>>>>>>>>>>       install -m 0755 -d ${D}${sysconfdir}/systemd/system
>>>>>>>>>>>>>       install -m 0755 ${WORKDIR}/wirepasTransport.service
>>>>>>>>>>>>> ${D}${sysconfdir}/systemd/system
>>>>>>>>>>>>>
>>>>>>>>>>>>>       install -m 0755 -d ${D}/usr/share
>>>>>>>>>>>>>       install -m 0644 ${WORKDIR}/settings.yml ${D}/usr/share
>>>>>>>>>>>>>
>>>>>>>>>>>>>       install -m 0755 -d ${D}/usr/share/wirepas_gateway
>>>>>>>>>>>>>       install -m 0644 ${WORKDIR}/wirepas_gateway-1.4.3
>>>>>>>>>>>>> ${D}/usr/share/wirepas_gateway
>>>>>>>>>>>>> }
>>>>>>>>>>>>>
>>>>>>>>>>>>> FILES_${PN} +=3D "usr/share/wirepas_gateway"
>>>>>>>>>>>>> FILES_${PN} +=3D
>>>>>>>>>>>>> "/usr/share/wirepas_gateway/wirepas_gateway-1.4.3"
>>>>>>>>>>>>> FILES_${PN} +=3D
>>>>>>>>>>>>> "${sysconfdir}/systemd/system/wirepasTransport.service"
>>>>>>>>>>>>> FILES_${PN} +=3D "/usr/share/settings.yml"
>>>>>>>>>>>>>
>>>>>>>>>>>>> wirepas_gateway-1.4.3 is directory which contains setup and
>>>>>>>>>>>>> other files. Getting error while trying to ship this to targe=
t.
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>>>>>>>>>> Links: You receive all messages sent to this group.
>>>>>>>>>>>>> View/Reply Online (#62809):
>>>>>>>>>>>>> https://lists.yoctoproject.org/g/yocto/message/62809
>>>>>>>>>>>>> Mute This Topic:
>>>>>>>>>>>>> https://lists.yoctoproject.org/mt/105061124/1686489
>>>>>>>>>>>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>>>>>>>>>>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>>>>>>>>>>>> alex.kanavin@gmail.com]
>>>>>>>>>>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>>>>>>>>>>
>>>>>>>>>>>>>

--000000000000b21bfc0614b40e32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I think you have to get an expert to boot your system and=
 look at it directly. If we can=E2=80=99t reproduce the issue, it=E2=80=99s=
 just too much effort to exchange emails for no reward at all other than th=
anks. It=E2=80=99s open source, that=E2=80=99s how it works.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu 28. Mar 2024 at 8.36,=
 Ashu Joshi &lt;<a href=3D"mailto:ashujoshi35@gmail.com">ashujoshi35@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-=
left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"auto">Does anyone =
knows aby other way how to resolve=C2=A0this python related=C2=A0issue? I e=
ven tried to export path in local.conf file but even that is not=C2=A0worki=
ng.<div dir=3D"auto">Also tried to create soft link for /lib pointing to /u=
sr/lib but it gives permission denied error. When trying with sudo there is=
 LD_PRELOAD related error.</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Sun, 24 Mar 2024, 8:53 am Ashu Joshi, &l=
t;<a href=3D"mailto:ashujoshi35@gmail.com" target=3D"_blank">ashujoshi35@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padd=
ing-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"auto"><div>I a=
m not able to figure out.. Is there any way we can override the location wh=
ere application looks for python may be in recipe file or some setting, con=
f file?<div dir=3D"auto"><br></div><br><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, 22 Mar 2024, 8:24 pm Alexander Kan=
avin, &lt;<a href=3D"mailto:alex.kanavin@gmail.com" rel=3D"noreferrer" targ=
et=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204=
)"><div dir=3D"auto">Do you have something odd in the shell environment tha=
t prevents python from looking in the right location?</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri 22. Mar 2024 at 9.11, Ashu Jo=
shi &lt;<a href=3D"mailto:ashujoshi35@gmail.com" rel=3D"noreferrer noreferr=
er" target=3D"_blank">ashujoshi35@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wi=
dth:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,=
204,204)"><div dir=3D"ltr">But I can see python3.8 present in usr/lib and i=
f I go in that directory, I can see encodings as well.. see below output=C2=
=A0in target&#39;s terminal.<div><br></div><div>/usr/lib/python3.8 $<br>/us=
r/lib/python3.8 $ find -iname &quot;encodings&quot;<br>./encodings<br><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Mar 22, 2024 at 1:29=E2=80=AFPM Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" rel=3D"noreferrer noreferrer" target=3D"=
_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;borde=
r-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><di=
v dir=3D"auto">This means the python installation on the target is incomple=
te/broken. You need to look into how the image was formed because encodings=
 module is included in the core python package and is normally always prese=
nt.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri 22. =
Mar 2024 at 8.38, Ashu Joshi &lt;<a href=3D"mailto:ashujoshi35@gmail.com" r=
el=3D"noreferrer noreferrer" target=3D"_blank">ashujoshi35@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;b=
order-left-color:rgb(204,204,204)"><div dir=3D"ltr">How do i start python3 =
because when i try to start python by writing python3 in target&#39;s termi=
nal, i get above error message related to encodings.</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 22, 2024 at=
 11:48=E2=80=AFAM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">alex.kanavin@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-l=
eft:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr"><div>You need =
to first start python3 and run it there, not directly from the shell.</div>=
<div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, 22 Mar 2024 at 07:00, Ashu Joshi =
&lt;<a href=3D"mailto:ashujoshi35@gmail.com" rel=3D"noreferrer noreferrer" =
target=3D"_blank">ashujoshi35@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,=
204)"><div dir=3D"ltr">It doesn&#39;t allow me to run import encodings as i=
t is giving another error import:not found<br></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 21, 2024 at 7:53=
=E2=80=AFPM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">alex.kanavin@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1e=
x;border-left-color:rgb(204,204,204)"><div dir=3D"ltr"><div>It&#39;s a litt=
le odd that the application is looking for python modules in /lib and not /=
usr/lib.</div><div><br></div><div>If you run python3 on the target and issu=
e &#39;import encodings&#39;, does that work? Then they are installed in /u=
sr/lib, and you need to find out why the app redirects python to look elsew=
here.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Mar 2024 at 14:36, =
Ashu Joshi &lt;<a href=3D"mailto:ashujoshi35@gmail.com" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">ashujoshi35@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:r=
gb(204,204,204)"><div dir=3D"ltr">It seems I have been able to install the =
package in gateway but getting some encoding related error. Below is the er=
ror:<div><br></div><div>~ $ wm-gw --help<br>Python path configuration:<br>=
=C2=A0 PYTHONHOME =3D &#39;/&#39;<br>=C2=A0 PYTHONPATH =3D (not set)<br>=C2=
=A0 program name =3D &#39;python3&#39;<br>=C2=A0 isolated =3D 0<br>=C2=A0 e=
nvironment =3D 1<br>=C2=A0 user site =3D 1<br>=C2=A0 import site =3D 1<br>=
=C2=A0 sys._base_executable =3D &#39;/usr/bin/python3&#39;<br>=C2=A0 sys.ba=
se_prefix =3D &#39;/&#39;<br>=C2=A0 sys.base_exec_prefix =3D &#39;/&#39;<br=
>=C2=A0 sys.executable =3D &#39;/usr/bin/python3&#39;<br>=C2=A0 sys.prefix =
=3D &#39;/&#39;<br>=C2=A0 sys.exec_prefix =3D &#39;/&#39;<br>=C2=A0 sys.pat=
h =3D [<br>=C2=A0 =C2=A0 &#39;lib/python38.zip&#39;,<br>=C2=A0 =C2=A0 &#39;=
/lib/python3.8&#39;,<br>=C2=A0 =C2=A0 &#39;/lib/python3.8/lib-dynload&#39;,=
<br>=C2=A0 ]<br>Fatal Python error: init_fs_encoding: failed to get the Pyt=
hon codec of the file =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 system encoding<br>Python runtime state: co=
re initialized<br>ModuleNotFoundError: No module named &#39;encodings&#39;<=
br></div><div><br></div><div>I even tried=C2=A0to unset PYTHONHOME and=C2=
=A0

PYTHONPATH=C2=A0 by adding below in the recipe file but still encountering =
the same error. Any idea how to fix this?</div><div><br></div><div>do_confi=
gure(){<br>=C2=A0 =C2=A0 unset PYTHONPATH<br>=C2=A0 =C2=A0 unset PYTHONHOME=
<br>}<br></div></div><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 21, 2024 at 3:13=E2=
=80=AFPM Ashu Joshi &lt;<a href=3D"mailto:ashujoshi35@gmail.com" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">ashujoshi35@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-lef=
t-color:rgb(204,204,204)"><div dir=3D"ltr">Entire recipe is:<div><br></div>=
<div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>DESCRIPT=
ION =3D &quot;Wirepas gateway transport service that connects the local dbu=
s to a remote MQTT broker&quot;<br>LICENSE =3D &quot;Apache-2.0&quot;<br>LI=
C_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dcb6bb17b0d0cca188339074207e9f=
4d8&quot;<br><br>SRC_URI =3D &quot;file://wirepasTransport.service \<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://settings.yml \<br>&quot;<br><b=
r>PYPI_PACKAGE =3D &quot;wirepas_gateway&quot;<br>PV =3D &quot;1.4.3&quot;<=
br>inherit pypi pkgconfig setuptools3<br><br>SRC_URI[md5sum] =3D &quot;941a=
4407513445c64f16b57a1474fc43&quot;<br><br>DEPENDS +=3D &quot;systemd python=
3 python3-pkgconfig-native python3-pip&quot;<br><br>SYSTEMD_SERVICE_${PN} =
=3D &quot;wirepasTransport.service&quot;<br>SYSTEMD_AUTO_ENABLE_${PN} =3D &=
quot;enable&quot; <br><br>do_install() {<br>=C2=A0 =C2=A0 =C2=A0 install -m=
 0755 -d ${D}${sysconfdir}/systemd/system <br>=C2=A0 =C2=A0 =C2=A0 install =
-m 0755 ${WORKDIR}/wirepasTransport.service ${D}${sysconfdir}/systemd/syste=
m<br>=C2=A0 =C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 =C2=A0 install -m 0755 -d ${D}/=
usr/share<br>=C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/settings.yml $=
{D}/usr/share<br>=C2=A0 =C2=A0 =C2=A0 <br># =C2=A0 =C2=A0 =C2=A0install -m =
0755 -d ${D}/usr/share/wirepas_gateway<br># =C2=A0 =C2=A0 =C2=A0install -m =
0644 ${WORKDIR}/wirepas_gateway-1.4.3 ${D}/usr/share/wirepas_gateway<br>}<b=
r><br>FILES_${PN} +=3D &quot;usr/share/wirepas_gateway&quot;<br>#FILES_${PN=
} +=3D &quot;/usr/share/wirepas_gateway/wirepas_gateway-1.4.3&quot;<br>FILE=
S_${PN} +=3D &quot;${sysconfdir}/systemd/system/wirepasTransport.service&qu=
ot;<br>FILES_${PN} +=3D &quot;/usr/share/settings.yml&quot;<br></div><div><=
br></div><div>Error was basically because of commented code wherein I was t=
rying to export the entire directory. I have commented out that for now.. I=
 found that by creating rpm or opkg package we can export the package to ta=
rget. Need help around that, if that is the correct way and how to use this=
 method in yocto recipe. If not, what can be the other way using which we c=
an ship or install the package in target.</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 21, 2024 at 1:26=
=E2=80=AFPM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">alex.kanavin@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1e=
x;border-left-color:rgb(204,204,204)"><div dir=3D"auto">Please share your c=
omplete recipe and all of the error message, otherwise it=E2=80=99s impossi=
ble to tell what is happening.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu 21. Mar 2024 at 8.29, Ashu Joshi &lt;<a href=3D"mail=
to:ashujoshi35@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">a=
shujoshi35@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-sty=
le:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div>Hello,<b=
r>I am trying to install wirpas_gateway package from pypi using yocto recip=
e.. Once service is build completely and=C2=A0 I flash image to target, i d=
on&#39;t see any of the installed packages. Does anyone has nay reference h=
ow to install these packages in target as well. I dont see any generated bi=
nary which i can ship tp target. However, source code of the package can be=
 seen in work directory. Currently I am trying to do something like below:<=
br><br>
<div>do_install() {</div>
<div>=C2=A0 =C2=A0 =C2=A0 install -m 0755 -d ${D}${sysconfdir}/systemd/syst=
em=C2=A0</div>
<div>=C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/wirepasTransport.servi=
ce ${D}${sysconfdir}/systemd/system</div>
<div>=C2=A0 =C2=A0 =C2=A0=C2=A0</div>
<div>=C2=A0 =C2=A0 =C2=A0 install -m 0755 -d ${D}/usr/share</div>
<div>=C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/settings.yml ${D}/usr/=
share</div>
<div>=C2=A0 =C2=A0 =C2=A0=C2=A0</div>
<div>=C2=A0 =C2=A0 =C2=A0 install -m 0755 -d ${D}/usr/share/wirepas_gateway=
</div>
<div>=C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/wirepas_gateway-1.4.3 =
${D}/usr/share/wirepas_gateway</div>
<div>}</div>
<div>=C2=A0</div>
<div>FILES_${PN} +=3D &quot;usr/share/wirepas_gateway&quot;</div>
<div>FILES_${PN} +=3D &quot;/usr/share/wirepas_gateway/wirepas_gateway-1.4.=
3&quot;</div>
<div>FILES_${PN} +=3D &quot;${sysconfdir}/systemd/system/wirepasTransport.s=
ervice&quot;</div>
<div>FILES_${PN} +=3D &quot;/usr/share/settings.yml&quot;<br><br>wirepas_ga=
teway-1.4.3 is directory which contains setup and other files. Getting erro=
r while trying to ship this to target.<br><br><img src=3D"cid:attach_0_17BE=
B70FC8D110C2_26480@groups.io" alt=3D"" style=3D"width:812px;max-width:100%"=
></div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62809): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62809" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank=
">https://lists.yoctoproject.org/g/yocto/message/62809</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105061124/168=
6489" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/mt/105061124/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" rel=3D=
"noreferrer noreferrer" target=3D"_blank">yocto+owner@lists.yoctoproject.or=
g</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.yocto=
project.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">alex.kanavin@gmail.com</a>]<b=
r>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div></div></div>
</blockquote></div>
</blockquote></div></div>

--000000000000b21bfc0614b40e32--

--000000000000b21bfd0614b40e33
Content-Type: image/png; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64
Content-ID: <attach_0_17BEB70FC8D110C2_26480@groups.io>
X-Attachment-Id: attach_0_17BEB70FC8D110C2_26480@groups.io

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
--000000000000b21bfd0614b40e33--

