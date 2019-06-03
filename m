Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9027EE00D44; Mon,  3 Jun 2019 10:39:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05632E00CAA
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 10:38:59 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id l3so10419731qtj.5
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 10:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GGdHjes6478HihtAhOLdEWLQxt5BMWl4hqlYJFw5xcQ=;
	b=V7FWzwcKE/JzDvaBTecbD6ZQvmXjpVaMwUrcfwYuPNgB54nQWXpK1XdFJfjm/ntF+q
	iEftJ/3oUT4wW2KsPBnVVLM6x1E0WT7AXFRXwHE0Z1vLQuldwY1fiqLV1AilUJo4UuAQ
	4XkSOBXRibwp9hI36tsoUdrIUh9UUVVkTHaExXI4iyuCuL6mK/J4USsSklm0Oi58X0WK
	Z1rWPFS21TpoSOrk6q0zcJqATxCe6lflBBq5qtIxbn/SVwDz0vMi6NX6s2jBd6gAWPZV
	2zv+tklNRD+Zm7cug2QLw3pIzQZ1szNkLwtPfH2/V0qtssya7BNukSZVn05pnOm+0D39
	iRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GGdHjes6478HihtAhOLdEWLQxt5BMWl4hqlYJFw5xcQ=;
	b=LKGYFNqNSg3i1I52YO/08NKZ2uO9lytCMb0bnrsdBLTSlRjANidEENPgBtK7lVn8vT
	9uGdtIWSn+w/16m1N3SbIj1zt79eI85vpX65sQPp7bvai3z34JuDiOkW8zSkw9VWd4Yg
	potKgy6H7Zyq/KnW8etLlPoVr+zVHvvAEnpQ0CgeG9QcAz52sGC3K6qgP1qs2SgI7cBL
	tUcoA+oiGv0aw4Yc/3zAu8YXYHVeWXjaByvLOL0Utxmz/48Mt3+F91derS0XO5cdhb1R
	F6mFGmee3g7e9ZYkuBEtgVrrEGa0rZ7zPWHlz2YITJeI8jmCeQSizpR31enZQkTxkSEx
	PaUw==
X-Gm-Message-State: APjAAAVhxbWYNv09LaQwGQOTD0YONVeicnFIp+hrzxJiXubHqkGLZr9S
	uz2E/dNMwzcMcSAMr+qheu3hR7uZ1y+8wFRNue9ZPp3s
X-Google-Smtp-Source: APXvYqy0LNW2RlIm3Nl577B7AAFRffjOZWOQXjhCfX+K05N7W+alqP1v/n8LbvSNp/TI/2DMZjP+dsUgE7dnZj6/hOE=
X-Received: by 2002:ac8:42d4:: with SMTP id g20mr24157472qtm.78.1559583539021; 
	Mon, 03 Jun 2019 10:38:59 -0700 (PDT)
MIME-Version: 1.0
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 3 Jun 2019 19:38:47 +0200
Message-ID: <CAGAf8Lxb88uf_zw0Hzkc74zSD3GG4zQh-UwzQmBhMTLCxqRd5Q@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Potential (?) systemd YOCTO problems
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
X-List-Received-Date: Mon, 03 Jun 2019 17:39:00 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Folks,

I am a bit deeper to the systemd service investigation in YOCTO. I
installed systemd service, I also have network manager package.

I am using warrior. Here are the snippets of the HOST:
[user@fedora29-ssd build]$ bitbake --version
BitBake Build Tool Core version 1.42.0
[user@fedora29-ssd build]$ bitbake -s | grep networkmanager
networkmanager                                     :1.16.0-r0
networkmanager-openvpn                             :1.8.10-r0
python-networkmanager                                 :2.1-r0
[user@fedora29-ssd build]$ bitbake -s | grep systemd
python-systemd                                        :234-r0
python3-systemd                                       :234-r0
systemd                             1:241+AUTOINC+c1f8ff8d0d-r0
systemd-bootchart                   :233+gitAUTOINC+fe1c5e41e6-r0
systemd-bootconf                                     :1.00-r0
systemd-compat-units                                 :1.0-r29
systemd-conf                        :241+AUTOINC+c1f8ff8d0d-r0
systemd-machine-units                                :1.0-r19
systemd-serialgetty                                   :1.0-r5
systemd-systemctl-native                              :1.0-r6
[user@fedora29-ssd build]$

Still. I expected to see the following on the target (my BBB):
/etc/init.d/networking script, but I have the following:
root@beaglebone:/etc/init.d# pwd
/etc/init.d
root@beaglebone:/etc/init.d# ls -al
drwxr-xr-x    2 root     root          4096 Jun  3  2019 .
drwxr-xr-x   27 root     root          4096 May 30 23:46 ..
-rwxr-xr-x    1 root     root          1419 May 31  2019 socketcand
root@beaglebone:/etc/init.d#

The socketcand recipe is here:
https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes-can/socketcand/socketcand.bb

Should I add something to the networkmanager recipe (to add some
inheritance)??? To have the component (network script) in
play/installed (in /etc/init.d/)?

The command: # systemctl restart systemd-networkd does work.

root@beaglebone:/etc/systemd# ls
coredump.conf   logind.conf     networkd.conf   sleep.conf
system.conf     user
journald.conf   network         resolved.conf   system
timesyncd.conf  user.conf
root@beaglebone:/etc/systemd# cd network
root@beaglebone:/etc/systemd/network# ls -al
drwxr-xr-x    2 root     root          4096 May 31 00:57 .
drwxr-xr-x    5 root     root          4096 Jun  3  2019 ..
root@beaglebone:/etc/systemd/network#

What I am doing wrong here?

Thank you,
Zoran
_______

