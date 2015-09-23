Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C629CE00E19; Wed, 23 Sep 2015 02:56:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
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
	*      [209.85.213.47 listed in list.dnswl.org]
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1A09E007B3
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 02:56:22 -0700 (PDT)
Received: by vkgd64 with SMTP id d64so23837893vkg.0
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 02:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4jtppcreDKXXUH+7d/WO4ui2aGGW9puxWKjIuzeaLm0=;
	b=Dh+/+BGbYl+b5yu8UJqCXzPdpLMh8UFGU3ea8lARihwKXiPTNWCbh36FzZt4XAWNRJ
	6EKDEn2+Em2piIir2Zf605bVLIVqURGwLPNQaxmjqw+AHxACLARayrDZlnrKhIvo9DpC
	PC7whyB9HjUTCmJwsgt7v+US+NdmevhfzHrNgHwg9PdmcPVioUzpZhxFbrrO+CeweRL3
	hEeNwFkVzT4MJlcsrMcF9Pe0L5o4VBa9qvhcB6/V2y2FZ7PDYiCfZzFrdI72a/HDi+Ly
	dDKtfJVrm20F/hbwx8dsqFL7Ys8hqYSn5enKxpw0202EWb9pnDDL0qV5NIytQFxOKJ3E
	8LyA==
MIME-Version: 1.0
X-Received: by 10.31.107.26 with SMTP id g26mr21666317vkc.6.1443002181561;
	Wed, 23 Sep 2015 02:56:21 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Wed, 23 Sep 2015 02:56:21 -0700 (PDT)
Date: Wed, 23 Sep 2015 15:26:21 +0530
Message-ID: <CALLyC8Qt4X-=Ea7jcOY4TEnBUrGBJq_nPhALteENznRhmooCdA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: Does mount.cifs command includes in busybox package
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
X-List-Received-Date: Wed, 23 Sep 2015 09:56:25 -0000
Content-Type: multipart/alternative; boundary=001a1147830c713513052067207f

--001a1147830c713513052067207f
Content-Type: text/plain; charset=UTF-8

hi all,
     Does mount.cifs command includes in busybox package . If so then it
includes what package

PN= busybox


PACKAGES =+ "${PN}-httpd ${PN}-udhcpd ${PN}-udhcpc ${PN}-syslog ${PN}-mdev
${PN}-hwclock"

in which package cifs command include

If not does it includes in
utils-linux package

Thanks and regards
        vivek

--001a1147830c713513052067207f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi all,<div>=C2=A0 =C2=A0 =C2=A0Does mount.cifs command in=
cludes in busybox package . If so then it includes what package=C2=A0</div>=
<div><br></div><div>PN=3D busybox</div><div><br></div><div><br></div><div>P=
ACKAGES =3D+ &quot;${PN}-httpd ${PN}-udhcpd ${PN}-udhcpc ${PN}-syslog ${PN}=
-mdev ${PN}-hwclock&quot;<br></div><div><br></div><div>in which package cif=
s command include</div><div><br></div><div>If not does it includes in=C2=A0=
</div><div>utils-linux package</div><div><br></div><div>Thanks and regards<=
/div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 vivek</div></div>

--001a1147830c713513052067207f--
