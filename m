Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE43E00BE9; Fri,  6 Jun 2014 04:20:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71B31E00B94
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 04:19:57 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id e16so1427688lan.14
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 04:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ROJoWrRDe0xKFC3mSIpjBXOaewbBohhDICBwxOpnK6o=;
	b=xCDcHvPPhA6R+as/21ANG0FaDaECu5vQRy/leMEjfUTo4gmBCeRfExCVHFF5yepegW
	rY48wF2Qh3BkrmGev3vJR54PqUPAzjH9Zt82y3L2ClK/GUmjyAH4gGVxBs+Sur8fuAfQ
	Elt8mDvSXtDkwq60H6gYWRlYjtwC8r1Pd4p9UTuFntHa0b0KuRXcy3wuE2Cf9MJI9881
	ulXcemRte7hSaiENIjpUfrsF1j90vhajK2hwahktDgq1q/eGA7tN7r71udI8s/GlSp8O
	zq+Oj8CSFRwjIdkmF/2dE2Tlo3Xa2eQlW6zxY/N2wj4UbvujcwVPSBrDTXLsdHAKcMD7
	r0Qg==
MIME-Version: 1.0
X-Received: by 10.112.138.37 with SMTP id qn5mr3055153lbb.52.1402053595925;
	Fri, 06 Jun 2014 04:19:55 -0700 (PDT)
Received: by 10.112.138.7 with HTTP; Fri, 6 Jun 2014 04:19:55 -0700 (PDT)
In-Reply-To: <lms7fl$84c$1@ger.gmane.org>
References: <lmphm1$2bk$1@ger.gmane.org> <lmrmc7$vdr$1@ger.gmane.org>
	<CANyK_8f8oO+7gVbcXXOLVAdxa5OpmHR2s6yj199LpWaQcjSheQ@mail.gmail.com>
	<lms7fl$84c$1@ger.gmane.org>
Date: Fri, 6 Jun 2014 13:19:55 +0200
Message-ID: <CAPbeDCkkjBDTcvSASrhuAw8MwZLxaBKpKy4NFiwTsUYLORpsGA@mail.gmail.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Problems with postinstall
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
X-List-Received-Date: Fri, 06 Jun 2014 11:20:09 -0000
Content-Type: multipart/alternative; boundary=089e01160f568a92d804fb290ac6

--089e01160f568a92d804fb290ac6
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 6, 2014 at 1:08 PM, Neuer User <auslands-kv@gmx.de> wrote:

> Am 06.06.2014 12:54, schrieb Paul Barker:
> > I usually leave things more than a day before sending a ping email,
> > people can be busy but usually you'll get replies within a couple of
> > days on this list.
> >
>
> Sorry, I guess these 18h were driving me crazy as I don't understand why
> it is not working. I actually thought, it had already been working
> earlier...
>
> >>>
> >>> # Overwrite some configuration data with specific files
> >>> pkg_postinst_${PN} () {
> >>>     install -o root -g root -m 0600 ${S}/ssh/sshd_config ${D}/etc/ssh/
> >>>     install -m 0755 ${S}/etc/rc.local ${D}/etc/
> >>>     install -m 0644 ${S}/etc/watchdog.conf ${D}/etc/
> >>>     install -m 0400 ${S}/etc/shadow ${D}/etc/
> >>>     install -m 0440 ${S}/etc/sudoers ${D}/etc/
> >>>     install -d ${D}/etc/default
> >>>     install -o root -g root -m 0644 ${S}/etc/default-ntpdate
> >>> ${D}/etc/default/ntpdate
> >>> }
> >>>
> >
> > The postinst is executed by the package manager when the package is
> > installed. If that installation takes place during do_rootfs, ${D}
> > will refer to the rootfs directory for the image being built and ${S}
> > will probably refer to something else to do with the image recipe but
> > I'm not entirely sure on the details. If the installation takes place
> > on the device, or the postinst is delayed until the first boot, ${D}
> > and ${S} will not be set.
> >
> > Hope this helps,
> >
>
> So, I guess there are now two possibilities:
> a.) The postinstall is not done at all.
> b.) The postinstall is done, but before the other packages are
> installed, which overwrite the files again. Is this possible? If yes,
> howto specify that this postinstall should really be done last of all?
>
>
I'm not sure if this helps, but you can specify rootfs-post-process
commands in your image recipe:

setup_my_image() {
    # do stuff
}

ROOTFS_POSTPROCESS_COMMAND += 'setup_my_image ;'

This will run after the rootfs is created from the package installations

/Jacob

--089e01160f568a92d804fb290ac6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Jun 6, 2014 at 1:08 PM, Neuer User <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:auslands-kv@gmx.de" target=3D"_blank">auslands-kv@gmx.de</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Am 06.06.2014 12:54, schr=
ieb Paul Barker:<br>
<div class=3D"">&gt; I usually leave things more than a day before sending =
a ping email,<br>
&gt; people can be busy but usually you&#39;ll get replies within a couple =
of<br>
&gt; days on this list.<br>
&gt;<br>
<br>
</div>Sorry, I guess these 18h were driving me crazy as I don&#39;t underst=
and why<br>
it is not working. I actually thought, it had already been working<br>
earlier...<br>
<div class=3D""><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; # Overwrite some configuration data with specific files<br>
&gt;&gt;&gt; pkg_postinst_${PN} () {<br>
&gt;&gt;&gt; =C2=A0 =C2=A0 install -o root -g root -m 0600 ${S}/ssh/sshd_co=
nfig ${D}/etc/ssh/<br>
&gt;&gt;&gt; =C2=A0 =C2=A0 install -m 0755 ${S}/etc/rc.local ${D}/etc/<br>
&gt;&gt;&gt; =C2=A0 =C2=A0 install -m 0644 ${S}/etc/watchdog.conf ${D}/etc/=
<br>
&gt;&gt;&gt; =C2=A0 =C2=A0 install -m 0400 ${S}/etc/shadow ${D}/etc/<br>
&gt;&gt;&gt; =C2=A0 =C2=A0 install -m 0440 ${S}/etc/sudoers ${D}/etc/<br>
&gt;&gt;&gt; =C2=A0 =C2=A0 install -d ${D}/etc/default<br>
&gt;&gt;&gt; =C2=A0 =C2=A0 install -o root -g root -m 0644 ${S}/etc/default=
-ntpdate<br>
&gt;&gt;&gt; ${D}/etc/default/ntpdate<br>
&gt;&gt;&gt; }<br>
&gt;&gt;&gt;<br>
&gt;<br>
&gt; The postinst is executed by the package manager when the package is<br=
>
&gt; installed. If that installation takes place during do_rootfs, ${D}<br>
&gt; will refer to the rootfs directory for the image being built and ${S}<=
br>
&gt; will probably refer to something else to do with the image recipe but<=
br>
&gt; I&#39;m not entirely sure on the details. If the installation takes pl=
ace<br>
&gt; on the device, or the postinst is delayed until the first boot, ${D}<b=
r>
&gt; and ${S} will not be set.<br>
&gt;<br>
&gt; Hope this helps,<br>
&gt;<br>
<br>
</div>So, I guess there are now two possibilities:<br>
a.) The postinstall is not done at all.<br>
b.) The postinstall is done, but before the other packages are<br>
installed, which overwrite the files again. Is this possible? If yes,<br>
howto specify that this postinstall should really be done last of all?<br>
<br></blockquote><div><br></div></div>I&#39;m not sure if this helps, but y=
ou can specify rootfs-post-process commands in your image recipe:<br><br>se=
tup_my_image() {<br>=C2=A0 =C2=A0 # do stuff<br>}<br><br>ROOTFS_POSTPROCESS=
_COMMAND +=3D &#39;setup_my_image ;&#39;<br>
<br></div><div class=3D"gmail_extra">This will run after the rootfs is crea=
ted from the package installations<br><br></div><div class=3D"gmail_extra">=
/Jacob<br></div></div>

--089e01160f568a92d804fb290ac6--
