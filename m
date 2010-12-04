Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D3EA74C80052
	for <yocto@yoctoproject.org>; Sat,  4 Dec 2010 17:22:22 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn35 with SMTP id 35so1408354iwn.35
	for <yocto@yoctoproject.org>; Sat, 04 Dec 2010 15:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=8CugWI7yX6hoNrcbYOZC0hwL72o1tENQ4Ka/SDBdgUI=;
	b=m9aQ+7aDTUHdc8qet5glBeFbpP8M0SM+b3KahDJIL9+oPrr7bqOU1WzoUxAz04PTNj
	tc++HkpTMolDP7wwgaj0cBMTRyFQBrB7PGpE99AdJbzEhT8tUl9lqfQ4eiK4IhHkl/nD
	bib5s9LfLnbGYgIKLdV6vMvBTsYngzEyeV7ks=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=re0C9A/C59MAq4mboUIsc5ChsCQhPLkicE8SCEeHZ24dpKXYLnHgchhmNMh03yD+wr
	dZ8m20iHhbQSurwOytaJYYfWHYRXjpduRPKMOawapny3NLbmiDGzIHnnjXw0ViHGXUQm
	6VtL+AtClBQ+Up863W7Mh7vPUvec1Lwvrsaeg=
MIME-Version: 1.0
Received: by 10.231.191.4 with SMTP id dk4mr3768800ibb.82.1291504942260; Sat,
	04 Dec 2010 15:22:22 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Sat, 4 Dec 2010 15:22:22 -0800 (PST)
Date: Sun, 5 Dec 2010 00:22:22 +0100
Message-ID: <AANLkTi=W6EZEqLRj-GOAagbBaSgR=KcN2J4oU2nX4x4b@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: LIC_FILES_CHKSUM issue
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
X-List-Received-Date: Sat, 04 Dec 2010 23:22:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I was porting a recipe from OE to yocto and bumped into a
LIC_FILES_CHKSUM  error.
I get a message about  LIC_FILES_CHKSUM

Checked the ref man
(http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#usingpoky-specifying-LIC_FILES_CHKSUM)
added this:
LIC_FILES_CHKSUM = "file://COPYING; md5=xxxx"
in the hope to get the checksum.
However I don't get one, so I run md5sum on the COPYING file myself
and replace xxxx with that value.

No success though, I still get:

| NOTE: Checking autotools environment for common misconfiguration
| FATAL: Gettext required but not in DEPENDS for file
/home/frans/poky/poky/build/tmp/work/armv5te-poky-linux-gnueabi/libcddb-1.3.2-r0/libcddb-1.3.2/configure.ac.
| Missing inherit gettext?
| ERROR: Error in executing python function in:
/home/frans/poky/poky/meta-private/recipes/libcddb/libcddb_1.3.2.bb
| ERROR: Exception:<type 'exceptions.SystemExit'> Message:1
| ERROR: Traceback:
| ERROR:   File "do_qa_configure", line 36, in <module>
| ERROR:
| ERROR:   File "do_qa_configure", line 31, in do_qa_configure
| ERROR:
| ERROR:   File
"/home/frans/poky/poky/scripts/..//bitbake/lib/bb/__init__.py", line
56, in fatal
| ERROR:     bb.msg.fatal(None, ''.join(args))
| ERROR:
| ERROR:   File
"/home/frans/poky/poky/scripts/..//bitbake/lib/bb/msg.py", line 139,
in fatal
| ERROR:     sys.exit(1)
| ERROR:
| ERROR: The lines leading to this error were:
| ERROR: 	0032:
| ERROR: 	0033:    if not package_qa_check_license(workdir, d):
| ERROR: 	0034:        bb.fatal("Licensing warning: LIC_FILES_CHKSUM
does not match, please fix")
| ERROR: 	0035:
| ERROR: Task failed: ('Function do_qa_configure failed',
'/home/frans/poky/poky/build/tmp/work/armv5te-poky-linux-gnueabi/libcddb-1.3.2-r0/temp/log.do_configure.12827')
NOTE: package libcddb-1.3.2-r0: task do_configure: Failed

No idea on how to resolve this.

Frans

