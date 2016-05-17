Return-Path: <christian.fuchs@fos4x.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF526E00D72; Tue, 17 May 2016 01:14:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3D18E00D0C
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 01:14:55 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id e201so128950943wme.0
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 01:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fos4x.de; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=xI/Om9xVglaUcxqlXOrRkdq5sMkeUtrznwXdv8E9LPs=;
	b=N+vyIKaF3zjwQa0gxluowZztNC8mmSecqVkgsVESAVOGccL/+yYAs/hKGoBPJSLT8M
	5XHduYOpCK/UnTm7fZ3yVYOCojesurSufx2UJbReRsExxrM5SVlqFXUJAzoMCSMqdyR1
	5Q/Zd0TbgyEPaxDEqYc2PuTHAqY28tEYw25EI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=xI/Om9xVglaUcxqlXOrRkdq5sMkeUtrznwXdv8E9LPs=;
	b=hTEAYHw03B2z3XYU8Ck/h/VU2JUTRIDAxVNwO+66UkpBdy1AijjZmM2UA4swZB3FgO
	fP5suJaYKVhbL24vreDcD7c08eiumu6WTOn8ht2ZyKR8GL5mN2od+szKMd6m/jak4y/h
	i98T98BRQSXMTp8yrdTbQpBfFpe8fjg3iEHnajwmB0ggJCSxhQOoNuqhO/+Ts1Cqlddx
	FEcTnct6q2GBNKlYorPlx6X+VDlAh9WcSihoLoaba6q2GIA3bcwmZAE9zL9q3p7wUN0c
	AjkXdsOI2XdHU1LAARxZuAGLe5SCNz3FIvHqXiItQnZDo0i9RTqf9Zp8JLegZe5mPAaS
	Ec2A==
X-Gm-Message-State: AOPr4FW0Gan6qsojC2l9U1qDOLkN6LWZ37C1XVS7kjNrkoy3X0m0iiGSUWJh4F5+TkPsaA==
X-Received: by 10.194.148.142 with SMTP id ts14mr26237647wjb.39.1463472894176; 
	Tue, 17 May 2016 01:14:54 -0700 (PDT)
Received: from [10.0.102.17] (pd907f7af.dip0.t-ipconnect.de. [217.7.247.175])
	by smtp.googlemail.com with ESMTPSA id
	i4sm1644931wjj.49.2016.05.17.01.14.52 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 17 May 2016 01:14:53 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Christian Fuchs <christian.fuchs@fos4x.de>
Message-ID: <bf3219da-4a88-f071-fa00-b46b2872afc5@fos4x.de>
Date: Tue, 17 May 2016 10:14:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.0
MIME-Version: 1.0
Subject: Curl recipe not applying DISTRO_FEATURES
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
X-List-Received-Date: Tue, 17 May 2016 08:14:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello everybody,

I am using Yocto version 1.8 and I'm having trouble compiling curl on a 
64-bit machine running Debian Wheezy 7.10.

The recipe always creates a libcurl.so.5 library, which I understand is 
due to an error regarding the size of off_t picked up by autotools. From 
the recipe:

> # see 
> https://lists.yoctoproject.org/pipermail/poky/2013-December/009435.html
> # We should ideally drop ac_cv_sizeof_off_t from site files but until 
> then
> EXTRA_OECONF += "${@bb.utils.contains('DISTRO_FEATURES', 'largefile', 
> 'ac_cv_sizeof_off_t=8', '', d)}"
As far as I understand bitbake this last line should add the string 
'ac_cv_sizeoff_off_t=8' to EXTRA_OECONF, if 'largefile' is set in 
DISTRO_FEATURES. When I checked the DISTRO_FEATURES variable with 
"bitbake -e curl", 'largefile' was indeed set.
> DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia 
> usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6 
> libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets 
> libc-charsets libc-crypt                                         
> libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg 
> libc-fstab libc-ftraverse                                  
> libc-getlogin libc-idn libc-inet-anl libc-libm libc-locales 
> libc-locale-code                                    libc-memusage 
> libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn 
> libc-streams libc-sunrpc libc-utmp libc-utmpx libc-wordexp 
> libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc 
> libc-posix-wchar-io largefile multiarch tiny pam keyboard usbhost ext2 
> ipv6 pcmcia pulseaudio sysvinit"

