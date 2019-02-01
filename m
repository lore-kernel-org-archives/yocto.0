Return-Path: <yann.cardaillac@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 032EAE00C91; Fri,  1 Feb 2019 07:57:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81815E00BED
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 07:57:19 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id h50so5833844ede.5
	for <yocto@yoctoproject.org>; Fri, 01 Feb 2019 07:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smile-fr.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/TBabS2kFH08JopYVIcTwoQlMqi33Ot1yvIxparby/8=;
	b=pFWWJc6CSBvIaI5B6SnEdkgoT9U5oUlxkcrforq16BT5EPr12DT0Bwr+EcMQhBvnn1
	LUbsUIaFPi0x9jgk2IYq7bX7bhRNJSsV/hD4rfWdUeoIDYj/eN41pEU/qFgskPpgwKDV
	+rZ8SmcM4cLlKEsy+0m5+Q+6tVvH/hDdhUnAlLf+02qUuiq+iWSgiy2kezORDPgLL/FT
	rfTJ1cBbUwdsYCsEDLGbAxW4rP6L+zKzgrQ+mYDGjfrpJ9Xcc7utC7HI9uLXvOP7ZRpZ
	CE4+dYKFoFyQIATwJC7tiZsPkWE3zAo32s/u9vPXn5X2kjSaVTHJcyeE3qhjnIPRFW7F
	C5Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/TBabS2kFH08JopYVIcTwoQlMqi33Ot1yvIxparby/8=;
	b=MgmQiv6PyD7nGqSmRQ4AHlFhqZrDFSFAbeY3pLS0xg1fIaQFjEmAK6kzY5glzWmd46
	H+fOqB8mYEkyP9cLPP6NcLZ8x9nVcTm6gqR1oEVY0TGqqW0vBuJdCj2PerumT5I3U92r
	UP0e48H6HKE4BuLK9I/fUbN7VfhuY1xaeJ44MpOq9Zzy/vgTWeUdon8TjJea9CqRsJXa
	GhA7zQ4sqhSa1SjYHO+Forfltn7aZ/WrC30Kb/6M8YagQYvtAn4ryj/dYTznssyPGloQ
	BXuhoksWQb+B1WAzG7tJHOsEhLvadS+WcBplP6ByuB4Obb47tqQq3ayi2nPQZKNkoroE
	LtYw==
X-Gm-Message-State: AJcUukfD/8ldwaxIH0FUTvDBnWJ9zgf+V4gKLea0ClZbMVf6gzcWPkej
	dRbp1Of2n31pDxakQ7oL0SnTZ27A5ncmqtx4PiCimCXn0tM=
X-Google-Smtp-Source: ALg8bN4yZ+QHF79cv9hFtetvtRtJ1HRhwT0SNzjF8+nFhU9+904Iqc1F2wwltydw1tTniq6oADUV5hO44lg9zAw/5hA=
X-Received: by 2002:a50:b32f:: with SMTP id q44mr39663246edd.70.1549036638359; 
	Fri, 01 Feb 2019 07:57:18 -0800 (PST)
MIME-Version: 1.0
References: <CAGMdoF=M6dQkoveH9=P7gXSWJDWDqaO97DBDGi-Ru5tg9OZ1TA@mail.gmail.com>
In-Reply-To: <CAGMdoF=M6dQkoveH9=P7gXSWJDWDqaO97DBDGi-Ru5tg9OZ1TA@mail.gmail.com>
From: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Date: Fri, 1 Feb 2019 16:57:07 +0100
Message-ID: <CAA984JUDNsCw=kJHxJrwi5vh8Day=jJJ1A7+=hFHkqh44UHhgg@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Help with cleaning/rebuidling
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Feb 2019 15:57:21 -0000
Content-Type: multipart/alternative; boundary="00000000000092ed840580d7324b"

--00000000000092ed840580d7324b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ed,

I don't want to state the obvious but firstly did you check that you have
the stuff asked :


*CMake Error: The source directory "/mnt/drive/yocto/poky/build/t*
*mp/work/cortexa9-vfp-neon-poky**-linux-gnueabi/mosquitto/1.5.*
*5-r0/mosquitto-1.5.5" does not exist.*

