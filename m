Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70139E00857; Sat,  1 Nov 2014 11:55:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7977EE00777
	for <yocto@yoctoproject.org>; Sat,  1 Nov 2014 11:55:52 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id 10so7428929lbg.22
	for <yocto@yoctoproject.org>; Sat, 01 Nov 2014 11:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=3pBiPRK4jfwo09kRZ2ETOHykK5Ny+su4OVOF+OCY25c=;
	b=Z3N8CC8Np4Ol8DthIL0Re8QOvUKougehQapGfiD63BwOXrZzBlk0eMy6hhkIw9lahk
	Kr2TCvPhtiOAmtCDHP2mDbESfLdZ23pvwlfcP+VA37SSxNO3R0FjQW/lvQYPpQVjEcxy
	RrLfut5D7KM0ac3DzDLp0hTqnfW3A+7r3VJrEXjNtsXSWX2mO1PgF9FJIHLL2nFk51ED
	l3/xozBHdyAfv8uMdXVWCPAA0M79p5660DOYqwJ1LJQ3QlNkaeQmrjXpECYrG2xyqJSW
	XbhP6ioY/tZjwg09S+eoCP+0z0LgvvWStLp+EgoiazE3qTobGd2LScXTkK+sROfTK45v
	hYBg==
X-Received: by 10.112.133.138 with SMTP id pc10mr36385450lbb.48.1414868151614; 
	Sat, 01 Nov 2014 11:55:51 -0700 (PDT)
Received: from [192.168.50.237] (ip-178-202-244-13.hsi09.unitymediagroup.de.
	[178.202.244.13])
	by mx.google.com with ESMTPSA id lf5sm5894507lac.16.2014.11.01.11.55.49
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 01 Nov 2014 11:55:50 -0700 (PDT)
Message-ID: <54552CB3.30002@gmail.com>
Date: Sat, 01 Nov 2014 19:55:47 +0100
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: nick <xerofoify@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <54551DFF.6060000@gmail.com>
In-Reply-To: <54551DFF.6060000@gmail.com>
Subject: Re: Angstrom Build Fails
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
X-List-Received-Date: Sat, 01 Nov 2014 18:55:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Looks like problems with gitorious.org again.
You should either find a mirror again or wait if the problem solves
itself. Unfortunately I don't know, which git repository this recipe
(opie) needs so I don't know if a mirror exists.

