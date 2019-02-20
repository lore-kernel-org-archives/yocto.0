Return-Path: <ryan.harkin@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92E39E00B92; Wed, 20 Feb 2019 10:03:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AD97E006D8
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:03:48 -0800 (PST)
Received: by mail-qt1-f196.google.com with SMTP id d18so18205960qtg.12
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=fuHHcQ6wu7la4Gmvqjhigh8lP93NkN1yF+4uG2SOepE=;
	b=zRocO57G9PDmcRteB8wFXxcoSPlIboIACihwDAizWvnXy7Zax+GcCY5fMReL892weE
	6uL6GwJtye6ug/al4EzmEZR72jPXWlwHoiwlPNOojImJPdVVWAepxtG7cGQ6GccGNKdw
	8arEcLKIhlwDJ10joMYqdaA9fcsXZVCk+OT3g4vVficoFIbhP3G5B08dz9hHJuuhHVrP
	hxHmdS/lBZqs8oWXdq7UJZk1JAVrLt6X6H9RsCcpQuvhz9KWc9Wn93C1oumF/zCPyEvW
	RkylVt3vPIbcJEQHUZYeqK+AN3bs5CckY7Jz6TJM2Y+t67kNzaxMZKV1wVueQ1w8mvQ9
	lJtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=fuHHcQ6wu7la4Gmvqjhigh8lP93NkN1yF+4uG2SOepE=;
	b=GsNBtcEK5TLgn4caJK9XT7lNj0rnpBq9UAT7j77ctPurBRKrbb8RPbJFJmmlOrLDQD
	JyZiKtXXYISNJ+fxPAAWNPs7p6X7jrYLyuCDT73+Bv0WYmmJJ0VCSNnP/DBTXECvRckA
	MZ9i/kWVMPbZ2hZxgrmRc/UV3Dk9x8uFdlEeNl8a27RI0qI+TyyEInS4DumWxfXYyBm+
	dwIF9wzgcBdDXyVJ2G8bLvliSPmQ4m/N6XfnW/ZIUTgvhxHRgRdqNM/JKqnv6PkBpz5I
	aIOX1w0bdRNI1C6Xj8ERSaPpHy71h6rv3vwv1jqBFbZR8eKradRprcRWGxm5P4wlgDBC
	YMBQ==
X-Gm-Message-State: AHQUAubKokwuKx98RktOhQXhESNUejSyW5GvRJSkY1nQCS15mbY6DeRh
	A9KDLx3AyCpK/hx2WVQEQymJhQlhQWr7L9TuGF4rwQSvMLg=
X-Google-Smtp-Source: AHgI3IYPHrKBrcL/w5d73EPRGWPon3bZ8VcAA9rLqibS7OnxCZsu9SZH85Duj4k1OeYbtfBIC/9qJCermhh7eAeglUE=
X-Received: by 2002:ac8:38ba:: with SMTP id f55mr27814029qtc.192.1550685826845;
	Wed, 20 Feb 2019 10:03:46 -0800 (PST)
MIME-Version: 1.0
From: Ryan Harkin <ryan.harkin@linaro.org>
Date: Wed, 20 Feb 2019 18:03:35 +0000
Message-ID: <CAD0U-h+jOtnjkqEVnLQgJRQTP1j-8E4CD-yGhJXTvd==qh4ESQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problems using MIRRORS variables
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
X-List-Received-Date: Wed, 20 Feb 2019 18:03:50 -0000
Content-Type: multipart/alternative; boundary="000000000000de3a150582572d3e"

--000000000000de3a150582572d3e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm having a few problems when using the MIRRORS variable for GIT repos. I
see the same problems with the PREMIRRORS variable.

My use-case is:

1. company A has a private layer with SRC_URI that points to private git
2. company A needs to share layers with company B
3. company B cannot access company A's private git tree
4. company B has a mirror of the git trees with the same contents,
including SRC_URIs pointing to the company A private git trees

I have tried to resolve this using the MIRRORS variable in local.conf.

If SRCREV is a SHA, it seems to work for me.

However, it fails when the SRCREV is not a fixed SHA, eg. if SRCREV is a
branch, tag, or ${AUTOREV}. It looks like do_fetch is trying to pull the
repo to work out the SHA, but before decoding MIRRORS or PREMIRRORS. It
appears to do an ls-remote on the original repo, not the mirror, and fails.

The next issue is when using MIRRORS to replace a GIT repo with one using
SSH. This may simply be a syntax problem on my side.

Example:

MIRRORS +=3D \
 git://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git \
 ssh://
git@git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git;protocol=
=3Dssh
\n \
"

The MIRROR doesn't seem to be used at all in the above example. I've tried
adding ";protocol=3Dhttps" to the first line; it doesn't help, and fails in=
 a
different way, giving a "Exception: KeyError: 'protocol'" error.

I've shown detailed examples below. People may not need them, but if my
email isn't clear enough, hopefully they will help explain.

Setup
--------------------------------------------------
For an example, I'm using Linaro's OE-RPB master. More info here:
https://github.com/96boards/oe-rpb-manifest

