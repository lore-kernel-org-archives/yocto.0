Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.54])
 by mx.groups.io with SMTP id smtpd.web11.2552.1585819112118021347
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2020 02:18:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=YlOIKEKZ;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 85.215.255.54, mailfrom: prvs=13610dc484=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1585819110;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=a7eEZY8Uy4eIwUiJdMnnQdaA9I7mFGw+fLM+Dzva8dM=;
	b=YlOIKEKZ8/WL4vYONfNJE3YHgSk6DtHmat9WMdPUycgmtiY5zbfmGhc320+H+k+kQH
	Hxo/lHtIQVgau4OGz3ldquTbe3ZhXtpR0chhDD8ejWKwnKBpg5rDvQsZmuB62wfqdhr1
	uXqUvDbLG4c8voAEwy+oUinZOWiHqwQ+IQ/XpvLfZScMz4DasVnjCoLXcDrWuZQk6Y/M
	3dvyzJlzSR4U3N/QfOV0jjqJhMmY61Oso2WZYJ5yGmcBvXlUJ7ybkuC6xUiAAwyAuWE2
	Mqe3HmxNNqnN4pWy2UEvzaRA8+7CUCOOQ4sXJVh7E6l6LdPPrZ8gIAw9EuCeHsWg5BFD
	EDpw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.2.1 AUTH)
	with ESMTPSA id e03460w329ITOfX
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Thu, 2 Apr 2020 11:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1585819109; x=1586423909;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=a7eEZY8Uy4eIwUiJdMnnQdaA9I7mFGw+fLM+Dzva8dM=; b=p
	kP10MivUa9zOpF0QG7ImGlNiyjEoQVvhd2MIj6o2CK2612IRGcAGiUjhLXwv7YRH
	+bsEzEYv3x3o5dru4+RJxvB32II/0V3286Tu+sGifX2okD9XdXX9k6+H+Ni6vEEU
	wnYVUC1j7L/jP56ya5gefNQxwzYm8X5q55nZQnPB7k=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.5) with ESMTPSA id md50000259262.msg; 
	Thu, 02 Apr 2020 11:18:29 +0200
X-Spam-Processed: mail.rsi-elektrotechnik.de, Thu, 02 Apr 2020 11:18:29 +0200
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Thu, 02 Apr 2020 11:18:29 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=13610dc484=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 2 Apr 2020 09:18:02 +0000
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: stefan.wenninger@evopro-ag.de
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] apt-get destroying itself when trying to install package #apt #yocto
Message-ID: <20200402091802.2obao5jf5ncgrxvu@jh-mailer>
References: <8R00.1585818520820906418.fh1w@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <8R00.1585818520820906418.fh1w@lists.yoctoproject.org>
User-Agent: NeoMutt/20171215
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Long story short:

It does not work like this. Just because the tool has the same name and
the packages have the same suffix, they are basically not related. You
cannot use a debian package repository for your Yocto based build.

Think about randomly injecting SLES packages into a Fedora. Its both
RPMs too, right? But also won't work. Same reasons.

If you need more information, have a look at

https://www.intel.com/content/dam/www/public/us/en/documents/white-papers/package-manager-white-paper.pdf

Greetz

On Thu, Apr 02, 2020 at 02:08:40AM -0700, stefan.wenninger@evopro-ag.de wrote:
> Hi,
> We are trying to install packages on our arm64 architecture directly from debian.org.
> Our sources.list contains "deb [ arch=arm64 ] http://ftp.de.debian.org/debian buster main".
> 
> 1. When executing apt-get update we get the following output:
> > 
> > root@imx8mq-var-dart:~# apt-get update
> > Get:1 http://ftp.de.debian.org/debian buster InRelease [122 kB]
> > Ign:1 http://ftp.de.debian.org/debian buster InRelease
> > Get:2 http://ftp.de.debian.org/debian buster/main arm64 Packages [7737 kB]
> > 
> > Fetched 7858 kB in 5s (1424 kB/s)
> > Reading package lists... Done
> > W: GPG error: http://ftp.de.debian.org/debian buster InRelease: Unknown
> > error executing apt-key
> > W: The repository 'http://ftp.de.debian.org/debian buster InRelease' is
> > not signed.
> > N: Data from such a repository can't be authenticated and is therefore
> > potentially dangerous to use.
> > N: See apt-secure(8) manpage for repository creation and user
> > configuration details.
> > E: Failed to fetch /
> > E: Some index files failed to download. They have been ignored, or old
> > ones used instead.
> > 
> 
> We did not worry about the missing gpg authentification since we were able to apt-cache search this source successfully.
> 
> 2. When we tried to apt-get install python3-psutil we were promted with a large list of mainly perl related packages that were about to be removed:
> 
> > 
> > 12 upgraded, 66 newly installed, 531 to remove and 212 not upgraded
> 
> [complete output in attachments.]
> Allowing these changes to be made led to dpkg trying to overwrite files that are also in other packages. This caused the command to fail.
> 
> 3. We then tried to pass the "--force-overwrite" option to dpkg with the command:
> > 
> > 
> > sudo apt-get -o Dpkg::Options::="--force-overwrite" install python3-psutil
> 
> This command told us there were unmet dependencies:
> 
> > 
> > The following packages have unmet dependencies:
> > libc6-dev : Depends: libc6 (= 2.28-10) but 2.27-r0 is to be installed
> > Depends: libc-dev-bin (= 2.28-10) but it is not going to be installed
> > Depends: linux-libc-dev but it is not going to be installed
> > python3-psutil : Depends: python3 (< 3.8)
> > Depends: python3 (>= 3.7~)
> > Depends: python3:any
> > E: Unmet dependencies. Try 'apt-get -f install' with no packages (or
> > specify a solution).
> > 
> 
> [complete output in attachments]
> 
> 4. We followed the suggestion and ran apt-get -f install.
> [complete output in attachments]
> That led to dpkg trying to unpack "libc6" but failing because /sbin/ldconfig is not present.
> We confirmed that /sbin/ldconfig is in place and an executable on a fresh image.
> 
> We have tried to install different packages and to use different orders of commands, but ultimately we always end up with ldconfig being deleted and dpkg failing because of that.
> Our best guess it that the way apt-get is set up in our image is faulty.
> 
> Relevant Yocto info:
> > 
> > Version: Yocto sumo 2.5
> > Image: fsl-image-qt5
> > IMAGE_INSTALL += " apt "
> > We have PACKAGE_CLASSES = "package_deb" and
> > PACKAGE_FEED_URIS="http://<host_ip>:5678" in our local.conf. However we
> > deleted the sources.list entries created by this.
> 
> Is this a known issue? Are we missing an important configuration for apt within Yocto?
> Is there another way to install and setup apt-get in our image that does not include Yocto?
> 
> Thanks,
> Stefan

