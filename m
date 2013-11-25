Return-Path: <mgloff@emacinc.com>
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3929AE0074F
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 16:28:42 -0800 (PST)
Received: by mail-wg0-f49.google.com with SMTP id x12so3237477wgg.16
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 16:28:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=2267KzMWXZpYRPyxP9AkGf9o1ZhVnNjtKdzs8ZPmjt8=;
	b=FoNzRYvZMv3bWy19jqQTZdQ4+tmtYfgvfDTupLmlzyna24O2miFHWJ2w+1uuIG19Sw
	SXxhXA59+eOOxaomXnQ+O/Cwy9G/MJKzlmbBFlyfWkzFX/8K+eSqkweQ//vrPStT9FT/
	e4rD4EVrHdjGROrX7hVsRPISdT62iZ+oBvzzmqL7AyojYRXona4wWx/CabfmfM8UXFlu
	ITDCoTKRXL5szMNif9SGBfkk+LCn97haON9Uw5e2bqpGctrH99TrDOYPeUOAFVUObtwM
	i877j+nRnddsgJN+HcFbjUljOQHTK1WqCtYmpRo2LkFqQQepJp5h56t72t359oUTvlKo
	03TA==
X-Gm-Message-State: ALoCoQm+OUEDIil5SsXQX5BDX+SN89x0iyyGVREjLLh4myu0HroVHLkxA4tjKdmiWcTsEODpfEZN
MIME-Version: 1.0
X-Received: by 10.180.94.100 with SMTP id db4mr11499446wib.14.1385339320744;
	Sun, 24 Nov 2013 16:28:40 -0800 (PST)
Received: by 10.216.41.137 with HTTP; Sun, 24 Nov 2013 16:28:40 -0800 (PST)
Date: Sun, 24 Nov 2013 18:28:40 -0600
Message-ID: <CALXw4G5YLnDW2Ys8kbrJv0sqYUuSAdsQRhu=aSO32gNJJYPe8w@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Boot loader/boot times
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
X-List-Received-Date: Mon, 25 Nov 2013 00:28:43 -0000
Content-Type: multipart/alternative; boundary=f46d04426bbc1b507304ebf57265

--f46d04426bbc1b507304ebf57265
Content-Type: text/plain; charset=ISO-8859-1

What bootloaders are most people here using (x86)? I'm using lilo and it
seems slow. Even skipping the data check it sits for about 5-8 secs on a
D525 Atom board. Total boot is about 20-25 secs, but I would like to
minimize it as much as possible. I know where the other delays are, but
Ubuntu on the same machine gives a login in about 5 sec total.
Thanks,

-- 
Michael Gloff

--f46d04426bbc1b507304ebf57265
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What bootloaders are most people here using (x86)? I&=
#39;m using lilo and it seems slow. Even skipping the data check it sits fo=
r about 5-8 secs on a D525 Atom board. Total boot is about 20-25 secs, but =
I would like to minimize it as much as possible. I know where the other del=
ays are, but Ubuntu on the same machine gives a login in about 5 sec total.=
<br>
</div>Thanks,<br clear=3D"all"><div><div><br>-- <br><div dir=3D"ltr"><div>M=
ichael Gloff<br></div><span style=3D"font-family:Arial,sans-serif;font-size=
:13.3333px"></span></div>
</div></div></div>

--f46d04426bbc1b507304ebf57265--
