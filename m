Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3345AE00BF3; Mon, 24 Jul 2017 02:27:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.41 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 202BBE00A9C
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 02:27:38 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id h199so31792932ith.1
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 02:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bzSMOlrIY2t1e73fJsn2PmYWf5XGmQT/dHrErTmden8=;
	b=PyWN3AhYMbNjR1mn7pjs+OOLQzKCN0faa2E6/l7f/ynn4Gtg2wiqxUdIBGwmAiLubG
	jbhEpBr4uJ1+R8KlNSQ8X+A9H8JuqtZphu8mvLQtyYkV/LNUmU8sEz69tdRFMvFsXK/O
	prcv9wtaPvLJYTpn/uH6E0sZIIZxeo3xHQfEh60Htgt2nM/srxybBLTW7LjSLo0t7oTG
	1msEkx22WMVcrDqCCZxY/Pk+cyLRSSDjNdBJeJ0cT/N+lhDGmHvnXinmuh8UA0s67ZV2
	GBhxBc56RCM5I+moFAmrD1pv6SPpB+NLTxK0sow7rUQz2kXET543rTbjuKFsee+7yupl
	yDrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bzSMOlrIY2t1e73fJsn2PmYWf5XGmQT/dHrErTmden8=;
	b=evZkLuFVK0OiBj0+wgiy1hV6k8JIuOKAsoJjXzfzMRrM/el/ul8/WUWzH75dbWlPKG
	4U1sLt8h+eBYlJBJu1oTSrTBMOXVQ0UBMFn3g5TOzGEAjxwZGOzstQlDDyMcV4SY1CnA
	PidJGt29wdPHOoVygewuB04f9xei0OIJW/hFcU0UNnFNrWlT6NI0kfzsCAwhVsvHNVHM
	qmRcXxpg43LEpYZNoydhmrGLydob+M4qRUdDHEc3wYp/WfsSgYRgePDJN7NDapuYk3LM
	pYPrpg29cFJgiDF26NfFkm2UN8sXjlVaoLeMj2fynSNlzaXSXwhKkXp7c7G6YCuKOd+C
	HaBQ==
X-Gm-Message-State: AIVw110Z5ZWeS8iJpnpEQxEnF4sJs34ajsfeEojY+2o8m8srFpOkelDc
	uI0d86+6UZrhmFzh/cAfzBs3B5E77Wee
X-Received: by 10.36.218.3 with SMTP id z3mr6009425itg.116.1500888458165; Mon,
	24 Jul 2017 02:27:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Mon, 24 Jul 2017 02:27:17 -0700 (PDT)
In-Reply-To: <1400955154.3545388.1500874019478@mail.yahoo.com>
References: <1400955154.3545388.1500874019478.ref@mail.yahoo.com>
	<1400955154.3545388.1500874019478@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Jul 2017 10:27:17 +0100
Message-ID: <CAJTo0LaYHJNJKhgr0AnLAA7s6jC1BSz0KfkuwkXOUVkQWCbt3w@mail.gmail.com>
To: Bacheh Karaji <bachehkaraji@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I write a yocto/bitbake recipe to replace the default vsftpd.conf file with my own file?
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
X-List-Received-Date: Mon, 24 Jul 2017 09:27:40 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b0ad665984e05550cd3d7"

--94eb2c0b0ad665984e05550cd3d7
Content-Type: text/plain; charset="UTF-8"

The package that generates will conflict with the real one.

Write a bbappend for the recipe you want to replace the files in, add the
files to SRC_URI, and use do_install_append() to overwrite the files in
${D}.

Ross

On 24 July 2017 at 06:26, Bacheh Karaji <bachehkaraji@yahoo.com> wrote:

> Hi,
> I want to replace the default vsftpd.conf file with my own file!
> My bitbake file looks following:
>
> bbexample_1.0.bb
>     DESCRIPTION = "Configuration and extra files for TX28"
>     LICENSE = "CLOSED"
>     LIC_FILES_CHKSUM = ""
>
>     S = "${WORKDIR}"
>
>     SRC_URI += " \
>         file://ld.so.conf \
>         file://vsftpd.conf \
>         file://nginx/nginx.conf \
>         file://init.d/myscript.sh"
>
>     inherit allarch
>
>     do_install () {
>         install -d ${D}${sysconfdir}
>         install -d ${D}${sysconfdir}/nginx
>         install -d ${D}${sysconfdir}/init.d
>         rm -f ${D}${sysconfdir}/ld.so.conf
>         rm -f ${D}${sysconfdir}/vsftpd.conf
>         install -m 0755 ${WORKDIR}/ld.so.conf ${D}${sysconfdir}
>         install -m 0755 ${WORKDIR}/vsftpd.conf ${D}${sysconfdir}
>         install -m 0755 ${WORKDIR}/nginx/nginx.conf
> ${D}${sysconfdir}/nginx/
>         install -m 0755 ${WORKDIR}/init.d/myscript.sh
> ${D}${sysconfdir}/init.d/
>     }
>
>  But, the file could not be replaced!
>  What is wrong?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c0b0ad665984e05550cd3d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The package that generates will conflict with the real one=
.<div><br></div><div>Write a bbappend for the recipe you want to replace th=
e files in, add the files to SRC_URI, and use do_install_append() to overwr=
ite the files in ${D}.</div><div><br></div><div>Ross</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 24 July 2017 at 06:26, B=
acheh Karaji <span dir=3D"ltr">&lt;<a href=3D"mailto:bachehkaraji@yahoo.com=
" target=3D"_blank">bachehkaraji@yahoo.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div><div style=3D"font-family:Helvetica Neue,Helve=
tica,Arial,sans-serif;font-size:x-small"><div><div>Hi,</div><div>I want to =
replace the default vsftpd.conf file with my own file!</div><div>My bitbake=
 file looks following:</div><div><br></div><div><a href=3D"http://bbexample=
_1.0.bb" target=3D"_blank">bbexample_1.0.bb</a></div><div>=C2=A0 =C2=A0 DES=
CRIPTION =3D &quot;Configuration and extra files for TX28&quot;</div><div>=
=C2=A0 =C2=A0 LICENSE =3D &quot;CLOSED&quot;</div><div>=C2=A0 =C2=A0 LIC_FI=
LES_CHKSUM =3D &quot;&quot;</div><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =
=C2=A0 S =3D &quot;${WORKDIR}&quot;</div><div>=C2=A0 =C2=A0=C2=A0</div><div=
>=C2=A0 =C2=A0 SRC_URI +=3D &quot; \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
file://ld.so.conf \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://vsftpd.con=
f \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://nginx/nginx.conf \</div><d=
iv>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://init.d/myscript.sh&quot;</div><div>=
=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 inherit allarch</div><div>=C2=
=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 do_install () {</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -d ${D}${sysconfdir}/nginx</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -d ${D}${sysconfdir}/init.d</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 rm -f ${D}${sysconfdir}/ld.so.conf</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 rm -f ${D}${sysconfdir}/vsftpd.conf</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/ld.so.conf ${D}${sysconfdir}</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/vsftpd.conf ${D=
}${sysconfdir}</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORK=
DIR}/nginx/nginx.conf ${D}${sysconfdir}/nginx/</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 install -m 0755 ${WORKDIR}/init.d/myscript.sh ${D}${sysconfdir}/=
init.d/</div><div>=C2=A0 =C2=A0 }</div><div><br></div><div>=C2=A0But, the f=
ile could not be replaced!</div><div>=C2=A0What is wrong?</div></div></div>=
</div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c0b0ad665984e05550cd3d7--
