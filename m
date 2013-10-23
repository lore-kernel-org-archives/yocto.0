Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FFD6E01754
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 10:44:31 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id t61so1164875wes.41
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 10:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lBYX5KvlM2cm3XCcanDLzIc8gB53QZpRZ8Gd/oGGIYA=;
	b=wL51jJnc9a8mzpYLw6qjnfk04cFSLF/22STG7gTQz1z870SNKAODM7o6FqAOdUawmM
	2T2q2z7AQSonxBAee6tQOd1BFqt+kabbf8teehOyb5QcwxCS8ASLTAJmWrMykoc5HF0X
	8wszQ/88344OQQ/tzL0OITTo9dGC2RuZ/YDJK5fb6281WIqw7f/qlAQmZP661sRsx534
	j8PBUELrtKSXWdmEtZ0veMtwIB13n5LatzGMSrJAUMG+sb4zrzvmeLYxMY6tyQMdz4Li
	+TtwC0bwcpsUQw4uWdHlKc7hfvfTkm1VT/pn5wA4Yfzf7w820+BtwlFWfslFeYIoGQHM
	b8jA==
MIME-Version: 1.0
X-Received: by 10.194.21.131 with SMTP id v3mr2726594wje.44.1382550270023;
	Wed, 23 Oct 2013 10:44:30 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Wed, 23 Oct 2013 10:44:29 -0700 (PDT)
Date: Wed, 23 Oct 2013 23:14:29 +0530
Message-ID: <CABHD4K9zMKu6kxJqNOo9-WfMaENEg_dRg=CuajJDiRDPpEJ8=w@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	=?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Subject: How to recreate or modify already existing usres in /etc/passwd in Yocto
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
X-List-Received-Date: Wed, 23 Oct 2013 17:44:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have a requirement where I have to modify the already existing users
in /etc/passwd file.
I have tried doing this with below method and changes are reflected to
rootfs/etc/passwd .
But when I code load my image to target board ,and login as root
,prompt ask for password(Didn't make any changes related to root user
in /etc/passwd).

Earlier with older image login as root doesn't ask for any password

Below is the method which I used to modify the /etc/passwd

SRC_URI += "file://passwd"

do_install_append() {
install -d ${D}${sysconfdir}/base-passwd ${D}${sysconfdir}
install -m 0644 ${WORKDIR}/passwd ${D}${sysconfdir}/passwd
}

Content of origin/earlier file is

root:x:0:0:root:/home/root:/bin/sh
daemon:x:1:1:daemon:/usr/sbin:/bin/sh
bin:x:2:2:bin:/bin:/bin/sh
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
fuwmshey:x:0:0::/user/fuwmshey:/bin/sh
frfhsjk:x:999:999::/home/frfhsjk:/bin/sh
ftp:x:998:998::/var/lib/ftp:/bin/sh
messagebus:x:997:996::/var/lib/dbus:/bin/sh
quagga:x:996:995::/var/run/quagga:/bin/sh
sshd:x:995:992::/var/run/sshd:/bin/sh

Above file we have downloaded from base-passwd_3.5.26.tar.gz and added
some new users like frfhsjk and quaqqa using USERADD_PARAM_${PN}.


Content of modified file


root:x:0:0:root:/home/root:/bin/sh
daemon:x:1:1:daemon:/usr/sbin:/bin/flase
bin:x:2:2:bin:/bin:/bin/false
sys:x:3:3:sys:/dev:/bin/false
sync:x:4:65534:sync:/bin:/bin/flase
games:x:5:60:games:/usr/games:/bin/false
man:x:6:12:man:/var/cache/man:/bin/false
lp:x:7:7:lp:/var/spool/lpd:/bin/false
mail:x:8:8:mail:/var/mail:/bin/false
news:x:9:9:news:/var/spool/news:/bin/false
uucp:x:10:10:uucp:/var/spool/uucp:/bin/flase
proxy:x:13:13:proxy:/bin:/bin/false
www-data:x:33:33:www-data:/var/www:/bin/false
backup:x:34:34:backup:/var/backups:/bin/false
list:x:38:38:Mailing List Manager:/var/list:/bin/false
irc:x:39:39:ircd:/var/run/ircd:/bin/false
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/false
nobody:x:65534:65534:nobody:/nonexistent:/bin/false
fuwmshey:x:0:0::/user/fuwmshey:/bin/sh
frfhsjk:x:999:999::/home/frfhsjk:/bin/false
ftp:x:998:998::/var/lib/ftp:/bin/false
messagebus:x:997:996::/var/lib/dbus:/bin/false
quagga:x:996:995::/var/run/quagga:/bin/false
sshd:x:995:992::/var/run/sshd:/bin/false

We changed the command /bin/sh to /bin/false for every user except
root and tor4nsn.

I wanted to know what are ways to modify already existing members in /etc/passwd

Thanks ,
Amit

