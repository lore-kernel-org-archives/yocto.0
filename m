Return-Path: <sunil.mukundan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18EF9E01995; Sat, 12 May 2018 17:44:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sunil.mukundan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00778E00C4F
	for <yocto@yoctoproject.org>; Sat, 12 May 2018 17:44:34 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id l132-v6so7338898qke.3
	for <yocto@yoctoproject.org>; Sat, 12 May 2018 17:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9khqOFxkHC9htNw6lU0NXPtGZdx0lWvtcsaIRpJz5aE=;
	b=Y38TbJCEkDwnB2p/b3UnzBiRfff35akNZdVbKbJBUt1ino2h4ALvSlj/vk7dnSdAde
	IhMQj9dmwJKybMSVoH7+HjI9j+9k8XgAeMqJlCkaUJysaU1rryOqLQhLXmAkoVnX+pby
	HGwXj5rUtlbAVtoc6zOa8QceuOSrY+EN6CNu9PV6FMbzHf7vt2kWsckft+3nW2rk/x8s
	BV/JOdgATpWwkZiHnvX3d4tyuhicZ7E2nk5meLtH8bcgsayfkrl+927TucdlM2LqhtCS
	M2QKw8xJyblgzcavUZe6vhPpqDE1aZcjxhkGkiasD+PuzBZ0Rmej5f8STN6TkJVvaW/G
	6m/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9khqOFxkHC9htNw6lU0NXPtGZdx0lWvtcsaIRpJz5aE=;
	b=i7w8plJivN6MXgaPteTx8/oyo/79fwAStOzGmcOZpYSaS80vdSsqnREkHI9dzhROaZ
	Ah9mOw3z3ViLqsRV2BTXkGars6fAGgs97WysEK/diSWpMoWBPZ/hrK/24sUmztzizowZ
	PU9dAllDo86eaHOP3YbeUf40+YZ2Hjat0FB3CPIwprqbBy5HdvMittdEjtsi5svOHYrd
	JAM0A6+WraquKdvZpG+1J0eBylStyMHZu1tEAMww3b2Fk8TPXQjLAyQIjq5aa8EAvdLY
	6o176fA4sKyT5gz3tWbVfw4VnjC4I1RMMzP9VVIOpRCVeUOux1D9W26Ex9c8I0XclojR
	vwrg==
X-Gm-Message-State: ALKqPwd4MJxwq6IaDcEJmoYHevxShbpjTy10th3uL5C6fUQvJflR/5nK
	xHrpj7A3CCG7wUzdQ/3/s2mNc0E6DrElLxRKCvQE1Ja+
X-Google-Smtp-Source: AB8JxZo0xsOXTxgqEKTdZC0OXXzTQJ39gcWmBLx5WWQxWLnDAvWWVGTv3QAr0l6DLIpblGyNnsyZBnacfLlZ1HECzvs=
X-Received: by 2002:a37:7e47:: with SMTP id
	z68-v6mr3339871qkc.115.1526172273726; 
	Sat, 12 May 2018 17:44:33 -0700 (PDT)
MIME-Version: 1.0
From: Sunil Mukundan <sunil.mukundan@gmail.com>
Date: Sat, 12 May 2018 17:44:20 -0700
Message-ID: <CAD0Q=OcyewS7Fw075bQ3pD6r_f6_Ncvx38ZE3H1F72=oVKcUww@mail.gmail.com>
To: yocto@yoctoproject.org, 
	EEF480D2AA622D48BD0D761FB54F5B1BE0D57D@aresmail.spectra.netz
Subject: Re: meta-virtualization -> docker not packaged when using PACKAGE_CLASSES ?= "package_deb"
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
X-List-Received-Date: Sun, 13 May 2018 00:44:36 -0000
Content-Type: text/plain; charset="UTF-8"

> The build process aborts at some point within do_rootfs, stating something
like that the package 'docker' could not be found. I tracked down the
problem to docker's
  >build/tmp/work/<something>/docker/<version>/deploy-debs/ directory. I
found the following packages:

> docker-contrib_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64.deb
> docker-distribution-dev_v2.6.2-r0_amd64.deb
> docker-registry_v2.6.2-r0_amd64.deb
> docker-dbg_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64.deb
> docker-distribution-ptest_v2.6.2-r0_amd64.deb
> docker-distribution-dbg_v2.6.2-r0_amd64.deb
> docker-ptest_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64.deb

I hit this issue too, basically the 'deb-pkg' building failed while
building the docker package.  Since the 'deb_write_pkg' function in
'meta/classes/package_deb.bbclass' file did not catch exceptions and print
out an error when it happens, it failed silently.

Coming to the reason why the deb-pkg building failed:
basically the deb package's CONTROL meta data file has a line that lists a
deb package's dependency. In the case of docker this line ends up looking
like this:
"Depends: foo1, foo2, foo3, virtual/containerd, virtual/runc"

when we pass this CONTROL file to the deb-pkg utility, it barfs saying that
the '/' character is not allowed
sunil@sunil-dev:~/yoctocache/poky/build$
./tmp/work/qemuarm64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dpkg-deb
-b
/home/sunil/yoctocache/poky/build/tmp/work/aarch64-poky-linux/docker/17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0/packages-split/docker
/home/sunil/yoctocache/poky/build/tmp/work/aarch64-poky-linux/docker/17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0/deploy-debs/
dpkg-deb: error: parsing file
'/home/sunil/yoctocache/poky/build/tmp/work/aarch64-poky-linux/docker/17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0/packages-split/docker/DEBIAN/control'
near line 23 package 'docker:arm64':
  'Depends' field, invalid package name 'virtual/containerd': character '/'
not allowed (only letters, digits and characters '-+._')

Digging a little deeper this "Depends" list is built from the RDEPENDS
variable in the docker_%.bb file and that file uses this style (i.e
virtual/containerd) to list the dependencies. Now removing just replacing
this with 'containerd' instead of 'virtual/containerd' breaks the bitbake
build system and leaving it as-is breaks the deb packager.

The solution i had was to fix the way the 'Depends' list is built in the
'deb_write_pkg' function. bitbake's bb.utils.explode_dep_version2 function
is used to achieve this. So i basically checked and ignored the segment of
the string before the '/' when building the '/' depends list. For
completeness, i also caught the exception and printed a NOTE in the log
informing the user of this situation. I am new to yocto and i am not sure
how the exceptions unroll so i did not really do the right thing there but
atleast this leaves a clue

sunil@sunil-dev:~/yoctocache/poky$ git diff
diff --git a/bitbake/lib/bb/utils.py b/bitbake/lib/bb/utils.py
index c540b49..8c90d64 100644
--- a/bitbake/lib/bb/utils.py
+++ b/bitbake/lib/bb/utils.py
@@ -200,12 +200,19 @@ def explode_dep_versions2(s):
      lastver = ""
      incmp = False
      inversion = False
+
      for i in l:
          if i[0] == '(':
              incmp = True
              i = i[1:].strip()
              if not i:
                  continue
+        # deb packages don't allow '/' as a special character
+        # RDEPENDES potentially could have it legitimately
+        if '/' in i:
+            i = i.split('/')[-1]
+            fp.write(str(i))
+            fp.write('\n')

          if incmp:
              incmp = False
diff --git a/meta/classes/package_deb.bbclass
b/meta/classes/package_deb.bbclass
index 5d29793..bb3efc8 100644
--- a/meta/classes/package_deb.bbclass
+++ b/meta/classes/package_deb.bbclass
@@ -320,6 +320,8 @@ def deb_write_pkg(pkg, d):
                                  stderr=subprocess.STDOUT,
                                  shell=True)

+    except:
+        bb.note("error packaging %s" %(root))
      finally:
          cleanupcontrol(root)
          bb.utils.unlockfile(lf)

With this patch things worked for me. i did not spend time to find out why
it selectively affects on a small subset of people as opposed to everyone
who are using deb packages and meta-virtualization. Hope this helps

- Sunil Mukundan

