Return-Path: <bewithsathish@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0061E0030F
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 01:10:05 -0800 (PST)
Received: by pbcc11 with SMTP id c11so2915977pbc.35
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 01:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=AgyV82l2ucXJXCAWlQXAH6ubnNm1xAlJJgbv+PGZQrg=;
	b=DLqCqwuJw6u54v7Zg/p8/Fd6tUTJxceouGsnzfOOgWcO84WxPQ9mgfwvoZzNsgxMe7
	dyNytTKNBlLbAWcZPXBqVZHgnMtezwcOswdmrp4Wvv4XkIBGUTu0QPPo4OwXWpdVE1W1
	Q4bpJf5y9h5ZDe5t+QZpcgE/Bw44grdLHpzZQ=
MIME-Version: 1.0
Received: by 10.68.73.100 with SMTP id k4mr22106700pbv.55.1327741805168; Sat,
	28 Jan 2012 01:10:05 -0800 (PST)
Received: by 10.68.232.5 with HTTP; Sat, 28 Jan 2012 01:10:05 -0800 (PST)
Date: Sat, 28 Jan 2012 14:40:05 +0530
Message-ID: <CANJvwR-J4C50rF-hS=ANkH=SUsVDqpj64feTONGsmy1xOk=dmw@mail.gmail.com>
From: Sathishkumar Duraisamy <bewithsathish@gmail.com>
To: yocto@yoctoproject.org
Subject: Writing recipe for changing /etc/profile
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
X-List-Received-Date: Sat, 28 Jan 2012 09:10:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I have some doubts in launching my application while booting. That is,
once  my device is powered on,  should land in my application. I found
that by adding some scripts to /etc/profile and enabled auto login, it
does.

Is there a better way to do same? And if the current method is
sufficient, then how do I add patch to change /etc/profile file, or
which recipe gives this file so that I can the in my yocto layer.

-- 
Regards,
Sathishkumar D
http://flowersopenlab.weebly.com/

