Return-Path: <brduffy@gmail.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0991BE01389
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 10:08:45 -0800 (PST)
Received: by mail-ve0-f181.google.com with SMTP id jz11so662146veb.26
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2013 10:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ys3vRTUjk3b/zPxB4r0l8G6oFToBpVeMqrQjMuLGNHU=;
	b=kIQy9hBbQMmr3/8AzZIUzVT1iZng9zmRe5n8rY9hWyVvt2yYNHrH0UTYICtRhlxnTv
	97FhmZlWDBr3yWEKriD72Kx4s3HFwGJBH/yIn10NRKNtQ4CAoolzy7mGZcZ5/YbDqrdz
	Japnf49YFbYb5hJ3RtSKhFMsWclT0Rg1gAv+JS6CU3CTesOGi2HqWG+V64r8c3Vw1Ifn
	QYr/Y5EfJ773/sojqNfTiPjOEqJvWobhm+S0gZIxpbXrVQEgSlgcW+CP2D7MIyXtndeV
	yxiHfXom7149a1TFVnwaho+wHCDRHvLTq8bhkT0dCvip+N7DHufkRtB2mrpKmYHkHmta
	3c+g==
MIME-Version: 1.0
X-Received: by 10.58.46.171 with SMTP id w11mr7746646vem.5.1383847724666; Thu,
	07 Nov 2013 10:08:44 -0800 (PST)
Received: by 10.220.203.200 with HTTP; Thu, 7 Nov 2013 10:08:44 -0800 (PST)
Date: Thu, 7 Nov 2013 13:08:44 -0500
Message-ID: <CAHrDPkpkD9XkXpm5pzoM01wePh8GpAAJRfHT1fSKQKR7q22OhQ@mail.gmail.com>
From: Brian Duffy <brduffy@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Writing image to disk ...
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
X-List-Received-Date: Thu, 07 Nov 2013 18:08:46 -0000
Content-Type: multipart/alternative; boundary=089e013cbdf20d55d404ea9a28bf

--089e013cbdf20d55d404ea9a28bf
Content-Type: text/plain; charset=ISO-8859-1

Oh, is this how I do it? Take the usb image that is automatically generated
and do this ...

 dd if=generated_image.hddimg of=/dev/sdb


-- 
Duff

--089e013cbdf20d55d404ea9a28bf
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Oh, is this how I do it? Take the usb image that is automatically generated and do this ...<div><br></div><div><pre style="padding:0px;margin-top:0px;margin-bottom:0px;color:rgb(255,255,255);font-size:13px;background-color:rgb(51,51,51)">
<code> dd if=generated_image.hddimg of=/dev/sdb</code></pre><div><br></div>-- <br>Duff
</div></div>

--089e013cbdf20d55d404ea9a28bf--
