Return-Path: <amittomer25@gmail.com>
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9569FE0168F;
	Tue, 15 Oct 2013 06:58:58 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id ii20so3339259qab.10
	for <multiple recipients>; Tue, 15 Oct 2013 06:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=x7H1lN9RuFyWFSzQclFMZlgf4wiht4oR7sNvBu1Pg5M=;
	b=ycId645y9JbVV5LXfzza6wL+JotM9a64H6LAnu72avHc5h2MQLcpKDdB3wd6R+HMki
	tpJ8qRNwOGnSXdKfaKmgdjNqNSg0qmGS6vS0z5b1yqK21GyGikjI5YMgZNVpgij4S34i
	cjLBJF2pIcfYJMGswsCzoxA+tFiH+NOBazGpHzlkSA9+TQyqG9IORNskQiwGZtBnVWwx
	4yuq4Mje44jdxy6EwIZi3WAljN/YLqXopvuTmOUBk5Lw3JqX/42yQ3yjddhZUk/SFP9x
	AyVxIB2gfNdiEZn0wJpwIe9WLBT23o21UCya3yypx71xMmdjJEHfRnOMtjLiqIGtRonh
	Ar+A==
MIME-Version: 1.0
X-Received: by 10.224.171.67 with SMTP id g3mr42913532qaz.13.1381845537323;
	Tue, 15 Oct 2013 06:58:57 -0700 (PDT)
Received: by 10.49.73.71 with HTTP; Tue, 15 Oct 2013 06:58:57 -0700 (PDT)
Date: Tue, 15 Oct 2013 19:28:57 +0530
Message-ID: <CABHD4K9zotbrURTvPsaq3HUM0NO8PsrVm+H-7Zo0FPsFVqgyCA@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>
Subject: How Do I achive given confrigutaion in /etc/passwd in Yocto
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
X-List-Received-Date: Tue, 15 Oct 2013 13:58:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have below content in /etc/password file

root:x:0:0:root:/home/root:/bin/sh
daemon:x:1:1:daemon:/usr/sbin:/bin/sh
bin:x:2shd:x:995:992::/var/run/sshd:/bin/false:2:bin:/bin:/bin/sh
sys:x:3:3:sys:/dev:/bin/sh
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/bin/sh
man:x:6:12:man:/var/cache/man:/bin/sh
lp:x:7:7:lp:/var/spool/lpd:/bin/sh
mail:x:8:8:mail:/var/mail:/bin/sh
news:x:9:9:news:/var/spool/news:/bin/sh
uucp:x:10:10:uucp:/var/spool/uucp:/bin/sh
proxy:x:13:13:proxy:/bin:/bin/sh
www-data:x:33:33:www-data:/var/www:/bin/sh
backup:x:34:34:backup:/var/backups:/bin/sh
list:x:38:38:Mailing List Manager:/var/list:/bin/sh
irc:x:39:39:ircd:/var/run/ircd:/bin/sh
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh
nobody:x:65534:65534:nobody:/nonexistent:/bin/sh
ftp:x:999:999::/var/lib/ftp:/bin/false
toor4n:x:0:0::/home/fuwmshey:/bin/sh
quagga:x:997:997::/var/run/quagga:/bin/sh
messagebus:x:996:995::/var/lib/dbus:/bin/false
sshd:x:995:992::/var/run/sshd:/bin/false

Now for only three commands  /bin/false is set

messagebus:x:996:995::/var/lib/dbus:/bin/false
sshd:x:995:992::/var/run/sshd:/bin/false
ftp:x:999:999::/var/lib/ftp:/bin/false

But I wanted for all the command it should(:/bin/false) set except the two

root:x:0:0:root:/root:/bin/bash
toor4n:x:0:0:root:/user/fuwmshey:/bin/bash

Thanks and Regards,
Amit Singh Tomar.

