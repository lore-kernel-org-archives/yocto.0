Return-Path: <elcapitanbrown@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DE9EE00C6A; Fri, 14 Jun 2019 12:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (elcapitanbrown[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C265E00A93
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 12:10:50 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id a15so3407678wmj.5
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 12:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6MP0EWOSzqnUcXq3b56mRmyCln7nlnIsMdilmMHIRRM=;
	b=HbqXdbvUibtpkvGyPvfj5f7/OUR6CBhVc9G7nPKiTJJW388KDBru8d33hoogIq74Yj
	2Trb8i2x418lnYmk21zbsriWmb/1N6X62xU0ICisg/4/Hj6cHDEsZteLY976G1yBOojZ
	ym0V3yYFkWMMudrvw9nissFCyPOEj2EwFUY9gUkh5dKRn5ypIF5LUJ1c73ZJ/7NK0MVu
	yQ5nha1f8gEXQmqHPvD0FuNtyX26nASCXdKLL2Kx4aULfgRwN+TBNHH6oZ2aL0MmHeF0
	OdP//m4Bgk3PaFo+/bUnvFBpGtj/qhjfM2c4WTW1ELc5hWJR/GiNwolVUD0NRyyhz7Rs
	zfrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6MP0EWOSzqnUcXq3b56mRmyCln7nlnIsMdilmMHIRRM=;
	b=OxFU5FuxwetHC90OzGOh/iLKqcL9lFd1Gi6ddKCvv6dX1qdOnVQUHSDuzW07rb4yuE
	+ODsRW9XebkDdTsG84ezbf50xqUYdNwfRjJ3RTxhHtiiWp4xsdVnR66u+UXX/tmC1jN9
	tYNnGptu9WVTCkuEzrhrkrvQML0Pb+fc8sW4HtDBqF0hbutnyMUV7jAcyX83qk/X7A74
	wFUqrKndb3Ja+8/VQ+yT5Frlud4gbD8viM4dyVnNzB3sd/T6VNSIg49n+w8PRXY1/mrN
	Qc3jnJgYPEYtbzAIlX4hz4eMtwASYySSBJX3Hc4RNUez+mQmYQwVnzyowreRfWoHr5Cw
	oQ0A==
X-Gm-Message-State: APjAAAVeAIYbr/fh1UbloyzyoqOc7eZfEteASDdnxlHYM3/Xv9tOyY61
	M12UdYK0/MpY3OsFbi6JzB/4T+rqgpoHhvKXyoM=
X-Google-Smtp-Source: APXvYqz0bbAYg47eL37SXECfcYtK8M9y78QsDeT9dpUCG20iavRdsA3Bs5hrdZyclv0SZHqFAkdOxF1augUbgki88Yo=
X-Received: by 2002:a1c:1947:: with SMTP id 68mr8695504wmz.165.1560539449595; 
	Fri, 14 Jun 2019 12:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAOmL4Uj8+A=nXjyu198+XsTMsj6wTa5NgKi=nypLVDWQjix4xA@mail.gmail.com>
	<CANNYZj_ceD6FRuhn04Wz7XVgfLQ=QikWzdEORs80f924W8Y=KQ@mail.gmail.com>
In-Reply-To: <CANNYZj_ceD6FRuhn04Wz7XVgfLQ=QikWzdEORs80f924W8Y=KQ@mail.gmail.com>
From: Larry Brown <elcapitanbrown@gmail.com>
Date: Fri, 14 Jun 2019 15:10:38 -0400
Message-ID: <CAOmL4UiH3KAXzLWc5UXSo8+Q+q=EQVGcDsMoaVt0bfHVZgHcPQ@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dnf causing build failure
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
X-List-Received-Date: Fri, 14 Jun 2019 19:10:52 -0000
Content-Type: multipart/alternative; boundary="0000000000008d1af6058b4d6773"

--0000000000008d1af6058b4d6773
Content-Type: text/plain; charset="UTF-8"

So I got the ${B} from the original openssh recipe so I'm not sure what
that variable equates to now.  But I changed to ${D} and had to change some
other aspects as well.  What I didn't understand is that the recipe is
installing the files into a folder (package folder) that is ultimately
packaged and then installed into the rootfs and that it is not installing
the files from a package folder into the rootfs directly by the script.  I
don't understand how the build system knows that the files in the install
directory need to be installed into the rootfs but I can only assume that
anything installed into a structure in the package directory will be
overlayed into the rootfs in the corresponding locations.  I'm guessing...

Well with the current layout working the DNF error went away.  Maybe it was
failing the file copy to begin with but quietly and only the DNF error was
displayed?  There is definitely a learning curve here...

Thanks so much,

Larry

On Fri, Jun 14, 2019 at 10:11 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> Should be ${D}, not ${B} in do_install.
>
> Alex
>
> On Fri, 14 Jun 2019 at 15:53, Larry Brown <elcapitanbrown@gmail.com>
> wrote:
>
>> I've created a recipe that simply copies files into a folder of the
>> image.  Basically in this form:
>>
>> ------------------------------------------------------
>>
>> SUMMARY = "Some text"
>> HOMEPAGE = ""
>> LICENSE = "CLOSED"
>> LIC_FILES_CHKSUM = ""
>>
>> DEPENDS = "openssl"
>>
>> do_install () {
>>      install -m 0644 ${WORKDIR}/path/fileA ${B}/
>>      install -m 0644 ${WORKDIR}/path/fileB ${B}/
>> }
>>
>> FILES_${PN}-ssh = "${sysconfdir}/path/fileA ${sysconfdir}/path/fileB"
>>
>> -------------------------------------------------
>>
>> When I build this I only want the files in the target image.  I don't
>> need an rpm built that could be used to deliver these files.  Now there
>> might be something I could do that would enable DNF to succeed, however I
>> would like to learn how to get the package installer to ignore/skip a
>> recipe (openssh-keys-install.bb in this case) that is only used during
>> the initial build.
>>
>> Can someone shed some light here?
>>
>> Also, if there is already a way built into the build process to retain a
>> set of keys for each device so they don't keep creating new keys, that
>> would be cool and appreciated, but I'm wanting to learn how to accomplish
>> this so it does not stop me when wanting to include other files elsewhere.
>>
>> I'm assuming here that there is someone here that has dealt with this;
>> however, if I'm mistaken the following is the error that is generated when
>> building.  And by the way, the files do get placed into the correct folder
>> (after some bit of tweaking of the code).  But the error persists:
>>
>> ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Command
>> '...--nogpgcheck install base-passwd iptables openssh openssh-keys-install
>> packagegroup-core-boot run-postinsts shadow' returned 1:
>> DNF version:4.2.2
>> cachedir:
>> /stor/development/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linux/core-image-minimal/1.0-r0/rootfs/var/cache/dnf
>> Added oe-repo repo from
>> /stor/development/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo
>> repo: using cache for: oe-repo
>> not found other for:
>> not found modules for:
>> not found deltainfo for:
>> not found updateinfo for:
>> oe-repo: using metadata from Thu 13 Jun 2019 09:13:54 PM UTC.
>> No module defaults found
>> No match for argument: openssh-keys-install
>> Error: Unable to find a match
>>
>> ERROR: core-image-minimal-1.0-r0 do_rootfs:
>> ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
>> ....
>>
>> TIA
>>
>>
>>
>> --
>> Larry Brown
>> S/V Trident
>> Palm Harbor, FL
>> ~~~~~~~~~~~~~~~~~_/)~~~~~~~~
>>     ~     ~          ~~           ~
>> ~           ~~_/)    ~      ~ ~        ~
>>      ~                  _/)          ~
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

