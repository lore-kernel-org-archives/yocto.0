Return-Path: <remco+vogels@beryllium.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09D28E00C7B; Tue, 24 Oct 2017 02:30:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 473 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Oct 2017 02:30:57 PDT
Received: from treon.beryllium.net (treon.beryllium.net [5.135.167.165])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F0C7E00B67
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 02:30:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by treon.beryllium.net (Postfix) with ESMTP id 7E5B1B2F
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 11:23:03 +0200 (CEST)
X-Virus-Scanned: Ubuntu amavisd-new at treon.beryllium.net
Received: from treon.beryllium.net ([127.0.0.1])
	by localhost (treon.beryllium.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4dhyI36Fnawd for <yocto@yoctoproject.org>;
	Tue, 24 Oct 2017 11:23:02 +0200 (CEST)
Received: from webmail.beryllium.net (localhost [IPv6:::1])
	by treon.beryllium.net (Postfix) with ESMTP id D9BEC73F
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 11:23:02 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 24 Oct 2017 11:23:02 +0200
From: Remco Poelstra <remco+vogels@beryllium.net>
To: yocto@yoctoproject.org
Organization: Vogel's Products B.V.
Message-ID: <4b2b01b16549fc2c8a21edf445b53ee0@beryllium.net>
X-Sender: remco+vogels@beryllium.net
User-Agent: Roundcube Webmail/0.9.5
Subject: libcap compile error
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
X-List-Received-Date: Tue, 24 Oct 2017 09:30:59 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi all,

I’m new with the Yocto project and I’m still trying to find my way.
I’m using a Hachiko board using Architech SDK and have managed to build 
and run the standard image.
As a next step I wanted to include the avahi mdns implementation. In 
order to do so I included IMAGE_INSTALL_append = “ avahi”
When I now run bitbake, I get the following error for libcap_2.22.bb:
| cap_file.c:8:23: fatal error: sys/xattr.h: No such file or directory

The compiler has a switch 
‘--sysroot=/home/architech/architech_sdk/architech/hachiko-tiny/yocto/build/tmp/sysroots/hachiko’, 
which indeed does not include this file.
Is that the location where the file should be? How can I add it? Is this 
a more general bug in Yocto or just my local setup?

Thanks in advance.

Kind regards,

Remco Poelstra


