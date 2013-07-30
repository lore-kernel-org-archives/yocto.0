Return-Path: <richbayliss@gmail.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41A8CE01431
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 03:43:43 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id fb19so2734191obc.24
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 03:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=OgpesjwehnnrTTa5E/N/Nlhj5sQvCWG77ZV77A646rU=;
	b=Ea9ZN/KCRgGmMkZeRj3ktWUxLd14K6W7k+iK//Q6CbzmOItmByd4XxrgqctyvgUrMq
	Oq6j7a4e3v8AGdhuexi/FExbtSy0tc+XE8Kfr+ezqJWIL6kpr+8XlLVwpHRqOHMIrajT
	0qRhwLMtj6mXGCo9Yo953AyAoOceu0msaiMEpQ1hMHSf2lvG1bVFBER7URAcKFhETJMm
	5CQuc20wrcq//XLUdo6aHjxoF7Atr7I+NDmAsM8H3UYFr5mt/cUcUzj7rPTPO96bsZ0O
	+mey0aFxpwYObZjblBrxxOiUVpu2FSjZUpqDmrsd7g0tkKErv6K0aQ/tRFy+Tq0+rf2q
	TAHA==
MIME-Version: 1.0
X-Received: by 10.43.139.133 with SMTP id iw5mr22337499icc.0.1375181023156;
	Tue, 30 Jul 2013 03:43:43 -0700 (PDT)
Received: by 10.64.25.1 with HTTP; Tue, 30 Jul 2013 03:43:43 -0700 (PDT)
Date: Tue, 30 Jul 2013 11:43:43 +0100
Message-ID: <CAHLvMfbjrLfbxt-9oa+WRgobux+o5B8RM6uDeLh+wB4GKN_nfQ@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Read-Only RootFS is not read only
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
X-List-Received-Date: Tue, 30 Jul 2013 10:43:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am trying to build for Raspberry Pi including "read-only-rootfs" in
my image features. My aim is to have my SD Card read-only and at some
point add a read-write overlay to certain directories. This should
enable my system to boot fresh each time, and have some persistent
storage for user files etc.

However, after building my image I can SSH into the system and issue
"touch test" to create a file in my home directory, then after a
reboot it is still there. That isn't very read-only :)

Am I missing something, or is this working incorrectly?

-- 
Rich Bayliss

