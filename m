Return-Path: <jefro.net@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C9A3E00307
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 15:53:18 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iapp10 with SMTP id p10so4506766iap.35
	for <yocto@yoctoproject.org>; Fri, 06 Jan 2012 15:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=+St7pgwbmIvVOexkPwQ0E/YotQdeXW0yiHJEWfikk/I=;
	b=tWnAXrVF63r6U6t/0w3sZhR/trfV2fxof+cp7seOdvsvomSGe5L4QgN7LWDwLOTBWH
	57Y+bXwuuM4KUwalPbS+Pif8Y8JZqqJ3YwErG/W3hjYdPxpMARIlQJiOJsfE2qF8TcHc
	cJAQngtW5XpeippoK0jctHEKUmcW9T3rguA20=
MIME-Version: 1.0
Received: by 10.50.77.129 with SMTP id s1mr9153606igw.25.1325893997952; Fri,
	06 Jan 2012 15:53:17 -0800 (PST)
Sender: jefro.net@gmail.com
Received: by 10.50.76.137 with HTTP; Fri, 6 Jan 2012 15:53:17 -0800 (PST)
Date: Fri, 6 Jan 2012 15:53:17 -0800
X-Google-Sender-Auth: F6qIBdGdgF1ckvkKSRCDeAHLhVo
Message-ID: <CA+YB3raMN09N4wGm-yLa-Kh3p_68vUs4NUqWQt05YEQF0f+4nw@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Does my build disk's filesystem make a difference?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jan 2012 23:53:18 -0000
Content-Type: multipart/alternative; boundary=e89a8f3bb08dc1ff1904b5e4c0f5

--e89a8f3bb08dc1ff1904b5e4c0f5
Content-Type: text/plain; charset=ISO-8859-1

I am creating a Yocto Project build system. For various reasons, it is a
dual-boot system, win7 & linux (probably mint 12, haven't decided). I have
a primary boot disk with both operating systems and a large secondary disk
to use for build trees etc.

Does the filesystem on the big secondary disk matter? Ideally I would like
to be able to get to the large data disk from both operating systems. That
would necessitate NTFS, as win7 does not speak ext4 reliably, but I don't
want to slow my builds down.

-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--e89a8f3bb08dc1ff1904b5e4c0f5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I am creating a Yocto Project build system. For various reasons, it is a du=
al-boot system, win7 &amp; linux (probably mint 12, haven&#39;t decided). I=
 have a primary boot disk with both operating systems and a large secondary=
 disk to use for build trees etc.<div>
<br></div><div>Does the filesystem on the big secondary disk matter? Ideall=
y I would like to be able to get to the large data disk from both operating=
 systems. That would necessitate NTFS, as win7 does not speak ext4 reliably=
, but I don&#39;t want to slow my builds down.<br clear=3D"all">
<div><br></div>-- <br>Jeff Osier-Mixon <a href=3D"http://jefro.net/blog" ta=
rget=3D"_blank">http://jefro.net/blog</a><div>Yocto Project Community Manag=
er @Intel <a href=3D"http://yoctoproject.org" target=3D"_blank">http://yoct=
oproject.org</a></div>
<br>
</div>

--e89a8f3bb08dc1ff1904b5e4c0f5--
