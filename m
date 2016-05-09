Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDA25E00C2D; Mon,  9 May 2016 07:02:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47532E00B60
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 07:02:28 -0700 (PDT)
Received: by mail-vk0-f50.google.com with SMTP id m188so66714217vka.1
	for <yocto@yoctoproject.org>; Mon, 09 May 2016 07:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=v93sGMLxFw/fXfcsX//NKSDNIIMBhXHzjNEQg97Zmhw=;
	b=SLWSIvRxHAzl3veVCcwgBMJY8qzDIC3sZPuZyJpQ3DqoNv7droMdjzADXdI5DrIVVz
	HctnP3VJLglwMnP/DOuBLUBjnUCujnlRcNwgAUj74Pvq0LU6MDWPTAY2JLRTi3/ASj5y
	tKG4++tjBOmiKqVkZz7bP7H2dMvIEP8ZdscL8xJfUVxBvY2ZDFj5mA2ZQBriVPbumYKf
	JeWzRnAtGj9LhiBKHBIB1G+Kb+T8zJFeBd7G3sibFYdYqx/YQemeXNYxH6K0egirNXVb
	FY1HQ36z7WdBHvsap9MxUo+UoWbZVD8mLN9IGbTmQwRkxWb/u1thBhJ6jYFnBonzwvG4
	etkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=v93sGMLxFw/fXfcsX//NKSDNIIMBhXHzjNEQg97Zmhw=;
	b=j8U5JLdQaqp+8bp0YsEMkUsfKgXdStGm32nhLOXQD1rV3L/IMTek9rixak8B+Wek9u
	vErNUDoIoPw2ghocoToG+bOJh/oR5i+izqW7tWsJ3Ls2+aaRyFZxAii7II1Suvf9M6rR
	9UXcC3p+LIvx2DQLzyGzOiU9/RV0z42qOCRM3f5A2U4hOP3HbH3DLwAK/odxn3Q/OPp9
	m7bkxVBeUFBuo1rhyZuoEYpJgoK0uiZ/XZRdtLchX/NO9LxqLMBgv8nocwHkVwZAXqHG
	O6UYd9OM0syvTSXW7XIakOIDdtsVGT9Xd2sfuevtHS50eVMpKu9LkNZ1kb8GV90MLt7c
	VBnw==
X-Gm-Message-State: AOPr4FVOXjggXyYzA1agdvbVtAvITcyywREiPmt4Nz/ucV1BWPNUNS24sZbE9wqb0bYvxHyPEsT/SUUGgTXg3g==
MIME-Version: 1.0
X-Received: by 10.176.2.14 with SMTP id 14mr20741661uas.10.1462802548124; Mon,
	09 May 2016 07:02:28 -0700 (PDT)
Received: by 10.31.193.20 with HTTP; Mon, 9 May 2016 07:02:28 -0700 (PDT)
Date: Mon, 9 May 2016 10:02:28 -0400
Message-ID: <CABfz71cxNpHg5u13k_brL=2+fGTc2zK7E-OTMW3Gn9ndsWsnMw@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
To: yocto@yoctoproject.org
Subject: Recipe that creates empty /var/log directory is auto-mounted to /var/volatile/log
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
X-List-Received-Date: Mon, 09 May 2016 14:02:34 -0000
Content-Type: multipart/alternative; boundary=001a113ed1a242072a0532694200

--001a113ed1a242072a0532694200
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have a simple recipe that places files on the system.

-------------
do_install() {
  # create this directory, because our "normal" fstab file will mount a log
partition to it.
  install -d ${D}/var/log
  install -d ${D}${sysconfdir}
  install -m 0644 ${WORKDIR}/fstab-normal ${D}${sysconfdir}/fstab
}
-------------

The fstab-normal file has an entry that mounts a partition to this created
/var/log directory.

-------------
/dev/mmcblk0p3       /var/log             auto       defaults  0  0
-------------

However, when the package get's created, /var/log gets pointed to
/var/volatile/log. Where is this happening, and why?

-------------
pknopf@ubuntu:~/Git/recipes/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-g=
nueabi/base-files-fstab-normal/1.0-r0/package$
tree
.
=E2=94=9C=E2=94=80=E2=94=80 etc
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 fstab
=E2=94=94=E2=94=80=E2=94=80 var
    =E2=94=9C=E2=94=80=E2=94=80 log -> volatile/log
    =E2=94=94=E2=94=80=E2=94=80 volatile
        =E2=94=94=E2=94=80=E2=94=80 log

-------------

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--001a113ed1a242072a0532694200
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have a simple recipe that places files on the syste=
m.</div><div><br></div><div>-------------</div><div><div>do_install() {</di=
v><div>=C2=A0 # create this directory, because our &quot;normal&quot; fstab=
 file will mount a log partition to it.</div><div>=C2=A0 install -d ${D}/va=
r/log</div><div>=C2=A0 install -d ${D}${sysconfdir}</div><div>=C2=A0 instal=
l -m 0644 ${WORKDIR}/fstab-normal ${D}${sysconfdir}/fstab</div><div>}</div>=
</div><div>-------------</div><div><br></div><div>The fstab-normal file has=
 an entry that mounts a partition to this created /var/log directory.</div>=
<div><br></div><div>-------------<br></div><div>/dev/mmcblk0p3 =C2=A0 =C2=
=A0 =C2=A0 /var/log =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 auto =C2=A0 =
=C2=A0 =C2=A0 defaults =C2=A00 =C2=A00<br></div><div>-------------<br></div=
><div><br></div><div>However, when the package get&#39;s created, /var/log =
gets pointed to /var/volatile/log. Where is this happening, and why?</div><=
div><br></div><div>-------------</div><div><div>pknopf@ubuntu:~/Git/recipes=
/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/base-files-fstab-nor=
mal/1.0-r0/package$ tree</div><div>.</div><div>=E2=94=9C=E2=94=80=E2=94=80 =
etc</div><div>=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 fstab</div><div>=
=E2=94=94=E2=94=80=E2=94=80 var</div><div>=C2=A0 =C2=A0 =E2=94=9C=E2=94=80=
=E2=94=80 log -&gt; volatile/log</div><div>=C2=A0 =C2=A0 =E2=94=94=E2=94=80=
=E2=94=80 volatile</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=
=E2=94=80 log</div></div><div><br></div><div>-------------</div><br clear=
=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div>Thanks,<=
/div><div>Paul Knopf</div><div>Software Engineer</div><div>Med X Change, In=
c</div><div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pkno=
pf@medxchange.com</a></div></div></div></div>
</div>

--001a113ed1a242072a0532694200--
