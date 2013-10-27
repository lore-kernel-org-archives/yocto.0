Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 060BCE01734
	for <yocto@yoctoproject.org>; Sun, 27 Oct 2013 09:16:54 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id t60so5718609wes.12
	for <yocto@yoctoproject.org>; Sun, 27 Oct 2013 09:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=JEMSyQUCFtu3Kb2ajhbBGq81lk27FfhpUVfWI6Z/PG8=;
	b=r8UWsuvpi1jSQn7KYo7ByUQdOjik7LTbuTIxWtockhGoYx4sbxl+aYlpQWGdjRb8v6
	D0wfaWxxn1Yy2CTnVRHXmioD9r5fbhbCxGB9kLQ6D2ypkAdB7qmA0UAItmdfrfeFxT86
	cYMytot7t6ZJxp7EDvXETV9wBV+u++z8I55LQJxWBICgkU5xk3ot3ncZPXVr1PEHANXd
	ePXm7Qo/TzmxcoeS4quXXZN90lCPRNOO17Goc9m9/+bw8Fe6qMXrHTdtcjwkl38ei28j
	N7dO6YOwJ/jo/ZmhliUV000ENMPv/HgLH1Cd6BMQ2shlrXm4RhLS25ZIQOoUjP+Y0Y+U
	7EFg==
MIME-Version: 1.0
X-Received: by 10.180.79.227 with SMTP id m3mr5892620wix.2.1382890612797; Sun,
	27 Oct 2013 09:16:52 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Sun, 27 Oct 2013 09:16:52 -0700 (PDT)
In-Reply-To: <CABHD4K9zMKu6kxJqNOo9-WfMaENEg_dRg=CuajJDiRDPpEJ8=w@mail.gmail.com>
References: <CABHD4K9zMKu6kxJqNOo9-WfMaENEg_dRg=CuajJDiRDPpEJ8=w@mail.gmail.com>
Date: Sun, 27 Oct 2013 21:46:52 +0530
Message-ID: <CABHD4K-Z3P8fsK=dzN3N5bL1BG=f8ULLPt_UpKNDzaz_x_-NrA@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to recreate or modify already existing usres in /etc/passwd in Yocto
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
X-List-Received-Date: Sun, 27 Oct 2013 16:16:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

We have fixed this issue by patching the passwd.master file .
So ,if someone wanted to modify the alreay existing usres in /etc/paswd file
one way is to patch the master file rather than pathcing passwd file.

Thanks
Amit.

On Wed, Oct 23, 2013 at 11:14 PM, Amit Tomer <amittomer25@gmail.com> wrote:
> I have a requirement where I have to modify the already existing users
> in /etc/passwd file.
> I have tried doing this with below method and changes are reflected to
> rootfs/etc/passwd .
> But when I code load my image to target board ,and login as root
> ,prompt ask for password(Didn't make any changes related to root user
> in /etc/passwd).
>
> Earlier with older image login as root doesn't ask for any password
>
> Below is the method which I used to modify the /etc/passwd
>
> SRC_URI += "file://passwd"
>
> do_install_append() {
> install -d ${D}${sysconfdir}/base-passwd ${D}${sysconfdir}
> install -m 0644 ${WORKDIR}/passwd ${D}${sysconfdir}/passwd
> }
>
> Content of origin/earlier file is
>
> root:x:0:0:root:/home/root:/bin/sh
> daemon:x:1:1:daemon:/usr/sbin:/bin/sh
> bin:x:2:2:bin:/bin:/bin/sh
> sys:x:3:3:sys:/dev:/bin/sh
> sync:x:4:65534:sync:/bin:/bin/sync
> games:x:5:60:games:/usr/games:/bin/sh
> man:x:6:12:man:/var/cache/man:/bin/sh
> lp:x:7:7:lp:/var/spool/lpd:/bin/sh
> mail:x:8:8:mail:/var/mail:/bin/sh
> news:x:9:9:news:/var/spool/news:/bin/sh
> uucp:x:10:10:uucp:/var/spool/uucp:/bin/sh
> proxy:x:13:13:proxy:/bin:/bin/sh
> www-data:x:33:33:www-data:/var/www:/bin/sh
> backup:x:34:34:backup:/var/backups:/bin/sh
> list:x:38:38:Mailing List Manager:/var/list:/bin/sh
> irc:x:39:39:ircd:/var/run/ircd:/bin/sh
> gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh
> nobody:x:65534:65534:nobody:/nonexistent:/bin/sh
> fuwmshey:x:0:0::/user/fuwmshey:/bin/sh
> frfhsjk:x:999:999::/home/frfhsjk:/bin/sh
> ftp:x:998:998::/var/lib/ftp:/bin/sh
> messagebus:x:997:996::/var/lib/dbus:/bin/sh
> quagga:x:996:995::/var/run/quagga:/bin/sh
> sshd:x:995:992::/var/run/sshd:/bin/sh
>
> Above file we have downloaded from base-passwd_3.5.26.tar.gz and added
> some new users like frfhsjk and quaqqa using USERADD_PARAM_${PN}.
>
>
> Content of modified file
>
>
> root:x:0:0:root:/home/root:/bin/sh
> daemon:x:1:1:daemon:/usr/sbin:/bin/flase
> bin:x:2:2:bin:/bin:/bin/false
> sys:x:3:3:sys:/dev:/bin/false
> sync:x:4:65534:sync:/bin:/bin/flase
> games:x:5:60:games:/usr/games:/bin/false
> man:x:6:12:man:/var/cache/man:/bin/false
> lp:x:7:7:lp:/var/spool/lpd:/bin/false
> mail:x:8:8:mail:/var/mail:/bin/false
> news:x:9:9:news:/var/spool/news:/bin/false
> uucp:x:10:10:uucp:/var/spool/uucp:/bin/flase
> proxy:x:13:13:proxy:/bin:/bin/false
> www-data:x:33:33:www-data:/var/www:/bin/false
> backup:x:34:34:backup:/var/backups:/bin/false
> list:x:38:38:Mailing List Manager:/var/list:/bin/false
> irc:x:39:39:ircd:/var/run/ircd:/bin/false
> gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/false
> nobody:x:65534:65534:nobody:/nonexistent:/bin/false
> fuwmshey:x:0:0::/user/fuwmshey:/bin/sh
> frfhsjk:x:999:999::/home/frfhsjk:/bin/false
> ftp:x:998:998::/var/lib/ftp:/bin/false
> messagebus:x:997:996::/var/lib/dbus:/bin/false
> quagga:x:996:995::/var/run/quagga:/bin/false
> sshd:x:995:992::/var/run/sshd:/bin/false
>
> We changed the command /bin/sh to /bin/false for every user except
> root and tor4nsn.
>
> I wanted to know what are ways to modify already existing members in /etc/passwd
>
> Thanks ,
> Amit

