Return-Path: <jefro.net@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D236E014E2;
	Fri, 12 Jul 2013 11:44:02 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id fr10so7986920lab.32
	for <multiple recipients>; Fri, 12 Jul 2013 11:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	bh=yzqmpu6X+J/JZkTUKTLWtT2GTgnjFB7nob8xap7Ym9E=;
	b=AbcxqL4dgZJO6Tp/eldY1dS1bhrRvy3GrN6dyNmEoLVFN8wZ710vFX7oU0W5uPzDop
	KHZCcQKifXcirP1C3W2QghEzE3JHZ1KGX1UMc+52vlkbhHBURfGtch5oyLfURlysSlrF
	dY5rrRTtln+UKxnW2Hwh+Df+Rm8TfMeOeA1B2BR0izBjrFZ+lLsA1enNMSN93ajV6E1/
	f9h8zwRNhNuzt07bgVQ9YtzHfY7mnM50eNCu8aHPUhyvHkldIjn9ISS3OJd5IpJnA0/y
	zq0JfaVCrGasbLhbbP8t5Kjd/baRFdXLSdGuJLevjA4Joihdu/NFxa+4M0qSrKzWoGbm
	o+kg==
X-Received: by 10.112.235.104 with SMTP id ul8mr19716675lbc.36.1373654641671; 
	Fri, 12 Jul 2013 11:44:01 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.30.146 with HTTP; Fri, 12 Jul 2013 11:43:41 -0700 (PDT)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Fri, 12 Jul 2013 11:43:41 -0700
X-Google-Sender-Auth: ffHWvtO-IrcJ2KvH-mkAkRiyl5o
Message-ID: <CA+YB3rYaryy71L3b8Ou=1+wgCU8tR=bKxapAuqYkB4C=wCAhmA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, yocto-announce@yoctoproject.org
Subject: meta-security Layer Now Available
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
X-List-Received-Date: Fri, 12 Jul 2013 18:44:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

[thanks to Andrei Dinu for writing this]

_______________________________________________________________
meta-security Layer Now Available


Can embedded devices have the same type of security that normal
desktops run? Can the security be enhanced in some way? The answer is
yes! With the new meta-security-layer which can be used with the Yocto
Project. Now it's very simple to build a Linux distribution with the
Yocto Project and use all the security tools to harden, protect, and
detect vulnerabilities on embedded devices.


Why the security layer?

As embedded devices keep getting more and more powerful, there must be
some concern regarding the security of that device. Maybe some devices
are in a closed environment, with no access from outside, but that is
not the case for all of them. If someone is running a webserver on a
router for example, or uses a device that is permanently connected to
the internet, it can be susceptible to hijacking. With this security
layer we wanted to give the users the chance to enhance the security
on every device that uses the Yocto Project.


What does it contain?

After searching the internet looking for open source security packages
that can be used on embedded devices, we came down to a list that
covers a wide range of functionalities useful for the user. At the
moment the security layer contains hardening tools, security checking
tools, a library for syscall filtering, webserver security, port
scanners, and other features that are targeted to different levels of
system security, from low-level to high level.

The packages included in this layer are described below, along with
some usage examples.

We are going to start with Bastille, which is a hardening program used
to secure the system and environment in order to make it
non-penetrable and non-exploitable. It is an easy to use, rule-based
hardening tool, which has an interactive way of configuring it. On the
first run with "bastille -c", the user must go through a list of
questions. After all questions are answered, a config file is created
and run. After running the config file, the system is hardened based
on the answers to the questions. Also, if a config file is already
present on the system, it can be run by simply writing "bastille -b".

Next in line are the redhat-security tools. This is a collection of
scripts that analyzes security problems ranging from file permissions
to correctness of code. Here are some items from that list:

- find-chroot.sh - This script scans the whole file system looking for
ELF files that calls chroot(2) that also do not include a call to
chdir. Programs that fail to do this do not have the cwd inside the
chroot. This means the app can escape the protection that was
intended.

- find-nodrop-groups.sh - This script scans a whole file system to see
if a program makes calls to change UID and GID without also calling
setgroups or initgroups.

- find-hidden-exec.sh - This script scans the whole file system
looking for excutables that are hidden. Anything found must be
investigated since its highly unusual for executables to be hidden.

Another tool that is included is pax-utils. This package also includes
a list of scripts that scan ELF files for consistency and not only.
One of the most popular ones is scanelf. With this script you can
print out the information specific to the ELF structure of a binary.
Also, very useful for developers is dumpelf. This is a user space
utility that dumps all of the internal ELF structures into the
equivalent C structures for debugging or reference purposes.

Buck-security is a security scanner that checks and reports any
vulnerabilities. Unlike bastille which also hardens your system,
buck-security runs a series of scripts present in the configuration
file. The user can add or remove some checks if they are not
necessary.

Libseccomp is a library that provides a platform independent, easy to
use, interface to the Linux Kernel's syscall filtering mechanism. The
libseccomp API is designed to abstract away the underlying BPF based
syscall filter language and present a more conventional function-call
based filtering interface that should be familiar to, and easily
adopted by application developers.

Checksecurity - check for changes to setuid programs - command scans
the mounted files systems (subject to the filter defined in
/etc/checksecurity.conf) and compares the list of setuid programs  to
the list created on the previous run. Any changes are printed to
standard output. Also, it generates a list  of  nfs  and afs
filesystems that are mounted insecurely (i.e. they are missing the
nodev and either the noexec or nosuid flags).

Nikto - This tool is very useful if you have a web server running on
your device. Nikto is a scanner which performs comprehensive tests
against web servers for potentially dangerous files or CGI's, checks
for outdated versions of over 1250 servers and version specific
problems.

And last but not least : Nmap - This famous tool used for network
discovery and security auditing is very useful for system and network
administrators. Now, you can monitor anything on the network via your
embedded device with the usage of this tool.


Conclusion

The best way to have a secure embedded device is to "keep it simple".
That means, if you want to be bulletproof, don't include tools that
can bring security holes to your device. But when you really need
those programs, it is best to bring them along with a security
checking tool that assures you the security you need.

[https://www.yoctoproject.org/blogs/andrei-dinu/2013/meta-security-layer-now-available]

--
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

