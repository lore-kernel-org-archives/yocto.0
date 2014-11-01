Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A89AAE00857; Sat,  1 Nov 2014 10:53:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C9AEE00777
	for <yocto@yoctoproject.org>; Sat,  1 Nov 2014 10:53:05 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id x19so3140972ier.2
	for <yocto@yoctoproject.org>; Sat, 01 Nov 2014 10:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=Kqvxt48qUTNUgAKrWXOuWWHemlBuuK1a31l9lFVBC7o=;
	b=UMJZFaZExplEgtP8qhDzOkU/fPdB6intAjcyQHPfIS1hyTKhfpj1rb1YSEsmDqX1Bs
	5EQ6RbO+JOBELF9FmMWUXdRIRF341v6RQkldQcVRvX0yhZGaaPfFD0sAP4HTIWFt1S03
	VPR9/uHti6uWRGH4LGMTHbATwONpWtunPiR2I8VkfRdq+u96VBkzhcme5DZnwil0to6X
	zDf2dH44MZu/aHFAc6AaJC4KkQDgsoaVswOcB8Kv5GVeugVDWFTmZ9XGzA1EYsmCSsoT
	egKEUgZs4PIuuASnqAXQVkV8q3rTTIW4NJ/4mNnbrrciDWNUsN4MKMCvzOJkr60ekU8c
	zKPQ==
X-Received: by 10.50.164.194 with SMTP id ys2mr5187102igb.35.1414864384674;
	Sat, 01 Nov 2014 10:53:04 -0700 (PDT)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id kb7sm1207396igb.16.2014.11.01.10.53.03
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 01 Nov 2014 10:53:04 -0700 (PDT)
Message-ID: <54551DFF.6060000@gmail.com>
Date: Sat, 01 Nov 2014 13:53:03 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Angstrom Build Fails
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
X-List-Received-Date: Sat, 01 Nov 2014 17:53:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

I am getting a failing build with the log below. If anyone knows how to fix this it would be very helpful.
Cheers Nick 
nick@nick-System-Product-Name:/media/nick/Build_Drive/setup-scripts$ time MACHINE=beagleboard ./oebb.sh bitbake systemd-gnome-image
Using environment-angstrom-v2013.12 to setup needed variables. It is recommended to do '. environment-angstrom-v2013.12' and run 'bitbake something' without using ./oebb.sh as wrapper
Executing: MACHINE=beagleboard bitbake systemd-gnome-image
NOTE: Started PRServer with DBfile: /media/nick/Build_Drive/setup-scripts/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 57935, PID: 18666
WARNING: OPIE_VERSION has not been set; if you are going to build Opie, you need to 'require' an appropriate .inc file from meta-opie/conf/distro/include                                                                    | ETA:  00:06:28
WARNING: OPIE_VERSION has not been set; if you are going to build Opie, you need to 'require' an appropriate .inc file from meta-opie/conf/distro/include                                                                    | ETA:  00:06:18
WARNING: libgles-omap3-5.01.00.01 ONLY supports hardfp mode for now############################################                                                                                                              | ETA:  00:02:40
WARNING: libgles-omap3-5.00.00.01 ONLY supports hardfp mode for now
WARNING: omap3-sgx-modules-5.01.00.01 ONLY supports hardfp mode for now##########################################                                                                                                            | ETA:  00:02:34
WARNING: omap3-sgx-modules-5.00.00.01 ONLY supports hardfp mode for now
WARNING: Unable to get checksum for lcr SRC_URI entry lcr-no_amr.diff: file could not be found################################################################################################################               | ETA:  00:00:14
WARNING: Unable to get checksum for mono SRC_URI entry Makefile.am.diff: file could not be found##################################################################################################################           | ETA:  00:00:10
WARNING: Unable to get checksum for mono SRC_URI entry config.in.diff: file could not be found
WARNING: Unable to get checksum for mono SRC_URI entry Makefile.diff: file could not be found
WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV} ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.la) replaces original key FILES_mono-xsp-dev (	/usr/lib/pkgconfig/xsp.pc 	/usr/lib/pkgconfig/xsp-2.pc 	).
WARNING: Unable to get checksum for mono-native SRC_URI entry Makefile.am.diff: file could not be found
WARNING: Unable to get checksum for mono-native SRC_URI entry config.in.diff: file could not be found
WARNING: Unable to get checksum for mono-native SRC_URI entry Makefile.diff: file could not be found
ERROR: Error executing a python function in <code>:#######################################################################################################################################################################   | ETA:  00:00:02

