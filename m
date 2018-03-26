Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE85DE009F4; Mon, 26 Mar 2018 03:58:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14FF6E0047F
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 03:58:04 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id q84so17245903iod.10
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 03:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=aOsI6NXmruLfH699jlF28t8ZGAtYSJsPp4+1k0u1iCw=;
	b=bpVaI9j2VU84ehy6TCHjdhQrx/S4AGZFpOoNnOfkTBU3czgQnmq6E4JKtAK3ClfBrw
	GJH9g2/x4AdAs81XQtkNwb/KMdrPelsarfG8DvV596NhKkRZD9RSZWI+BBUgKuHHiT+e
	Um0xpZJLIR5MuojK6PvTSOQtR2OUo43XRHoHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aOsI6NXmruLfH699jlF28t8ZGAtYSJsPp4+1k0u1iCw=;
	b=EhTbzt23g4fklZCbqS3DfMcySlUtCTwUeR0JhAf1zT0ilmi809XPRLPXIJ0ab1cSe5
	p+tTisoYrd5MVSz85P/iGfejuH9WQESl8XgQKIpWv+jocJmg5ZLyyxE9MvaIa7jkb7Ev
	l3vMuH33rv5DNUwg6aLmipNjUhnYT7VaGOKtKxHDkTGhxFXcyYPhx28kUrK73Xb+b0m8
	xHdCUGDFO8qmIyqsa/gCo2w03WcK5/TsRwzRjdioXQjraIQ/CUZHU2ekQqaJd05r0Fwq
	iVoQ6197McW6KYhBWmZQZFmCu2kli+sxSNAl3+jxlZkVoZiqlgL7IYaJN4uOKs8w/ity
	m0yQ==
X-Gm-Message-State: AElRT7G9PbwjhAlFSfkcaz51GyC+LtjRmdX3LvhW3KK/pCRLk9jGRdF9
	38292fI4QhdD93/w/DCOby1TuhKocHHn4KIcx0UWWAue
X-Google-Smtp-Source: AG47ELuCkxYs3MZfYkbXgnZfMtmHOVlGBzYleM12v+EhgFeZVdgIqKP6FMix1+67gXZfPMggJI5BdLMCeoLeRXTu+Aw=
X-Received: by 10.107.21.131 with SMTP id 125mr40426925iov.74.1522061884127;
	Mon, 26 Mar 2018 03:58:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.102.100 with HTTP; Mon, 26 Mar 2018 03:58:03 -0700 (PDT)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Mon, 26 Mar 2018 12:58:03 +0200
Message-ID: <CAALXFYx6gh5Px2_xLkJNDP=cXQTExNy_GHj+E_A=kPLGVv9NDg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Issues related generation of an image build with signed rpm packages
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
X-List-Received-Date: Mon, 26 Mar 2018 10:58:06 -0000
Content-Type: multipart/alternative; boundary="94eb2c05e7f8ee147105684ea593"

--94eb2c05e7f8ee147105684ea593
Content-Type: text/plain; charset="UTF-8"

Hello forum.

In order to generate a distro image with support for signed rpm packages, I
generated a pair of GPG keys, and setup my custom distro.conf file so Yocto
can sign packages it generates. My distro.conf file includes this:

    INHERIT += "sign_rpm"
    RPM_GPG_NAME = "gpgyocto"
    RPM_GPG_PASSPHRASE = "passphrase"

The repo configuration file "yocto-rpm.repo" is deployed using a
dnf_%.bbappend file that copies config file into /etc/yum.repos.d:

    $ cat recipes-devtools/dnf/files/yocto-rpm.repo
    [yocto-rpm]
    name=Rocko Yocto Repo
    baseurl=http://<REPO_IP>/rpm
    enabled=1
    gpgcheck=1

Whenever I try to build the image, the building process generates this
error when the http web server (serving signed packages) is not running (it
is disabled):

    ERROR: myimage-1.0-r0 do_rootfs: [log_check] myimage: found 1 error
message in the logfile:
    [log_check] Failed to synchronize cache for repo 'yocto-rpm', disabling.


However, the image is built fine in two different scenarios:

1) when setting enabled=0 on "yocto-rpm.repo" file
2) when setting enabled=1 and running/starting the http web server.


Two questions related:

1) What? Is yocto taking into account files from the generated image
(yocto-rpm.repo) to decide how the generated image is built?
2) Why yocto needs connecting to http web server to build the image? It
shouldn't be a completely decoupled process?


Can some of you explain a bit more about this process?

Thank you in advance! :)

--94eb2c05e7f8ee147105684ea593
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><br></div><div>Hello forum.=C2=A0</div><div><br>=
</div><div>In order to generate a distro image with support for signed rpm =
packages, I generated a pair of GPG keys, and setup my custom distro.conf f=
ile so Yocto can sign packages it generates. My distro.conf file includes t=
his:</div><div><br></div><div>=C2=A0 =C2=A0 INHERIT +=3D &quot;sign_rpm&quo=
t;</div><div>=C2=A0 =C2=A0 RPM_GPG_NAME =3D &quot;gpgyocto&quot;</div><div>=
=C2=A0 =C2=A0 RPM_GPG_PASSPHRASE =3D &quot;passphrase&quot;</div><div><br><=
/div><div>The repo configuration file &quot;yocto-rpm.repo&quot; is deploye=
d using a dnf_%.bbappend file that copies config file into /etc/yum.repos.d=
:</div><div><br></div><div>=C2=A0 =C2=A0 $ cat recipes-devtools/dnf/files/y=
octo-rpm.repo</div><div>=C2=A0 =C2=A0 [yocto-rpm]</div><div>=C2=A0 =C2=A0 n=
ame=3DRocko Yocto Repo</div><div>=C2=A0 =C2=A0 baseurl=3Dhttp://&lt;REPO_IP=
&gt;/rpm</div><div>=C2=A0 =C2=A0 enabled=3D1</div><div>=C2=A0 =C2=A0 gpgche=
ck=3D1</div><div><br></div><div>Whenever I try to build the image, the buil=
ding process generates this error when the http web server (serving signed =
packages) is not running (it is disabled):</div><div><br></div><div>=C2=A0 =
=C2=A0 ERROR: myimage-1.0-r0 do_rootfs: [log_check] myimage: found 1 error =
message in the logfile:</div><div>=C2=A0 =C2=A0 [log_check] Failed to synch=
ronize cache for repo &#39;yocto-rpm&#39;, disabling.</div><div><br></div><=
div><br></div><div>However, the image is built fine in two different scenar=
ios:</div><div><br></div><div><span style=3D"white-space:pre">	</span>1) wh=
en setting enabled=3D0 on &quot;yocto-rpm.repo&quot; file</div><div><span s=
tyle=3D"white-space:pre">	</span>2) when setting enabled=3D1 and running/st=
arting the http web server.</div><div><br></div><div><br></div><div>Two que=
stions related:</div><div><br></div><div>1) What? Is yocto taking into acco=
unt files from the generated image (yocto-rpm.repo) to decide how the gener=
ated image is built?</div><div>2) Why yocto needs connecting to http web se=
rver to build the image? It shouldn&#39;t be a completely decoupled process=
?</div><div><br></div><div><br></div><div>Can some of you explain a bit mor=
e about this process?=C2=A0</div><div><br></div><div>Thank you in advance! =
:)</div><div><br></div></div><div><br></div>
</div>

--94eb2c05e7f8ee147105684ea593--
