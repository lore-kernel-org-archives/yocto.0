Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7200E4C80039
	for <yocto@yoctoproject.org>; Sun,  5 Dec 2010 18:11:52 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB60Bo7r031946;
	Mon, 6 Dec 2010 00:11:50 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31474-07; Mon,  6 Dec 2010 00:11:46 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB60Bf4x031940
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 6 Dec 2010 00:11:41 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <1291581851.14277.2907.camel@rex>
References: <AANLkTi=W6EZEqLRj-GOAagbBaSgR=KcN2J4oU2nX4x4b@mail.gmail.com>
	<1291581851.14277.2907.camel@rex>
Date: Mon, 06 Dec 2010 00:11:39 +0000
Message-ID: <1291594299.14277.2911.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: LIC_FILES_CHKSUM issue
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
X-List-Received-Date: Mon, 06 Dec 2010 00:11:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-12-05 at 20:44 +0000, Richard Purdie wrote:
> On Sun, 2010-12-05 at 00:22 +0100, Frans Meulenbroeks wrote:
> > Hi,
> > 
> > I was porting a recipe from OE to yocto and bumped into a
> > LIC_FILES_CHKSUM  error.
> > I get a message about  LIC_FILES_CHKSUM
> > 
> > Checked the ref man
> > (http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#usingpoky-specifying-LIC_FILES_CHKSUM)
> > added this:
> > LIC_FILES_CHKSUM = "file://COPYING; md5=xxxx"
> > in the hope to get the checksum.
> > However I don't get one, so I run md5sum on the COPYING file myself
> > and replace xxxx with that value.
> > 
> > No success though, I still get:
> > 
> > | NOTE: Checking autotools environment for common misconfiguration
> > | FATAL: Gettext required but not in DEPENDS for file
> > /home/frans/poky/poky/build/tmp/work/armv5te-poky-linux-gnueabi/libcddb-1.3.2-r0/libcddb-1.3.2/configure.ac.
> > | Missing inherit gettext?
> > | ERROR: Error in executing python function in:
> > /home/frans/poky/poky/meta-private/recipes/libcddb/libcddb_1.3.2.bb
> 
> Let me just cut your error down to the above. Its saying you need to add
> gettext to DEPENDS.
> 
> The rest of the python traceback looks corrupt and is just confusing the
> issue.
> 
> We have some things in planned in Poky to start trying to address error
> handling and making it easier to work out whats wrong.

Its not the complete solution but I thought the traceback you saw was
very confusing. The same error now would give:

| NOTE: Checking autotools environment for common misconfiguration
| FATAL: Gettext required but not in DEPENDS for file /media/data1/builds/poky2/tmp/work/i586-poky-linux/coreutils-8.5-r0/coreutils-8.5/configure.ac.
| Missing inherit gettext?
| ERROR: There was an error when executing a python function in: /rphome/poky/meta/recipes-core/coreutils/coreutils_8.5.bb
| ERROR: Exception:<type 'exceptions.SystemExit'> Message:1
| ERROR: The stack trace of python calls that resulted in thie exception/failure was:
| ERROR:   File "do_qa_configure", line 36, in <module>
| ERROR:
| ERROR:   File "do_qa_configure", line 31, in do_qa_configure
| ERROR:
| ERROR:   File "/rphome/poky/scripts/..//bitbake/lib/bb/__init__.py", line 56, in fatal
| ERROR:     bb.msg.fatal(None, ''.join(args))
| ERROR:
| ERROR:   File "/rphome/poky/scripts/..//bitbake/lib/bb/msg.py", line 139, in fatal
| ERROR:     sys.exit(1)
| ERROR:
| ERROR: The code that was being executed was:
| ERROR:      0032:
| ERROR:      0033:    if not package_qa_check_license(workdir, d):
| ERROR:      0034:        bb.fatal("Licensing warning: LIC_FILES_CHKSUM does not match, please fix")
| ERROR:      0035:
| ERROR:  *** 0036:do_qa_configure(d)
| ERROR: (file: 'do_qa_configure', lineno: 36, function: <module>)
| ERROR:      0027:          for config in configs:
| ERROR:      0028:              gnu = "grep \"^[[:space:]]*AM_GNU_GETTEXT\" %s >/dev/null" % config
| ERROR:      0029:              if os.system(gnu) == 0:
| ERROR:      0030:                 bb.fatal("""Gettext required but not in DEPENDS for file %s.
| ERROR:  *** 0031:Missing inherit gettext?""" % config)
| ERROR:      0032:
| ERROR:      0033:    if not package_qa_check_license(workdir, d):
| ERROR:      0034:        bb.fatal("Licensing warning: LIC_FILES_CHKSUM does not match, please fix")
| ERROR:      0035:
| ERROR: (file: 'do_qa_configure', lineno: 31, function: do_qa_configure)
| ERROR: Task failed: ('Function do_qa_configure failed', '/media/data1/builds/poky2/tmp/work/i586-poky-linux/coreutils-8.5-r0/temp/log.do_configure.22891')
NOTE: package coreutils-8.5-r0: task do_configure: Failed

which is I hope slightly clearer and has the bug fixed where it wasn't
showing the line that actually failed if it was the last line (line 36).

In future I'd not like this to show a traceback at all if a sensible
error has been given to a user as in this case but at least this makes
the tracebacks more usable.

Cheers,

Richard




