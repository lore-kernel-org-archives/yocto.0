Return-Path: <vandegriftlorin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5DC5E009DF; Mon, 27 Jul 2015 10:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vandegriftlorin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9864E009B8
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 10:53:37 -0700 (PDT)
Received: by wibxm9 with SMTP id xm9so123475711wib.0
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 10:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Z9gM1pl/FnR246TqlZKapRJX2lYxfDWut7a2o6bWCBM=;
	b=HJxH9Hn6xcwO14BbpD+QQ5wKDmfhKL6Wcw/LA7GCHDTvyGA+2eoVA+7w4V2D/2EAVb
	6wv36g3IcVJb+5d941vaxdv0uyEmlN0Blu1RLPQhEVBOcK+ekx/oWvvnFk2G6kQknJ25
	0TxWru9VrjIY2cHZejBJbPUUF79FeJ3tLbw66sFlIBYXBL4T/Lc5ZpqEUu/RFvjb0Hse
	uW3ojJo4ppXHGtzkCn9IJ7DrAQlpEfwiRt3SUTWruUDnq6CU+v81n9xG7GwUJr8kGYsU
	fHNx6WqwCLNqZMMZ1slWiItuZwTK4TVjJQ4uQNxvBgQX12xBgo9uZMtpJ1E/cYBJghWa
	uYaA==
MIME-Version: 1.0
X-Received: by 10.180.106.5 with SMTP id gq5mr24761990wib.61.1438019616560;
	Mon, 27 Jul 2015 10:53:36 -0700 (PDT)
Received: by 10.27.46.17 with HTTP; Mon, 27 Jul 2015 10:53:36 -0700 (PDT)
In-Reply-To: <20150725002429.GB14383@haswell>
References: <CAOzegEN3YB0HvA+sHopRJexapWWkU03MMPFEdk=acOaTBGTc-Q@mail.gmail.com>
	<20150725002429.GB14383@haswell>
Date: Mon, 27 Jul 2015 10:53:36 -0700
Message-ID: <CAOzegEO5Z6KZAuiUhXz+b1fG=4wrmGr3NV9H4GM0VKuyXsFB0w@mail.gmail.com>
From: Lorin Vandegrift <vandegriftlorin@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
Subject: Re: Problem add and removing files to filesystem
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
X-List-Received-Date: Mon, 27 Jul 2015 17:53:39 -0000
Content-Type: multipart/alternative; boundary=f46d044306b26cdbb4051bdf08cf

--f46d044306b26cdbb4051bdf08cf
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 24, 2015 at 5:24 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On 15-07-24 14:27:09, Lorin Vandegrift wrote:
> > Hi all,
> >
> > We are having problems adding extra files/removing files from the
> generated
> > file system in Yocto.  We've had success with using a do_install command
> in
> > our own bb file and using commands in the format rsync -avz test.txt
> > ${D}{sysconfdir}, however we can't write to some paths (i.e. writing to
> > root with ${D).  Additionally, we are not able to overwrite files
> generated
> > by other recipes.  We also tried using install and couldn't push our init
> > script (nstall -m 0755 test.sh ${D}${sysconfdir}/init.d).  Any advice for
> > these?  Also is there a recommended way for removing files?   We were
> able
> > to remove them by using the rm command and adding it to
> > ROOTFS_POSTPROCESS_COMMAND.
>
> You can consider few approaches
>
> 1. Move the files into packages of there own in the recipe which means
>
> PACKAGES += "foo"
> FILES_foo = "files you want to separate out"
>
> 2. Write a bbappend in your own layer if you are doing something thats
> not generic and wont benefit community, in this bbappend you can write
> do_install_append () function and do the removal and any other packaging
> related adjustments needed for that recipe
>
> 3. Write your own rootfs post processing function and hook it up into
> ROOTFS_POSTPROCESS_COMMAND variable, this will however mean that online
> package upgrades wont work out of box.
>
> If you are looking for overwriting files then consider them patching
> using patches or overlaying files using SRC_URI itself again using a
> bbappend, if its a config file and you have few tweaks you can sed/awk
> then in do_install step itself.
>
> what you are trying is violating the packaging concerns of buildsystem
> and thats why its not working as you expected.
>
> Consider components and files a component provides as basic unit of
> operation, all changes has to be done at that level for best results.
>
> -Khem
>


Hi there,

Thanks for the response. Unfortunately we tried your suggestions with no
luck. Below is the bb file for our package, do you see anything that we
might of missed? The tar ball listed below is in a subdirectory called
"files" in the same folder as the bb file.

Thanks

SUMMARY = "Extra filesystem files"
SECTION = "rootfs"
LICENSE = "CLOSED"

SRC_URI = "file://extrafiles.tar.gz"
S = "${WORKDIR}/files"

ROOTFS_POSTPROCESS_COMMAND += "set_root_passwd;"
ROOTFS_POSTPROCESS_COMMAND += "modify_filesystem;"

do_install() {
   install -m 0755 testFile.sh ${D}/home/root
   rsync -avz wpa_supplicant ${D}${sysconfdir}
   rsync -avz root ${D}${sysconfdir}
   rsync -avz network ${D}${sysconfdir}
   rsync -avz test.txt ${D}${sysconfdir}
   rsync -avz syslog.conf ${D}${sysconfdir}
   rsync -avz rules.d ${D}${sysconfdir}/udev/
   rsync -avz sys_init.service ${D}${sysconfdir}/system/
}

modify_filesystem() {
   rm ${IMAGE_ROOTFS}${sysconfdir}/wpa_supplicant.conf;
}