If
/mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/m=
osquitto/1.5.5-r0/mosquitto-1.5.5
is not reachable then that's the issue.

Regards,

On Mon, Jan 28, 2019 at 6:19 PM Edward Wingate <edwingate8@gmail.com> wrote=
:

> The first time I did a build, my mosquitto recipe worked.  Then I did
> a 'bitbake -ccleanall mosquitto', and now when I do 'bitbake
> mosquitto', I get this error:
>
> DEBUG: Executing python function sysroot_cleansstate
> DEBUG: Python function sysroot_cleansstate finished
> DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
> 'common']
> DEBUG: Executing shell function autotools_preconfigure
> DEBUG: Shell function autotools_preconfigure finished
> DEBUG: Executing python function autotools_copy_aclocals
> DEBUG: Python function autotools_copy_aclocals finished
> DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
> 'common']
> DEBUG: Executing shell function do_configure
> CMake Error: The source directory
>
> "/mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueab=
i/mosquitto/1.5.5-r0/mosquitto-1.5.5"
> does not exist.
> Specify --help for usage, or press the help button on the CMake GUI.
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_configure (log file is located at
>
> /mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi=
/mosquitto/1.5.5-r0/temp/log.do_configure.37839)
>
> It seems like it doesn't fetch/unpack the source before do_configure.
> I tried to do 'bitbake -c fetch mosquitto' and 'bitbake -c unpack
> mosquitto', and they both say all tasks didn't need to be rerun. I
> forced it by adding '-f', but that didn't help either.
>
> I'm still using jethro and my mosquitto_1.5.5.bb recipe is this:
>
> =3D=3D=3D BEGIN RECIPE =3D=3D=3D
> SUMMARY =3D "MQTT 3.1 compliant library"
> HOMEPAGE =3D "https://mosquitto.org"
> MAINTAINER =3D "Robert Lehmann <robert.lehmann@sitec-systems.de>"
>
> LICENSE =3D "EPL-1.0"
> LIC_FILES_CHKSUM =3D
> "file://LICENSE.txt;md5=3D62ddc846179e908dc0c8efec4a42ef20"
>
> SRC_URI =3D "https://mosquitto.org/files/source/mosquitto-${PV}.tar.gz"
> SRC_URI[md5sum] =3D "a17dffc6f63b2a4ab2eb5c51139e60e9"
> SRC_URI[sha256sum] =3D
> "fcdb47e340864c545146681af7253399cc292e41775afd76400fda5b0d23d668"
>
> DEPENDS =3D "openssl"
> RDEPENDS_${PN} =3D "util-linux"
>
> inherit cmake
>
> # Specify any options you want to pass to cmake using EXTRA_OECMAKE:
> EXTRA_OECMAKE =3D " -DCMAKE_SKIP_RPATH=3DON "
> =3D=3D=3D END RECIPE =3D=3D=3D
>
> Can anyone help with this?
>
> Thanks,
> Ed
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


--=20
[image: SMILE] <http://www.smile.eu/>

20 rue des Jardins
92600 Asni=C3=A8res-sur-Seine
*Yann CARDAILLAC*
Ing=C3=A9nieur Linux Embarqu=C3=A9

[image: email] yann.cardaillac@smile.fr
[image: url] http://www.smile.eu

[image: Twitter] <https://twitter.com/GroupeSmile> [image: Facebook]
<https://www.facebook.com/smileopensource> [image: LinkedIn]
<https://www.linkedin.com/company/smile> [image: Github]
<https://github.com/Smile-SA>


[image: eco] Pour la plan=C3=A8te, n'imprimez ce mail que si c'est n=C3=A9c=
essaire

--00000000000092ed840580d7324b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ed, <br></div><div><br></div><div>I don&#39;t want=
 to state the obvious but firstly did you check that you have the stuff ask=
