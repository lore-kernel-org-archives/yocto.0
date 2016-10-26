Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E51BE00D18; Wed, 26 Oct 2016 05:38:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15487E00D00
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 05:38:03 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id q7so3132101qtq.1
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 05:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=WLx0BT0gn7WxSOEqBph17SRSYiZ0gW0B4QdiEFRkfts=;
	b=YbudHYKCtrhNwrjUOYjlVa3t0dGGCNq5FocTwTOWenQRDgDuub1nNZJHVEE+UqCYta
	MOzlAxk/HLee0fFtJMe/PAO7B53zKVvGEB121KdX2hOzykn8U2xEXrN+kE1/tI8BfJYy
	W3ER0XceNFfxF2G7sc8+dAYgleRqvI7BF0Loid9hhATz8AVaeulGUURNqu74JsK30CLi
	A8AtCscUdjwJA1zy2FY4Jspnp6bLR7KCkRdlH50hi3pqa8U9YLpz079tnyNhbKlaoQ+d
	RDUnO0gC7FHKnOjIkUGJXlSH33uODMIamVB32YZlZtswKcGmckIYDGtfqY6rhLRSR5+/
	ZA3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=WLx0BT0gn7WxSOEqBph17SRSYiZ0gW0B4QdiEFRkfts=;
	b=F2DSz2IpFTCo46ORpPBEka5ojntovY2yeo3IZxzMaRQkVeCkk0Dmv0ahOriZvr8OIn
	u7QWRBI1Lr64OQ23KB0RCufmqbI/0xCfdfINef5ylHQSd1ztnfLYZKPQ/2c2Ra0vepgp
	ammeVKkZv1kSiiDpcuAj3y1eebqDmfN33mmvnTBMhF9RTha2HRTv5QQQCjXuxVJUuVip
	X5vifo8+ALBMapciIDXb2omfsUvvEBmSA8ZynH7LPjrtpx6sMlxiCo9yYn7048HELBCT
	8Yk3VauULdNWg1oMVVFg9XkmK84q7v3SWVZdNdfBEYkTQakgpt5Td0QBV8znud5UTjB9
	jdKQ==
X-Gm-Message-State: ABUngvfQ644LdcbMecZDyp9iS/9hG8EnLr20+VUXLMZ0/lU7Okq9uCJV7N/IxVJfTQaBbiT9qUBf6aUpksRYcA==
X-Received: by 10.200.36.202 with SMTP id t10mr1398404qtt.85.1477485482662;
	Wed, 26 Oct 2016 05:38:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.1 with HTTP; Wed, 26 Oct 2016 05:38:01 -0700 (PDT)
In-Reply-To: <6b1eb767-fcde-5bf7-acd2-27f1fea8bbf0@decelettronica.com>
References: <92e3cde4-8269-d41f-1244-be8fd43d0f2e@decelettronica.com>
	<CAHUNapRDk20w-+Jg9LSUqN7B3GXkuX7=Xsi3yyyDy7RWmGJKAQ@mail.gmail.com>
	<6b1eb767-fcde-5bf7-acd2-27f1fea8bbf0@decelettronica.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 26 Oct 2016 08:38:01 -0400
Message-ID: <CAHUNapQHmJcHp1k9pJjZ0w+d+ZRWnz38juKDeLDWaHRCWZ3Tow@mail.gmail.com>
To: Luca Boscariol DEC <lboscariol@decelettronica.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: YoctoProject: problem bitbake core-image-minimal
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
X-List-Received-Date: Wed, 26 Oct 2016 12:38:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Luca,

Thank you for providing a more complete problem report. There are two
problems you will need to fix in order for your build to succeed:

1) Don't run the build as the root user. Editing sanity.conf to get
rid of the build failure is not the solution to avoid the build
failing because it is being invoked as the root user. The correct
solution is to create a non-privileged user, login as that user, and
run the build as that user.

2) Fix the networking in your VM. It doesn't look like git works from
within your VM. Does the "git clone" command work on your host? In any
case, performing a build will require your build VM to be able to
access the internet in order to perform many downloads. A normal build
will invoke git, subversion, and other repository fetches as well as
downloading many tarballs. So without networking working properly a
build is not possible.

Best regards,
    Trevor


