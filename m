Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40048E0091D; Thu, 28 Feb 2019 09:40:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
	[209.85.222.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DCDDE006D8
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 09:40:05 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id d4so8596977uap.5
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 09:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XizczyQznFITv0rWnswtQyIZ57CGCoLEf+lHo5GIzd4=;
	b=qfQWbli5aewE89QiunIpblMM0l9ATqO6uKwjGwTd9U2gXINI5Uu8wGnXBZncwMqbhX
	+Xq7sfwBXQN4zURC9Amg9M2ewmzWfJ2ZF5CvWc2KbSK8OX5aTdjSVtjWMAq7J2HP7AC5
	OmLx1WQHf0CxYycwJHrFDbKI+lvGsBpWHni5ArwNJwNU8QnQQ4h61Rf7TcRgJVmYFDl0
	fRhZ5x9lPqjm1wdgW4fU3GhqANiqSCTBniy024A/hWOUYVLQEfFqJbVCXDFI/8KoRFmX
	uSLnY38DDXyuOaWNWv2G4mTXf7qrXSfwK0jvF3lBsIZAMzFgQxx4hq1wZNrjB62GUNhT
	x0Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XizczyQznFITv0rWnswtQyIZ57CGCoLEf+lHo5GIzd4=;
	b=F7hsrlLxjINJZTttzzAAtTXcBak1z4YueWsQqOu9sL/C4NfR9vq1ecN25q3V1vGv7b
	HyGmzKVjmCAhy4TOjAAmxf1T5AZ85+Z0cGrc6xv01493wWf9yA9JCM2dpfhXfMGw+EPC
	YwN33hYWFJWMm3ZJg+4zB+bh6UyOZsJRXh6iaoZrlObsCAiWk16oYFymmlM3kXLIFdzK
	063cvfSqWMg6TqkGQC/GOM6JWTZqsi8afXEzclg2ftPUyPmSvwiCrsh20ni7V7mu9Y7m
	GB2tDQl1cDl2VkQwCvd3+ArTZv7bGVwEZ8J1zI4p0v9iQg6JbMxw6tCRTQd99LqHyxzC
	zS1g==
X-Gm-Message-State: APjAAAVV8avMA5zNWhUwAkhSkPmZ/DLQvt6ZTCpjmB7JiVKeeLYrFm1B
	+AFfwAvQEQkYH6itqfe22VqouN5wNlA6N/6H4jVbnQ==
X-Google-Smtp-Source: APXvYqzl8w1FKikbNV/kwVMac5aO/AZyiDq7BjoqxV92yvpTFE3/raYRSn3vgg0SBKFF6ldIWsL0RF837XxMIjYL/To=
X-Received: by 2002:ab0:6916:: with SMTP id b22mr119469uas.67.1551375604484;
	Thu, 28 Feb 2019 09:40:04 -0800 (PST)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Thu, 28 Feb 2019 18:39:52 +0100
Message-ID: <CAKRytNxUh1LXkWxofR3iayi3c7um_bqD_3RhbTLyxPYz6Sd+tw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Cannot use LICENSE_CREATE_PACKAGE = "1" with mDNS package
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
X-List-Received-Date: Thu, 28 Feb 2019 17:40:06 -0000
Content-Type: multipart/alternative; boundary="000000000000d195670582f7c7ea"

--000000000000d195670582f7c7ea
Content-Type: text/plain; charset="UTF-8"

I'm using the latest version from git branch of yocto thud.

If I add to INSTALL the package "mdns" and also I want to create all files
for licenses adding LICENSE_CREATE_PACKAGE = "1" the build of the final
image fails with this error:

Error myimage-1.0-r0 do_rootfs: Postinstall scriptlets of ['mdns'] have
failed. If the intention is to defer them to first boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.

Without LICENSE_CREATE_PACKAGE = "1" everything is ok because I can build
both with and without licenses but not if LICENSE_CREATE_PACKAGE is
enabled.

Do you have any suggestions? Log doesn't say nothing really useful to me.
It seems a generic error. Am I missing something?

Thanks.

--000000000000d195670582f7c7ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><span>I&#39;m using the latest version from git branch of yocto thud.=
=C2=A0</span></div><span><div><span><br></span></div>If I add to INSTALL th=
e package &quot;mdns&quot; and also I want to create all files for licenses=
 adding=C2=A0LICENSE_CREATE_PACKAGE =3D &quot;1&quot; the build of the fina=
l image fails with this error:</span><div><br></div><div>Error myimage-1.0-=
r0 do_rootfs: Postinstall scriptlets of [&#39;mdns&#39;] have failed. If th=
e intention is to defer them to first boot,<br>then please place them into =
pkg_postinst_ontarget_${PN} ().<br>Deferring to first boot via &#39;exit 1&=
#39; is no longer supported.<br></div><div><br></div><div>Without=C2=A0LICE=
NSE_CREATE_PACKAGE =3D &quot;1&quot; everything is ok because I can build b=
oth with and without licenses but not if=C2=A0LICENSE_CREATE_PACKAGE is ena=
bled.=C2=A0</div><div><br></div><div>Do you have any suggestions? Log doesn=
&#39;t say nothing really useful to me. It seems a generic error. Am I miss=
ing something?=C2=A0</div><div><br></div><div>Thanks.=C2=A0</div>

--000000000000d195670582f7c7ea--
