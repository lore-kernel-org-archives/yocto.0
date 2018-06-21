Return-Path: <peddikrishnapriya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1929AE00CDE; Thu, 21 Jun 2018 16:02:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (peddikrishnapriya[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f178.google.com (mail-ot0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71288E00C4D
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 16:02:09 -0700 (PDT)
Received: by mail-ot0-f178.google.com with SMTP id h6-v6so5473826otj.0
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 16:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=B+k2p4Wz4l3IDkmKoDRzCvPKsh4TDeHPyHBV8ET6EZ0=;
	b=CDZq5MxwMdGe1uLYIyuRbiFZt+YTnstfox5DmqsYKu9fUdMr3zpnr4EPgfszE/XM+j
	/95V3P/Gr2GTdOiY/KPeN+fmWhEv8f6DfqYGn7XW0MLRuNLiTyY57RhbeWLTOlH8KGVW
	z/v6VHztQ9xFoYULUrmBHoxRZ7O4Wb1iD9/cxO45uL8NZHw8s4V96Sre8SU5Qb5FVgXF
	UwZN7Sk+98vA1Xp9DjmB8QshgjreLMS3Sns34D8tAhCfj8Tb04JC3g5helaecBTWnbCN
	PSbaD/Sop3RJk1Zq/zmJg5bgHeFvnhq7k/E6eIUDlLQN/jco0Zs6wLNxjMBQhSGn0bGk
	dxbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=B+k2p4Wz4l3IDkmKoDRzCvPKsh4TDeHPyHBV8ET6EZ0=;
	b=a2mB2beGKM8NEiLMh5s1dzE913gEe6eEDH3guIU5fmLvuF6qmHiHvw2jAX0wWGJMIP
	auO4/w0FKbtJnJkGLFJD1/Z1tExpEqHHfZQMnZN+rodws5+MZtymbY1s8hQUzduzA9P/
	tz6U8DnRlGInEHXEEqt9eQ5bNC63XRp4pNpahhnt2yl47H38PFfo8W9cCyaqKCsDsoGY
	lhgvIJXst/pKKBDXkJ6q0MsMq6mz+Fnufp2ntPHqegZJfh71a+LGGSitiqa+pha3yRkU
	NPuE40g15uL0WTdyIfn2lqjKPnddVRH09h4U1Ms9wl6psw9esfngauFfgknl+L0NE9W5
	UrCA==
X-Gm-Message-State: APt69E2lRPI3O5WICzTVo1gvVTi9gt4n0Z1xT/DEJlLXl//W08bPFC8C
	A7cIAe6aPM9fAnRTI2a0t/cFJq29mlnVqMSz+wElRA==
X-Google-Smtp-Source: ADUXVKI8nEnpjkAPT9Aqnz2JBh+XxDTF3qHD2L6tA/c4hRU0hxPkuI7Zq6abDcHJRs1hwmjkv6Z0rfqU/Ypy9kpI9o8=
X-Received: by 2002:a9d:3126:: with SMTP id
	e35-v6mr18396684otc.340.1529622128521; 
	Thu, 21 Jun 2018 16:02:08 -0700 (PDT)
MIME-Version: 1.0
From: Krishna Priya <peddikrishnapriya@gmail.com>
Date: Thu, 21 Jun 2018 16:01:57 -0700
Message-ID: <CAP8ZA7FsroZ=zs-j-OUkYshp-t+9nm_rpQsTkdae5fYmqPfjNA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Adding GCC to system root image
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
X-List-Received-Date: Thu, 21 Jun 2018 23:02:10 -0000
Content-Type: multipart/alternative; boundary="0000000000009c77d8056f2ee796"

--0000000000009c77d8056f2ee796
Content-Type: text/plain; charset="UTF-8"

Hello all,

I am trying to add gcc to the system image by modifying the following
files.
poky/meta-qti-bsp/recipies-products/images/ BASE_IMAGE.inc

+ IMAGE_INSTALL +="opkg"
+ IMAGE_INSTALL +="packagegroup-core-buildessential"

poky/build/conf/local.conf
+ EXTRA_IMAGE_FEATURES = "tools-sdk dev-pkgs"

When I build the whole image, I get the following errors :
update-alternatives: Error: cannot register alternative cmp to /bin/cmp
since it is already registered to /usr/bin/cmp
update-alternatives: Error: cannot register alternative diff to /bin/diff
since it is already registered to /usr/bin/diff
update-alternatives: Error: cannot register alternative cmp to /bin/cmp
since it is already registered to /usr/bin/cmp
update-alternatives: Error: cannot register alternative diff to /bin/diff
since it is already registered to /usr/bin/diff
update-alternatives: Error: cannot register alternative ar to /usr/bin/ar
since it is already registered to /bin/ar
update-alternatives: Error: cannot register alternative strings to
/usr/bin/strings since it is already registered to /bin/strings
.
.
.
.
.
ERROR: Multilib check error: duplicate files
poky/build/tmp-glibc/work/XXX80XX-oe-linux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fpu_control.h
poky/build/tmp-glibc/work/XXX80XX-oe-linux/machine-drone-image/1.0-r0/rootfs/usr/include/fpu_control.h
is not the same
ERROR: Multilib check error: duplicate files
poky/build/tmp-glibc/work/XX80XX-oe-linux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fpu_control.h
poky/build/tmp-glibc/work/apq8096-oe-linux/machine-drone-image/1.0-r0/rootfs/usr/include/fpu_control.h
is not the same
ERROR: Function failed: do_rootfs

Please let me know the workaround to solve this error. Thanks.
Regards,
-Priya.

--0000000000009c77d8056f2ee796
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,=C2=A0<div><br></div><div>I am trying to add gcc=
 to the system image by modifying the following files.=C2=A0</div><div>poky=
/meta-qti-bsp/recipies-products/images/ BASE_IMAGE.inc</div><div><br></div>=
<div>+ IMAGE_INSTALL=C2=A0+=3D&quot;opkg&quot;</div><div>+ IMAGE_INSTALL=C2=
=A0+=3D&quot;packagegroup-core-buildessential&quot;</div><div><br></div><di=
v>poky/build/conf/local.conf</div><div>+ EXTRA_IMAGE_FEATURES =3D &quot;too=
ls-sdk dev-pkgs&quot;</div><div><br></div><div>When I build the whole image=
, I get the following errors :</div><div><div>update-alternatives: Error: c=
annot register alternative cmp to /bin/cmp since it is already registered t=
o /usr/bin/cmp</div><div>update-alternatives: Error: cannot register altern=
ative diff to /bin/diff since it is already registered to /usr/bin/diff</di=
v><div>update-alternatives: Error: cannot register alternative cmp to /bin/=
cmp since it is already registered to /usr/bin/cmp</div><div>update-alterna=
tives: Error: cannot register alternative diff to /bin/diff since it is alr=
eady registered to /usr/bin/diff</div><div>update-alternatives: Error: cann=
ot register alternative ar to /usr/bin/ar since it is already registered to=
 /bin/ar</div><div>update-alternatives: Error: cannot register alternative =
strings to /usr/bin/strings since it is already registered to /bin/strings<=
/div></div><div>.</div><div>.</div><div>.</div><div>.</div><div>.</div><div=
><div>ERROR: Multilib check error: duplicate files poky/build/tmp-glibc/wor=
k/XXX80XX-oe-linux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fp=
u_control.h poky/build/tmp-glibc/work/XXX80XX-oe-linux/machine-drone-image/=
1.0-r0/rootfs/usr/include/fpu_control.h is not the same</div><div>ERROR: Mu=
ltilib check error: duplicate files poky/build/tmp-glibc/work/XX80XX-oe-lin=
ux/machine-drone-image/1.0-r0/multilib/lib32/usr/include/fpu_control.h poky=
/build/tmp-glibc/work/apq8096-oe-linux/machine-drone-image/1.0-r0/rootfs/us=
r/include/fpu_control.h is not the same</div><div>ERROR: Function failed: d=
o_rootfs</div></div><div><br></div><div>Please let me know the workaround t=
o solve this error. Thanks.=C2=A0</div><div>Regards,=C2=A0</div><div>-Priya=
.=C2=A0</div></div>

--0000000000009c77d8056f2ee796--