ed :</div><div><i><br></i></div><div><i>CMake Error: The source directory<b=
r>
&quot;<b>/mnt/drive/yocto/poky/build/t</b></i><b><i>mp/work/cortexa9-vfp-ne=
on-poky</i></b><b><i>-linux-gnueabi/mosquitto/1.5.</i></b><i><b>5-r0/mosqui=
tto-1.5.5</b>&quot;<br>
does not exist.</i></div><div><i><br></i></div><div>If /mnt/drive/yocto/pok=
y/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/mosquitto/1.5.5-r0/mo=
squitto-1.5.5 is not reachable then that&#39;s the issue.</div><div><br></d=
iv><div>Regards,<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, Jan 28, 2019 at 6:19 PM Edward Wingate &l=
t;<a href=3D"mailto:edwingate8@gmail.com">edwingate8@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">The first tim=
e I did a build, my mosquitto recipe worked.=C2=A0 Then I did<br>
a &#39;bitbake -ccleanall mosquitto&#39;, and now when I do &#39;bitbake<br=
>
mosquitto&#39;, I get this error:<br>
<br>
DEBUG: Executing python function sysroot_cleansstate<br>
DEBUG: Python function sysroot_cleansstate finished<br>
DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-comm=
on&#39;, &#39;arm-32&#39;,<br>
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,<br>
&#39;common&#39;]<br>
DEBUG: Executing shell function autotools_preconfigure<br>
DEBUG: Shell function autotools_preconfigure finished<br>
DEBUG: Executing python function autotools_copy_aclocals<br>
DEBUG: Python function autotools_copy_aclocals finished<br>
DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-comm=
on&#39;, &#39;arm-32&#39;,<br>
&#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;a=
rm-linux-gnueabi&#39;,<br>
&#39;common&#39;]<br>
DEBUG: Executing shell function do_configure<br>
CMake Error: The source directory<br>
&quot;/mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnu=
eabi/mosquitto/1.5.5-r0/mosquitto-1.5.5&quot;<br>
does not exist.<br>
Specify --help for usage, or press the help button on the CMake GUI.<br>
WARNING: exit code 1 from a shell command.<br>
ERROR: Function failed: do_configure (log file is located at<br>
/mnt/drive/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/m=
osquitto/1.5.5-r0/temp/log.do_configure.37839)<br>
<br>
It seems like it doesn&#39;t fetch/unpack the source before do_configure.<b=
r>
I tried to do &#39;bitbake -c fetch mosquitto&#39; and &#39;bitbake -c unpa=
ck<br>
mosquitto&#39;, and they both say all tasks didn&#39;t need to be rerun. I<=
br>
forced it by adding &#39;-f&#39;, but that didn&#39;t help either.<br>
<br>
I&#39;m still using jethro and my <a href=3D"http://mosquitto_1.5.5.bb" rel=
=3D"noreferrer" target=3D"_blank">mosquitto_1.5.5.bb</a> recipe is this:<br=
>
<br>
=3D=3D=3D BEGIN RECIPE =3D=3D=3D<br>
SUMMARY =3D &quot;MQTT 3.1 compliant library&quot;<br>
HOMEPAGE =3D &quot;<a href=3D"https://mosquitto.org" rel=3D"noreferrer" tar=
get=3D"_blank">https://mosquitto.org</a>&quot;<br>
MAINTAINER =3D &quot;Robert Lehmann &lt;<a href=3D"mailto:robert.lehmann@si=
tec-systems.de" target=3D"_blank">robert.lehmann@sitec-systems.de</a>&gt;&q=
uot;<br>
<br>
LICENSE =3D &quot;EPL-1.0&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3D62ddc846179e908dc0c8efe=
c4a42ef20&quot;<br>
<br>
SRC_URI =3D &quot;<a href=3D"https://mosquitto.org/files/source/mosquitto-$=
%7BPV%7D.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://mosquitto.org=
/files/source/mosquitto-${PV}.tar.gz</a>&quot;<br>
SRC_URI[md5sum] =3D &quot;a17dffc6f63b2a4ab2eb5c51139e60e9&quot;<br>
SRC_URI[sha256sum] =3D<br>
&quot;fcdb47e340864c545146681af7253399cc292e41775afd76400fda5b0d23d668&quot=
;<br>
<br>
DEPENDS =3D &quot;openssl&quot;<br>
RDEPENDS_${PN} =3D &quot;util-linux&quot;<br>
<br>
inherit cmake<br>
<br>
# Specify any options you want to pass to cmake using EXTRA_OECMAKE:<br>
EXTRA_OECMAKE =3D &quot; -DCMAKE_SKIP_RPATH=3DON &quot;<br>
=3D=3D=3D END RECIPE =3D=3D=3D<br>
<br>
Can anyone help with this?<br>
<br>
Thanks,<br>
Ed<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr">

                    <div style=3D"display:block"><div>
   =20
    <font face=3D"Raleway, regular">
    <table style=3D"padding:20px" border=3D"0">
        <tbody>
        <tr>
            <td style=3D"font-size:13px;color:rgb(255,128,84);text-align:ce=
