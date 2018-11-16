Return-Path: <jostorha@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AF65E00C8A; Fri, 16 Nov 2018 03:25:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jostorha[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B451BE00C72
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 03:25:32 -0800 (PST)
Received: by mail-oi1-f176.google.com with SMTP id b141so10354420oii.12
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 03:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=//L6mIQrac2pdByuW2Z+2OkIanL5ZUfMLNIbHnyhOY8=;
	b=Dlo1EpKdAZHwtmD4603WWaQ33n2uHTg4GXobxzkjVNsG4rfrs+Oee8/kr/i7uOwxv3
	WkijBBAfEXzrla1QCOs0tzrwqMI1GVhqAzACIJ+x59o7VMHeKhgw1qYOlfRUjd7dpdlj
	9lJ+LlVUF+ltAAvS+zGtFsdxj/hEzJoRbhv896HB5REI6hiM9jpvNYbUKX5qSD6JIYhE
	o0qgLfXpYu3+b+IzdL81vH16Qqiq3jLKG2AGbBDCPUaqh09liWilbME3Rm/534t294Ls
	s+RA3q3Vwi/KEZkDejLL9rM+HrDl+CkX/KIVdKVh+Bq/ul1+A0YoAG8kNRyYR6sfkj92
	AylQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=//L6mIQrac2pdByuW2Z+2OkIanL5ZUfMLNIbHnyhOY8=;
	b=aPXfZ2uJ+/TBC2bCYHQcj8TTPMelSy8DewOP/m83DexTYnAlbBUfQlLl76xvY6hRXd
	Jhvg8MbkYalwC9Lzy0sK7BbPDDVhw+CI87ldJj8yIcimvbvJTpG6/u5C0G4wR2BqK48n
	IHCHRBcILdvbJm7fGHCBOn+yXtXS6e63jo4dr7e0raakd6GhnL3qBEjsBPuFW9TCDh7T
	Of1pQeoh5/OHF45pJw0XVN6uGkUICviefkqIUefqcVS4M0xuxKX4Kn7EpiY6O/QGbCBI
	E+iPWYBS0cnUSZ3h59ftkJC3Z3XyN4n0b9pbt/218UHFYDwlcSzydXDXBgAJprywFLRZ
	L7+g==
X-Gm-Message-State: AGRZ1gL6sFe/toe/t9TgZ8QW/EqAQLMb1TxTHnVrM/Nzph3prht7JCnq
	De5clH8pCT7D1rSOGBXZplFqftee5nIpuh+8Rh0A3OpO
X-Google-Smtp-Source: AJdET5f4aT8Cv/ZlKjdNbppVgTT00x2ArNHeDP34uopK+OKMuz2WCw4FuWzwWDGtgdZor931yEV2dw/+cVZ8jeKAUxI=
X-Received: by 2002:aca:c088:: with SMTP id
	q130-v6mr756109oif.353.1542367531885; 
	Fri, 16 Nov 2018 03:25:31 -0800 (PST)
MIME-Version: 1.0
From: Jon Ove Storhaug <jostorha@gmail.com>
Date: Fri, 16 Nov 2018 12:25:20 +0100
Message-ID: <CAAzHaFQHJry_venQaxHHC6G_nMhsKmLmrZcWsMpJKAbLrZqSvw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Building zeromqjs (zeromq bindings for nodejs) fails
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
X-List-Received-Date: Fri, 16 Nov 2018 11:25:33 -0000
Content-Type: multipart/alternative; boundary="000000000000d9ea39057ac66c67"

--000000000000d9ea39057ac66c67
Content-Type: text/plain; charset="UTF-8"

I am trying to build the zeromqjs (zeromq bindings for nodejs). This is my
recipe:

SUMMARY = " "
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
SRC_URI = "npm://registry.npmjs.org
;name=zeromq;version=5.1.0;subdir=node_modules/zeromq"
SRC_URI[md5sum] = "36be4c59012eee825fb86d7dcb336468"
SRC_URI[sha256sum] =
"5a0450bb3f1f603974c51fc1726a1fbd05f3d0091d3951b36f1ddb961e991031"
#DEPENDS += "zeromq"
inherit npm

I am getting errors:
configure: error: cannot run C compiled programs.
If you meant to cross compile, use `--host'.
Full output: https://gist.github.com/jostor/e200d7993cbc0b271aeddc7421ad3a46
I have also tried with DEPENDS += "zeromq". Then I am also getting errors:
https://gist.github.com/jostor/495f91b35b0fff839c6b284293bc9c04

I see there are some information about cross compiling here:
https://github.com/zeromq/zeromq.js/pull/158
But I don't know what I should do to make it work.

Does anyone know how to fix this?

Thanks in Advance!

--000000000000d9ea39057ac66c67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I am trying to=
 build the=C2=A0zeromqjs (zeromq bindings for nodejs). This is my recipe:=
=C2=A0</div><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr">SU=
MMARY =3D &quot; &quot;</div><div dir=3D"ltr">LICENSE =3D &quot;MIT&quot;</=
div><div dir=3D"ltr">LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR=
}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;</div><div dir=3D"ltr">SR=
C_URI =3D &quot;npm://<a href=3D"http://registry.npmjs.org">registry.npmjs.=
org</a>;name=3Dzeromq;version=3D5.1.0;subdir=3Dnode_modules/zeromq&quot;</d=
iv><div dir=3D"ltr">SRC_URI[md5sum] =3D &quot;36be4c59012eee825fb86d7dcb336=
468&quot;</div><div dir=3D"ltr">SRC_URI[sha256sum] =3D &quot;5a0450bb3f1f60=
3974c51fc1726a1fbd05f3d0091d3951b36f1ddb961e991031&quot;</div><div dir=3D"l=
tr">#DEPENDS +=3D &quot;zeromq&quot;</div><div dir=3D"ltr">inherit npm</div=
><div dir=3D"ltr"><br></div><div>I am getting errors:=C2=A0=C2=A0</div><div=
><div>configure: error: cannot run C compiled programs.</div><div>If you me=
ant to cross compile, use `--host&#39;.</div></div></div><div>Full output:=
=C2=A0<a href=3D"https://gist.github.com/jostor/e200d7993cbc0b271aeddc7421a=
d3a46">https://gist.github.com/jostor/e200d7993cbc0b271aeddc7421ad3a46</a><=
/div><div>I have also tried with DEPENDS +=3D &quot;zeromq&quot;. Then I am=
 also getting errors:=C2=A0<a href=3D"https://gist.github.com/jostor/495f91=
b35b0fff839c6b284293bc9c04">https://gist.github.com/jostor/495f91b35b0fff83=
9c6b284293bc9c04</a></div><div><br></div><div>I see there are some informat=
ion about cross compiling here:=C2=A0<a href=3D"https://github.com/zeromq/z=
eromq.js/pull/158">https://github.com/zeromq/zeromq.js/pull/158</a></div><d=
iv>But I don&#39;t know what I should do to make it work.=C2=A0</div><div><=
br></div><div>Does anyone know how to fix this?</div><div><br></div><div>Th=
anks in Advance!</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div=
></div></div></div></div></div></div></div>

--000000000000d9ea39057ac66c67--