set_root_passwd() {
        sed 's%^root:[^:]*:%root:$1$xyz$KSp5j8kx3cPgA3/ODPZ6E.:%' \
        < ${IMAGE_ROOTFS}/etc/shadow \
        > ${IMAGE_ROOTFS}/etc/shadow.new;
        mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;
}

EXTRA_IMAGE_FEATURES += "read-only-rootfs"

--f46d044306b26cdbb4051bdf08cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div><div><br></div></div><div><br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jul 24, 2015 at 5:24 P=
M, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" tar=
get=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><span class=3D"">On 15-07-24 14:27:09, Lorin Vandegrift wrot=
e:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; We are having problems adding extra files/removing files from the gene=
rated<br>
&gt; file system in Yocto.=C2=A0 We&#39;ve had success with using a do_inst=
all command in<br>
&gt; our own bb file and using commands in the format rsync -avz test.txt<b=
r>
&gt; ${D}{sysconfdir}, however we can&#39;t write to some paths (i.e. writi=
ng to<br>
&gt; root with ${D).=C2=A0 Additionally, we are not able to overwrite files=
 generated<br>
&gt; by other recipes.=C2=A0 We also tried using install and couldn&#39;t p=
ush our init<br>
&gt; script (nstall -m 0755 test.sh ${D}${sysconfdir}/init.d).=C2=A0 Any ad=
vice for<br>
&gt; these?=C2=A0 Also is there a recommended way for removing files?=C2=A0=
 =C2=A0We were able<br>
&gt; to remove them by using the rm command and adding it to<br>
&gt; ROOTFS_POSTPROCESS_COMMAND.<br>
<br>
</span>You can consider few approaches<br>
<br>
1. Move the files into packages of there own in the recipe which means<br>
<br>
PACKAGES +=3D &quot;foo&quot;<br>
FILES_foo =3D &quot;files you want to separate out&quot;<br>
<br>
2. Write a bbappend in your own layer if you are doing something thats<br>
not generic and wont benefit community, in this bbappend you can write<br>
do_install_append () function and do the removal and any other packaging<br=
>
related adjustments needed for that recipe<br>
<br>
3. Write your own rootfs post processing function and hook it up into<br>
ROOTFS_POSTPROCESS_COMMAND variable, this will however mean that online<br>
package upgrades wont work out of box.<br>
<br>
If you are looking for overwriting files then consider them patching<br>
using patches or overlaying files using SRC_URI itself again using a<br>
bbappend, if its a config file and you have few tweaks you can sed/awk<br>
then in do_install step itself.<br>
<br>
what you are trying is violating the packaging concerns of buildsystem<br>
and thats why its not working as you expected.<br>
<br>
Consider components and files a component provides as basic unit of<br>
operation, all changes has to be done at that level for best results.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-Khem<br></font></span></blockquote><div>=C2=A0</div><div><br></div>Hi ther=
e,<div><br></div><div>Thanks for the response. Unfortunately we tried your =
suggestions with no luck. Below is the bb file for our package, do you see =
anything that we might of missed? The tar ball listed below is in a subdire=
ctory called &quot;files&quot; in the same folder as the bb file.</div><div=
><br></div><div>Thanks<br></div><div><br></div><div><div>SUMMARY =3D &quot;=
Extra filesystem files&quot;</div><div>SECTION =3D &quot;rootfs&quot;</div>=
<div>LICENSE =3D &quot;CLOSED&quot;</div><div><br></div><div>SRC_URI =3D &q=
uot;file://extrafiles.tar.gz&quot;</div><div>S =3D &quot;${WORKDIR}/files&q=
uot;</div><div><br></div><div>ROOTFS_POSTPROCESS_COMMAND +=3D &quot;set_roo=
t_passwd;&quot;</div><div>ROOTFS_POSTPROCESS_COMMAND +=3D &quot;modify_file=
system;&quot;</div><div><br></div><div>do_install() {</div><div>=C2=A0 =C2=
=A0install -m 0755 testFile.sh ${D}/home/root</div><div>=C2=A0 =C2=A0rsync =
-avz wpa_supplicant ${D}${sysconfdir}</div><div>=C2=A0 =C2=A0rsync -avz roo=
t ${D}${sysconfdir}</div><div>=C2=A0 =C2=A0rsync -avz network ${D}${sysconf=
dir}</div><div>=C2=A0 =C2=A0rsync -avz test.txt ${D}${sysconfdir}</div><div=
>=C2=A0 =C2=A0rsync -avz syslog.conf ${D}${sysconfdir}</div><div>=C2=A0 =C2=
=A0rsync -avz rules.d ${D}${sysconfdir}/udev/</div><div>=C2=A0 =C2=A0rsync =
-avz sys_init.service ${D}${sysconfdir}/system/</div><div>}</div><div><br><=
/div><div>modify_filesystem() {</div><div>=C2=A0 =C2=A0rm ${IMAGE_ROOTFS}${=
sysconfdir}/wpa_supplicant.conf;</div><div>}</div><div><br></div><div>set_r=
oot_passwd() {</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sed &#39;s%^root:[^:]*=
:%root:$1$xyz$KSp5j8kx3cPgA3/ODPZ6E.:%&#39; \</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt; ${IMAGE_ROOTFS}/etc/shadow \</div><div>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 &gt; ${IMAGE_ROOTFS}/etc/shadow.new;</div><div>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;</div=
><div>}</div><div><br></div></div><div>EXTRA_IMAGE_FEATURES +=3D &quot;read=
-only-rootfs&quot;=C2=A0</div></div><br></div></div>

--f46d044306b26cdbb4051bdf08cf--
