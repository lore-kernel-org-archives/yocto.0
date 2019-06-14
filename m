Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 404E8E00DBD; Fri, 14 Jun 2019 07:11:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4905BE00DAF
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 07:11:10 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id d17so2767097oth.5
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 07:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zZqOV7sp7W1s9o/kcZ5t0hPh2i4UU5uevB3RJqqeqe4=;
	b=oPoTVL7pW4pA0lB46unp6GXYHvAeCKeuUU7py3iGpvPWEN367pTqmlYQU7yMDIb5/a
	IlOEX8/7+2G+toYuTa7Ta/erdqxFgItWohkobsqaxOh77lERaVz724xh7m1Pu3LhcKoU
	/zpmOyN4YHJi9pQni0nNjqElbp4Oug5znRRFVktsYS/cyBylw2WE+Yn/XXqeBpVt2HrU
	G1W/54eV2LTNSW7sJdmd+iFnBdU40EcQSLUMQWVhxe6dQgxPBOKsJIOJwPQI/WpwVpJQ
	oiXEaTWUnjmuAbqQ0WqOanYaVseiFAMekWWEzgsLm7aMgB1G+FTuxvEqKC1m9hL5QQ02
	0x0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zZqOV7sp7W1s9o/kcZ5t0hPh2i4UU5uevB3RJqqeqe4=;
	b=KH/Hx2QRLhQ+nzuaVOgggeMAWZhQAd2YfNdSH6pDTwPnPiS7TcC0lxOnNqes2LnxSb
	4/6tWxUtoqgOrsqR0xyfbV6btOH9BT4moSkDACPkLC0SeJ1Ev5agoJSxm9J1rp8G5t7R
	jFASIKlvUqh7fISRedzmXU39CQb8rMKijdFO+aJUUYEBEc3x4HQZx1P/+C3vHfzXKETC
	qILQ6sVc0Eq+jAONDH4ILq35ase/ldW6hyAhBLxxm/AoJQQte8R76tN509WT8vh4ceQT
	LwF+Q2eOi7UMEYzoyzLTW0YRfYpMSj1SQx8Kz2eteumV61tmjPeKLySnUzOSR8OyrS8k
	SRiA==
X-Gm-Message-State: APjAAAXg25Rfe4IiDS/XxZUWv1j7BPigND3VdSuNr6VSZzaA1nyxUGzk
	d/GnlQsfvp94K2nc6eHt2la+6mt2FBjOeDXZITnXll27vVgp+A==
X-Google-Smtp-Source: APXvYqyjLc+y30ZjcpHR9aUBHt6MEnqFQO5dYGvYtAlAg9iPcU0DYX7wkYjGvkUFXkdS5PQAyGHfOFRgjm5vAH8IfN4=
X-Received: by 2002:a9d:d87:: with SMTP id 7mr45597888ots.263.1560521469810;
	Fri, 14 Jun 2019 07:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAOmL4Uj8+A=nXjyu198+XsTMsj6wTa5NgKi=nypLVDWQjix4xA@mail.gmail.com>
In-Reply-To: <CAOmL4Uj8+A=nXjyu198+XsTMsj6wTa5NgKi=nypLVDWQjix4xA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 14 Jun 2019 16:10:58 +0200
Message-ID: <CANNYZj_ceD6FRuhn04Wz7XVgfLQ=QikWzdEORs80f924W8Y=KQ@mail.gmail.com>
To: Larry Brown <elcapitanbrown@gmail.com>
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
X-List-Received-Date: Fri, 14 Jun 2019 14:11:11 -0000
Content-Type: multipart/alternative; boundary="000000000000df5c28058b493756"

--000000000000df5c28058b493756
Content-Type: text/plain; charset="UTF-8"

Should be ${D}, not ${B} in do_install.

Alex

On Fri, 14 Jun 2019 at 15:53, Larry Brown <elcapitanbrown@gmail.com> wrote:

