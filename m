Return-Path: <sasikanth.v19@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE078E00B74; Wed,  4 Jun 2014 16:20:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sasikanth.v19[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.44 listed in list.dnswl.org]
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC11BE00B20
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 16:20:42 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id o6so243522oag.3
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 16:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ckQseNXOF6cRMDF0rBPHbWdQ+8OcExjVXmZaduiw/6c=;
	b=lR+/Tv1b45hd5t0YtOgj0P6oNNG0AjO/bcsfZTwq2nABqsTmybPG3Q25dYaaT6pMfH
	XF7WcvPXaJWoLJ+bsr4sJ3YNsD094OzvRFcaqoH/EuGbqa+F7EoZvHBmcNEAhZRAYSG7
	VRWNWchYML+7lm3A/uv5lC4lh8xmg+4ju6NiJc9gG9nkzYgjB0OHv/FvshWyV8NPmg2T
	Tcv6bd6E/37WfhWW1OaX4mjVd56xtrx+ZozimyM8kfbCNkj6e6sG9UzF4HNwlD/e4vVW
	ZEM5Z9XIyuME9O5NtDQJyQ6mCIbyeNo9LLyaPAiFPpfyevYYxGzArKMsgyPWekB0BzwT
	Rrxw==
MIME-Version: 1.0
X-Received: by 10.60.173.228 with SMTP id bn4mr63396397oec.27.1401924041328;
	Wed, 04 Jun 2014 16:20:41 -0700 (PDT)
Received: by 10.76.22.193 with HTTP; Wed, 4 Jun 2014 16:20:41 -0700 (PDT)
Date: Thu, 5 Jun 2014 04:50:41 +0530
Message-ID: <CAOJFanU-Fvwha9VFo-nxrLb-CQF8Cb3WDWt-20z3Y_1BvhpfiA@mail.gmail.com>
From: Sasikanth babu <sasikanth.v19@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 06 Jun 2014 11:32:24 -0700
Subject: Procedure to build Initramfs Image
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
X-List-Received-Date: Wed, 04 Jun 2014 23:20:45 -0000
Content-Type: multipart/alternative; boundary=089e0118254a7c4de104fb0ae032

--089e0118254a7c4de104fb0ae032
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

    How to build initramfs image (rootfs embedded in kernel - uimage)?. I
know it has been asked several time on this mailing list  but could find a
solution?.


I tried steps mentioned in the below link

http://kexecboot.org/documentation/crosscompiling/oe-yocto

but I got rootfs.cpio.gz and uimage no initramfs(rootfs embedded in kernel);


Any suggestions or links on how to build initamfs image.

Thanks in advance.

- Sasi

--089e0118254a7c4de104fb0ae032
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D":4vv" class=3D""><div id=3D":4vu" class=3D"" st=
yle=3D"overflow:hidden"><div dir=3D"ltr"><div><div><div><div>Hi all,<br><br=
></div>=A0=A0=A0
 How to build initramfs image (rootfs embedded in kernel - uimage)?. I=20
know it has been asked several time on this mailing list=A0 but could find
 a solution?.<br><br>
<br>I tried steps mentioned in the below link<br><br><a href=3D"http://kexe=
cboot.org/documentation/crosscompiling/oe-yocto" target=3D"_blank">http://k=
execboot.org/documentation/crosscompiling/oe-yocto</a><br><br></div>but I g=
ot rootfs.cpio.gz and uimage no initramfs(rootfs embedded in kernel);<br>

<br><br></div>Any suggestions or links on how to build initamfs image.<br><=
br></div><div>Thanks in advance. <br></div><div><br></div>- Sasi</div></div=
></div><br></div>

--089e0118254a7c4de104fb0ae032--
