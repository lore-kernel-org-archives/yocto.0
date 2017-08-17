Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF81E00CDF; Thu, 17 Aug 2017 08:32:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A831E009A4
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 08:32:03 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id t3so17167985pgt.0
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 08:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=+l1psef+czSEUcH4jP4ilrHmoku6VPPnb7RtuVP73Hg=;
	b=N+yvD90PBzIl7D0+YqRDEaJa+isxFL9rBgs7eZWTGtlvvrrJM6X/D63AbZ3REilYZO
	Xnv9MqUwQECfEpS7uYKyzuyaro8Ji7tISi4q2jxJAm3o7ZMM1uPr1aO7B+zqBOltYpIo
	RCVqHpM9dTE3LUqICj9gLEu1EAi6yOPBnm6qb+nMm0R+qCZ+BxJSYdxrxFlSMQcBJsW2
	YL67PX5RLK29hzucgercEjIFXQwbXJw987/VUI83R3IRJ31N01iciX6KELgNRJEcFp6i
	MtIKhWw1PTUXrparOlr3Z7equQknRVJ49ur0UDhT214UyhqtKwxyyr0jO1ME47qboYp/
	METQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=+l1psef+czSEUcH4jP4ilrHmoku6VPPnb7RtuVP73Hg=;
	b=qg9tMbEBv/GARuzYX5Siz9eSGEgDS6y+5PHxkgVT4MXfvlWoqRjrt6K1tfBqivvRTd
	fVoquGmcIwLvFk6h0lx3MkCVkLlSa8LpjnJHRXl0LvGTIZDLNr8G3YaK0Gst6MEFh/Ww
	f36VTwmV5FqSMdlLfZW50fMkTAKNoHnqot5DQZPeHYrKchLF13BHSgGbg1/H2a1QVaBA
	GlV6V7Vv3fy1/N//x3YYbzlYy0TOEIA46qhNWFFn+9WHG3aJxiPVjfigSh6iId0oZKYi
	Sc322qRl7o6VKuaazDjXFIBcsXTuH0BNtgmDx0iie1dr/ZLcZR0kcoYFJ5UXc6FGlJQQ
	JQPA==
X-Gm-Message-State: AHYfb5iHp6nGxF1iQky98UJixRWg0kPp/k2armo071mRaBtPZxUssUsY
	hedbVjYAaJctrSYY9gg=
X-Received: by 10.99.147.8 with SMTP id b8mr2626925pge.381.1502983922963;
	Thu, 17 Aug 2017 08:32:02 -0700 (PDT)
Received: from Khems-MacBook-Pro.local ([2601:646:8882:b8c:4873:942c:c7f0:9ab])
	by smtp.gmail.com with ESMTPSA id
	t3sm6807036pfb.147.2017.08.17.08.32.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 Aug 2017 08:32:02 -0700 (PDT)
To: idealsim <idealsim@laposte.net>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <0ee7bfc7-9aa1-f1b4-7455-337c7e7233b8@laposte.net>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <5d54504c-db22-0e0e-6a50-86a01702baac@gmail.com>
Date: Thu, 17 Aug 2017 08:32:01 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:56.0)
	Gecko/20100101 Thunderbird/56.0
MIME-Version: 1.0
In-Reply-To: <0ee7bfc7-9aa1-f1b4-7455-337c7e7233b8@laposte.net>
Subject: Re: [php7] packageconfig apache2 error
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
X-List-Received-Date: Thu, 17 Aug 2017 15:32:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 8/17/17 1:55 AM, idealsim wrote:
> Hi i would like to add modphp to my image (pyro branch). For this i add
> this to my local.conf :
> 
> PACKAGECONFIG_append_pn-php = "apache2 pam"
> IMAGE_INSTALL_append = "\
> apache2 \
> php \
> php-cli \
> "
> 
> But during the build of php (7.1.0 by default in pyro) i have this error
> during install :
> 
> /|
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/php-7.1.0/build/shtool
> install -c ext/phar/phar.phar
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/bin//
> //|   page: php-config.1//
> //| ln -s -f phar.phar
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/bin/phar//
> //| Installing PDO headers:          
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/include/php/ext/pdo///
> //| //
> //| Notice: unserialize(): Error at offset 394 of 2427 bytes in
> phar:///media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/build/pear/install-pear-nozlib.phar/PEAR/Config.php
> on line 1080//
> //| ERROR: One of /home/modjo/.pearrc or
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/recipe-sysroot-native/usr/bin/../../etc//pear.conf
> is corrupt, please remove them and try againInstalling header
> files:          
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/include/php///
> //| install: cannot stat 'libs/libphp5.so': No such file or directory//
> //| WARNING: exit code 1 from a shell command.//
> //| ERROR: Function failed: do_install (log file is located at
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/temp/log.do_install.31439)//
> //ERROR: Task
> (/media/modjo/data1TO/yocto/pyro/sources/meta-openembedded/meta-oe/recipes-devtools/php/php_7.1.0.bb:do_install)
> failed with exit code '1'//
> //NOTE: Tasks Summary: Attempted 1283 tasks of which 1276 didn't need to
> be rerun and 1 failed./
> 
> To resolve this i change this line (in php.inc) :
> 
> /Line 179 install -m 755  libs/libphp5.so ${D}${libdir}/apache2/modules/
> 
> by this one :
> 
> /Line 179 install -m 755  libs/libphp7.so ${D}${libdir}/apache2/modules
> 
> /Perhaps this recipe need a patch ?

yes. Backport
http://git.openembedded.org/meta-openembedded/commit/?id=6cd249225ecdd0a4592afe1844541378acae6cea

to pyro meta-openembedded repo.

Also send a backport request to openembedded-devel mailing list so that
the pyro maintainer for meta-openembedded notices it.
> 
> Modjo
> 