> I've created a recipe that simply copies files into a folder of the
> image.  Basically in this form:
>
> ------------------------------------------------------
>
> SUMMARY = "Some text"
> HOMEPAGE = ""
> LICENSE = "CLOSED"
> LIC_FILES_CHKSUM = ""
>
> DEPENDS = "openssl"
>
> do_install () {
>      install -m 0644 ${WORKDIR}/path/fileA ${B}/
>      install -m 0644 ${WORKDIR}/path/fileB ${B}/
> }
>
> FILES_${PN}-ssh = "${sysconfdir}/path/fileA ${sysconfdir}/path/fileB"
>
> -------------------------------------------------
>
> When I build this I only want the files in the target image.  I don't need
> an rpm built that could be used to deliver these files.  Now there might be
> something I could do that would enable DNF to succeed, however I would like
> to learn how to get the package installer to ignore/skip a recipe (
> openssh-keys-install.bb in this case) that is only used during the
> initial build.
>
> Can someone shed some light here?
>
> Also, if there is already a way built into the build process to retain a
> set of keys for each device so they don't keep creating new keys, that
> would be cool and appreciated, but I'm wanting to learn how to accomplish
> this so it does not stop me when wanting to include other files elsewhere.
>
> I'm assuming here that there is someone here that has dealt with this;
> however, if I'm mistaken the following is the error that is generated when
> building.  And by the way, the files do get placed into the correct folder
> (after some bit of tweaking of the code).  But the error persists:
>
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Command
> '...--nogpgcheck install base-passwd iptables openssh openssh-keys-install
> packagegroup-core-boot run-postinsts shadow' returned 1:
> DNF version:4.2.2
> cachedir:
> /stor/development/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linux/core-image-minimal/1.0-r0/rootfs/var/cache/dnf
> Added oe-repo repo from
> /stor/development/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo
> repo: using cache for: oe-repo
> not found other for:
> not found modules for:
> not found deltainfo for:
> not found updateinfo for:
> oe-repo: using metadata from Thu 13 Jun 2019 09:13:54 PM UTC.
> No module defaults found
> No match for argument: openssh-keys-install
> Error: Unable to find a match
>
> ERROR: core-image-minimal-1.0-r0 do_rootfs:
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> ....
>
> TIA
>
>
>
> --
> Larry Brown
> S/V Trident
> Palm Harbor, FL
> ~~~~~~~~~~~~~~~~~_/)~~~~~~~~
>     ~     ~          ~~           ~
> ~           ~~_/)    ~      ~ ~        ~
>      ~                  _/)          ~
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000df5c28058b493756
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Should be ${D}, not ${B} in do_install.<br></div><div=
><br></div><div>Alex</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, 14 Jun 2019 at 15:53, Larry Brown &lt;<a =
href=3D"mailto:elcapitanbrown@gmail.com">elcapitanbrown@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sa=
ns-serif">I&#39;ve created a recipe that simply copies files into a folder =
of the image.=C2=A0 Basically in this form:</div><div class=3D"gmail_defaul=
t" style=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:comic sans ms,sans-serif">--------------=
----------------------------------------</div><div class=3D"gmail_default" =
style=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmai=
l_default" style=3D"font-family:comic sans ms,sans-serif">SUMMARY =3D &quot=
;Some text&quot;</div><div class=3D"gmail_default" style=3D"font-family:com=
ic sans ms,sans-serif">HOMEPAGE =3D &quot;&quot;</div><div class=3D"gmail_d=
efault" style=3D"font-family:comic sans ms,sans-serif">LICENSE =3D &quot;CL=
OSED&quot;</div><div class=3D"gmail_default" style=3D"font-family:comic san=
s ms,sans-serif">LIC_FILES_CHKSUM =3D &quot;&quot;</div><div class=3D"gmail=
_default" style=3D"font-family:comic sans ms,sans-serif"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">DEPENDS=
 =3D &quot;openssl&quot;</div><div class=3D"gmail_default" style=3D"font-fa=