The stack trace of python calls that resulted in this exception/failure was:
File: '<code>', lineno: 1, function: <module>
 *** 0001:__anon_634__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_base_bbclass(d)
     0002:__anon_954__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_insane_bbclass(d)
     0003:__anon_230__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_package_bbclass(d)
     0004:__anon_430__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_package_ipk_bbclass(d)
     0005:__anon_20__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_debian_bbclass(d)
File: '__anon_634__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_base_bbclass', lineno: 218, function: __anon_634__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_base_bbclass
     0214:    #
     0215:    override = d.getVar('SRC_URI_OVERRIDES_PACKAGE_ARCH', True)
     0216:    if override != '0':
     0217:        paths = []
 *** 0218:        fpaths = (d.getVar('FILESPATH', True) or '').split(':')
     0219:        machine = d.getVar('MACHINE', True)
     0220:        for p in fpaths:
     0221:            if os.path.basename(p) == machine and os.path.isdir(p):
     0222:                paths.append(p)
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 516, function: getVar
     0512:                self._seen_overrides[override] = set()
     0513:            self._seen_overrides[override].add( var )
     0514:
     0515:    def getVar(self, var, expand=False, noweakdefault=False):
 *** 0516:        return self.getVarFlag(var, "_content", expand, noweakdefault)
     0517:
     0518:    def renameVar(self, key, newkey, **loginfo):
     0519:        """
     0520:        Rename the variable key to newkey
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 606, function: getVarFlag
     0602:            if flag == "_content":
     0603:                cachename = var
     0604:            else:
     0605:                cachename = var + "[" + flag + "]"
 *** 0606:            value = self.expand(value, cachename)
     0607:        if value is not None and flag == "_content" and local_var is not None and "_removeactive" in local_var:
     0608:            filtered = filter(lambda v: v not in local_var["_removeactive"],
     0609:                              value.split(" "))
     0610:            value = " ".join(filtered)
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 344, function: expand
     0340:
     0341:        return varparse
     0342:
     0343:    def expand(self, s, varname = None):
 *** 0344:        return self.expandWithRefs(s, varname).value
     0345:
     0346:
     0347:    def finalize(self, parent = False):
     0348:        """Performs final steps upon the datastore, including application of overrides"""
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 325, function: expandWithRefs
     0321:
     0322:        while s.find('${') != -1:
     0323:            olds = s
     0324:            try:
 *** 0325:                s = __expand_var_regexp__.sub(varparse.var_sub, s)
     0326:                s = __expand_python_regexp__.sub(varparse.python_sub, s)
     0327:                if s == olds:
     0328:                    break
     0329:            except ExpansionError:
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 101, function: var_sub
     0097:            if key in self.d.expand_cache:
     0098:                varparse = self.d.expand_cache[key]
     0099:                var = varparse.value
     0100:            else:
 *** 0101:                var = self.d.getVar(key, True)
     0102:            self.references.add(key)
     0103:            if var is not None:
     0104:                return var
     0105:            else:
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 516, function: getVar
     0512:                self._seen_overrides[override] = set()
     0513:            self._seen_overrides[override].add( var )
     0514:
     0515:    def getVar(self, var, expand=False, noweakdefault=False):
 *** 0516:        return self.getVarFlag(var, "_content", expand, noweakdefault)
     0517:
     0518:    def renameVar(self, key, newkey, **loginfo):
     0519:        """
     0520:        Rename the variable key to newkey
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 606, function: getVarFlag
     0602:            if flag == "_content":
     0603:                cachename = var
     0604:            else:
     0605:                cachename = var + "[" + flag + "]"
 *** 0606:            value = self.expand(value, cachename)
     0607:        if value is not None and flag == "_content" and local_var is not None and "_removeactive" in local_var:
     0608:            filtered = filter(lambda v: v not in local_var["_removeactive"],
     0609:                              value.split(" "))
     0610:            value = " ".join(filtered)
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 344, function: expand
     0340:
     0341:        return varparse
     0342:
     0343:    def expand(self, s, varname = None):
 *** 0344:        return self.expandWithRefs(s, varname).value
     0345:
     0346:
     0347:    def finalize(self, parent = False):
     0348:        """Performs final steps upon the datastore, including application of overrides"""
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 325, function: expandWithRefs
     0321:
     0322:        while s.find('${') != -1:
     0323:            olds = s
     0324:            try:
 *** 0325:                s = __expand_var_regexp__.sub(varparse.var_sub, s)
     0326:                s = __expand_python_regexp__.sub(varparse.python_sub, s)
     0327:                if s == olds:
     0328:                    break
     0329:            except ExpansionError:
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 101, function: var_sub
     0097:            if key in self.d.expand_cache:
     0098:                varparse = self.d.expand_cache[key]
     0099:                var = varparse.value
     0100:            else:
 *** 0101:                var = self.d.getVar(key, True)
     0102:            self.references.add(key)
     0103:            if var is not None:
     0104:                return var
     0105:            else:
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 516, function: getVar
     0512:                self._seen_overrides[override] = set()
     0513:            self._seen_overrides[override].add( var )
     0514:
     0515:    def getVar(self, var, expand=False, noweakdefault=False):
 *** 0516:        return self.getVarFlag(var, "_content", expand, noweakdefault)
     0517:
     0518:    def renameVar(self, key, newkey, **loginfo):
     0519:        """
     0520:        Rename the variable key to newkey
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 606, function: getVarFlag
     0602:            if flag == "_content":
     0603:                cachename = var
     0604:            else:
     0605:                cachename = var + "[" + flag + "]"
 *** 0606:            value = self.expand(value, cachename)
     0607:        if value is not None and flag == "_content" and local_var is not None and "_removeactive" in local_var:
     0608:            filtered = filter(lambda v: v not in local_var["_removeactive"],
     0609:                              value.split(" "))
     0610:            value = " ".join(filtered)
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 344, function: expand
     0340:
     0341:        return varparse
     0342:
     0343:    def expand(self, s, varname = None):
 *** 0344:        return self.expandWithRefs(s, varname).value
     0345:
     0346:
     0347:    def finalize(self, parent = False):
     0348:        """Performs final steps upon the datastore, including application of overrides"""
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 325, function: expandWithRefs
     0321:
     0322:        while s.find('${') != -1:
     0323:            olds = s
     0324:            try:
 *** 0325:                s = __expand_var_regexp__.sub(varparse.var_sub, s)
     0326:                s = __expand_python_regexp__.sub(varparse.python_sub, s)
     0327:                if s == olds:
     0328:                    break
     0329:            except ExpansionError:
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 101, function: var_sub
     0097:            if key in self.d.expand_cache:
     0098:                varparse = self.d.expand_cache[key]
     0099:                var = varparse.value
     0100:            else:
 *** 0101:                var = self.d.getVar(key, True)
     0102:            self.references.add(key)
     0103:            if var is not None:
     0104:                return var
     0105:            else:
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 516, function: getVar
     0512:                self._seen_overrides[override] = set()
     0513:            self._seen_overrides[override].add( var )
     0514:
     0515:    def getVar(self, var, expand=False, noweakdefault=False):
 *** 0516:        return self.getVarFlag(var, "_content", expand, noweakdefault)
     0517:
     0518:    def renameVar(self, key, newkey, **loginfo):
     0519:        """
     0520:        Rename the variable key to newkey
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 606, function: getVarFlag
     0602:            if flag == "_content":
     0603:                cachename = var
     0604:            else:
     0605:                cachename = var + "[" + flag + "]"
 *** 0606:            value = self.expand(value, cachename)
     0607:        if value is not None and flag == "_content" and local_var is not None and "_removeactive" in local_var:
     0608:            filtered = filter(lambda v: v not in local_var["_removeactive"],
     0609:                              value.split(" "))
     0610:            value = " ".join(filtered)
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 344, function: expand
     0340:
     0341:        return varparse
     0342:
     0343:    def expand(self, s, varname = None):
 *** 0344:        return self.expandWithRefs(s, varname).value
     0345:
     0346:
     0347:    def finalize(self, parent = False):
     0348:        """Performs final steps upon the datastore, including application of overrides"""
File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 334, function: expandWithRefs
     0330:                raise
     0331:            except bb.parse.SkipPackage:
     0332:                raise
     0333:            except Exception as exc:
 *** 0334:                raise ExpansionError(varname, s, exc)
     0335:
     0336:        varparse.value = s
     0337:
     0338:        if varname:
Exception: ExpansionError: Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher failure: Fetch command failed with exit code 128, output:
fatal: unable to connect to gitorious.org:
gitorious.org: Name or service not known



ERROR: Failed to parse recipe: /media/nick/Build_Drive/setup-scripts/sources/meta-opie/recipes-opie/opie-connmanapplet/opie-connmanapplet_git.bb
 

