Return-Path: <deepteriar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59C98E00BCC; Wed, 25 Nov 2015 23:39:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (deepteriar[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 027B4E00B5D
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 23:39:42 -0800 (PST)
Received: by iouu10 with SMTP id u10so78286510iou.0
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 23:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tkeEkoRtSrpa5CzplLCZl5hDcFPQDuJih+qWVooVzBg=;
	b=OdSPokvH7JVa4Tn2BbIgoIWFrUiyjzrDLTHZ8VlNk0rHrG8mUkNDRaoVyoh7GQsyqv
	pupERhUA0LiB1HmtKKpOhe/QjEpYz+5KOFW/w60Q43qIto0wmSxPCKhJvSfFpTJFAcSG
	pRHdlK9NdKNktnqZ89vDw/bflgm4wNNP2l5aoAquRfu7a3OZpWugvCqVejxdjaZAbfKh
	dJdwdnUli/5obNuy8b5Pm0eY7xn4xEvLwROvdYWY1a0wn23wdkSRMek3siUFQOLwOYhf
	PeMwH5dkv+zXDTwZpJuWmfWF5+2bvSal8+6qB1MRl5XK0x+5F6eHIjz7W00zaQPc7WQq
	xgQA==
MIME-Version: 1.0
X-Received: by 10.107.30.85 with SMTP id e82mr38935167ioe.166.1448523581705;
	Wed, 25 Nov 2015 23:39:41 -0800 (PST)
Received: by 10.36.220.2 with HTTP; Wed, 25 Nov 2015 23:39:41 -0800 (PST)
Date: Thu, 26 Nov 2015 13:09:41 +0530
Message-ID: <CAM_pFj_cwoDAC30cBcPB1besMJwZuO=mh6E4-n8Q5=5=2j_VWg@mail.gmail.com>
From: Deepika Teriar <deepteriar@gmail.com>
To: yocto@yoctoproject.org
Subject: Copying the kernel in the poky directory
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
X-List-Received-Date: Thu, 26 Nov 2015 07:39:45 -0000
Content-Type: multipart/alternative; boundary=001a1140c20a8954ee05256cad20

--001a1140c20a8954ee05256cad20
Content-Type: text/plain; charset=UTF-8

Hi

I am customizing yocto for beaglebone black
I do not want my kernel to get downloaded from the git after I clean the
build directory. So i have kept the linux-kernel directory with the name
kernel-3.14.29 in the poky directory.
And in the linux-yocto_3.14.bb file i have changed SRC_URI *from:*

SRC_URI = "git://
git.yoctoproject.org/linux-yocto-3.14.git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta
"

*to :*

SRC_URI = "file://${COREBASE}/kernel-3.14.29"

On compiling core-image-minimal I am getting the following error



*ERROR: ExpansionError during parsing
/home/deepika/bbb/poky/meta/recipes-kernel/linux/linux-yocto_3.14.bb
<http://linux-yocto_3.14.bb>: Failure expanding variable do_patch:
ExpansionError: Failure expanding variable SRCPV, expression was
${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher
failure: SRCREV was used yet no valid SCM was found in SRC_URI*
Can any one tell me the error?

Thanks
Deepika

--001a1140c20a8954ee05256cad20
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi<br><br></div><div>I am customizing yocto=
 for beaglebone black<br></div>I do not want my kernel to get downloaded fr=
om the git after I clean the build directory. So i have kept the linux-kern=
el directory with the name kernel-3.14.29 in the poky directory. <br></div>=
And in the <a href=3D"http://linux-yocto_3.14.bb">linux-yocto_3.14.bb</a> f=
ile i have changed SRC_URI <b>from:</b><br><br>SRC_URI =3D &quot;git://<a h=
ref=3D"http://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=3D1;branc=
h=3D${KBRANCH},${KMETA};name=3Dmachine,meta">git.yoctoproject.org/linux-yoc=
to-3.14.git;bareclone=3D1;branch=3D${KBRANCH},${KMETA};name=3Dmachine,meta<=
/a>&quot;<br><br></div><b>to :</b><br><div><br>SRC_URI =3D &quot;file://${C=
OREBASE}/kernel-3.14.29&quot;<br><br></div><div>On compiling core-image-min=
imal I am getting the following error<br><b><br>ERROR: ExpansionError durin=
g parsing /home/deepika/bbb/poky/meta/recipes-kernel/linux/<a href=3D"http:=
//linux-yocto_3.14.bb">linux-yocto_3.14.bb</a>: Failure expanding variable =
do_patch: ExpansionError: Failure expanding variable SRCPV, expression was =
${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher f=
ailure: SRCREV was used yet no valid SCM was found in SRC_URI<br><br></b></=
div><div>Can any one tell me the error?<br><br></div><div>Thanks<br></div><=
div>Deepika<br></div><div><br></div><div><br></div></div>

--001a1140c20a8954ee05256cad20--