> root@imx8mq-var-dart:~# apt-get install python3-psutil
> Reading package lists... Done
> Building dependency tree... Done
> The following additional packages will be installed:
>   adduser apt apt-utils debconf debconf-i18n debian-archive-keyring dh-python gcc-8-base gpgv libapt-inst2.0 libapt-pkg5.0 libaudit-common libaudit1 libbz2-1.0 libc-dev-bin libc6 libc6-dev
>   libcap-ng0 libdb5.3 libexpat1 libexpat1-dev libgcc1 libgcrypt20 libgdbm-compat4 libgdbm6 libgmp-dev libgmp10 libgmpxx4ldbl libgnutls30 libgpm2 libhogweed4 libidn2-0 liblocale-gettext-perl
>   liblz4-1 libmpdec2 libncursesw6 libnettle6 libp11-kit0 libpam-modules libpam-modules-bin libpam0g libpcre3 libperl5.28 libpython3-dev libpython3-stdlib libpython3.7 libpython3.7-dev
>   libpython3.7-minimal libpython3.7-stdlib libseccomp2 libselinux1 libsemanage-common libsemanage1 libsepol1 libssl1.1 libtasn1-6 libtext-charwidth-perl libtext-iconv-perl libtext-wrapi18n-perl
>   libtinfo6 libzstd1 linux-libc-dev mime-support passwd perl perl-base perl-modules-5.28 python3 python3-dev python3-distutils python3-lib2to3 python3-minimal python3.7 python3.7-dev
>   python3.7-minimal xz-utils zlib1g
> Suggested packages:
>   apt-doc aptitude | synaptic | wajig dpkg-dev gnupg | gnupg2 | gnupg1 powermgmt-base debconf-doc debconf-utils whiptail | dialog libterm-readline-gnu-perl libgtk3-perl libnet-ldap-perl
>   debconf-kde-helper libdpkg-perl gnupg glibc-doc libc-l10n locales manpages-dev rng-tools gdbm-l10n gmp-doc libgmp10-doc libmpfr-dev gnutls-bin gpm libpam-doc sensible-utils perl-doc
>   libterm-readline-gnu-perl | libterm-readline-perl-perl libb-debug-perl liblocale-codes-perl python3-doc python3-tk python3-venv python-psutil-doc python3.7-venv python3.7-doc binfmt-support
> Recommended packages:
>   manpages manpages-dev
> The following packages will be REMOVED:
>   autoconf automake libexpat-dev libgcc-s-dev libgmpxx4 packagegroup-core-buildessential packagegroup-core-sdk packagegroup-core-standalone-sdk-target packagegroup-fsl-tools-benchmark perl-dev
>   perl-module--charnames perl-module-anydbm-file perl-module-app-cpan perl-module-app-prove perl-module-app-prove-state perl-module-app-prove-state-result
>   perl-module-app-prove-state-result-test perl-module-archive-tar perl-module-archive-tar-constant perl-module-archive-tar-file perl-module-arybase perl-module-attribute-handlers
>   perl-module-attributes perl-module-autodie perl-module-autodie-exception perl-module-autodie-exception-system perl-module-autodie-hints perl-module-autodie-scope-guard
>   perl-module-autodie-scope-guardstack perl-module-autodie-skip perl-module-autodie-util perl-module-autoloader perl-module-autosplit perl-module-autouse perl-module-b perl-module-b-concise
>   perl-module-b-debug perl-module-b-deparse perl-module-b-showlex perl-module-b-terse perl-module-b-xref perl-module-base perl-module-benchmark perl-module-bigint perl-module-bignum
>   perl-module-bigrat perl-module-blib perl-module-bytes perl-module-carp perl-module-carp-heavy perl-module-charnames perl-module-class-struct perl-module-compress-raw-bzip2
>   perl-module-compress-raw-zlib perl-module-compress-zlib perl-module-config-extensions perl-module-config-perl-v perl-module-constant perl-module-corelist perl-module-cpan perl-module-cwd
>   perl-module-data-dumper perl-module-db perl-module-dbm-filter perl-module-dbm-filter-compress perl-module-dbm-filter-encode perl-module-dbm-filter-int32 perl-module-dbm-filter-null
>   perl-module-dbm-filter-utf8 perl-module-deprecate perl-module-devel-peek perl-module-devel-ppport perl-module-devel-selfstubber perl-module-diagnostics perl-module-digest
>   perl-module-digest-base perl-module-digest-file perl-module-digest-md5 perl-module-digest-sha perl-module-dirhandle perl-module-dynaloader perl-module-encode perl-module-encode-alias
>   perl-module-encode-byte perl-module-encode-cjkconstants perl-module-encode-cn perl-module-encode-cn-hz perl-module-encode-config perl-module-encode-ebcdic perl-module-encode-encoder
>   perl-module-encode-encoding perl-module-encode-gsm0338 perl-module-encode-guess perl-module-encode-jp perl-module-encode-jp-h2z perl-module-encode-jp-jis7 perl-module-encode-kr
>   perl-module-encode-kr-2022-kr perl-module-encode-mime-header perl-module-encode-mime-header-iso-2022-jp perl-module-encode-mime-name perl-module-encode-symbol perl-module-encode-tw
>   perl-module-encode-unicode perl-module-encode-unicode-utf7 perl-module-encoding perl-module-encoding-warnings perl-module-english perl-module-env perl-module-errno perl-module-experimental
>   perl-module-exporter perl-module-exporter-heavy perl-module-extutils-cbuilder perl-module-extutils-cbuilder-base perl-module-extutils-cbuilder-platform-aix
>   perl-module-extutils-cbuilder-platform-android perl-module-extutils-cbuilder-platform-cygwin perl-module-extutils-cbuilder-platform-darwin perl-module-extutils-cbuilder-platform-dec-osf
>   perl-module-extutils-cbuilder-platform-os2 perl-module-extutils-cbuilder-platform-unix perl-module-extutils-cbuilder-platform-vms perl-module-extutils-cbuilder-platform-windows
>   perl-module-extutils-cbuilder-platform-windows-bcc perl-module-extutils-cbuilder-platform-windows-gcc perl-module-extutils-cbuilder-platform-windows-msvc perl-module-extutils-command
>   perl-module-extutils-command-mm perl-module-extutils-constant perl-module-extutils-constant-base perl-module-extutils-constant-proxysubs perl-module-extutils-constant-utils
>   perl-module-extutils-constant-xs perl-module-extutils-embed perl-module-extutils-install perl-module-extutils-installed perl-module-extutils-liblist perl-module-extutils-liblist-kid
>   perl-module-extutils-makemaker perl-module-extutils-makemaker-config perl-module-extutils-makemaker-locale perl-module-extutils-makemaker-version perl-module-extutils-manifest
>   perl-module-extutils-miniperl perl-module-extutils-mkbootstrap perl-module-extutils-mksymlists perl-module-extutils-mm perl-module-extutils-mm-aix perl-module-extutils-mm-any
>   perl-module-extutils-mm-beos perl-module-extutils-mm-cygwin perl-module-extutils-mm-darwin perl-module-extutils-mm-dos perl-module-extutils-mm-macos perl-module-extutils-mm-nw5
>   perl-module-extutils-mm-os2 perl-module-extutils-mm-qnx perl-module-extutils-mm-unix perl-module-extutils-mm-uwin perl-module-extutils-mm-vms perl-module-extutils-mm-vos
>   perl-module-extutils-mm-win32 perl-module-extutils-mm-win95 perl-module-extutils-my perl-module-extutils-packlist perl-module-extutils-parsexs perl-module-extutils-parsexs-constants
>   perl-module-extutils-parsexs-countlines perl-module-extutils-parsexs-eval perl-module-extutils-parsexs-utilities perl-module-extutils-testlib perl-module-extutils-typemaps
>   perl-module-extutils-typemaps-cmd perl-module-extutils-typemaps-inputmap perl-module-extutils-typemaps-outputmap perl-module-extutils-typemaps-type perl-module-fatal perl-module-fcntl
>   perl-module-feature perl-module-fields perl-module-file-basename perl-module-file-compare perl-module-file-copy perl-module-file-dosglob perl-module-file-fetch perl-module-file-find
>   perl-module-file-glob perl-module-file-globmapper perl-module-file-path perl-module-file-spec perl-module-file-spec-amigaos perl-module-file-spec-cygwin perl-module-file-spec-epoc
>   perl-module-file-spec-functions perl-module-file-spec-mac perl-module-file-spec-os2 perl-module-file-spec-unix perl-module-file-spec-vms perl-module-file-spec-win32 perl-module-file-stat
>   perl-module-file-temp perl-module-filecache perl-module-filehandle perl-module-filter-simple perl-module-filter-util-call perl-module-findbin perl-module-getopt-long perl-module-getopt-std
>   perl-module-hash-util perl-module-hash-util-fieldhash perl-module-i18n-collate perl-module-i18n-langinfo perl-module-i18n-langtags perl-module-i18n-langtags-detect
>   perl-module-i18n-langtags-list perl-module-io perl-module-io-compress-adapter-bzip2 perl-module-io-compress-adapter-deflate perl-module-io-compress-adapter-identity
>   perl-module-io-compress-base perl-module-io-compress-base-common perl-module-io-compress-bzip2 perl-module-io-compress-deflate perl-module-io-compress-gzip
>   perl-module-io-compress-gzip-constants perl-module-io-compress-rawdeflate perl-module-io-compress-zip perl-module-io-compress-zip-constants perl-module-io-compress-zlib-constants
>   perl-module-io-compress-zlib-extra perl-module-io-dir perl-module-io-file perl-module-io-handle perl-module-io-pipe perl-module-io-poll perl-module-io-seekable perl-module-io-select
>   perl-module-io-socket perl-module-io-socket-inet perl-module-io-socket-ip perl-module-io-socket-unix perl-module-io-uncompress-adapter-bunzip2 perl-module-io-uncompress-adapter-identity
>   perl-module-io-uncompress-adapter-inflate perl-module-io-uncompress-anyinflate perl-module-io-uncompress-anyuncompress perl-module-io-uncompress-base perl-module-io-uncompress-bunzip2
>   perl-module-io-uncompress-gunzip perl-module-io-uncompress-inflate perl-module-io-uncompress-rawinflate perl-module-io-uncompress-unzip perl-module-io-zlib perl-module-ipc-cmd
>   perl-module-ipc-msg perl-module-ipc-open2 perl-module-ipc-open3 perl-module-ipc-semaphore perl-module-ipc-sharedmem perl-module-ipc-sysv perl-module-json-pp perl-module-json-pp-boolean
>   perl-module-less perl-module-lib perl-module-list-util perl-module-list-util-xs perl-module-load perl-module-loaded perl-module-locale perl-module-locale-codes
>   perl-module-locale-codes-constants perl-module-locale-codes-country perl-module-locale-codes-country-codes perl-module-locale-codes-country-retired perl-module-locale-codes-currency
>   perl-module-locale-codes-currency-codes perl-module-locale-codes-currency-retired perl-module-locale-codes-langext perl-module-locale-codes-langext-codes
>   perl-module-locale-codes-langext-retired perl-module-locale-codes-langfam perl-module-locale-codes-langfam-codes perl-module-locale-codes-langfam-retired perl-module-locale-codes-language
>   perl-module-locale-codes-language-codes perl-module-locale-codes-language-retired perl-module-locale-codes-langvar perl-module-locale-codes-langvar-codes
>   perl-module-locale-codes-langvar-retired perl-module-locale-codes-script perl-module-locale-codes-script-codes perl-module-locale-codes-script-retired perl-module-locale-country
>   perl-module-locale-currency perl-module-locale-language perl-module-locale-maketext perl-module-locale-maketext-guts perl-module-locale-maketext-gutsloader perl-module-locale-maketext-simple
>   perl-module-locale-script perl-module-math-bigfloat perl-module-math-bigfloat-trace perl-module-math-bigint perl-module-math-bigint-calc perl-module-math-bigint-calcemu
>   perl-module-math-bigint-fastcalc perl-module-math-bigint-trace perl-module-math-bigrat perl-module-math-complex perl-module-math-trig perl-module-memoize perl-module-memoize-anydbm-file
>   perl-module-memoize-expire perl-module-memoize-expirefile perl-module-memoize-sdbm-file perl-module-memoize-storable perl-module-meta-notation perl-module-mime-base64
>   perl-module-mime-quotedprint perl-module-mro perl-module-net-cmd perl-module-net-config perl-module-net-domain perl-module-net-ftp perl-module-net-ftp-a perl-module-net-ftp-dataconn
>   perl-module-net-ftp-e perl-module-net-ftp-i perl-module-net-ftp-l perl-module-net-hostent perl-module-net-netent perl-module-net-netrc perl-module-net-nntp perl-module-net-ping
>   perl-module-net-pop3 perl-module-net-protoent perl-module-net-servent perl-module-net-smtp perl-module-net-time perl-module-next perl-module-o perl-module-odbm-file perl-module-ok
>   perl-module-opcode perl-module-open perl-module-ops perl-module-overload perl-module-overloading perl-module-params-check perl-module-parent perl-module-perlfaq perl-module-perlio-encoding
>   perl-module-perlio-mmap perl-module-perlio-scalar perl-module-perlio-via perl-module-perlio-via-quotedprint perl-module-pod-checker perl-module-pod-escapes perl-module-pod-find
>   perl-module-pod-functions perl-module-pod-inputobjects perl-module-pod-man perl-module-pod-parselink perl-module-pod-parser perl-module-pod-parseutils perl-module-pod-perldoc
>   perl-module-pod-perldoc-baseto perl-module-pod-perldoc-getoptsoo perl-module-pod-perldoc-toansi perl-module-pod-perldoc-tochecker perl-module-pod-perldoc-toman perl-module-pod-perldoc-tonroff
>   perl-module-pod-perldoc-topod perl-module-pod-perldoc-tortf perl-module-pod-perldoc-toterm perl-module-pod-perldoc-totext perl-module-pod-perldoc-toxml perl-module-pod-plaintext
>   perl-module-pod-select perl-module-pod-simple perl-module-pod-simple-blackbox perl-module-pod-simple-checker perl-module-pod-simple-debug perl-module-pod-simple-dumpastext
>   perl-module-pod-simple-dumpasxml perl-module-pod-simple-linksection perl-module-pod-simple-methody perl-module-pod-simple-progress perl-module-pod-simple-pullparser
>   perl-module-pod-simple-pullparserendtoken perl-module-pod-simple-pullparserstarttoken perl-module-pod-simple-pullparsertexttoken perl-module-pod-simple-pullparsertoken
>   perl-module-pod-simple-rtf perl-module-pod-simple-search perl-module-pod-simple-simpletree perl-module-pod-simple-text perl-module-pod-simple-textcontent perl-module-pod-simple-tiedoutfh
>   perl-module-pod-simple-transcode perl-module-pod-simple-transcodedumb perl-module-pod-simple-transcodesmart perl-module-pod-simple-xmloutstream perl-module-pod-text perl-module-pod-text-color
>   perl-module-pod-text-overstrike perl-module-pod-text-termcap perl-module-pod-usage perl-module-posix perl-module-re perl-module-safe perl-module-scalar-util perl-module-sdbm-file
>   perl-module-search-dict perl-module-selectsaver perl-module-selfloader perl-module-sigtrap perl-module-socket perl-module-sort perl-module-storable perl-module-sub-util perl-module-symbol
>   perl-module-sys-hostname perl-module-sys-syslog perl-module-tap-base perl-module-tap-formatter-base perl-module-tap-formatter-color perl-module-tap-formatter-console
>   perl-module-tap-formatter-console-parallelsession perl-module-tap-formatter-console-session perl-module-tap-formatter-file perl-module-tap-formatter-file-session
>   perl-module-tap-formatter-session perl-module-tap-harness perl-module-tap-harness-env perl-module-tap-object perl-module-tap-parser perl-module-tap-parser-aggregator
>   perl-module-tap-parser-grammar perl-module-tap-parser-iterator perl-module-tap-parser-iterator-array perl-module-tap-parser-iterator-process perl-module-tap-parser-iterator-stream
>   perl-module-tap-parser-iteratorfactory perl-module-tap-parser-multiplexer perl-module-tap-parser-result perl-module-tap-parser-result-bailout perl-module-tap-parser-result-comment
>   perl-module-tap-parser-result-plan perl-module-tap-parser-result-pragma perl-module-tap-parser-result-test perl-module-tap-parser-result-unknown perl-module-tap-parser-result-version
>   perl-module-tap-parser-result-yaml perl-module-tap-parser-resultfactory perl-module-tap-parser-scheduler perl-module-tap-parser-scheduler-job perl-module-tap-parser-scheduler-spinner
>   perl-module-tap-parser-source perl-module-tap-parser-sourcehandler perl-module-tap-parser-sourcehandler-executable perl-module-tap-parser-sourcehandler-file
>   perl-module-tap-parser-sourcehandler-handle perl-module-tap-parser-sourcehandler-perl perl-module-tap-parser-sourcehandler-rawtap perl-module-tap-parser-yamlish-reader
>   perl-module-tap-parser-yamlish-writer perl-module-term-ansicolor perl-module-term-cap perl-module-term-complete perl-module-term-readline perl-module-test perl-module-test-builder
>   perl-module-test-builder-module perl-module-test-builder-tester perl-module-test-builder-tester-color perl-module-test-harness perl-module-test-more perl-module-test-simple
>   perl-module-test-tester perl-module-test-tester-capture perl-module-test-tester-capturerunner perl-module-test-tester-delegate perl-module-text-abbrev perl-module-text-balanced
>   perl-module-text-parsewords perl-module-text-tabs perl-module-text-wrap perl-module-thread perl-module-thread-queue perl-module-thread-semaphore perl-module-threads perl-module-threads-shared
>   perl-module-tie-array perl-module-tie-file perl-module-tie-handle perl-module-tie-hash perl-module-tie-hash-namedcapture perl-module-tie-memoize perl-module-tie-refhash perl-module-tie-scalar
>   perl-module-tie-stdhandle perl-module-tie-substrhash perl-module-time-gmtime perl-module-time-hires perl-module-time-local perl-module-time-localtime perl-module-time-piece
>   perl-module-time-seconds perl-module-time-tm perl-module-unicode-collate perl-module-unicode-collate-cjk-big5 perl-module-unicode-collate-cjk-gb2312 perl-module-unicode-collate-cjk-jisx0208
>   perl-module-unicode-collate-cjk-korean perl-module-unicode-collate-cjk-pinyin perl-module-unicode-collate-cjk-stroke perl-module-unicode-collate-cjk-zhuyin perl-module-unicode-collate-locale
>   perl-module-unicode-normalize perl-module-unicode-ucd perl-module-universal perl-module-user-grent perl-module-user-pwent perl-module-utf8 perl-module-version perl-module-version-regex
>   perl-module-xsloader perl-modules tiobench
> The following NEW packages will be installed:
>   adduser apt-utils debconf debconf-i18n debian-archive-keyring dh-python gcc-8-base gpgv libapt-inst2.0 libapt-pkg5.0 libaudit-common libaudit1 libbz2-1.0 libc-dev-bin libcap-ng0 libdb5.3
>   libexpat1-dev libgcrypt20 libgdbm6 libgmpxx4ldbl libgpm2 libhogweed4 libidn2-0 liblocale-gettext-perl liblz4-1 libmpdec2 libncursesw6 libnettle6 libp11-kit0 libpam-modules libpam-modules-bin
>   libpam0g libpcre3 libperl5.28 libpython3-dev libpython3-stdlib libpython3.7 libpython3.7-dev libpython3.7-minimal libpython3.7-stdlib libseccomp2 libselinux1 libsemanage-common libsemanage1
>   libsepol1 libssl1.1 libtasn1-6 libtext-charwidth-perl libtext-iconv-perl libtext-wrapi18n-perl libtinfo6 libzstd1 linux-libc-dev mime-support passwd perl-base perl-modules-5.28 python3
>   python3-lib2to3 python3-minimal python3-psutil python3.7 python3.7-dev python3.7-minimal xz-utils zlib1g
> The following packages will be upgraded:
>   apt libc6 libc6-dev libexpat1 libgcc1 libgdbm-compat4 libgmp-dev libgmp10 libgnutls30 perl python3-dev python3-distutils
> 12 upgraded, 66 newly installed, 531 to remove and 212 not upgraded.
> Need to get 36.9 MB of archives.
> After this operation, 173 MB of additional disk space will be used.
> Do you want to continue? [Y/n] Y
> WARNING: The following packages cannot be authenticated!
>   libc-dev-bin linux-libc-dev libc6-dev gcc-8-base libgcc1 libc6 libbz2-1.0 libdb5.3 libgdbm6 libgdbm-compat4 zlib1g perl-base perl-modules-5.28 libperl5.28 perl libaudit-common libcap-ng0
>   libaudit1 debconf libpam0g libpcre3 libselinux1 libsemanage-common libsepol1 libsemanage1 libpam-modules-bin libpam-modules passwd adduser libgcrypt20 gpgv debian-archive-keyring liblz4-1
>   libzstd1 libgmpxx4ldbl libgmp-dev libgmp10 libnettle6 libhogweed4 libidn2-0 libp11-kit0 libtasn1-6 libgnutls30 libseccomp2 libapt-pkg5.0 apt liblocale-gettext-perl libssl1.1
>   libpython3.7-minimal libexpat1 python3.7-minimal python3-minimal python3-lib2to3 python3-distutils mime-support libmpdec2 libtinfo6 libncursesw6 libpython3.7-stdlib libpython3.7 libexpat1-dev
>   libpython3.7-dev libpython3-dev python3.7-dev dh-python python3-dev python3.7 libpython3-stdlib python3 libapt-inst2.0 apt-utils libtext-iconv-perl libtext-charwidth-perl
>   libtext-wrapi18n-perl debconf-i18n xz-utils libgpm2 python3-psutil
> Install these packages without verification? [y/N] Y
> 0% [Working]
> Get:1 http://ftp.de.debian.org/debian buster/main arm64 libc-dev-bin arm64 2.28-10 [270 kB]
> Get:2 http://ftp.de.debian.org/debian buster/main arm64 linux-libc-dev arm64 4.19.98-1 [1294 kB]
> Get:3 http://ftp.de.debian.org/debian buster/main arm64 libc6-dev arm64 2.28-10 [2324 kB]
> Get:4 http://ftp.de.debian.org/debian buster/main arm64 gcc-8-base arm64 8.3.0-6 [191 kB]
> Get:5 http://ftp.de.debian.org/debian buster/main arm64 libgcc1 arm64 1:8.3.0-6 [34.4 kB]
> Get:6 http://ftp.de.debian.org/debian buster/main arm64 libc6 arm64 2.28-10 [2521 kB]
> Get:7 http://ftp.de.debian.org/debian buster/main arm64 libbz2-1.0 arm64 1.0.6-9.2~deb10u1 [45.5 kB]
> Get:8 http://ftp.de.debian.org/debian buster/main arm64 libdb5.3 arm64 5.3.28+dfsg1-0.5 [622 kB]
> Get:9 http://ftp.de.debian.org/debian buster/main arm64 libgdbm6 arm64 1.18.1-4 [63.4 kB]
> Get:10 http://ftp.de.debian.org/debian buster/main arm64 libgdbm-compat4 arm64 1.18.1-4 [44.0 kB]
> Get:11 http://ftp.de.debian.org/debian buster/main arm64 zlib1g arm64 1:1.2.11.dfsg-1 [89.3 kB]
> Get:12 http://ftp.de.debian.org/debian buster/main arm64 perl-base arm64 5.28.1-6 [1402 kB]
> Get:13 http://ftp.de.debian.org/debian buster/main arm64 perl-modules-5.28 all 5.28.1-6 [2873 kB]
> Get:14 http://ftp.de.debian.org/debian buster/main arm64 libperl5.28 arm64 5.28.1-6 [3729 kB]
> Get:15 http://ftp.de.debian.org/debian buster/main arm64 perl arm64 5.28.1-6 [204 kB]
> Get:16 http://ftp.de.debian.org/debian buster/main arm64 libaudit-common all 1:2.8.4-3 [22.4 kB]
> Get:17 http://ftp.de.debian.org/debian buster/main arm64 libcap-ng0 arm64 0.7.9-2 [13.8 kB]
> Get:18 http://ftp.de.debian.org/debian buster/main arm64 libaudit1 arm64 1:2.8.4-3 [56.6 kB]
> Get:19 http://ftp.de.debian.org/debian buster/main arm64 debconf all 1.5.71 [145 kB]
> Get:20 http://ftp.de.debian.org/debian buster/main arm64 libpam0g arm64 1.3.1-5 [125 kB]
> Get:21 http://ftp.de.debian.org/debian buster/main arm64 libpcre3 arm64 2:8.39-12 [317 kB]
> Get:22 http://ftp.de.debian.org/debian buster/main arm64 libselinux1 arm64 2.8-1+b1 [76.1 kB]
> Get:23 http://ftp.de.debian.org/debian buster/main arm64 libsemanage-common all 2.8-2 [17.7 kB]
> Get:24 http://ftp.de.debian.org/debian buster/main arm64 libsepol1 arm64 2.8-1 [217 kB]
> Get:25 http://ftp.de.debian.org/debian buster/main arm64 libsemanage1 arm64 2.8-2 [90.5 kB]
> Get:26 http://ftp.de.debian.org/debian buster/main arm64 libpam-modules-bin arm64 1.3.1-5 [106 kB]
> Get:27 http://ftp.de.debian.org/debian buster/main arm64 libpam-modules arm64 1.3.1-5 [303 kB]
> Get:28 http://ftp.de.debian.org/debian buster/main arm64 passwd arm64 1:4.5-1.1 [980 kB]
> Get:29 http://ftp.de.debian.org/debian buster/main arm64 adduser all 3.118 [240 kB]
> Get:30 http://ftp.de.debian.org/debian buster/main arm64 libgcrypt20 arm64 1.8.4-5 [487 kB]
> Get:31 http://ftp.de.debian.org/debian buster/main arm64 gpgv arm64 2.2.12-1+deb10u1 [569 kB]
> Get:32 http://ftp.de.debian.org/debian buster/main arm64 debian-archive-keyring all 2019.1 [75.1 kB]
> Get:33 http://ftp.de.debian.org/debian buster/main arm64 liblz4-1 arm64 1.8.3-1 [50.2 kB]
> Get:34 http://ftp.de.debian.org/debian buster/main arm64 libzstd1 arm64 1.3.8+dfsg-3 [214 kB]
> Get:35 http://ftp.de.debian.org/debian buster/main arm64 libgmpxx4ldbl arm64 2:6.1.2+dfsg-4 [22.6 kB]
> Get:36 http://ftp.de.debian.org/debian buster/main arm64 libgmp-dev arm64 2:6.1.2+dfsg-4 [608 kB]
> Get:37 http://ftp.de.debian.org/debian buster/main arm64 libgmp10 arm64 2:6.1.2+dfsg-4 [226 kB]
> Get:38 http://ftp.de.debian.org/debian buster/main arm64 libnettle6 arm64 3.4.1-1 [225 kB]
> Get:39 http://ftp.de.debian.org/debian buster/main arm64 libhogweed4 arm64 3.4.1-1 [138 kB]
> Get:40 http://ftp.de.debian.org/debian buster/main arm64 libidn2-0 arm64 2.0.5-1+deb10u1 [75.6 kB]
> Get:41 http://ftp.de.debian.org/debian buster/main arm64 libp11-kit0 arm64 0.23.15-2 [302 kB]
> Get:42 http://ftp.de.debian.org/debian buster/main arm64 libtasn1-6 arm64 4.13-3 [47.8 kB]
> Get:43 http://ftp.de.debian.org/debian buster/main arm64 libgnutls30 arm64 3.6.7-4+deb10u2 [1061 kB]
> Get:44 http://ftp.de.debian.org/debian buster/main arm64 libseccomp2 arm64 2.3.3-4 [39.5 kB]
> Get:45 http://ftp.de.debian.org/debian buster/main arm64 libapt-pkg5.0 arm64 1.8.2 [898 kB]
> Get:46 http://ftp.de.debian.org/debian buster/main arm64 apt arm64 1.8.2 [1369 kB]
> Get:47 http://ftp.de.debian.org/debian buster/main arm64 liblocale-gettext-perl arm64 1.07-3+b4 [18.8 kB]
> Get:48 http://ftp.de.debian.org/debian buster/main arm64 libssl1.1 arm64 1.1.1d-0+deb10u2 [1381 kB]
> Get:49 http://ftp.de.debian.org/debian buster/main arm64 libpython3.7-minimal arm64 3.7.3-2+deb10u1 [588 kB]
> Get:50 http://ftp.de.debian.org/debian buster/main arm64 libexpat1 arm64 2.2.6-2+deb10u1 [85.4 kB]
> Get:51 http://ftp.de.debian.org/debian buster/main arm64 python3.7-minimal arm64 3.7.3-2+deb10u1 [1404 kB]
> Get:52 http://ftp.de.debian.org/debian buster/main arm64 python3-minimal arm64 3.7.3-1 [36.6 kB]
> Get:53 http://ftp.de.debian.org/debian buster/main arm64 python3-lib2to3 all 3.7.3-1 [76.7 kB]
> Get:54 http://ftp.de.debian.org/debian buster/main arm64 python3-distutils all 3.7.3-1 [142 kB]
> Get:55 http://ftp.de.debian.org/debian buster/main arm64 mime-support all 3.62 [37.2 kB]
> Get:56 http://ftp.de.debian.org/debian buster/main arm64 libmpdec2 arm64 2.4.2-2 [77.7 kB]
> Get:57 http://ftp.de.debian.org/debian buster/main arm64 libtinfo6 arm64 6.1+20181013-2+deb10u2 [321 kB]
> Get:58 http://ftp.de.debian.org/debian buster/main arm64 libncursesw6 arm64 6.1+20181013-2+deb10u2 [120 kB]
> Get:59 http://ftp.de.debian.org/debian buster/main arm64 libpython3.7-stdlib arm64 3.7.3-2+deb10u1 [1640 kB]
> Get:60 http://ftp.de.debian.org/debian buster/main arm64 libpython3.7 arm64 3.7.3-2+deb10u1 [1371 kB]
> Get:61 http://ftp.de.debian.org/debian buster/main arm64 libexpat1-dev arm64 2.2.6-2+deb10u1 [128 kB]
> Get:62 http://ftp.de.debian.org/debian buster/main arm64 libpython3.7-dev arm64 3.7.3-2+deb10u1 [2379 kB]
> Get:63 http://ftp.de.debian.org/debian buster/main arm64 libpython3-dev arm64 3.7.3-1 [20.1 kB]
> Get:64 http://ftp.de.debian.org/debian buster/main arm64 python3.7-dev arm64 3.7.3-2+deb10u1 [509 kB]
> Get:65 http://ftp.de.debian.org/debian buster/main arm64 dh-python all 3.20190308 [99.3 kB]
> Get:66 http://ftp.de.debian.org/debian buster/main arm64 python3-dev arm64 3.7.3-1 [1264 B]
> Get:67 http://ftp.de.debian.org/debian buster/main arm64 python3.7 arm64 3.7.3-2+deb10u1 [330 kB]
> Get:68 http://ftp.de.debian.org/debian buster/main arm64 libpython3-stdlib arm64 3.7.3-1 [20.0 kB]
> Get:69 http://ftp.de.debian.org/debian buster/main arm64 python3 arm64 3.7.3-1 [61.5 kB]
> Get:70 http://ftp.de.debian.org/debian buster/main arm64 libapt-inst2.0 arm64 1.8.2 [202 kB]
> Get:71 http://ftp.de.debian.org/debian buster/main arm64 apt-utils arm64 1.8.2 [411 kB]
> Get:72 http://ftp.de.debian.org/debian buster/main arm64 libtext-iconv-perl arm64 1.7-5+b6 [15.3 kB]
> Get:73 http://ftp.de.debian.org/debian buster/main arm64 libtext-charwidth-perl arm64 0.04-7.1+b1 [9852 B]
> Get:74 http://ftp.de.debian.org/debian buster/main arm64 libtext-wrapi18n-perl all 0.06-7.1 [8644 B]
> Get:75 http://ftp.de.debian.org/debian buster/main arm64 debconf-i18n all 1.5.71 [206 kB]
> Get:76 http://ftp.de.debian.org/debian buster/main arm64 xz-utils arm64 5.2.4-1 [182 kB]
> Get:77 http://ftp.de.debian.org/debian buster/main arm64 libgpm2 arm64 1.20.7-5 [34.5 kB]
> Get:78 http://ftp.de.debian.org/debian buster/main arm64 python3-psutil arm64 5.5.1-1 [166 kB]
> Fetched 36.9 MB in 10s (3496 kB/s)
> Selecting previously unselected package libc-dev-bin.
> (Reading database ... 56149 files and directories currently installed.)
> Preparing to unpack .../libc-dev-bin_2.28-10_arm64.deb ...
> Unpacking libc-dev-bin (2.28-10) ...
> dpkg: error processing archive /var/cache/apt/archives/libc-dev-bin_2.28-10_arm64.deb (--unpack):
>  trying to overwrite '/usr/bin/gencat', which is also in package libc6-utils 2.27-r0
> dpkg-deb: error: subprocess paste was killed by signal (Broken pipe)
> Selecting previously unselected package linux-libc-dev:arm64.
> Preparing to unpack .../linux-libc-dev_4.19.98-1_arm64.deb ...
> Unpacking linux-libc-dev:arm64 (4.19.98-1) ...
> dpkg: error processing archive /var/cache/apt/archives/linux-libc-dev_4.19.98-1_arm64.deb (--unpack):
>  trying to overwrite '/usr/include/asm-generic/auxvec.h', which is also in package linux-libc-headers-dev 4.14-r0
> dpkg-deb: error: subprocess paste was killed by signal (Broken pipe)
> Preparing to unpack .../libc6-dev_2.28-10_arm64.deb ...
> Unpacking libc6-dev:arm64 (2.28-10) over (2.27-r0) ...
> Selecting previously unselected package gcc-8-base:arm64.
> Preparing to unpack .../gcc-8-base_8.3.0-6_arm64.deb ...
> Unpacking gcc-8-base:arm64 (8.3.0-6) ...
> Errors were encountered while processing:
>  /var/cache/apt/archives/libc-dev-bin_2.28-10_arm64.deb
>  /var/cache/apt/archives/linux-libc-dev_4.19.98-1_arm64.deb
> E: Sub-process /usr/bin/dpkg returned an error code (1)

