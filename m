Return-Path: <kaz@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 895F2E00DFF; Fri,  6 Sep 2019 11:53:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [64.59.136.139 listed in list.dnswl.org]
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Sep 2019 11:53:05 PDT
Received: from smtp-out-so.shaw.ca (smtp-out-so.shaw.ca [64.59.136.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A3E4E00C4F
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2019 11:53:05 -0700 (PDT)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id 6JL0iYuC5SrVc6JL1iOEkP; Fri, 06 Sep 2019 12:52:04 -0600
X-Authority-Analysis: v=2.3 cv=L5ZjvNb8 c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=J70Eh1EUuV4A:10 a=5KLPUuaC_9wA:10
	a=5BL_Xd5CGK8wTdGaeKQA:9 a=QEXdDO2ut3YA:10 a=Z5ABNNGmrOfJ6cZ5bIyy:22
	a=bWyr8ysk75zN3GCy5bjg:22
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <kaz@kylheku.com>) id 1i6JL0-0000xm-Kl
	for yocto@yoctoproject.org; Fri, 06 Sep 2019 11:52:02 -0700
To: yocto@yoctoproject.org
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Fri, 06 Sep 2019 11:52:02 -0700
From: Kaz Kylheku <kaz@kylheku.com>
Message-ID: <c0bca2ce55bd713b57c7a92ee3898a19@mail.kylheku.com>
X-Sender: kaz@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfPb4HKq/xMmPbUvUanF5crCaKUUZReZKKgFF3mScNqlKOVMHHQoHZoMEEt/dXvdll0KAcHQyCJUb5D5MBcfzMgO0VZffzfebYteV87MYGtUqxlLR9JmT
	cnzg5w5nzqXBl35Tz7b+dDPEXM4c5GvAt9E+umtd4OvGreIPzSqjlR4S
X-Mailman-Approved-At: Mon, 09 Sep 2019 02:06:56 -0700
Subject: Pointless unlink-link in strip_execs?
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
X-List-Received-Date: Fri, 06 Sep 2019 18:53:05 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

I'm looking at meta/lib/oe/package.py, function strip_execs, under Yocto=20
2.5.

It has this tidbit:

                     if s.st_ino in inodes:
                         os.unlink(file)                     # <--- of=20
interest
                         os.link(inodes[s.st_ino], file)     #
                     else:
                         # break hardlinks so that we do not strip the=20
original.
                         inodes[s.st_ino] =3D file
                         bb.utils.copyfile(file, file)
                         elffiles[file] =3D elf_file

If s.st_ino is in the inodes dictionary, doesn't that mean that the=20
paths
inodes[s.st_ino] and file are already hard links to the same object?

In other words, those two link and unlink lines don't achieve anything?

Also, if the file is not in the inode list now, it could be unique.
Why would we waste time copying a file that might turn out unique? Don't=20
we want
the logic to be "if we have seen this inode already, then copy-on-write
the file?"

Also if the file is unique and we do copyfile(file, file), then the=20
original
inode is gone, isn't it? The original s.st_ino is garbage (and may be=20
re-used
by the filesystem for some new, unrelated object), yet we continue to=20
have
an entry for it in inodes[s.st_ino].

I'm probably missing some contextual subtlety, but it seems worth a=20
review.

Cheers ...



