Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CFCBE00C59; Tue,  8 May 2018 07:55:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 309BCE0084D
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 07:55:55 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id r9-v6so38705239iod.6
	for <yocto@yoctoproject.org>; Tue, 08 May 2018 07:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=AzBhLJAbXjzgLe2oYJziSw27zVEaLLSS+SX1CcImMOo=;
	b=GQcdXwwBaDbnvMUt0bdDillCIzAypM/Fr36CgI8pR+mYhnu0riF3HDfN8MZf3ML14F
	omGn16nkOh2RpnodB7HYx+V8CMZQm4KEzAsO8Q+AISZE4CQ5rUWOqt5qNAteDyoL9OlZ
	sN2Uv+sAA/EwmlIpyqtM0juVQya1FbASayoB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AzBhLJAbXjzgLe2oYJziSw27zVEaLLSS+SX1CcImMOo=;
	b=bW1/1igI5JyrwVoIsmUqQdaC2qyE5t3SyzjNji7ZZEx0/jn4l5hBTQ24UqdlrnE+c4
	mWUVtMPPTSMCQXvH61l/1LX6t+5Id+0MLrote+iWmzHwo5u4yfKJOyqrZaAVw/EWCXy5
	Bwz7naXD5l9f9rOSHXlMY+eJ7nOhqgmRUuQ7HG3CdG2x3nGkYehdYWrAhZU4ZLxsmEog
	ZOvffaLQN0A3VQoua/R9qmpD0rgL2mHnpT374RSiWUqB3VeOB3hNp9oXFF5e9ZqrVs3z
	Ls06H0NA/rURjM5hj/+IlQuJChKLH4k5EcumH68HA/CfaXiLHb109THGi2Awl2MXfTLc
	mmiw==
X-Gm-Message-State: ALQs6tDr6DhO4x1Eqte99U/TznQOdNOU6/jBIe7QJ74GwFzsui+ZL/Jl
	fZgRKzkuH6kqmFgqJ3Bb2HsihCpY8cX4VJEd3l9qs/+A
X-Google-Smtp-Source: AB8JxZrK9GNN21dfwe2zuViw+sBkEAOy1R5/SCY9z66uqYFdfcVwSwKGiaJRDHdeVvhvDVvqpkNbn+e4Hcuz6+I74Rk=
X-Received: by 2002:a6b:98b:: with SMTP id 11-v6mr46848235ioj.90.1525791354780;
	Tue, 08 May 2018 07:55:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b04:0:0:0:0:0 with HTTP;
	Tue, 8 May 2018 07:55:54 -0700 (PDT)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Tue, 8 May 2018 16:55:54 +0200
Message-ID: <CAALXFYw5fYE+JBAO4hrXFO-L3wyE6DRzP-yFWbPvKX6S1eRePw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Native curl and SSL CA certificates
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
X-List-Received-Date: Tue, 08 May 2018 14:55:57 -0000
Content-Type: multipart/alternative; boundary="000000000000b4153f056bb2fbf1"

--000000000000b4153f056bb2fbf1
Content-Type: text/plain; charset="UTF-8"

Hello forum.

Using the "rocko" branch. The SSL CA certificates "ca-certificates.crt"
don't appear inside this directory:

build/tmp/work/x86_64-linux/curl-native/7.54.1-r0/recipe-sysroot-native/etc/ssl/certs/

That generates issues when trying to build images that use a https
repository of rpm packages:

This is the repository configuration included:

$ yocto-adv-rpm.repo
[yocto-adv-rpm]
name=Rocko Yocto Repo
baseurl=https://storage.googleapis.com/my_repo/
gpgkey=https://storage.googleapis.com/my_repo/PACKAGEFEED-GPG-KEY-rocko
enabled=1
gpgcheck=1

This repository configuration doesn't work fine. When I try to build
"myimage" recipe, I always get this error:

ERROR: myimage-1.0-r0 do_rootfs: [log_check] myimage: found 1 error message
in the logfile:
[log_check] Failed to synchronize cache for repo 'yocto-adv-rpm', disabling.
ERROR: myimage-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/yocto/yocto/build/tmp/work/machine-poky-linux/myimage/1.0-r0/temp/log.do_rootfs.731
ERROR: Task
(/home/yocto/yocto/sources/meta-mylayer/recipes-images/myimage.bb:do_root

I found some relevant information inside this file:

yocto/build/tmp/work/machine-poky-linux/myimage/1.0-r0/temp/dnf.librepo.log

The relevant part:

15:56:41 lr_download: Downloading started
15:56:41 check_transfer_statuses: Transfer finished: repodata/repomd.xml
(Effective url: https://storage.googleapis.com/my_repo/repodata/repomd.xml)
15:56:41 check_finished_transfer_status: Fatal error - Curl code (77):
Problem with the SSL CA cert (path? access rights?) for
https://storage.googleapis.com/my_repo/repodata/repomd.xml [error setting
certificate verify locations:
  CAfile:
/home/yocto/yocto/build/tmp/work/x86_64-linux/curl-native/7.54.1-r0/recipe-sysroot-native/etc/ssl/certs/ca-certificates.crt
  CApath: none]
15:56:41 lr_yum_download_repomd: repomd.xml download was unsuccessful

This can be fixed copying "ca-certificates.crt" inside the provided
directory (manually):

$ cp /etc/ssl/certs/ca-certificates.crt
/home/yocto/yocto/build/tmp/work/x86_64-linux/curl-native/7.54.1-r0/recipe-sysroot-native/etc/ssl/certs/

I assume "ca-certificates.crt" file should be already included in that
path.

Is this a bug related with curl or ca-certificates recipe? What should be
the right way to fix it?

Thank you in advance.

Kind regards,
  -- Ivan

--000000000000b4153f056bb2fbf1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello forum.=C2=A0</div><div><br></div=
><div>Using the &quot;rocko&quot; branch. The SSL CA certificates &quot;ca-=
certificates.crt&quot; don&#39;t appear inside this directory:<br></div><di=
v><br></div><div>build/tmp/work/x86_64-linux/curl-native/7.54.1-r0/recipe-s=
ysroot-native/etc/ssl/certs/<br></div><div><br></div><div>That generates is=
sues when trying to build images that use a https repository of rpm package=
s:</div><div><br></div><div><div>This is the repository configuration inclu=
ded:</div><div><br></div><div>$ yocto-adv-rpm.repo</div><div>[yocto-adv-rpm=
]</div><div>name=3DRocko Yocto Repo</div><div>baseurl=3D<a href=3D"https://=
storage.googleapis.com/my_repo/">https://storage.googleapis.com/my_repo/</a=
></div><div>gpgkey=3D<a href=3D"https://storage.googleapis.com/my_repo/PACK=
AGEFEED-GPG-KEY-rocko">https://storage.googleapis.com/my_repo/PACKAGEFEED-G=
PG-KEY-rocko</a></div><div>enabled=3D1</div><div>gpgcheck=3D1</div><div><br=
></div><div>This repository configuration doesn&#39;t work fine. When I try=
 to build &quot;myimage&quot; recipe, I always get this error:</div><div><b=
r></div><div>ERROR: myimage-1.0-r0 do_rootfs: [log_check] myimage: found 1 =
error message in the logfile:</div><div>[log_check] Failed to synchronize c=
ache for repo &#39;yocto-adv-rpm&#39;, disabling.</div><div>ERROR: myimage-=
1.0-r0 do_rootfs: Function failed: do_rootfs</div><div>ERROR: Logfile of fa=
ilure stored in: /home/yocto/yocto/build/tmp/work/machine-poky-linux/myimag=
e/1.0-r0/temp/log.do_rootfs.731</div><div>ERROR: Task (/home/yocto/yocto/so=
urces/meta-mylayer/recipes-images/myimage.bb:do_root</div></div><div><br></=
div><div>I found some relevant information inside this file:<br></div><div>=
<div><br></div><div>yocto/build/tmp/work/machine-poky-linux/myimage/1.0-r0/=
temp/dnf.librepo.log</div><div><br></div><div>The relevant part:</div></div=
><div><br></div><div>15:56:41 lr_download: Downloading started<br></div><di=
v><div>15:56:41 check_transfer_statuses: Transfer finished: repodata/repomd=
.xml (Effective url: <a href=3D"https://storage.googleapis.com/my_repo/repo=
data/repomd.xml">https://storage.googleapis.com/my_repo/repodata/repomd.xml=
</a>)</div><div>15:56:41 check_finished_transfer_status: Fatal error - Curl=
 code (77): Problem with the SSL CA cert (path? access rights?) for <a href=
=3D"https://storage.googleapis.com/my_repo/repodata/repomd.xml">https://sto=
rage.googleapis.com/my_repo/repodata/repomd.xml</a> [error setting certific=
ate verify locations:</div><div>=C2=A0 CAfile: /home/yocto/yocto/build/tmp/=
work/x86_64-linux/curl-native/7.54.1-r0/recipe-sysroot-native/etc/ssl/certs=
/ca-certificates.crt</div><div>=C2=A0 CApath: none]</div><div>15:56:41 lr_y=
um_download_repomd: repomd.xml download was unsuccessful</div></div><div><b=
r></div><div>This can be fixed copying &quot;ca-certificates.crt&quot; insi=
de the provided directory (manually):<br></div><div><br></div><div>$ cp /et=
c/ssl/certs/ca-certificates.crt /home/yocto/yocto/build/tmp/work/x86_64-lin=
ux/curl-native/7.54.1-r0/recipe-sysroot-native/etc/ssl/certs/<br></div><div=
><br></div><div>I assume &quot;ca-certificates.crt&quot; file should be alr=
eady included in that path.=C2=A0</div><div><br></div><div>Is this a bug re=
lated with curl or ca-certificates recipe? What should be the right way to =
fix it?</div><div><br></div><div>Thank you in advance.</div><div><br></div>=
<div>Kind regards,</div><div>=C2=A0 -- Ivan</div><div><br></div><div><br></=
div>
</div>

--000000000000b4153f056bb2fbf1--