However the configure log shows that configure is called without 
'ac_cv_sizeoff_off_t=8':
> NOTE: Running 
> /data/jenkins/workspace/kOS/build/tmp/work/core2-32-fos4x-linux/curl/7.40.0-r0/curl-7.40.0/configure 
> --build=x86_64-linux           --host=i586-fos4x-linux 
> --target=i586-fos4x-linux           --prefix=/usr --exec_prefix=/usr 
>           --bindir=/usr/bin --sbindir=/usr/sbin           
> --libexecdir=/usr/lib/curl --datadir=/usr/share           
> --sysconfdir=/etc --sharedstatedir=/com           --localstatedir=/var 
> --libdir=/usr/lib           --includedir=/usr/include 
> --oldincludedir=/usr/include --infodir=/usr/share/info 
> --mandir=/usr/share/man           --disable-silent-rules 
> --disable-dependency-tracking 
> --with-libtool-sysroot=/data/jenkins/workspace/kOS/build/tmp/sysroots/fos4x 
> --without-libidn --enable-crypto-auth --disable-ldap                 
> --disable-ldaps --with-ca-bundle=/etc/ssl/certs/ca-certificates.crt  
> --with-gnutls --enable-ipv6 --without-libssh2 --without-librtmp 
> --disable-smb --without-ssl 
> --with-zlib=/data/jenkins/workspace/kOS/build/tmp/sysroots/fos4x/usr/lib/../ 
>
...
> configure: WARNING: This libcurl built is probably not ABI compatible 
> with previous
> configure: WARNING: builds! You MUST read lib/README.curl_off_t to 
> figure it out.

When I try to compile this recipe with the exact same settings on a 
test-machine running Ubuntu 14.04 everything works fine, configure is 
called with 'ac_cv_sizeoff_off_t=8', no ABI issues are detected and 
libcurl.so.4 is produced.
> NOTE: Running 
> /scratch/working/build/tmp/work/core2-32-fos4x-linux/curl/7.40.0-r0/curl-7.40.0/configure 
> --build=x86_64-linux         --host=i586-fos4x-linux 
> --target=i586-fos4x-linux           --prefix=/usr 
> --exec_prefix=/usr          --bindir=/usr    /bin 
> --sbindir=/usr/sbin         --libexecdir=/usr/lib/curl 
> --datadir=/usr/share        --sysconfdir=/etc 
> --sharedstatedir=/com           --localstatedir=/var 
> --libdir=/usr/lib           --includedir=/usr/include --oldinc 
> ludedir=/usr/include --infodir=/usr/share/info 
> --mandir=/usr/share/man         --disable-silent-rules 
> --disable-dependency-tracking 
> --with-libtool-sysroot=/scratch/working/build/tmp/sysroots/fos4x 
> --without-libidn                 - -enable-crypto-auth                 
> --disable-ldap --disable-ldaps 
> --with-ca-bundle=/etc/ssl/certs/ca-certificates.crt 
> ac_cv_sizeof_off_t=8 --with-gnutls --enable-ipv6 --without-libssh2 
> --without-librtmp --disable-smb --without-ssl -- 
> with-zlib=/scratch/working/build/tmp/sysroots/fos4x/usr/lib/../

Could somebody give me a hint, how I can fix this?

Best regards,
Christian

-- 
Christian Fuchs, M.Sc. - Software-Developer
fos4X GmbH - www.fos4x.de - T +49 89 999 542 15 - F +49 89 999 542 01
Thalkirchner Str. 210, Geb. 6 - D-81371 München; AG München HRB 189 218
Managing Directors: Dr. Lars Hoffmann, Dr. Mathias Müller