Am 01.11.2014 18:53, schrieb nick:
> I am getting a failing build with the log below. If anyone knows how to fix this it would be very helpful.
> Cheers Nick 
> nick@nick-System-Product-Name:/media/nick/Build_Drive/setup-scripts$ time MACHINE=beagleboard ./oebb.sh bitbake systemd-gnome-image
> Using environment-angstrom-v2013.12 to setup needed variables. It is recommended to do '. environment-angstrom-v2013.12' and run 'bitbake something' without using ./oebb.sh as wrapper
> Executing: MACHINE=beagleboard bitbake systemd-gnome-image
> NOTE: Started PRServer with DBfile: /media/nick/Build_Drive/setup-scripts/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 57935, PID: 18666
> WARNING: OPIE_VERSION has not been set; if you are going to build Opie, you need to 'require' an appropriate .inc file from meta-opie/conf/distro/include                                                                    | ETA:  00:06:28
> WARNING: OPIE_VERSION has not been set; if you are going to build Opie, you need to 'require' an appropriate .inc file from meta-opie/conf/distro/include                                                                    | ETA:  00:06:18
> WARNING: libgles-omap3-5.01.00.01 ONLY supports hardfp mode for now############################################                                                                                                              | ETA:  00:02:40
> WARNING: libgles-omap3-5.00.00.01 ONLY supports hardfp mode for now
> WARNING: omap3-sgx-modules-5.01.00.01 ONLY supports hardfp mode for now##########################################                                                                                                            | ETA:  00:02:34
> WARNING: omap3-sgx-modules-5.00.00.01 ONLY supports hardfp mode for now
> WARNING: Unable to get checksum for lcr SRC_URI entry lcr-no_amr.diff: file could not be found################################################################################################################               | ETA:  00:00:14
> WARNING: Unable to get checksum for mono SRC_URI entry Makefile.am.diff: file could not be found##################################################################################################################           | ETA:  00:00:10
> WARNING: Unable to get checksum for mono SRC_URI entry config.in.diff: file could not be found
> WARNING: Unable to get checksum for mono SRC_URI entry Makefile.diff: file could not be found
> WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV} ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.la) replaces original key FILES_mono-xsp-dev (	/usr/lib/pkgconfig/xsp.pc 	/usr/lib/pkgconfig/xsp-2.pc 	).
> WARNING: Unable to get checksum for mono-native SRC_URI entry Makefile.am.diff: file could not be found
> WARNING: Unable to get checksum for mono-native SRC_URI entry config.in.diff: file could not be found
> WARNING: Unable to get checksum for mono-native SRC_URI entry Makefile.diff: file could not be found
> ERROR: Error executing a python function in <code>:#######################################################################################################################################################################   | ETA:  00:00:02
> 
> The stack trace of python calls that resulted in this exception/failure was:
> File: '<code>', lineno: 1, function: <module>
>  *** 0001:__anon_634__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_base_bbclass(d)
>      0002:__anon_954__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_insane_bbclass(d)
>      0003:__anon_230__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_package_bbclass(d)
>      0004:__anon_430__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_package_ipk_bbclass(d)
>      0005:__anon_20__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_debian_bbclass(d)
> File: '__anon_634__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_base_bbclass', lineno: 218, function: __anon_634__media_nick_Build_Drive_setup_scripts_sources_openembedded_core_meta_classes_base_bbclass
>      0214:    #
>      0215:    override = d.getVar('SRC_URI_OVERRIDES_PACKAGE_ARCH', True)
>      0216:    if override != '0':
>      0217:        paths = []
>  *** 0218:        fpaths = (d.getVar('FILESPATH', True) or '').split(':')
>      0219:        machine = d.getVar('MACHINE', True)
>      0220:        for p in fpaths:
>      0221:            if os.path.basename(p) == machine and os.path.isdir(p):
>      0222:                paths.append(p)
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 516, function: getVar
>      0512:                self._seen_overrides[override] = set()
>      0513:            self._seen_overrides[override].add( var )
>      0514:
>      0515:    def getVar(self, var, expand=False, noweakdefault=False):
>  *** 0516:        return self.getVarFlag(var, "_content", expand, noweakdefault)
>      0517:
>      0518:    def renameVar(self, key, newkey, **loginfo):
>      0519:        """
>      0520:        Rename the variable key to newkey
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 606, function: getVarFlag
>      0602:            if flag == "_content":
>      0603:                cachename = var
>      0604:            else:
>      0605:                cachename = var + "[" + flag + "]"
>  *** 0606:            value = self.expand(value, cachename)
>      0607:        if value is not None and flag == "_content" and local_var is not None and "_removeactive" in local_var:
>      0608:            filtered = filter(lambda v: v not in local_var["_removeactive"],
>      0609:                              value.split(" "))
>      0610:            value = " ".join(filtered)
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 344, function: expand
>      0340:
>      0341:        return varparse
>      0342:
>      0343:    def expand(self, s, varname = None):
>  *** 0344:        return self.expandWithRefs(s, varname).value
>      0345:
>      0346:
>      0347:    def finalize(self, parent = False):
>      0348:        """Performs final steps upon the datastore, including application of overrides"""
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 325, function: expandWithRefs
>      0321:
>      0322:        while s.find('${') != -1:
>      0323:            olds = s
>      0324:            try:
>  *** 0325:                s = __expand_var_regexp__.sub(varparse.var_sub, s)
>      0326:                s = __expand_python_regexp__.sub(varparse.python_sub, s)
>      0327:                if s == olds:
>      0328:                    break
>      0329:            except ExpansionError:
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 101, function: var_sub
>      0097:            if key in self.d.expand_cache:
>      0098:                varparse = self.d.expand_cache[key]
>      0099:                var = varparse.value
>      0100:            else:
>  *** 0101:                var = self.d.getVar(key, True)
>      0102:            self.references.add(key)
>      0103:            if var is not None:
>      0104:                return var
>      0105:            else:
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 516, function: getVar
>      0512:                self._seen_overrides[override] = set()
>      0513:            self._seen_overrides[override].add( var )
>      0514:
>      0515:    def getVar(self, var, expand=False, noweakdefault=False):
>  *** 0516:        return self.getVarFlag(var, "_content", expand, noweakdefault)
>      0517:
>      0518:    def renameVar(self, key, newkey, **loginfo):
>      0519:        """
>      0520:        Rename the variable key to newkey
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 606, function: getVarFlag
>      0602:            if flag == "_content":
>      0603:                cachename = var
>      0604:            else:
>      0605:                cachename = var + "[" + flag + "]"
>  *** 0606:            value = self.expand(value, cachename)
>      0607:        if value is not None and flag == "_content" and local_var is not None and "_removeactive" in local_var:
>      0608:            filtered = filter(lambda v: v not in local_var["_removeactive"],
>      0609:                              value.split(" "))
>      0610:            value = " ".join(filtered)
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 344, function: expand
>      0340:
>      0341:        return varparse
>      0342:
>      0343:    def expand(self, s, varname = None):
>  *** 0344:        return self.expandWithRefs(s, varname).value
>      0345:
>      0346:
>      0347:    def finalize(self, parent = False):
>      0348:        """Performs final steps upon the datastore, including application of overrides"""
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 325, function: expandWithRefs
>      0321:
>      0322:        while s.find('${') != -1:
>      0323:            olds = s
>      0324:            try:
>  *** 0325:                s = __expand_var_regexp__.sub(varparse.var_sub, s)
>      0326:                s = __expand_python_regexp__.sub(varparse.python_sub, s)
>      0327:                if s == olds:
>      0328:                    break
>      0329:            except ExpansionError:
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 101, function: var_sub
>      0097:            if key in self.d.expand_cache:
>      0098:                varparse = self.d.expand_cache[key]
>      0099:                var = varparse.value
>      0100:            else:
>  *** 0101:                var = self.d.getVar(key, True)
>      0102:            self.references.add(key)
>      0103:            if var is not None:
>      0104:                return var
>      0105:            else:
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 516, function: getVar
>      0512:                self._seen_overrides[override] = set()
>      0513:            self._seen_overrides[override].add( var )
>      0514:
>      0515:    def getVar(self, var, expand=False, noweakdefault=False):
>  *** 0516:        return self.getVarFlag(var, "_content", expand, noweakdefault)
>      0517:
>      0518:    def renameVar(self, key, newkey, **loginfo):
>      0519:        """
>      0520:        Rename the variable key to newkey
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 606, function: getVarFlag
>      0602:            if flag == "_content":
>      0603:                cachename = var
>      0604:            else:
>      0605:                cachename = var + "[" + flag + "]"
>  *** 0606:            value = self.expand(value, cachename)
>      0607:        if value is not None and flag == "_content" and local_var is not None and "_removeactive" in local_var:
>      0608:            filtered = filter(lambda v: v not in local_var["_removeactive"],
>      0609:                              value.split(" "))
>      0610:            value = " ".join(filtered)
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 344, function: expand
>      0340:
>      0341:        return varparse
>      0342:
>      0343:    def expand(self, s, varname = None):
>  *** 0344:        return self.expandWithRefs(s, varname).value
>      0345:
>      0346:
>      0347:    def finalize(self, parent = False):
>      0348:        """Performs final steps upon the datastore, including application of overrides"""
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 325, function: expandWithRefs
>      0321:
>      0322:        while s.find('${') != -1:
>      0323:            olds = s
>      0324:            try:
>  *** 0325:                s = __expand_var_regexp__.sub(varparse.var_sub, s)
>      0326:                s = __expand_python_regexp__.sub(varparse.python_sub, s)
>      0327:                if s == olds:
>      0328:                    break
>      0329:            except ExpansionError:
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 101, function: var_sub
>      0097:            if key in self.d.expand_cache:
>      0098:                varparse = self.d.expand_cache[key]
>      0099:                var = varparse.value
>      0100:            else:
>  *** 0101:                var = self.d.getVar(key, True)
>      0102:            self.references.add(key)
>      0103:            if var is not None:
>      0104:                return var
>      0105:            else:
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 516, function: getVar
>      0512:                self._seen_overrides[override] = set()
>      0513:            self._seen_overrides[override].add( var )
>      0514:
>      0515:    def getVar(self, var, expand=False, noweakdefault=False):
>  *** 0516:        return self.getVarFlag(var, "_content", expand, noweakdefault)
>      0517:
>      0518:    def renameVar(self, key, newkey, **loginfo):
>      0519:        """
>      0520:        Rename the variable key to newkey
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 606, function: getVarFlag
>      0602:            if flag == "_content":
>      0603:                cachename = var
>      0604:            else:
>      0605:                cachename = var + "[" + flag + "]"
>  *** 0606:            value = self.expand(value, cachename)
>      0607:        if value is not None and flag == "_content" and local_var is not None and "_removeactive" in local_var:
>      0608:            filtered = filter(lambda v: v not in local_var["_removeactive"],
>      0609:                              value.split(" "))
>      0610:            value = " ".join(filtered)
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 344, function: expand
>      0340:
>      0341:        return varparse
>      0342:
>      0343:    def expand(self, s, varname = None):
>  *** 0344:        return self.expandWithRefs(s, varname).value
>      0345:
>      0346:
>      0347:    def finalize(self, parent = False):
>      0348:        """Performs final steps upon the datastore, including application of overrides"""
> File: '/media/nick/Build_Drive/setup-scripts/sources/bitbake/lib/bb/data_smart.py', lineno: 334, function: expandWithRefs
>      0330:                raise
>      0331:            except bb.parse.SkipPackage:
>      0332:                raise
>      0333:            except Exception as exc:
>  *** 0334:                raise ExpansionError(varname, s, exc)
>      0335:
>      0336:        varparse.value = s
>      0337:
>      0338:        if varname:
> Exception: ExpansionError: Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher failure: Fetch command failed with exit code 128, output:
> fatal: unable to connect to gitorious.org:
> gitorious.org: Name or service not known
> 
> 
> 
> ERROR: Failed to parse recipe: /media/nick/Build_Drive/setup-scripts/sources/meta-opie/recipes-opie/opie-connmanapplet/opie-connmanapplet_git.bb
>  
> 