-- 
Larry Brown
S/V Trident
Palm Harbor, FL
~~~~~~~~~~~~~~~~~_/)~~~~~~~~
    ~     ~          ~~           ~
~           ~~_/)    ~      ~ ~        ~
     ~                  _/)          ~

--0000000000008d1af6058b4d6773
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">So I got the ${B} from the original openssh recipe so I&#=
39;m not sure what that variable equates to now.=C2=A0 But I changed to ${D=
} and had to change some other aspects as well.=C2=A0 What I didn&#39;t und=
erstand is that the recipe is installing the files into a folder (package f=
older) that is ultimately packaged and then installed into the rootfs and t=
hat it is not installing the files from a package folder into the rootfs di=
rectly by the script.=C2=A0 I don&#39;t understand how the build system kno=
ws that the files in the install directory need to be installed into the ro=
otfs but I can only assume that anything installed into a structure in the =
package directory will be overlayed into the rootfs in the corresponding lo=
cations.=C2=A0 I&#39;m guessing...</div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:comic sans ms,sans-serif">Well with the current =
layout working the DNF error went away.=C2=A0 Maybe it was failing the file=
 copy to begin with but quietly and only the DNF error was displayed?=C2=A0=
 There is definitely a learning curve here...</div><div class=3D"gmail_defa=