> root@imx8mq-var-dart:~# sudo apt-get -o Dpkg::Options::="--force-overwrite" install python3-psutil
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> You might want to run 'apt-get -f install' to correct these:
> The following packages have unmet dependencies:
>  libc6-dev : Depends: libc6 (= 2.28-10) but 2.27-r0 is to be installed
>              Depends: libc-dev-bin (= 2.28-10) but it is not going to be installed
>              Depends: linux-libc-dev but it is not going to be installed
>  python3-psutil : Depends: python3 (< 3.8)
>                   Depends: python3 (>= 3.7~)
>                   Depends: python3:any
> E: Unmet dependencies. Try 'apt-get -f install' with no packages (or specify a solution).

> root@imx8mq-var-dart:~# apt-get -f install
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> Correcting dependencies... Done
> The following package was automatically installed and is no longer required:
>   gcc-8-base
> Use 'apt autoremove' to remove it.
> The following additional packages will be installed:
>   libc-dev-bin libc6 libidn2-0 linux-libc-dev
> Suggested packages:
>   glibc-doc debconf | debconf-2.0 libc-l10n locales
> Recommended packages:
>   manpages manpages-dev
> The following NEW packages will be installed:
>   libc-dev-bin libidn2-0 linux-libc-dev
> The following packages will be upgraded:
>   libc6
> 1 upgraded, 3 newly installed, 0 to remove and 223 not upgraded.
> 2 not fully installed or removed.
> Need to get 0 B/4161 kB of archives.
> After this operation, 15.8 MB of additional disk space will be used.
> Do you want to continue? [Y/n] y
> WARNING: The following packages cannot be authenticated!
>   libc6 libc-dev-bin linux-libc-dev libidn2-0
> Install these packages without verification? [y/N] y
> (Reading database ... 56150 files and directories currently installed.)
> Preparing to unpack .../libc6_2.28-10_arm64.deb ...
> Checking for services that may need to be restarted...
> Checking init scripts...
> Unpacking libc6:arm64 (2.28-10) over (2.27-r0) ...
> dpkg: warning: 'ldconfig' not found in PATH or not executable
> dpkg: error: 1 expected program not found in PATH or not executable
> Note: root's PATH should usually contain /usr/local/sbin, /usr/sbin and /sbin
> E: Sub-process /usr/bin/dpkg returned an error code (2)

> 


-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

