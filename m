Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC888E00D2C; Thu, 21 Mar 2019 17:22:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5920CE00994
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2019 17:22:01 -0700 (PDT)
Received: by mail-qk1-f176.google.com with SMTP id g1so255094qki.5
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2019 17:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=yz9QJIfB0l7nhrwQeiKx2xyaq+8WnLcUotB74K8jW/E=;
	b=IuOSH/NOJhkFmVHzAJvKFVBYKdIOQoIR4aI1lHM0Nn1ZtVuysKCqS/R59NYxD4ZYIC
	T3Vs1zS3vZibltyj9xifQ3yqz6UDNTb2Y6xAMkDC3wR0Qspirvyu0i+e8WeYwhCeljUI
	yPH9S9AMKEdzEpDZhRVFraypkVgvoNCaLnFH0ZQ8hm+K8fxFRAA00nGYLyZ3Kj1QfMrQ
	lTD2dKTQLqOhXDywCLV15df0tAmoca1OGHlF8mwe3ULJv4hZXNE9oUu5GwkbauyGWA4Z
	Z04UKz6V/4ocTdcvkNfWgiqt/OxiLWVFgjrvV5eW6ZrGhw7wTM5Un/Nj0aHu42HbzQZ4
	VGIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yz9QJIfB0l7nhrwQeiKx2xyaq+8WnLcUotB74K8jW/E=;
	b=j61Z3aRJl8MxY3DuQ7ffJSWPYRt1ZwN1tzGsIH226lmOJ0cnZdt+c8hNpaW8IBDmqt
	gJim/U4ig01FjCH7u8fpTnhsLOWZlXke/DGz3w5a0bXf6PkjXagbdAblrMA4eXHN7quz
	Pu9eDxOMveg7FX9tBSTqtefUftZbozK5EjcI+mQban6lRV2T8xiKeoT1OPZK8yMUdVQd
	YFUrMbLqNq4breNi7vjEwrf2zAhjivq7QQDYYO6LHJjpD9GeLi4IOkQecSXs/dv9okb0
	xGpCZYqDqr/94e3OshofahzoNILpmJrSjFa9+hxJi0BPcnH9fDrasX7RlHC22chpV3o0
	sV8w==
X-Gm-Message-State: APjAAAWp4y2GesKYsEDbK1eTAVCJhAxP6CJod2psAindT+GUV2A9o6Hc
	WbWRlDXPQRCrDhGecIzORaWVTCvUzjp09p0+RFacpJ8/mwXZmg==
X-Google-Smtp-Source: APXvYqzYVj1GDza4LqgEheLVrL7uX4MprwP6GYjWzakr/UJoqJnMl+glPO/xeBfxHrh3YLEaL2NRZYkIVYhZgId93PQ=
X-Received: by 2002:a37:9fc6:: with SMTP id i189mr5390210qke.246.1553214120555;
	Thu, 21 Mar 2019 17:22:00 -0700 (PDT)
MIME-Version: 1.0
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Thu, 21 Mar 2019 17:21:50 -0700
Message-ID: <CAHSUxjQ+UpLtd1AUdrOLXWZNBn9CsS4MWm9YPkfA6CvQPQHQRA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to add task only if flag set
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
X-List-Received-Date: Fri, 22 Mar 2019 00:22:02 -0000
Content-Type: multipart/alternative; boundary="000000000000ea89050584a3d750"

--000000000000ea89050584a3d750
Content-Type: text/plain; charset="UTF-8"

I'm working with a read only file system and I'm working on splitting
packages so that their config dirs are symlinked in from the persistent
data partition. But I'd like to be able to enable or disable this
optionally, so that I can still build an image with a r/w file system and a
single partition for easier development. I've got a class file with a new
task that moves config files to /data and symlinks them back, but I can't
figure out how to conditionally enable it. Ideally it'd be enabled only if
read-only-rootfs is set in IMAGE_FEATURES.

Here's the class if it helps:

ORIGINAL_FILES ??= "file1 file2..."
SYMLINK_NAMES ??= "sym1 sym2..."

do_symlink_to_data () {
    install -d ${D}/${PERSIST_DIR}

    ORIG_ARR=(${ORIGINAL_FILES})
    SYMLINK_ARR=(${SYMLINK_NAMES})

    for i in ${!ORIG_ARR[*]}; do
        ORIG=ORIG_ARR[i]
        SYMLINK=SYMLINK_ARR[i]


        mv ${D}/$ORIG ${D}/${PERSIST_DIR}/$SYMLINK
        ln -sr ${D}/${PERSIST_DIR}/$SYMLINK ${D}/$ORIG
    done
}

FILES_${PN}_append_mender-image += " ${SYMLINK_NAMES}"

addtask symlink_to_data after do_install




-- 
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--000000000000ea89050584a3d750
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">I&#39;m working with a read only file system and I&#39;m working =
on splitting packages so that their config dirs are symlinked in from the p=
ersistent data partition. But I&#39;d like to be able to enable or disable =
this optionally, so that I can still build an image with a r/w file system =
and a single partition for easier development. I&#39;ve got a class file wi=
th a new task that moves config files to /data and symlinks them back, but =
I can&#39;t figure out how to conditionally enable it. Ideally it&#39;d be =
enabled only if read-only-rootfs is set in IMAGE_FEATURES.</div><div dir=3D=
"ltr"><br></div><div>Here&#39;s the class if it helps:</div><div><br></div>=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">ORIGINAL_FILES ??=3D &qu=
ot;file1 file2...&quot;</div><div dir=3D"ltr">SYMLINK_NAMES ??=3D &quot;sym=
1 sym2...&quot;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">do_symlink=
_to_data () {</div><div dir=3D"ltr">=C2=A0 =C2=A0 install -d ${D}/${PERSIST=
_DIR}</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">=C2=A0 =C2=A0 ORIG_A=
RR=3D(${ORIGINAL_FILES})</div><div dir=3D"ltr">=C2=A0 =C2=A0 SYMLINK_ARR=3D=
(${SYMLINK_NAMES})</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">=C2=A0 =
=C2=A0 for i in ${!ORIG_ARR[*]}; do=C2=A0</div><div dir=3D"ltr">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ORIG=3DORIG_ARR[i]</div><div dir=3D"ltr">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 SYMLINK=3DSYMLINK_ARR[i]</div><div dir=3D"ltr"><br></div><div=
 dir=3D"ltr"><br></div><div dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0 =C2=A0 mv ${D}=
/$ORIG ${D}/${PERSIST_DIR}/$SYMLINK</div><div dir=3D"ltr">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ln -sr ${D}/${PERSIST_DIR}/$SYMLINK ${D}/$ORIG</div><div dir=3D"=
ltr">=C2=A0 =C2=A0 done</div><div dir=3D"ltr">}</div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">FILES_${PN}_append_mender-image +=3D &quot; ${SYMLINK=
_NAMES}&quot;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">addtask syml=
ink_to_data after do_install</div><div><br></div></div></div><div dir=3D"lt=
r"><div><br></div><div><div><br></div><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Lin=
ux Engineer</div><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_b=
lank">tfroehlich@archsys.io</a></div><div>215-218-8955</div></div></div></d=
iv></div></div></div></div></div>

--000000000000ea89050584a3d750--