mily:comic sans ms,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif">do_install () {</div><div class=
=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">=C2=A0 =
=C2=A0 =C2=A0install -m 0644 ${WORKDIR}/path/fileA ${B}/</div><div class=3D=
"gmail_default" style=3D"font-family:comic sans ms,sans-serif">=C2=A0 =C2=
=A0 =C2=A0install -m 0644=C2=A0${WORKDIR}/path/fileB ${B}/</div><div class=
=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">}</div><d=
iv class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif"><=
br></div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sa=
ns-serif">FILES_${PN}-ssh =3D &quot;${sysconfdir}/path/fileA ${sysconfdir}/=
path/fileB&quot;</div><div class=3D"gmail_default" style=3D"font-family:com=
ic sans ms,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:comic sans ms,sans-serif">-----------------------------------------=
--------</div><div><br></div><div><div class=3D"gmail_default" style=3D"fon=
t-family:&quot;comic sans ms&quot;,sans-serif">When I build this I only wan=
t the files in the target image.=C2=A0 I don&#39;t need an rpm built that c=
ould be used to deliver these files.=C2=A0 Now there might be something I c=
ould do that would enable DNF to succeed, however I would like to learn how=
 to get the package installer to ignore/skip a recipe (<a href=3D"http://op=
enssh-keys-install.bb" target=3D"_blank">openssh-keys-install.bb</a> in thi=
s case) that is only used during the initial build.</div><div class=3D"gmai=
l_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&=
quot;,sans-serif">Can someone shed some light here? </div><br></div><div><d=
iv class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,s=
ans-serif">Also, if there is already a way built into the build process to =
retain a set of keys for each device so they don&#39;t keep creating new ke=
ys, that would be cool and appreciated, but I&#39;m wanting to learn how to=
 accomplish this so it does not stop me when wanting to include other files=
 elsewhere.</div><br></div><div><div class=3D"gmail_default" style=3D"font-=
family:&quot;comic sans ms&quot;,sans-serif">I&#39;m assuming here that the=
re is someone here that has dealt with this; however, if I&#39;m mistaken t=
he following is the error that is generated when building.=C2=A0 And by the=
 way, the files do get placed into the correct folder (after some bit of tw=
eaking of the code).=C2=A0 But the error persists:</div><div class=3D"gmail=
_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><br></=
div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&q=
uot;,sans-serif">ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invo=
ke dnf. Command &#39;...--nogpgcheck install base-passwd iptables openssh o=
penssh-keys-install packagegroup-core-boot run-postinsts shadow&#39; return=
ed 1:</div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sa=
ns ms&quot;,sans-serif">DNF version:4.2.2</div><div class=3D"gmail_default"=
 style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">cachedir: /stor=
/development/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linux/c=
ore-image-minimal/1.0-r0/rootfs/var/cache/dnf<br>Added oe-repo repo from /s=
tor/development/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linu=
x/core-image-minimal/1.0-r0/oe-rootfs-repo<br>repo: using cache for: oe-rep=
o<br>not found other for: <br>not found modules for: <br>not found deltainf=
o for: <br>not found updateinfo for: <br>oe-repo: using metadata from Thu 1=
3 Jun 2019 09:13:54 PM UTC.<br>No module defaults found<br></div><div class=
=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-seri=
f">No match for argument: openssh-keys-install<br>Error: Unable to find a m=
atch<br><br>ERROR: core-image-minimal-1.0-r0 do_rootfs: <br>ERROR: core-ima=
ge-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs<br></div><div class=
=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-seri=
f">....</div><div class=3D"gmail_default" style=3D"font-family:&quot;comic =
sans ms&quot;,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:&quot;comic sans ms&quot;,sans-serif">TIA</div><div class=3D"gma=
il_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><br>=
</div><br></div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail-m_-24=
84117753926535637gmail_signature"><div dir=3D"ltr">Larry Brown<div>S/V Trid=
ent</div><div>Palm Harbor, FL</div><div>~~~~~~~~~~~~~~~~~_/)~~~~~~~~</div><=
div>=C2=A0 =C2=A0 ~ =C2=A0 =C2=A0 ~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~</div><div>~ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ~~_/) =C2=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=A0~ ~ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0~</div><div>=C2=A0 =C2=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_/) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~</div=
></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000df5c28058b493756--
