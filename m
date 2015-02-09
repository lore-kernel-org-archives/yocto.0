Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49782E00945; Sun,  8 Feb 2015 21:07:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF47E008CD
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 21:07:05 -0800 (PST)
Received: by mail-ig0-f179.google.com with SMTP id l13so14142516iga.0
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 21:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=fPDsmj0HLfmL9gfvcmi9zTBd1McyFY46Dx7ResW0ZB0=;
	b=noJdpK6LrJ/GcIVhUJOAp8StyQDeYpiCTUEWgwDIZmpwfEEkgaP4QyRd4QL2pwzYep
	tPoifhDTMsi/IZipY8Rd4qVvfUflOGApWz5xGcz0LDfJVQP1L9BEIMC3l94zvHn3efjc
	ctzwqVetiZvmaNvIj08x97IwKWb131GkHsSzTNBXdLk5Danp6jty8h4KTLNUm6O2P7E1
	NUNHq4Ff1Od4+3vHFFFGVFVZE7ez38fthQveXfdSvSTZbSWiJbCg+wv6rpJvidE9wkCV
	50isF6uVNsbbvPXu50PdvS49vKhoK5/ZrjsI7aR1BBt5RHIgNlHAvsMUT08D02RWJQ3Y
	2e4g==
MIME-Version: 1.0
X-Received: by 10.50.82.68 with SMTP id g4mr14877284igy.26.1423458424985; Sun,
	08 Feb 2015 21:07:04 -0800 (PST)
Received: by 10.36.51.145 with HTTP; Sun, 8 Feb 2015 21:07:04 -0800 (PST)
In-Reply-To: <CAKGbVbshQj1zUrYERA0eb9Ua6fVMdO9VfazEPNmxX_eqvNjDtA@mail.gmail.com>
References: <CAKGbVbshQj1zUrYERA0eb9Ua6fVMdO9VfazEPNmxX_eqvNjDtA@mail.gmail.com>
Date: Mon, 9 Feb 2015 13:07:04 +0800
Message-ID: <CAKGbVbutV7khT64p9Ffj377Caha8mELJYE5nh0uMxYQyOySUBQ@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to write a recipe whose source code will generate host and target output at the same build?
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
X-List-Received-Date: Mon, 09 Feb 2015 05:07:10 -0000
Content-Type: multipart/alternative; boundary=047d7bf18db0c61f10050ea0bd67

--047d7bf18db0c61f10050ea0bd67
Content-Type: text/plain; charset=UTF-8

I can finally solve the problem with the following method. If this method
have some problem (like sstate), or missing some work, please point out,
thanks.

The origin output file flow is
do_populate_sysroot: ${D} --> ${SYSROOT_DESTDIR} --> ${STAGING_DIR_TARGET}
do_package: ${D} --> ${PKGD} --> split then pack to ipk

My idea is copy both target and host files to ${SYSROOT_DESTDIR}, then to
${STAGING_DIR}, copy only target files to ${PKGD}.

Simplified code:
do_install() {
    #install host to ${D}${STAGING_DIR_NATIVE}
    #install target to ${D}${STAGING_DIR_TARGET}
}

# change do_populate_sysroot output dir from ${STAGING_DIR_TARGET} to
${STAGING_DIR}
do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR}"

sysroot_stage_dirs_append() {
    cp -ra ${D}${STAGING_DIR}/* ${SYSROOT_DESTDIR}
}

python perform_packagecopy_append () {
    #copy target files at ${PKGD}/${STAGING_DIR_TARGET} to ${PKGD}
    #remove host files at ${PKGD}/${STAGING_DIR_NATIVE}
}



On Sun, Feb 8, 2015 at 11:21 AM, Qiang Yu <yuq825@gmail.com> wrote:

> Hi all,
>
> I'm writing a recipe for QT5 which will generate both host tools and
> target lib at the same build. How can I handle this situation? It doesn't
> fix either target or native class.
>
> Can cross class solve this problem? Can cross generate target lib package
> and populate both target and host sysroot all at once?
>
> Or I notice a tmp/work-shared dir which can be shared by multi recipes. So
> maybe I can write two recipes, one for target lib, one for host tool, which
> share the same work dir at tmp/work-shared. Only one build is needed. If
> this is possible, how can I use the tmp/work-shared, inherit some special
> class?
>
> Regards,
> Qiang
>

--047d7bf18db0c61f10050ea0bd67
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I can finally solve the problem with the following method.=
 If this method have some problem (like sstate), or missing some work, plea=
se point out, thanks.<div><br></div><div>The origin output file flow is</di=
v><div>do_populate_sysroot: ${D} --&gt; ${SYSROOT_DESTDIR} --&gt; ${STAGING=
_DIR_TARGET}</div><div>do_package: ${D} --&gt; ${PKGD} --&gt; split then pa=
ck to ipk</div><div><br></div><div>My idea is copy both target and host fil=
es to ${SYSROOT_DESTDIR}, then to ${STAGING_DIR}, copy only target files to=
 ${PKGD}.=C2=A0</div><div><br></div><div>Simplified code:</div><div>do_inst=
all() {</div><div>=C2=A0 =C2=A0 #install host to ${D}${STAGING_DIR_NATIVE}<=
/div><div>=C2=A0 =C2=A0 #install target to ${D}${STAGING_DIR_TARGET}</div><=
div>}</div><div><br></div><div># change do_populate_sysroot output dir from=
 ${STAGING_DIR_TARGET} to ${STAGING_DIR}</div><div>do_populate_sysroot[ssta=
te-outputdirs] =3D &quot;${STAGING_DIR}&quot;<br></div><div><br></div><div>=
sysroot_stage_dirs_append() {<br></div><div>=C2=A0 =C2=A0 cp -ra ${D}${STAG=
ING_DIR}/* ${SYSROOT_DESTDIR}</div><div>}</div><div><br></div><div>python p=
erform_packagecopy_append () {<br></div><div>=C2=A0 =C2=A0 #copy target fil=
es at ${PKGD}/${STAGING_DIR_TARGET} to ${PKGD}</div><div>=C2=A0 =C2=A0 #rem=
ove host files at ${PKGD}/${STAGING_DIR_NATIVE}</div><div>}</div><div><br><=
/div><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Sun, Feb 8, 2015 at 11:21 AM, Qiang Yu <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi all,<=
div><br></div><div>I&#39;m writing a recipe for QT5 which will generate bot=
h host tools and target lib at the same build. How can I handle this situat=
ion? It doesn&#39;t fix either target or native class.</div><div><br></div>=
<div>Can cross class solve this problem? Can cross generate target lib pack=
age and populate both target and host sysroot all at once?</div><div><br></=
div><div>Or I notice a tmp/work-shared dir which can be shared by multi rec=
ipes. So maybe I can write two recipes, one for target lib, one for host to=
ol, which share the same work dir at tmp/work-shared. Only one build is nee=
ded. If this is possible, how can I use the tmp/work-shared, inherit some s=
pecial class?</div><div><br></div><div>Regards,</div><div>Qiang=C2=A0</div>=
</div>
</blockquote></div><br></div>

--047d7bf18db0c61f10050ea0bd67--
