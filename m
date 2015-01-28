Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34731E0087C; Wed, 28 Jan 2015 12:59:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
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
	*      [209.85.217.182 listed in list.dnswl.org]
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44D9FE00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 12:59:01 -0800 (PST)
Received: by mail-lb0-f182.google.com with SMTP id l4so21347661lbv.13
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 12:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=kg9ac4r3Aa5sg+aIcMNhSs+IssWShcN7GaVLPH8l+GA=;
	b=qUAxxFf4ABzz07rWNu+G0qSFtz4Er+3EDVbv1CuFB+Zr19KV1WCutzg8So4UKSmD03
	5QHZwCQpWP454BHdIvWdYuEwtascg8PwhriR5gl1ltGGLn+WnLZabCN80Se+QJI1ptl8
	VwEEzNVhwsGQzUBGpbnvIMMv72gwuVMgwfaalM0BC+m53cpo5r5RFm0V3XWfmgj1+2T7
	CvNG3vXWim/wqiSEMSoWbg5UHG85l6+4xH7Qwx+hxs+aM/lx4orRdGz/yPHpfjZOie5u
	CvlO0lNKV53fHQ9G0rN2kttOz+wVF/CSArw3gySU8evWgTNzBB3zZE+2QfOHiIDIiFJO
	EKGw==
MIME-Version: 1.0
X-Received: by 10.112.205.68 with SMTP id le4mr8245981lbc.96.1422478739799;
	Wed, 28 Jan 2015 12:58:59 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.25.24.12 with HTTP; Wed, 28 Jan 2015 12:58:59 -0800 (PST)
Date: Wed, 28 Jan 2015 18:58:59 -0200
X-Google-Sender-Auth: GiiLFW9hCwUfjOp0_8BRjRPR1fk
Message-ID: <CABKVDBCN7ZzjXO7b5nU=jqO3sVpR9b8JtGAtdPfZzRXA99H6nQ@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Not create directory in /
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
X-List-Received-Date: Wed, 28 Jan 2015 20:59:14 -0000
Content-Type: multipart/alternative; boundary=001a11c3c34afc8436050dbca372

--001a11c3c34afc8436050dbca372
Content-Type: text/plain; charset=UTF-8

Why can not create directory in the /?

My recipe:
do_install () {
     install -d ${D}/datarw
     install -d ${D}${sysconfdir}/filesbw
}


ERROR bitbake:

QA Issue: ideale: Files/directories were installed but not shipped
  /datarw [installed-vs-shipped]


It's no use:
INSANE_SKIP_${PN} = "installed-vs-shipped "

-- 

*Att,Cleiton Bueno*

--001a11c3c34afc8436050dbca372
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Why can not create directory in the /?</div><div=
><br></div><div>My recipe:</div><div>do_install () {<br></div></div><div><d=
iv>=C2=A0 =C2=A0 =C2=A0install -d ${D}/datarw<br></div><div>=C2=A0 =C2=A0 =
=C2=A0install -d ${D}${sysconfdir}/filesbw</div><div>}</div></div><div><br>=
</div><div><br></div><div>ERROR bitbake:=C2=A0</div><div><br></div><div>QA =
Issue: ideale: Files/directories were installed but not shipped</div><div>=
=C2=A0 /datarw [installed-vs-shipped]</div><div><br></div><div><br></div><d=
iv>It&#39;s no use:<br></div><div>INSANE_SKIP_${PN} =3D &quot;installed-vs-=
shipped &quot;<br></div><div><br></div>-- <br><div class=3D"gmail_signature=
"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div di=
r=3D"ltr"><div><div dir=3D"ltr"><i><b>Att,<br>Cleiton Bueno</b></i><br><div=
><br></div></div></div></div></div></div></div></div></div></div></div>
</div>

--001a11c3c34afc8436050dbca372--