nter;padding-right:30px">
                <a href=3D"http://www.smile.eu/" target=3D"_blank">
                    <img style=3D"max-width: 100%; height: auto;" src=3D"ht=
tp://ftp.smile.fr/client/Communication/signature/img/Logo-new.png" alt=3D"S=
MILE">
                </a><br><br>
                    <p>20 rue des Jardins<br>
92600 Asni=C3=A8res-sur-Seine</p>
            </td>
            <td style=3D"border-left:1px solid rgb(59,127,254);padding-left=
:20px;font-size:13px;color:rgb(255,128,84)">
                <div style=3D"color:rgb(255,128,84);font-size:14px">
                    <b>Yann CARDAILLAC</b>
                </div>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    Ing=C3=A9nieur Linux Embarqu=C3=A9<br>
                   =20
                </div><br>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    <span style=3D"white-space:nowrap"><img style=3D"margin=
-right: 5px;" src=3D"http://ftp.smile.fr/client/Communication/signature/img=
/mail.png" alt=3D"email" width=3D"12" height=3D"10">
                        <a href=3D"mailto:yann.cardaillac@smile.fr" style=
=3D"color:rgb(59,127,254);font-size:13px;text-decoration:none" target=3D"_b=
lank">yann.cardaillac@smile.fr</a>
                    </span>
                     <br>
                                                    <span style=3D"white-sp=
ace:nowrap"><img style=3D"margin-right: 5px;" src=3D"http://ftp.smile.fr/cl=
ient/Communication/signature/img/web.png" alt=3D"url" width=3D"12" height=
=3D"12">
<a href=3D"http://www.smile.eu" style=3D"color:rgb(59,127,254);font-size:13=
px;text-decoration:none" target=3D"_blank">http://www.smile.eu</a> =20
                  </span>
                                </div>

                <br>
                <div>
                    <span><a style=3D"margin-right:5px" href=3D"https://twi=
tter.com/GroupeSmile" target=3D"_blank"><img src=3D"http://ftp.smile.fr/cli=
ent/Communication/signature/img/rs-twitter.png" alt=3D"Twitter" style=3D"ma=
x-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.facebook.com/smileopensource" target=3D"_blank"><img src=3D"http://ftp.smi=
le.fr/client/Communication/signature/img/rs-facebook.png" alt=3D"Facebook" =
style=3D"max-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.linkedin.com/company/smile" target=3D"_blank"><img src=3D"http://ftp.smile=
.fr/client/Communication/signature/img/rs-linkedin.png" alt=3D"LinkedIn" st=
yle=3D"max-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://git=
hub.com/Smile-SA" target=3D"_blank"><img src=3D"http://ftp.smile.fr/client/=
Communication/signature/img/rs-github.png" alt=3D"Github" style=3D"max-widt=
h: 100%; height: auto;"></a></span>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
    <br>
   =20
    <br>
    <div style=3D"color:rgb(163,172,181);font-size:10px">
        <img src=3D"http://ftp.smile.fr/client/Communication/signature/img/=
eco.png" alt=3D"eco" width=3D"13" height=3D"11">
            Pour la plan=C3=A8te, n&#39;imprimez ce mail que si c&#39;est n=
=C3=A9cessaire
    </div>
    </font>
</div></div></div></div>

--00000000000092ed840580d7324b--
