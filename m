Return-Path: <sdliyong@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF87E00894; Tue, 20 Jan 2015 23:52:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sdliyong[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FCCFE0086E
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 23:52:14 -0800 (PST)
Received: by mail-qg0-f53.google.com with SMTP id a108so25139324qge.12
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 23:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=48USZ9kvkwiYm9j9wl7G9zrU3OP4FvJqIojGukGSl7w=;
	b=BQAJrlkyTz8f1+NsQQSlMcHYyY5Db3qzWfGxvXedD9vVz/+LrFLUuG55JR4OxI+LCC
	AlPeyCH/tPo61F3ZQPhDgLGBch0LlWoIGXgxuaY90PAFnMpT9r6LVAVKMjJwehffFrac
	Exvfba//Jy3YYQm6FR1Qh/z8lAYmpR6+T83X/i7ntImZDvvmzW2wttuDpjUxX8Ew+vbW
	KtD/QQO82Ffu2T5Bq3TDc3VvjnLl0Skch7meXBEcfbx+wbpV/YpTrXRchIjeK4GPjR/l
	bHG656RRvv3W4ufVmAbdnUk9Ujqk3McDoe+9ire/no3DxgPfjcULC3HNsg2+BkxW/xhb
	Nw9Q==
X-Received: by 10.229.248.69 with SMTP id mf5mr65578693qcb.29.1421826733635;
	Tue, 20 Jan 2015 23:52:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.70.194 with HTTP; Tue, 20 Jan 2015 23:51:53 -0800 (PST)
From: Yong Li <sdliyong@gmail.com>
Date: Wed, 21 Jan 2015 15:51:53 +0800
Message-ID: <CADO9-pdVciMmmOJda=YE75JLzBOSrJ8ZjmSggEZcAp7a5ye6AQ@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Yong Li <sdliyong@gmail.com>
Subject: Cannot build the core-image-directfb for
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
X-List-Received-Date: Wed, 21 Jan 2015 07:52:25 -0000
Content-Type: multipart/alternative; boundary=001a113340da63fec6050d24d5b4

--001a113340da63fec6050d24d5b4
Content-Type: text/plain; charset=UTF-8

I can build the core-minimal or X11 image,  but I cannot build the directfb
image, below is the error message, any suggestions?

bitbake core-image-directfb -v
Loading cache: 100%
|#####################################################################################################################################|
ETA:  00:00:00
Loaded 1313 entries from dependency cache.
Parsing recipes: 100%
|###################################################################################################################################|
Time: 00:00:00
Parsing of 915 .bb files complete (914 cached, 1 parsed). 1313 targets, 112
skipped, 0 masked, 0 errors.
ERROR: Nothing PROVIDES 'core-image-directfb'
ERROR: core-image-directfb was skipped: missing required distro feature
'directfb' (not in DISTRO_FEATURES)

I have modified the conf/local.conf file as below:
DISTRO_FEATURES_append = "directfb sysvinit"
DISTRO_FEATURES_remove = "x11 wayland"

MACHINE ??= "intel-corei7-64"

--001a113340da63fec6050d24d5b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I can build the core-minimal or X11 image, =C2=A0but =
I cannot build the directfb image, below is the error message, any suggesti=
ons?</div><div><br></div><div>bitbake core-image-directfb -v</div><div>Load=
ing cache: 100% |##########################################################=
###########################################################################=
| ETA: =C2=A000:00:00</div><div>Loaded 1313 entries from dependency cache.<=
/div><div>Parsing recipes: 100% |##########################################=
###########################################################################=
##############| Time: 00:00:00</div><div>Parsing of 915 .bb files complete =
(914 cached, 1 parsed). 1313 targets, 112 skipped, 0 masked, 0 errors.</div=
><div>ERROR: Nothing PROVIDES &#39;core-image-directfb&#39;</div><div>ERROR=
: core-image-directfb was skipped: missing required distro feature &#39;dir=
ectfb&#39; (not in DISTRO_FEATURES)</div><div><br></div><div>I have modifie=
d the conf/local.conf file as below:</div><div><div>DISTRO_FEATURES_append =
=3D &quot;directfb sysvinit&quot;</div><div>DISTRO_FEATURES_remove =3D &quo=
t;x11 wayland&quot;</div></div><div><br></div><div>MACHINE ??=3D &quot;inte=
l-corei7-64&quot;<br></div></div>

--001a113340da63fec6050d24d5b4--
