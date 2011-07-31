Return-Path: <francis.meyvis@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16DAA4C80120
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2011 12:05:29 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxh3 with SMTP id 3so6446162vxh.35
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2011 10:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nOzgIMruRWgaN4zocTfnQGEbvlXFl30EyMRaisLhOUk=;
	b=b6ztTS2uRhIppbj07akMIOoM+4H5iqaDtcOTrUEnlL9FMTp1bdy5dx18Hn7kTPqoRy
	T6PSh5LJZQW680HZ7+5sep7Iy1+aUpJrzm76VralrrTNuJ6LxmorBCN+Se98kxkDt4OG
	0wgq9GqGVIiQfhPDOoxgwwYP69kgAhmJ7moUk=
MIME-Version: 1.0
Received: by 10.52.69.7 with SMTP id a7mr3503882vdu.303.1312131928503; Sun, 31
	Jul 2011 10:05:28 -0700 (PDT)
Received: by 10.52.106.170 with HTTP; Sun, 31 Jul 2011 10:05:28 -0700 (PDT)
Date: Sun, 31 Jul 2011 19:05:28 +0200
Message-ID: <CAHts6WT=hyiPVJHw3FAPOFi+qp3aLNx4VrWzOMWEUe0V+kOKRQ@mail.gmail.com>
From: Francis Meyvis <francis.meyvis@gmail.com>
To: yocto@yoctoproject.org
Subject: libpam-1.1.4-r1 strange behavior
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
X-List-Received-Date: Sun, 31 Jul 2011 17:05:29 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

My download directory is on a CIFS mounted drive.
The idea was that other PCs could access the already downloaded files
on the local network.

The package libpam however failed processing.
After changing the path on which I had mounted the CIFS partition,
to a PC local download directory, the package libpam succeeded.

What I saw:

It seemed to get in a busy loop related to SMB when using files name
"*.lock" and "*.done"
I found this by starting a wireshark session to see what was going on.
It seems to try to QUERY_PATH_INFO for *.lock in the download directory.
The CIFS server responds STATUS_OBJECT_NAME_INVALID

After I changed to a local download directory,
I found these files after processing the package in the download directory:

  -rw-r--r-- 1 franchan franchan       0 2011-07-31 18:38 99_pam.done
  -rw-r--r-- 1 franchan franchan       0 2011-07-31 18:38 *.done
  -rw-r--r-- 1 franchan franchan       0 2011-07-31 18:38
libpam-xtests.patch.done
  -rw-r--r-- 1 franchan franchan 1123186 2011-06-24 13:42
Linux-PAM-1.1.4.tar.bz2
  -rw-r--r-- 1 franchan franchan       0 2011-07-31 18:38
Linux-PAM-1.1.4.tar.bz2.done

According to me CIFS has troubles with these *.lock and *.done flag files.
Could the libpam package be done in another way so that it works for
CIFS files systems?
Or should I not have used CIFS fs when using bitbake?

Thanks,
francis