On Wed, Oct 26, 2016 at 3:23 AM, Luca Boscariol DEC
<lboscariol@decelettronica.com> wrote:
> Hi Trevor.
>
> I'm working in VMware Virtual Machine.
> I have installed Open Suse Desktop 12 (SLED 12) (x86_64)
> Linux version 3.12.28-4-default
>
> I'm following:
> http://www.yoctoproject.org/docs/2.1/mega-manual/mega-manual.html
>
> I have installed:
> python-2.7.7-2.12.x86_64
> git-2.10.1-318.1.x86_64
> tar-1.27.1-2.22.x86_64
> gcc        4.8
> gcc-c++        4.8
> make         4.0
> wget         1.14
> python-xml     2.7
> diffstat     1.61
> makeinfo    4.13a
> python-curses    2.7.7
> patch        2.7.1
> socat        1.7.2.4
> libSDL        1.2.15
>
> First I have tried to used command:
>     git clone -b krogoth git://git.yoctoproject.org/poky.git
>
> but connection refused.
> Output is following:
> -------------------------------------------------------------------------=
---
>     Cloning into 'poky...
>     fatal: unable to connect to git.yoctoproject.org:
>     git.yoctoproject.org[0:140.211.169.56]: errno=3DConnection refused
> -------------------------------------------------------------------------=
---
> How can I use clone repository?
>
>
>
> Next, I have downloaded from
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.1.1/poky-krogoth=
-15.0.1.tar.bz2
>
>
> Then
>     tar -xvf poky-krogoth-15.0.1.tar.bz2
>
> in /opt directory
>
>
> I have modified file build/conf/local.conf in following mode:
>     #MACHINE ??=3D "qemux86"
>     MACHINE ??=3D "qemuarm"
>
> I run script:
>     source oe-init-build-env
>
> Output is:
> -------------------------------------------------------------------------=
---
> #### Shell enviroment set up for builds. ###You can now run 'bitbake
> <target>'
>
> Common targets are:
>     core-image-minimal
>     core-image-sato
>     meta-toolchian
>     meta-ide-support
>
> You can also run generated qemu images with a command like 'runqemu qemux=
86
> -------------------------------------------------------------------------=
---
>
>
> To conserve disk space, I have added in build/conf/local.conf
>     INHERIT +=3D "rm_work"
>
> When i run a script:
>     bitbake core-image-minimal
> I have 1 error.
>
> Output is:
> -------------------------------------------------------------------------=
---
> ERROR: OE-core's config sanity checker detected a potential
> misconfiguration.
> Either fix the cause of this error or at your own risk disable the checke=
r
> (see sanity.conf).
> Following is the list of potential problems / advisories:
>
> Do not use Bitbake as root
> -------------------------------------------------------------------------=
---
>
>
>
> Then, I have modified file /meta/conf/sanity.conf in following mode:
>
>     #INHERIT +=3D "sanity"
>     #INHERIT +=3D "rm_work"
>
>
> I change directory:
>     /build
>
>
> I run:
>     bitbake core-image-minimal
>
> Output is:
> -------------------------------------------------------------------------=
---
> Parsing recipes: 100% |
>
> #########################################################################=
###########################################################################=
###########################################################################=
##############
>
> ########################################| Time: 00:00:46
> Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301 targets, 6=
6
> skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        =3D "1.30.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "SUSELINUX-12"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "qemuarm"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "2.1.1"
> TUNE_FEATURES     =3D "arm armv5 thumb dsp"
> TARGET_FPU        =3D "soft"
> meta
> meta-poky
> meta-yocto-bsp    =3D "<unknown>:<unknown>"
>
> NOTE: Fetching uninative binary shim from
> http://downloads.yoctoproject.org/releases/uninative/0.95/x86_64-nativesd=
k-libc.tar.bz2;sha256sum=3D26d46c61ad88cc245e31c88549717c0092a838d111b93ec1=
69d88b08cc027581
>
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: quilt-native-0.64-r0 do_populate_sysroot: Error executing a python
> function in exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:relocatable_binaries_preprocess(d)
>      0003:
> File: '/opt/yocto/poky-krogoth-15.0.1/meta/classes/relocatable.bbclass',
> lineno: 6, function: relocatable_binaries_preprocess
>      0002:
>      0003:SYSROOT_PREPROCESS_FUNCS +=3D "relocatable_binaries_preprocess"
>      0004:
>      0005:python relocatable_binaries_preprocess() {
>  *** 0006:    rpath_replace(d.expand('${SYSROOT_DESTDIR}'), d)
>      0007:}
> File: '/opt/yocto/poky-krogoth-15.0.1/meta/classes/chrpath.bbclass', line=
no:
> 116, function: rpath_replace
>      0112:
>      0113:    for bindir in bindirs:
>      0114:        #bb.note ("Processing directory " + bindir)
>      0115:        directory =3D path + "/" + bindir
>  *** 0116:        process_dir (path, directory, d)
>      0117:
> File: '/opt/yocto/poky-krogoth-15.0.1/meta/classes/chrpath.bbclass', line=
no:
> 105, function: process_dir
>      0101:                perms =3D None
>      0102:            else:
>      0103:                # Temporarily make the file writeable so we can
> chrpath it
>      0104:                os.chmod(fpath, perms|stat.S_IRWXU)
>  *** 0105:            process_file(cmd, fpath, rootdir, baseprefix, tmpdi=
r,
> d)
>      0106:
>      0107:            if perms:
>      0108:                os.chmod(fpath, perms)
>      0109:
> File: '/opt/yocto/poky-krogoth-15.0.1/meta/classes/chrpath.bbclass', line=
no:
> 7, function: process_file_linux
>      0003:
>      0004:def process_file_linux(cmd, fpath, rootdir, baseprefix, tmpdir,
> d):
>      0005:    import subprocess as sub
>      0006:
>  *** 0007:    p =3D sub.Popen([cmd, '-l',
> fpath],stdout=3Dsub.PIPE,stderr=3Dsub.PIPE)
>      0008:    err, out =3D p.communicate()
>      0009:    # If returned successfully, process stderr for results
>      0010:    if p.returncode !=3D 0:
>      0011:        return
> File: '/usr/lib64/python2.7/subprocess.py', lineno: 710, function: __init=
__
>      0706:                                cwd, env, universal_newlines,
>      0707:                                startupinfo, creationflags, she=
ll,
> to_close,
>      0708:                                p2cread, p2cwrite,
>      0709:                                c2pread, c2pwrite,
>  *** 0710:                                errread, errwrite)
>      0711:        except Exception:
>      0712:            # Preserve original exception in case os.close rais=
es.
>      0713:            exc_type, exc_value, exc_trace =3D sys.exc_info()
>      0714:
> File: '/usr/lib64/python2.7/subprocess.py', lineno: 1327, function:
> _execute_child
>      1323:                except OSError as e:
>      1324:                    if e.errno !=3D errno.ECHILD:
>      1325:                        raise
>      1326:                child_exception =3D pickle.loads(data)
>  *** 1327:                raise child_exception
>      1328:
>      1329:
>      1330:        def _handle_exitstatus(self, sts,
> _WIFSIGNALED=3Dos.WIFSIGNALED,
>      1331:                _WTERMSIG=3Dos.WTERMSIG, _WIFEXITED=3Dos.WIFEXI=
TED,
> Exception: OSError: [Errno 2] No such file or directory
>
> ERROR: quilt-native-0.64-r0 do_populate_sysroot: Function failed:
> relocatable_binaries_preprocess
> ERROR: Logfile of failure stored in:
> /opt/yocto/poky-krogoth-15.0.1/build/tmp/work/x86_64-linux/quilt-native/0=
.64-r0/temp/log.do_populate_sysroot.5686
> ERROR: Task 23
> (/opt/yocto/poky-krogoth-15.0.1/meta/recipes-devtools/quilt/quilt-native_=
0.64.bb,
> do_populate_sysroot) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 12 tasks of which 0 didn't need to be reru=
n
> and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>
> /opt/yocto/poky-krogoth-15.0.1/meta/recipes-devtools/quilt/quilt-native_0=
.64.bb,
> do_populate_sysroot
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
> -------------------------------------------------------------------------=
---
>
> Thanks for your help.
>
> Luca
>
> Il 25/10/2016 22:27, Trevor Woerner ha scritto:
>
> In addition to the "bitbake core-image-minimal" command, what commands
> did you type before that (git clone, source <...>)? Did you edit any
>
>
> -----------------------------------------------------------
> Luca BOSCARIOL
> email: lboscariol@decelettronica.com
> -----------------------------------------------------------
> DEC ELETTRONICA S.r.l.
> Via dell'Artigianato 12/1 - 31040 Fossalta Maggiore di Chiarano (TV) Ital=
y
> Tel: +39 0422 806097 - 806159 - Fax:+39 0422 806128 - URL:
> www.decelettronica.com - email: info@decelettronica.com
> -------------------------------------------------------------------------=
----------------
> Le informazioni contenute in questo messaggio di posta elettronica e/o ne=
i
> file allegati sono da considerarsi strettamente riservate. Il loro utiliz=
zo
> =C3=A8 consentito esclusivamente al destinatario del messaggio, per le fi=
nalit=C3=A0
> indicate nel messaggio stesso. Qualora riceveste questo messaggio senza
> esserne il destinatario, Vi preghiamo cortesemente di darcene notizia via
> e-mail e di procedere alla distruzione del messaggio stesso, cancellandol=
o
> dal Vostro sistema.
> Vi ricordiamo che costituisce comportamento contrario ai principi dettati
> dal Dlgs. 196/2003 il trattenere il messaggio stesso, divulgarlo, anche i=
n
> parte, distribuirlo ad altri soggetti, copiarlo od utilizzarlo per finali=
t=C3=A0
> diverse.
> -------------------------------------------------------------------------=
----------------

