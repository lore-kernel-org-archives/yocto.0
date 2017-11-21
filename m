Return-Path: <guy@guy-morand.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F1B9E00D86; Tue, 21 Nov 2017 05:03:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [128.65.195.6 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 123 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Nov 2017 05:02:58 PST
Received: from smtp-sh2.infomaniak.ch (smtp-sh2.infomaniak.ch [128.65.195.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 242F4E00D00
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 05:02:58 -0800 (PST)
Received: from smtp7.infomaniak.ch (smtp7.infomaniak.ch [83.166.132.30])
	by smtp-sh.infomaniak.ch (8.14.5/8.14.5) with ESMTP id vALD0sJm009438
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 14:00:54 +0100
Received: from [192.168.13.135] ([62.192.30.6]) (authenticated bits=0)
	by smtp7.infomaniak.ch (8.14.5/8.14.5) with ESMTP id vALD0ogj116058
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 14:00:54 +0100
To: yocto@yoctoproject.org
From: Guy Morand <guy@guy-morand.ch>
Message-ID: <597142b3-515b-e75f-263d-8981d2b6cd67@guy-morand.ch>
Date: Tue, 21 Nov 2017 14:00:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-Antivirus: Dr.Web (R) for Unix mail servers drweb plugin ver.6.0.2.8
X-Antivirus-Code: 0x100000
Subject: Makefile library and debian naming
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
X-List-Received-Date: Tue, 21 Nov 2017 13:03:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hallo Yocto developpers!

I'm trying to build a Makefile based library. The recipe looks like this:
---[recipe mesages.bb]---
# SNIP recipe header

do_compile() {
   oe_runmake LDFLAGS="${LDFLAGS}" shared-lib
   oe_runmake LDFLAGS="${LDFLAGS}" static-lib
}

do_install() {
   oe_runmake install DESTDIR=${D}${prefix}

   # Fix pkg-config
   sed -i 's,${D},,g' ${D}/usr/lib/pkgconfig/messages.pc

   # FIXME: Try to make a debian package libmessages instead
   # This avoids errors when installing an app linking with this library!
   rm ${D}/${libdir}/lib${PN}.so
}
---[/recipe mesages.bb]---

The resulted image in WORKDIR looks like this:
---[WORKDIR/image]---
image/usr/lib/libmessages.so.0.3.0
image/usr/lib/libmessages.so.0
image/usr/lib/libmessages.a
image/usr/lib/pkgconfig/messages.pc
image/usr/include/messages/<all my headers>
---[/WORKDIR/image]---

The generated ipk packages are:
---[ipks]---
messages-dev_git.ipk
messages_git.ipk
messages-staticdev_git.ipk
messages-dbg_git.ipk
---[/ipks]---

The problem is that an application compiled with this library links 
against the static library. If I don't remove the .so file from the 
recipe, my application fails installing:
---[bitbake error]---
ERROR: myApp do_package_qa: QA Issue: /usr/bin/myApp contained in 
package myApp requires libmessages.so, but no providers found in 
RDEPENDS_myApp? [file-rdeps]
---[/bitbake error]---

Probably because the .so gets packed in the messages-dev.ipk ...

The strange thing is that I would expect a generated ipk with debian 
naming such as:
libmessages_git.ipk
libmessages-dbg_git.ipk
libmessages-dev_git.ipk
libmessages-staticdev_git.ipk


I  have other libraries based on cmake and everything works as expected!

Despite the recipe already inherits "debian", explicitly inheriting this 
class doesn't help.

What am I doing wrong?

Guy Morand

