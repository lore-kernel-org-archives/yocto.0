Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F38A8E013EB
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 04:53:30 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:33038 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SfV5m-000896-2B
	for yocto@yoctoproject.org; Fri, 15 Jun 2012 07:53:30 -0400
Date: Fri, 15 Jun 2012 07:53:26 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1206150743170.20288@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: some shell script stylisms
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
X-List-Received-Date: Fri, 15 Jun 2012 11:53:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  as i claw my way through the QEMU stuff in yocto, some pedantic
thoughts on how to make the shell scripts more readable, so more
observations from the "runqemu" script.


  * all those multiple "echo" lines would look a lot nicer if replaced
by a single "here document", don't you think?


  * extracting the filename extension doesn't need a pipe and an
invocation of "awk".  how about just

    EXT=${filename##*.}


  * what's with the slashes in the "case" pattern matching?

    case /$EXT/ in
        /bin/)
                # A file ending in .bin is a kernel
                [ -z "$KERNEL" ] && KERNEL=$filename || \
                    error "conflicting KERNEL args [$KERNEL] and [$filename]"
                ;;
        /ext[234]/|/jffs2/|/btrfs/)
        ... snip ...

    is there something weird about slashes in case pattern matching
i've never seen?  it's certainly not used later:

    case "$arg" in
        "qemux86" | "qemux86-64" | "qemuarm" | "qemumips" | "qemumips64" | "qemush4"  | "qemuppc")
            [ -z "$MACHINE" ] && MACHINE=$arg || \
                error "conflicting MACHINE types [$MACHINE] and [$arg]"
            ;;
        "ext2" | "ext3" | "jffs2" | "nfs" | "btrfs")
        ... snip ...

    where those "ext?" patterns could be combined the way they were
earlier.  or, again, is there something subtle happening here i'm just
not seeing?

  back to work ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

