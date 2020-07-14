Received: from mout.web.de (mout.web.de [212.227.15.4])
 by mx.groups.io with SMTP id smtpd.web10.21686.1594738516822023201
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 07:55:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=IzbEHHI4;
 spf=pass (domain: web.de, ip: 212.227.15.4, mailfrom: jk.behnke@web.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
	s=dbaedf251592; t=1594738515;
	bh=WNiJMNDAW8TvPty+RrG2ZqdHdcqgIoxHkmQdRXjvJvM=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=IzbEHHI4KMMpfp2nEXa05QLdwKtsDbNQhfNy3/tjyduaAt8ztRuyqfWvPovB/jiUy
	 o034PqeQ6xf9ZmimNeXbInrdFGxHtWAnN/vj3tZFGZCpOZxLJu+ix9P/erewX9IxbE
	 tSxeRLITFTBYyoaHu4705/ds28s8jhHTi5OPT7i0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [212.185.41.2] ([212.185.41.2]) by web-mail.web.de
 (3c-app-webde-bs28.server.lan [172.19.170.28]) (via HTTP); Tue, 14 Jul 2020
 16:55:15 +0200
MIME-Version: 1.0
Message-ID: <trinity-4331e736-d308-4ebc-8b78-38ca72ff18a4-1594738515025@3c-app-webde-bs28>
From: "Jochen Behnke" <jk.behnke@web.de>
To: yocto@lists.yoctoproject.org
Subject: packages "shadow base-passwd" get removed at the end of do_rootfs
Date: Tue, 14 Jul 2020 16:55:15 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:EkrnUlFX5Mlc+WPj6hpaecj4idDVOl2uhdNjfg0lTIaAUbeG61AKOVEBSEKFyGnlte0Qp
 RdlzY8Sq1CLHf2Jgoi2ICMObLpo6c0UHnmVgUwR+v37nKCuk+wrVcP9uq5SKGfeE6zUfkZMAKBLJ
 7ervnArtmS3s79oimaJvkkS7nmqPE3Ip2FIJGJcrHR6qErRyjSvGks4N/+hJX4SHKPlyxMs2YT1D
 wkikwTQ1pmc58S13GjPLpDChRnylDyNBv8XBKeDB96DW2ZZYjT7JeVr01W2IGK9oMFPaeH8AyrSu
 78=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NkOEC/LC80U=:nQWjsf6VahwdAOfugDVFbA
 AGaOC2HQbf1UM4MmaztLnUDJzJO00TlBW3pOtpqSKOMoLND00ofokaEknKn7vxN2rDEXcm2is
 sAmQQrVND7GQS2VE7mfacTbs7KoST7xebo+cESLp7KhoNJgNX1jPehEJobKe/ci3J81EBlJkh
 qIOYCf1HWozLRcAEvFhINtJIIweoB91HCWLH6na88gwXJAuT7xvUt9q1LiK0OJnYBsqLlnLFs
 vbuVMAUEZKvzwIEPGbwNz1/Jmze7uh9b9HJvah5jkxqyhDOguRcf+LepBuTyTHvbn0jn2knZa
 b1ZFtTfxsB5gTlxKjbP1gs1VeqdB+Gj791KWcBsAJ2gHxyOUA84KjHIMYeIdEfSIBBC5yXPIi
 k1uv8Wuaje85KLlUtN0um74Kvf1ZQhIfaltbi+s2Xje5dblmcYPI++4I6ora+dllNOxHHMGYg
 hT7tPAmSDQGLW1jiEyFaoa5qIyQihnjjis58exvJxAXXjQQVVERsc8coLfCBc3G+6o5DUjoRl
 j7BsbY/vit63b4xVHVE/p2KzkS5JB2HO/csiOfFWWAIHCvpK3YRwsq9QglHS7KqdAiXzEuhGQ
 tmbSY1wDmxVzMhbjLL8Byild9do5JnBGg4PMQofeRL4sMOPeD26JywGJcpmUDy40xsNN2SAHM
 t55wNvkodU6fHAJQIM/I0YPtQURzCk3tF7zeWsJ5U+svCp9tXA868KmVKAP1vSS9wSxU=
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hello,</div>

<div>&nbsp;</div>

<div>I have recipe &quot;my-package&quot; that</div>

<div>a) adds a user to the system (using &quot;inherit useradd&quot;)</div>

<div>b) installs some bash-scripts</div>

<div>&nbsp;</div>

<div>The my-package package is part of my image recipe and integrates without any problems.</div>

<div>The image also runs fine, no problems with the functionality of my-package so far.</div>

<div>&nbsp;</div>

<div>But, when I try to install a newer (or the same) version of my-package on the target, rpm complains about missing dependencies.</div>

<div>
<div>The missing packages in the first place are</div>

<div>- shadow</div>

<div>- base-passwd</div>

<div>&nbsp;</div>

<div>Querying the target rpm database (rpm -qa) confirms this, these packages are not installed (any more).</div>

<div>Having a look at log.do_rootfs revealed that the missing packages are installed during do_rootfs but are removed again at the end of the do_rootfs task.</div>

<div>Why is that?</div>
</div>

<div>&nbsp;</div>

<div>I am using &quot;thud&quot; version of poky.</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>Thanks for any hint.</div>

<div>&nbsp;</div>

<div>Jochen</div>

<div>&nbsp;
<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;</div>
</div></div></body></html>
