Return-Path: <varun292006@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A9C0E0145C
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 10:18:00 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id ma3so553524pbc.7
	for <yocto@yoctoproject.org>; Tue, 07 May 2013 10:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=aWQXmong+Tw6KMIsef3MgFmNjX2JEI1Ee1haCoMPPWU=;
	b=tsE+J9368n3bSZokMC+8zDiMZNl8VGZEljbYXMrrvE2SyFblDhQ400bvtyR1iwV/Qb
	wKKqSyED7v7B96uA1m1tnvHgAaZgArI1OC7a2iAJ4Z3bO+xlKhA3pYY7+tvlUMLDELK5
	yKjmxjkp2lhMZcs9M7Paa5Awsq2aCiAGlTKtXwZvQzCCJZKcfGWzP1UFCTL9IP988FH6
	V6Sqdl0XxJyUfHeo95ZfLOzpsjrVY/n5E3gEggMUDeAYWD4BPS843IXSYcZRgRuElRJo
	nfly8ZNptzVZa0VKznUgxAbTloY4lzszhmC7T1PwbiU+2hbA7gn2rWspEWGt1zBo6L27
	xL+A==
MIME-Version: 1.0
X-Received: by 10.66.249.232 with SMTP id yx8mr4000976pac.118.1367947080109;
	Tue, 07 May 2013 10:18:00 -0700 (PDT)
Received: by 10.68.244.202 with HTTP; Tue, 7 May 2013 10:18:00 -0700 (PDT)
Date: Tue, 7 May 2013 22:48:00 +0530
Message-ID: <CAGxOggFg1+oKE=HFNKxL5wGhAQUh5e-84YnXpAZM-b8ea5+3FQ@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to install own package using yocto
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
X-List-Received-Date: Tue, 07 May 2013 17:18:00 -0000
Content-Type: multipart/alternative; boundary=047d7b111bfdc81bf104dc23ffce

--047d7b111bfdc81bf104dc23ffce
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am new to Yocto.
I have a tar package and I want to install this package in my image created
by Yocto. I want to perform three steps to install the package:

1) Build directory named "build" (*mkdir build*)
2) Change the directory to "build" (*cd build*)
3) Execute cmake command (*cmake ..*)

Can anyone tell me how can I write the above steps in a bitbake recipe file
so that the above three steps should get executed. I have generated
checksum using *md5sum <pkgname>*

Any help will be appreciated.

Thanks in advance.

--047d7b111bfdc81bf104dc23ffce
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div>Hi,</div><div><br></div><div>I am new to Yocto.</div><div>I have a tar package and I want to install this package in my image created by Yocto. I want to perform three steps to install the package:</div>
<div><br></div><div>1) Build directory named &quot;build&quot; (<b>mkdir build</b>)</div><div>2) Change the directory to &quot;build&quot; (<b>cd build</b>)</div><div>3) Execute cmake command (<b>cmake ..</b>)</div><div><br>
</div><div>Can anyone tell me how can I write the above steps in a bitbake recipe file so that the above three steps should get executed. I have generated checksum using <b>md5sum &lt;pkgname&gt;</b></div><div><br></div><div>
Any help will be appreciated.</div><div><br></div><div>Thanks in advance.</div></div>

--047d7b111bfdc81bf104dc23ffce--