ult" style=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D=
"gmail_default" style=3D"font-family:comic sans ms,sans-serif">Thanks so mu=
ch,</div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sa=
ns-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:comic=
 sans ms,sans-serif">Larry</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 14, 2019 at 10:11 AM Alexander =
Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>Should be ${D}, not ${B} in do_install.<br></div><di=
v><br></div><div>Alex</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, 14 Jun 2019 at 15:53, Larry Brown &lt;<a=
 href=3D"mailto:elcapitanbrown@gmail.com" target=3D"_blank">elcapitanbrown@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-fami=
ly:&quot;comic sans ms&quot;,sans-serif">I&#39;ve created a recipe that sim=
ply copies files into a folder of the image.=C2=A0 Basically in this form:<=
/div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&=
quot;,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:&quot;comic sans ms&quot;,sans-serif">----------------------------------=
--------------------</div><div class=3D"gmail_default" style=3D"font-family=
:&quot;comic sans ms&quot;,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">SUMMARY =3D &=
quot;Some text&quot;</div><div class=3D"gmail_default" style=3D"font-family=
:&quot;comic sans ms&quot;,sans-serif">HOMEPAGE =3D &quot;&quot;</div><div =
class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans=
-serif">LICENSE =3D &quot;CLOSED&quot;</div><div class=3D"gmail_default" st=
yle=3D"font-family:&quot;comic sans ms&quot;,sans-serif">LIC_FILES_CHKSUM =
=3D &quot;&quot;</div><div class=3D"gmail_default" style=3D"font-family:&qu=
ot;comic sans ms&quot;,sans-serif"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:&quot;comic sans ms&quot;,sans-serif">DEPENDS =3D &quot=
;openssl&quot;</div><div class=3D"gmail_default" style=3D"font-family:&quot=
;comic sans ms&quot;,sans-serif"><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:&quot;comic sans ms&quot;,sans-serif">do_install () {</di=
v><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quo=
t;,sans-serif">=C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/path/fileA ${=
B}/</div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans=
 ms&quot;,sans-serif">=C2=A0 =C2=A0 =C2=A0install -m 0644=C2=A0${WORKDIR}/p=
ath/fileB ${B}/</div><div class=3D"gmail_default" style=3D"font-family:&quo=
t;comic sans ms&quot;,sans-serif">}</div><div class=3D"gmail_default" style=
=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-seri=
f">FILES_${PN}-ssh =3D &quot;${sysconfdir}/path/fileA ${sysconfdir}/path/fi=
leB&quot;</div><div class=3D"gmail_default" style=3D"font-family:&quot;comi=
c sans ms&quot;,sans-serif"><br></div><div class=3D"gmail_default" style=3D=
"font-family:&quot;comic sans ms&quot;,sans-serif">------------------------=
-------------------------</div><div><br></div><div><div class=3D"gmail_defa=
ult" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">When I buil=
d this I only want the files in the target image.=C2=A0 I don&#39;t need an=
 rpm built that could be used to deliver these files.=C2=A0 Now there might=
 be something I could do that would enable DNF to succeed, however I would =
