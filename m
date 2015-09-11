Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1777FE00C02; Fri, 11 Sep 2015 02:16:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15B5DE00B37
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 02:16:51 -0700 (PDT)
Received: by vkfp126 with SMTP id p126so22948219vkf.3
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 02:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=q4wPXaNPH/tZuz6XQpjrjHG+vKzrfQxGEd14E+KddDc=;
	b=SZtkAPLBYEGMGzV0+8HOjIRS09LUR+CXZRVd4iKnKCxK5MShNUanYMiR0laOjCM3vT
	xYkvP/4AlPvJtUhQEmNbJf/ZnhbXXAkjw+f5DvG/KdxkYByKKZTQCa+5baNcBDrDs0UA
	QhCI4l/HaR2zaVN6uI9Hhekjo9WkGtAwP/zPz7gc7CW8AQwGNyZ4oY+lRLFvhh+iVlco
	mtq1d31W6C174Fvwj6+wfMW8i42dAGYyBanPAUJGwvs/92fxyylBha0xHY7tfKJxEoXG
	7fixNMJGG+Saj8vp+6QDgq0WHeaNRPQHWn3+duusTb1OjmKIzT75oebsyZzJfUU90xAX
	oOsA==
MIME-Version: 1.0
X-Received: by 10.31.180.78 with SMTP id d75mr3542536vkf.108.1441963010929;
	Fri, 11 Sep 2015 02:16:50 -0700 (PDT)
Received: by 10.31.179.12 with HTTP; Fri, 11 Sep 2015 02:16:50 -0700 (PDT)
Date: Fri, 11 Sep 2015 14:46:50 +0530
Message-ID: <CALLyC8QMNEAfwAuvTb88mjP7La2P4eYo5xw9CaFCqzR9NFxH_Q@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: How can i modify the dropbear.service file in ssh-server-dropbear IMAGE_FEATURE
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
X-List-Received-Date: Fri, 11 Sep 2015 09:16:55 -0000
Content-Type: multipart/alternative; boundary=001a11438da20bbc00051f752dc9

--001a11438da20bbc00051f752dc9
Content-Type: text/plain; charset=UTF-8

Hi,
     I want to modify changes to the dropbear.service and
dropbearkey.service files before yocto  creating the final image (This
resides in /lib/systemd/system/*******.services). This dropbear is added
through *IMAGE_FEATURES =+ "ssh-server-dropbear" *in image recipe*.*
Can i able to change dropbear.service file before creating final image.


Thanks and Regards
       vivek

--001a11438da20bbc00051f752dc9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0I want to modify changes to th=
e dropbear.service and dropbearkey.service files before yocto =C2=A0creatin=
g the final image (This resides in /lib/systemd/system/*******.services). T=
his dropbear is added through <font color=3D"#444444"><b>IMAGE_FEATURES =3D=
+ &quot;ssh-server-dropbear&quot; </b>in image recipe<b>.</b></font></div><=
div>Can i able to change dropbear.service file before creating final image.=
=C2=A0</div><div><br></div><div><br></div><div>Thanks and Regards</div><div=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0vivek</div></div>

--001a11438da20bbc00051f752dc9--