First, set up the environment:

  $ mkdir -p ${WORKSPACE}
  $ repo init -u https://github.com/96boards/oe-rpb-manifest.git -b master
  $ repo sync
  $ export MACHINE=3Ddragonboard-410c ; export DISTRO=3Drpb ; .
setup-environment

Then, make sure it's working:

  $ bitbake -c do_fetch wcnss-config

Mod a recipe to use a fake SRC_URI, and test that it no longer works.

  $ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/wcnss-config/
wcnss-config_1.13.bb -e 's#git.linaro.org#git.fake.org#g'
  $ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
  $ bitbake -c do_fetch wcnss-config

I see this error output, as expected:
----------------------------------------------------
WARNING: wcnss-config-1.13-r0 do_fetch: Failed to fetch URL git://
git.fake.org/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmaste=
r;protocol=3Dhttps,
attempting MIRRORS if available
ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure: Fetch command export
PSEUDO_DISABLED=3D1; export
DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"=
;
export
PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linux:=
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-rpb=
-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-conf=
ig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testing/=
build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-s=
ysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspace-=
testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glib=
c/hosttools";
export HOME=3D"/home/ryan"; LANG=3DC git -c core.fsyncobjectfiles=3D0 clone
--bare --mirror
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git
/linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.landing-teams.=
working.qualcomm.wcnss-config.git
--progress failed with exit code 128, output:
Cloning into bare repository
'/linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.landing-teams=
.working.qualcomm.wcnss-config.git'...
fatal: unable to access '
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git/':
Could not resolve host: git.fake.org

ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure for URL: 'git://
git.fake.org/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmaste=
r;protocol=3Dhttps'.
Unable to fetch URL from any source.
ERROR: wcnss-config-1.13-r0 do_fetch:
ERROR: wcnss-config-1.13-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/temp/log.do_fetch.2525
ERROR: Task
(/linaro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/rec=
ipes-bsp/wcnss-config/wcnss-config_1.13.bb:do_fetch)
failed with exit code '1'
----------------------------------------------------


SRCREV PROBLEM
--------------------------------------------------
Set MIRRORS in local.conf and re-test. It should work again.

$ cat << EOF >> conf/local.conf
MIRRORS +=3D " \\
 git://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git \\
 git://git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git \n \\
"
EOF
$ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
$ bitbake -c do_fetch wcnss-config

All I see in the build is a warning, and the downloads/git2 directory is
populated as expected:

$ ll
total 12K
lrwxrwxrwx 1 ryan ryan  110 Feb 20 17:15
git.fake.org.landing-teams.working.qualcomm.wcnss-config.git ->
/linaro/oe-rpb-workspace-testing/downloads/git2/git.linaro.org.landing-team=
s.working.qualcomm.wcnss-config.git/
-rw-rw-r-- 1 ryan ryan    6 Feb 20 17:15
git.fake.org.landing-teams.working.qualcomm.wcnss-config.git.done
drwxrwxr-x 7 ryan ryan 4.0K Feb 20 17:15
git.linaro.org.landing-teams.working.qualcomm.wcnss-config.git/

Change SRCREV to ${AUTOREV} and retest.

$ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/wcnss-config/
wcnss-config_1.13.bb -e 's#^SRCREV.*#SRCREV =3D "${AUTOREV}"#'
$ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
$ bitbake -c do_fetch wcnss-config

I see this failure:

ERROR: ExpansionError during parsing
/linaro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/reci=
pes-bsp/wcnss-config/
wcnss-config_1.13.bb######################################
 | ETA:  0:00:05
Traceback (most recent call last):
  File
"/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py", line
1170, in srcrev_internal_helper(ud=3D<bb.fetch2.FetchData object at
0x7fd7884c8668>, d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>,
name=3D'default'):
         if srcrev =3D=3D "AUTOINC":
    >        srcrev =3D ud.method.latest_revision(ud, d, name)

  File
"/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py", line
1565, in Git.latest_revision(ud=3D<bb.fetch2.FetchData object at
0x7fd7884c8668>, d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>,
name=3D'default'):
             except KeyError:
    >            revs[key] =3D rev =3D self._latest_revision(ud, d, name)
                 return rev
  File "/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/git.py",