like to learn how to get the package installer to ignore/skip a recipe (<a =
href=3D"http://openssh-keys-install.bb" target=3D"_blank">openssh-keys-inst=
all.bb</a> in this case) that is only used during the initial build.</div><=
div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,=
sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:&qu=
ot;comic sans ms&quot;,sans-serif">Can someone shed some light here? </div>=
<br></div><div><div class=3D"gmail_default" style=3D"font-family:&quot;comi=
c sans ms&quot;,sans-serif">Also, if there is already a way built into the =
build process to retain a set of keys for each device so they don&#39;t kee=
p creating new keys, that would be cool and appreciated, but I&#39;m wantin=
g to learn how to accomplish this so it does not stop me when wanting to in=
clude other files elsewhere.</div><br></div><div><div class=3D"gmail_defaul=
t" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">I&#39;m assum=
ing here that there is someone here that has dealt with this; however, if I=
&#39;m mistaken the following is the error that is generated when building.=
=C2=A0 And by the way, the files do get placed into the correct folder (aft=
er some bit of tweaking of the code).=C2=A0 But the error persists:</div><d=
iv class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:&quo=
t;comic sans ms&quot;,sans-serif">ERROR: core-image-minimal-1.0-r0 do_rootf=
s: Could not invoke dnf. Command &#39;...--nogpgcheck install base-passwd i=
ptables openssh openssh-keys-install packagegroup-core-boot run-postinsts s=
hadow&#39; returned 1:</div><div class=3D"gmail_default" style=3D"font-fami=
ly:&quot;comic sans ms&quot;,sans-serif">DNF version:4.2.2</div><div class=
=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-seri=
f">cachedir: /stor/development/yocto/poky/trident-build/tmp/work/raspberryp=
i3_64-poky-linux/core-image-minimal/1.0-r0/rootfs/var/cache/dnf<br>Added oe=
-repo repo from /stor/development/yocto/poky/trident-build/tmp/work/raspber=
rypi3_64-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo<br>repo: using=
 cache for: oe-repo<br>not found other for: <br>not found modules for: <br>=
not found deltainfo for: <br>not found updateinfo for: <br>oe-repo: using m=
etadata from Thu 13 Jun 2019 09:13:54 PM UTC.<br>No module defaults found<b=
r></div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans =
ms&quot;,sans-serif">No match for argument: openssh-keys-install<br>Error: =
Unable to find a match<br><br>ERROR: core-image-minimal-1.0-r0 do_rootfs: <=
br>ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs<b=
r></div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans =
ms&quot;,sans-serif">....</div><div class=3D"gmail_default" style=3D"font-f=
amily:&quot;comic sans ms&quot;,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">TIA</div=
><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot=
;,sans-serif"><br></div><br></div><div><br></div>-- <br><div dir=3D"ltr" cl=
ass=3D"gmail-m_-8489862202693340256gmail-m_-2484117753926535637gmail_signat=
ure"><div dir=3D"ltr">Larry Brown<div>S/V Trident</div><div>Palm Harbor, FL=
</div><div>~~~~~~~~~~~~~~~~~_/)~~~~~~~~</div><div>=C2=A0 =C2=A0 ~ =C2=A0 =
=C2=A0 ~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ~</div><div>~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~_/) =C2=A0 =C2=A0=
~ =C2=A0 =C2=A0 =C2=A0~ ~ =C2=A0 =C2=A0 =C2=A0 =C2=A0~</div><div>=C2=A0 =C2=
=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_=
/) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~</div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Larry Brown<div>S/V Trident</di=
v><div>Palm Harbor, FL</div><div>~~~~~~~~~~~~~~~~~_/)~~~~~~~~</div><div>=C2=
=A0 =C2=A0 ~ =C2=A0 =C2=A0 ~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ~</div><div>~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ~~_/) =C2=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=A0~ ~ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0~</div><div>=C2=A0 =C2=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0_/) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~</div></div>=
</div>

--0000000000008d1af6058b4d6773--