line 594, in Git._latest_revision(ud=3D<bb.fetch2.FetchData object at
0x7fd7884c8668>, d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>,
name=3D'default'):
             """
    >        output =3D self._lsremote(ud, d, "")
             # Tags of the form ^{} may not work, need to fallback to other
form
  File "/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/git.py",
line 583, in Git._lsremote(ud=3D<bb.fetch2.FetchData object at
0x7fd7884c8668>, d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>,
search=3D''):
                     bb.fetch2.check_network_access(d, cmd, repourl)
    >            output =3D runfetchcmd(cmd, d, True)
                 if not output:
  File
"/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py", line
888, in runfetchcmd(cmd=3D'export PSEUDO_DISABLED=3D1; export
DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"=
;
export
PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linux:=
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-rpb=
-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-conf=
ig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testing/=
build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-s=
ysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspace-=
testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glib=
c/hosttools";
export HOME=3D"/home/ryan"; git -c core.fsyncobjectfiles=3D0 ls-remote
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git ',
d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>, quiet=3DTrue,
cleanup=3D[], log=3DNone, workdir=3DNone):

    >        raise FetchError(error_message)

bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression
was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"=
;
export
PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linux:=
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-rpb=
-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-conf=
ig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testing/=
build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-s=
ysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspace-=
testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glib=
c/hosttools";
export HOME=3D"/home/ryan"; git -c core.fsyncobjectfiles=3D0 ls-remote
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git
failed with exit code 128, output:
fatal: unable to access '
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git/':
Could not resolve host: git.fake.org

A similar error happens if you use a tag rather than ${AUTOREV}:

$ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/wcnss-config/
wcnss-config_1.13.bb -e 's#^SRCREV.*#SRCREV =3D "debian/1.13"#'
$ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
$ bitbake -c do_fetch wcnss-config

These are the messages I see:

ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure: Fetch command export
PSEUDO_DISABLED=3D1; export
DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"=
;
export
PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linux:=
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-rpb=
-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-conf=
ig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testing/=
build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-s=
ysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspace-=
testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glib=
c/hosttools";
export HOME=3D"/home/ryan"; git -c core.fsyncobjectfiles=3D0 ls-remote
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git
failed with exit code 128, output:
fatal: unable to access '
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git/':
Could not resolve host: git.fake.org

ERROR: wcnss-config-1.13-r0 do_fetch:
ERROR: wcnss-config-1.13-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/temp/log.do_fetch.5673
ERROR: Task
(/linaro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/rec=
ipes-bsp/wcnss-config/wcnss-config_1.13.bb:do_fetch)
failed with exit code '1'



SSH MIRRORS Problem
--------------------------------------------
From a clean setup as above with the SRC_URI point to to git.fake.org...

$ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/wcnss-config/
wcnss-config_1.13.bb -e 's#git.linaro.org#git.fake.org#g'
$ cat << EOF >> conf/local.conf
MIRRORS +=3D " \\
 git://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git \\
 ssh://
git@git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git;protocol=
=3Dssh
\n \\
"
EOF
$ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
$ bitbake -c do_fetch wcnss-config

These are the errors I see:

WARNING: wcnss-config-1.13-r0 do_fetch: Failed to fetch URL git://
git.fake.org/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmaste=
r;protocol=3Dhttps,
attempting MIRRORS if available
ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure: Fetch command export
PSEUDO_DISABLED=3D1; export
DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"=
;
export
PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linux:=
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-rpb=
-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-conf=
ig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testing/=
build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-s=
ysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspace-=
testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glib=
c/hosttools";
export HOME=3D"/home/ryan"; LANG=3DC git -c core.fsyncobjectfiles=3D0 clone
--bare --mirror
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git
/linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.landing-teams.=
working.qualcomm.wcnss-config.git
--progress failed with exit code 128, output:
Cloning into bare repository
'/linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.landing-teams=
.working.qualcomm.wcnss-config.git'...
fatal: unable to access '
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git/':
Could not resolve host: git.fake.org

ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure for URL: 'git://
git.fake.org/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmaste=
r;protocol=3Dhttps'.
Unable to fetch URL from any source.
ERROR: wcnss-config-1.13-r0 do_fetch:
ERROR: wcnss-config-1.13-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/temp/log.do_fetch.7701
ERROR: Task
(/linaro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/rec=
ipes-bsp/wcnss-config/wcnss-config_1.13.bb:do_fetch)
failed with exit code '1'

It looks like the MIRRORS variable hasn't replaced the repo at all.

Regards,
Ryan.

--000000000000de3a150582572d3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">H=
ello,<div><br></div><div>I&#39;m having a few problems when using the MIRRO=
RS variable for GIT repos. I see the same problems with the PREMIRRORS vari=
able.</div><div><br></div><div>My use-case is:</div><div><br></div><div><sp=
an style=3D"font-size:small;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline">1=
. company A has a private layer with SRC_URI that points to private git</sp=
an><br style=3D"font-size:small;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial"><span style=3D"font-siz=
e:small;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline">2. company A needs to=
 share layers with company B</span></div><div>3. company B cannot access co=
mpany A&#39;s private git tree</div><div>4. company B has a mirror of the g=
it trees with the same contents, including SRC_URIs pointing to the company=
 A private git trees</div><div><br></div><div>I have tried to resolve this =
using the MIRRORS variable in local.conf.</div><div><br></div><div>If SRCRE=
V is a SHA, it seems to work for me.</div><div><br></div><div>However, it f=
ails when the SRCREV is not a fixed SHA, eg. if SRCREV is a branch, tag, or=
 ${AUTOREV}. It looks like do_fetch is trying to pull the repo to work out =
the SHA, but before decoding MIRRORS or PREMIRRORS. It appears to do an ls-=
remote on the original repo, not the mirror, and fails.</div><div><br></div=
><div>The next issue is when using MIRRORS to replace a GIT repo with one u=
sing SSH. This may simply be a syntax problem on my side.</div><div><br></d=
iv><div>Example:</div><div><br></div><div>MIRRORS=C2=A0+=3D \</div><div><sp=
an style=3D"font-size:small;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline">=
=C2=A0git://<a href=3D"http://git.fake.org/landing-teams/working/qualcomm/w=
cnss-config.git">git.fake.org/landing-teams/working/qualcomm/wcnss-config.g=
it</a> \</span><br></div><div>=C2=A0ssh://<a href=3D"http://git@git.linaro.=
org/landing-teams/working/qualcomm/wcnss-config.git;protocol=3Dssh">git@git=
.linaro.org/landing-teams/working/qualcomm/wcnss-config.git;protocol=3Dssh<=
/a> \n \<br></div><div>&quot;</div><div><br></div><div>The MIRROR doesn&#39=
;t seem to be used at all in the above example. I&#39;ve tried adding &quot=
;;protocol=3Dhttps&quot; to the first line; it doesn&#39;t help, and fails =
in a different way, giving a &quot;Exception: KeyError: &#39;protocol&#39;&=
quot; error.</div><div><br></div><div><div style=3D"font-size:small;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial">I&#39;ve shown detailed examples below. People may not need th=
em, but if my email isn&#39;t clear enough, hopefully they will help explai=
n.</div><div><br></div></div><div>Setup</div><div><div style=3D"font-size:s=
mall;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial">--------------------------------------------------=
</div>For an example, I&#39;m using Linaro&#39;s OE-RPB master. More info h=
ere:=C2=A0<a href=3D"https://github.com/96boards/oe-rpb-manifest">https://g=
ithub.com/96boards/oe-rpb-manifest</a></div><div><br></div><div>First, set =
up the environment:</div><div><br></div><div>=C2=A0 $ mkdir -p ${WORKSPACE}=
</div><div><div>=C2=A0 $ repo init -u <a href=3D"https://github.com/96board=
s/oe-rpb-manifest.git">https://github.com/96boards/oe-rpb-manifest.git</a> =
-b master</div></div><div>=C2=A0 $ repo sync</div><div>=C2=A0 $ export MACH=
INE=3Ddragonboard-410c ; export DISTRO=3Drpb ; . setup-environment<br></div=
><div><br></div><div>Then, make sure it&#39;s working:</div><div><br></div>=
<div>=C2=A0 $ bitbake -c do_fetch wcnss-config</div><div><br></div><div>Mod=
 a recipe to use a fake SRC_URI, and test that it no longer works.<br></div=
><div><br></div><div><div>=C2=A0 $ sed -i ${WORKSPACE}/layers/meta-qcom/rec=
ipes-bsp/wcnss-config/<a href=3D"http://wcnss-config_1.13.bb">wcnss-config_=
1.13.bb</a> -e &#39;s#<a href=3D"http://git.linaro.org#git.fake.org#g">git.=
linaro.org#git.fake.org#g</a>&#39;</div></div><div>=C2=A0 $=C2=A0rm -rf tmp=
-rpb-glibc/ ../downloads/git2/*wcnss-config*</div><div><div style=3D"font-s=
ize:small;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial">=C2=A0 $ bitbake -c do_fetch wcnss-config</di=
v><br class=3D"gmail-Apple-interchange-newline">I see this error output, as=
 expected:</div><div>----------------------------------------------------</=
div><div><div>WARNING: wcnss-config-1.13-r0 do_fetch: Failed to fetch URL g=
it://<a href=3D"http://git.fake.org/landing-teams/working/qualcomm/wcnss-co=
nfig.git;branch=3Dmaster;protocol=3Dhttps">git.fake.org/landing-teams/worki=
ng/qualcomm/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps</a>, attempti=
ng MIRRORS if available</div><div>ERROR: wcnss-config-1.13-r0 do_fetch: Fet=
cher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION=
_BUS_ADDRESS=3D&quot;unix:path=3D/run/user/1000/bus&quot;; export SSH_AGENT=
_PID=3D&quot;3371&quot;; export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyrin=
g/ssh&quot;; export PATH=3D&quot;/linaro/oe-rpb-workspace-testing/layers/op=
enembedded-core/scripts:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/=
bin/allarch-linaro-linux:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb=
-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/cr=
ossscripts:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/al=
l-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/=
oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcns=
s-config/1.13-r0/recipe-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-tes=
ting/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/rec=
ipe-sysroot-native/sbin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:=
/linaro/oe-rpb-workspace-testing/bitbake/bin:/linaro/oe-rpb-workspace-testi=
ng/build-rpb/tmp-rpb-glibc/hosttools&quot;; export HOME=3D&quot;/home/ryan&=
quot;; LANG=3DC git -c core.fsyncobjectfiles=3D0 clone --bare --mirror <a h=
ref=3D"https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git=
">https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git</a> =
/linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.landing-teams.=
working.qualcomm.wcnss-config.git --progress failed with exit code 128, out=
put:</div><div>Cloning into bare repository &#39;/linaro/oe-rpb-workspace-t=
esting/downloads/git2/git.fake.org.landing-teams.working.qualcomm.wcnss-con=
fig.git&#39;...</div><div>fatal: unable to access &#39;<a href=3D"https://g=
it.fake.org/landing-teams/working/qualcomm/wcnss-config.git/">https://git.f=
ake.org/landing-teams/working/qualcomm/wcnss-config.git/</a>&#39;: Could no=
t resolve host: <a href=3D"http://git.fake.org">git.fake.org</a></div><div>=
<br></div><div>ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure for UR=
L: &#39;git://<a href=3D"http://git.fake.org/landing-teams/working/qualcomm=
/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps">git.fake.org/landing-te=
ams/working/qualcomm/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps</a>&=
#39;. Unable to fetch URL from any source.</div><div>ERROR: wcnss-config-1.=
13-r0 do_fetch:=C2=A0</div><div>ERROR: wcnss-config-1.13-r0 do_fetch: Funct=
ion failed: base_do_fetch</div><div>ERROR: Logfile of failure stored in: /l=
inaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linu=
x/wcnss-config/1.13-r0/temp/log.do_fetch.2525</div><div>ERROR: Task (/linar=
o/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/recipes-bs=
p/wcnss-config/wcnss-config_1.13.bb:do_fetch) failed with exit code &#39;1&=
#39;</div></div><div><span style=3D"font-size:small;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline">----------------------------------------------------=
</span><br></div><div><span style=3D"font-size:small;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial;flo=
at:none;display:inline"><br></span></div><div><span style=3D"font-size:smal=
l;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline"><br></span></div><div><span=
 style=3D"font-size:small;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><di=
v style=3D"text-decoration-style:initial;text-decoration-color:initial">SRC=
REV PROBLEM</div><div style=3D"text-decoration-style:initial;text-decoratio=
n-color:initial"><div style=3D"font-size:small;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial">--------=
------------------------------------------</div></div></span></div><div><sp=
an style=3D"font-size:small;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline">S=
et MIRRORS in local.conf and re-test. It should work again.</span></div><di=
v><span style=3D"font-size:small;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial;float:none;display:inli=
ne"><br></span></div><div><span style=3D"background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline"><div><div>$ cat &lt;&lt; EOF &gt;&gt; conf/local.conf</div><div=
>MIRRORS +=3D &quot; \\</div><div>=C2=A0git://<a href=3D"http://git.fake.or=
g/landing-teams/working/qualcomm/wcnss-config.git">git.fake.org/landing-tea=
ms/working/qualcomm/wcnss-config.git</a> \\</div><div>=C2=A0git://<a href=
=3D"http://git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git">=
git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git</a> \n \\</d=
iv><div>&quot;</div><div>EOF</div></div><div><div style=3D"font-size:small;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial">$=C2=A0rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-c=
onfig*</div><div style=3D"font-size:small;background-color:rgb(255,255,255)=
;text-decoration-style:initial;text-decoration-color:initial"><div style=3D=
"font-size:small;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial">$ bitbake -c do_fetch wcnss-config</di=
v></div><div><br></div>All I see in the build is a warning, and the downloa=
ds/git2 directory is populated as expected:</div><div><br></div><div><div>$=
 ll</div><div>total 12K</div><div>lrwxrwxrwx 1 ryan ryan=C2=A0 110 Feb 20 1=
7:15 git.fake.org.landing-teams.working.qualcomm.wcnss-config.git -&gt; /li=
naro/oe-rpb-workspace-testing/downloads/git2/git.linaro.org.landing-teams.w=
orking.qualcomm.wcnss-config.git/</div><div>-rw-rw-r-- 1 ryan ryan=C2=A0 =
=C2=A0 6 Feb 20 17:15 git.fake.org.landing-teams.working.qualcomm.wcnss-con=
fig.git.done</div><div>drwxrwxr-x 7 ryan ryan 4.0K Feb 20 17:15 git.linaro.=
org.landing-teams.working.qualcomm.wcnss-config.git/</div><div><br></div><d=
iv>Change SRCREV to ${AUTOREV} and retest.</div><div><br></div><div>$ sed -=
i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/wcnss-config/<a href=3D"http://=
wcnss-config_1.13.bb">wcnss-config_1.13.bb</a> -e &#39;s#^SRCREV.*#SRCREV =
=3D &quot;${AUTOREV}&quot;#&#39;</div></div><div><div style=3D"font-size:sm=
all;text-decoration-style:initial;text-decoration-color:initial;background-=
color:rgb(255,255,255)">$=C2=A0rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcn=
ss-config*</div><div style=3D"font-size:small;text-decoration-style:initial=
;text-decoration-color:initial;background-color:rgb(255,255,255)"><div styl=
e=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial">$ bitbake -c do_fetch wcnss-config=
</div></div><br class=3D"gmail-Apple-interchange-newline">I see this failur=
e:</div><div><br></div><div><div>ERROR: ExpansionError during parsing /lina=
ro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/recipes-b=
sp/wcnss-config/<a href=3D"http://wcnss-config_1.13.bb#####################=
#################">wcnss-config_1.13.bb####################################=
##</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| ETA:=
=C2=A0 0:00:05</div><div>Traceback (most recent call last):</div><div>=C2=
=A0 File &quot;/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__ini=
t__.py&quot;, line 1170, in srcrev_internal_helper(ud=3D&lt;bb.fetch2.Fetch=
Data object at 0x7fd7884c8668&gt;, d=3D&lt;bb.data_smart.DataSmart object a=
t 0x7fd78988e748&gt;, name=3D&#39;default&#39;):</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0if srcrev =3D=3D &quot;AUTOINC&quot;:</div><div>=C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 srcrev =3D ud.method.latest_revision=
(ud, d, name)</div><div>=C2=A0 =C2=A0 =C2=A0</div><div>=C2=A0 File &quot;/l=
inaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py&quot;, lin=
e 1565, in Git.latest_revision(ud=3D&lt;bb.fetch2.FetchData object at 0x7fd=
7884c8668&gt;, d=3D&lt;bb.data_smart.DataSmart object at 0x7fd78988e748&gt;=
, name=3D&#39;default&#39;):</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0except KeyError:</div><div>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 revs[key] =3D rev =3D self._latest_revision(ud, d,=
 name)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0return rev</div><div>=C2=A0 File &quot;/linaro/oe-rpb-workspace-testi=
ng/bitbake/lib/bb/fetch2/git.py&quot;, line 594, in Git._latest_revision(ud=
=3D&lt;bb.fetch2.FetchData object at 0x7fd7884c8668&gt;, d=3D&lt;bb.data_sm=
art.DataSmart object at 0x7fd78988e748&gt;, name=3D&#39;default&#39;):</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;&quot;&quot;</d=
iv><div>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 output =3D self._lsre=
mote(ud, d, &quot;&quot;)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0# Tags of the form ^{} may not work, need to fallback to other fo=
rm</div><div>=C2=A0 File &quot;/linaro/oe-rpb-workspace-testing/bitbake/lib=
/bb/fetch2/git.py&quot;, line 583, in Git._lsremote(ud=3D&lt;bb.fetch2.Fetc=
hData object at 0x7fd7884c8668&gt;, d=3D&lt;bb.data_smart.DataSmart object =
at 0x7fd78988e748&gt;, search=3D&#39;&#39;):</div><div>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.fetch2.check_net=
work_access(d, cmd, repourl)</div><div>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 output =3D runfetchcmd(cmd, d, True)</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if not output:</=
div><div>=C2=A0 File &quot;/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/=
fetch2/__init__.py&quot;, line 888, in runfetchcmd(cmd=3D&#39;export PSEUDO=
_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:path=3D/run/use=
r/1000/bus&quot;; export SSH_AGENT_PID=3D&quot;3371&quot;; export SSH_AUTH_=
SOCK=3D&quot;/run/user/1000/keyring/ssh&quot;; export PATH=3D&quot;/linaro/=
oe-rpb-workspace-testing/layers/openembedded-core/scripts:/linaro/oe-rpb-wo=
rkspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/=
1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linux:/linaro/oe-rpb-w=
orkspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config=
/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-rpb-workspace-testi=
ng/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recip=
e-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rp=
b-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/us=
r/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-lin=
aro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin:/linaro/oe-rpb-wo=
rkspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/=
1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspace-testing/bitbake/=
bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/hosttools&quot=
;; export HOME=3D&quot;/home/ryan&quot;; git -c core.fsyncobjectfiles=3D0 l=
s-remote <a href=3D"https://git.fake.org/landing-teams/working/qualcomm/wcn=
ss-config.git">https://git.fake.org/landing-teams/working/qualcomm/wcnss-co=
nfig.git</a> &#39;, d=3D&lt;bb.data_smart.DataSmart object at 0x7fd78988e74=
8&gt;, quiet=3DTrue, cleanup=3D[], log=3DNone, workdir=3DNone):</div><div>=
=C2=A0 =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 raise FetchError(error_message)</div><div>=C2=A0 =C2=A0 =C2=A0</div><di=
v>bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expressio=
n was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fet=
cher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION=
_BUS_ADDRESS=3D&quot;unix:path=3D/run/user/1000/bus&quot;; export SSH_AGENT=
_PID=3D&quot;3371&quot;; export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyrin=
g/ssh&quot;; export PATH=3D&quot;/linaro/oe-rpb-workspace-testing/layers/op=
enembedded-core/scripts:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/=
bin/allarch-linaro-linux:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb=
-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/cr=
ossscripts:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/al=
l-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/=
oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcns=
s-config/1.13-r0/recipe-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-tes=
ting/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/rec=
ipe-sysroot-native/sbin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:=
/linaro/oe-rpb-workspace-testing/bitbake/bin:/linaro/oe-rpb-workspace-testi=
ng/build-rpb/tmp-rpb-glibc/hosttools&quot;; export HOME=3D&quot;/home/ryan&=
quot;; git -c core.fsyncobjectfiles=3D0 ls-remote <a href=3D"https://git.fa=
ke.org/landing-teams/working/qualcomm/wcnss-config.git">https://git.fake.or=
g/landing-teams/working/qualcomm/wcnss-config.git</a>=C2=A0 failed with exi=
t code 128, output:</div><div>fatal: unable to access &#39;<a href=3D"https=
://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git/">https://g=
it.fake.org/landing-teams/working/qualcomm/wcnss-config.git/</a>&#39;: Coul=
d not resolve host: <a href=3D"http://git.fake.org">git.fake.org</a></div><=
/div><div><br></div><div>A similar error happens if you use a tag rather th=
an ${AUTOREV}:</div><div><br></div><div>$ sed -i ${WORKSPACE}/layers/meta-q=
com/recipes-bsp/wcnss-config/<a href=3D"http://wcnss-config_1.13.bb">wcnss-=
config_1.13.bb</a> -e &#39;s#^SRCREV.*#SRCREV =3D &quot;debian/1.13&quot;#&=
#39;<br></div><div><div style=3D"font-size:small;text-decoration-style:init=
ial;text-decoration-color:initial;background-color:rgb(255,255,255)">$=C2=
=A0rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*</div><div style=
=3D"font-size:small;text-decoration-style:initial;text-decoration-color:ini=
tial;background-color:rgb(255,255,255)"><div style=3D"font-size:small;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial">$ bitbake -c do_fetch wcnss-config</div></div><br></div><div=
>These are the messages I see:</div><div><br></div><div><div>ERROR: wcnss-c=
onfig-1.13-r0 do_fetch: Fetcher failure: Fetch command export PSEUDO_DISABL=
ED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:path=3D/run/user/1000/=
bus&quot;; export SSH_AGENT_PID=3D&quot;3371&quot;; export SSH_AUTH_SOCK=3D=
&quot;/run/user/1000/keyring/ssh&quot;; export PATH=3D&quot;/linaro/oe-rpb-=
workspace-testing/layers/openembedded-core/scripts:/linaro/oe-rpb-workspace=
-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0=
/recipe-sysroot-native/usr/bin/allarch-linaro-linux:/linaro/oe-rpb-workspac=
e-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r=
0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-rpb-workspace-testing/buil=
d-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysro=
ot-native/usr/sbin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc=
/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin:/linaro/oe-rpb-workspace=
-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0=
/recipe-sysroot-native/bin:/linaro/oe-rpb-workspace-testing/bitbake/bin:/li=
naro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/hosttools&quot;; expo=
rt HOME=3D&quot;/home/ryan&quot;; git -c core.fsyncobjectfiles=3D0 ls-remot=
e <a href=3D"https://git.fake.org/landing-teams/working/qualcomm/wcnss-conf=
ig.git">https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.gi=
t</a>=C2=A0 failed with exit code 128, output:</div><div>fatal: unable to a=
ccess &#39;<a href=3D"https://git.fake.org/landing-teams/working/qualcomm/w=
cnss-config.git/">https://git.fake.org/landing-teams/working/qualcomm/wcnss=
-config.git/</a>&#39;: Could not resolve host: <a href=3D"http://git.fake.o=
rg">git.fake.org</a></div><div><br></div><div>ERROR: wcnss-config-1.13-r0 d=
o_fetch:=C2=A0</div><div>ERROR: wcnss-config-1.13-r0 do_fetch: Function fai=
led: base_do_fetch</div><div>ERROR: Logfile of failure stored in: /linaro/o=
e-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss=
-config/1.13-r0/temp/log.do_fetch.5673</div><div>ERROR: Task (/linaro/oe-rp=
b-workspace-testing/build-rpb/conf/../../layers/meta-qcom/recipes-bsp/wcnss=
-config/wcnss-config_1.13.bb:do_fetch) failed with exit code &#39;1&#39;</d=
iv></div><div><br></div><div><br></div><div><br></div><div>SSH MIRRORS Prob=
lem</div><div>--------------------------------------------</div><div>From a=
 clean setup as above with the SRC_URI point to to git.fake.org...</div><di=
v><br></div><div><div style=3D"font-size:small;text-decoration-style:initia=
l;text-decoration-color:initial"><div style=3D"font-size:small;text-decorat=
ion-style:initial;text-decoration-color:initial"><div style=3D"font-size:sm=
all;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial">$ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/=
wcnss-config/<a href=3D"http://wcnss-config_1.13.bb">wcnss-config_1.13.bb</=
a> -e &#39;s#<a href=3D"http://git.linaro.org#git.fake.org#g">git.linaro.or=
g#git.fake.org#g</a>&#39;<br></div></div></div><div style=3D"font-size:smal=
l;text-decoration-style:initial;text-decoration-color:initial"><div style=
=3D"font-size:small;text-decoration-style:initial;text-decoration-color:ini=
tial;background-color:rgb(255,255,255)">$ cat &lt;&lt; EOF &gt;&gt; conf/lo=
cal.conf<br></div></div></div><div><div style=3D"font-size:small;text-decor=
ation-style:initial;text-decoration-color:initial"><div>MIRRORS +=3D &quot;=
 \\</div><div>=C2=A0git://<a href=3D"http://git.fake.org/landing-teams/work=
ing/qualcomm/wcnss-config.git">git.fake.org/landing-teams/working/qualcomm/=
wcnss-config.git</a> \\</div><div>=C2=A0ssh://<a href=3D"http://git@git.lin=
aro.org/landing-teams/working/qualcomm/wcnss-config.git;protocol=3Dssh">git=
@git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git;protocol=3D=
ssh</a> \n \\</div><div>&quot;</div><div>EOF</div></div><div style=3D"font-=
size:small;text-decoration-style:initial;text-decoration-color:initial"><di=
v style=3D"font-size:small;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial">$=C2=A0rm -rf tmp-rpb-glibc/=
 ../downloads/git2/*wcnss-config*<br></div></div></div><div><div style=3D"f=
ont-size:small;text-decoration-style:initial;text-decoration-color:initial;=
background-color:rgb(255,255,255)"><div style=3D"text-decoration-style:init=
ial;text-decoration-color:initial"><div style=3D"font-size:small;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial">$ bitbake -c do_fetch wcnss-config</div><br class=3D"gmail-Apple-=
interchange-newline"></div></div></div><div>These are the errors I see:</di=
v><div><br></div><div><div>WARNING: wcnss-config-1.13-r0 do_fetch: Failed t=
o fetch URL git://<a href=3D"http://git.fake.org/landing-teams/working/qual=
comm/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps">git.fake.org/landin=
g-teams/working/qualcomm/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps<=
/a>, attempting MIRRORS if available</div><div>ERROR: wcnss-config-1.13-r0 =
do_fetch: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export=
 DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:path=3D/run/user/1000/bus&quot;; exp=
ort SSH_AGENT_PID=3D&quot;3371&quot;; export SSH_AUTH_SOCK=3D&quot;/run/use=
r/1000/keyring/ssh&quot;; export PATH=3D&quot;/linaro/oe-rpb-workspace-test=
ing/layers/openembedded-core/scripts:/linaro/oe-rpb-workspace-testing/build=
-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroo=
t-native/usr/bin/allarch-linaro-linux:/linaro/oe-rpb-workspace-testing/buil=
d-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysro=
ot/usr/bin/crossscripts:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/=
sbin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-lina=
ro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin:/linaro/oe-rpb-=
workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-confi=
g/1.13-r0/recipe-sysroot-native/sbin:/linaro/oe-rpb-workspace-testing/build=
-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroo=
t-native/bin:/linaro/oe-rpb-workspace-testing/bitbake/bin:/linaro/oe-rpb-wo=
rkspace-testing/build-rpb/tmp-rpb-glibc/hosttools&quot;; export HOME=3D&quo=
t;/home/ryan&quot;; LANG=3DC git -c core.fsyncobjectfiles=3D0 clone --bare =
--mirror <a href=3D"https://git.fake.org/landing-teams/working/qualcomm/wcn=
ss-config.git">https://git.fake.org/landing-teams/working/qualcomm/wcnss-co=
nfig.git</a> /linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.l=
anding-teams.working.qualcomm.wcnss-config.git --progress failed with exit =
code 128, output:</div><div>Cloning into bare repository &#39;/linaro/oe-rp=
b-workspace-testing/downloads/git2/git.fake.org.landing-teams.working.qualc=
omm.wcnss-config.git&#39;...</div><div>fatal: unable to access &#39;<a href=
=3D"https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git/">=
https://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git/</a>&#=
39;: Could not resolve host: <a href=3D"http://git.fake.org">git.fake.org</=
a></div><div><br></div><div>ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher f=
ailure for URL: &#39;git://<a href=3D"http://git.fake.org/landing-teams/wor=
king/qualcomm/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps">git.fake.o=
rg/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmaster;protocol=
=3Dhttps</a>&#39;. Unable to fetch URL from any source.</div><div>ERROR: wc=
nss-config-1.13-r0 do_fetch:=C2=A0</div><div>ERROR: wcnss-config-1.13-r0 do=
_fetch: Function failed: base_do_fetch</div><div>ERROR: Logfile of failure =
stored in: /linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/al=
l-linaro-linux/wcnss-config/1.13-r0/temp/log.do_fetch.7701</div><div>ERROR:=
 Task (/linaro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qc=
om/recipes-bsp/wcnss-config/wcnss-config_1.13.bb:do_fetch) failed with exit=
 code &#39;1&#39;</div></div><div><br></div><div>It looks like the MIRRORS =
variable hasn&#39;t replaced the repo at all.</div><div><br></div><div><div=
 style=3D"font-size:small;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial">Regards,</div><div style=3D"f=
ont-size:small;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial">Ryan.</div></div></span></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/div></div></div></div></div></div></div></div>

--000000000000de3a150582572d3e--
