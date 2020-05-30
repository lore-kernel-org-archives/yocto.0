Received: from smtpcmd02101.aruba.it (smtpcmd02101.aruba.it [62.149.158.101])
 by mx.groups.io with SMTP id smtpd.web11.8691.1590840866650252490
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 May 2020 05:14:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=TK04Tyo6;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.158.101, mailfrom: mauro@faresoftware.it)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd02.ad.aruba.it with bizsmtp
	id l0EQ2200j2wfazh010ERK6; Sat, 30 May 2020 14:14:25 +0200
To: yocto@lists.yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: python3, pyscard, setuptools ModuleNotFound. Why?
Message-ID: <8eeb9582-680b-889c-7228-074a998540f9@faresoftware.it>
Date: Sat, 30 May 2020 14:14:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1590840865; bh=NP8J6n9x54E4usyFta/dsiOO7YFg6TYtfdsLmOlqNMM=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=TK04Tyo6NGdiJuPeT21ORCya00uoLsxtOviHc9bkoelJWmnyNtka1wQf4pwnTzi+e
	 t+FZir+m4npV81ImoFOpQ1Sxf4MrPoOi2jPf7IRIw91r3c72DMSOSeo+psOU2ose7T
	 4X4Ws09utXAabtcq444juRg+haV8FY99NG6vq1WGBM3yabF2hxvmhPVeaHw2D92HbG
	 cPqBwVPbauBI9TR6dwqLpwnGBASR/wH/NnKSz8RrohauR5hEZ3utrcOHCIm6B2wgHS
	 eWUGfntKZB+5pgX27SJRRpI+RlwcpB0xylkYP97EMKG11OloHRZe7q437QYkLPXS0M
	 Yy7WeaaSAqyOw==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'd like to include pyscard from pypi in my bsp.

I'm using zeus and python3.


The recipe for pyscard is placed in recipes-devtools/python of my layer

The recipe name s python3-pyscard_1.9.9.bb

This is the recipe


# PYScard
#
#
LICENSE="LGPL-2.1"
LIC_FILES_CHKSUM = "file://LICENSE;md5=d0227c3c90dc0a9eae8b0a64acd8c6e1"

PYPI_PACKAGE="pyscard"


inherit pypi setuptools3

SRC_URI[md5sum] = "a8e94032ca8dec22a6c559a7afd41998"
SRC_URI[sha256sum] = 
"e6bde541990183858740793806b1c7f4e798670519ae4c96145f35d5d7944c20"


DEPENDS = " \
     swig \
"

Why bitbake tell this error?

Sstate summary: Wanted 5 Found 0 Missed 5 Current 168 (0% match, 97% 
complete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
NOTE: Running task 678 of 773 
(/home/mauro/yocto/zeus/sources/meta-custom/recipes-devtools/python/python3-pyscard_1.9.9.bb:do_configure)
NOTE: recipe python3-pyscard-1.9.9-r0: task do_configure: Started
ERROR: python3-pyscard-1.9.9-r0 do_configure: Execution of 
'/home/mauro/yocto/zeus/qt10-build/tmp-glibc/work/core2-32-oe-linux/python3-pyscard/1.9.9-r0/temp/run.do_configure.1232' 
failed with exit code 1:
Traceback (most recent call last):
   File "setup.py", line 31, in <module>
     from setuptools import setup, Extension
ModuleNotFoundError: No module named 'setuptools'
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: 
/home/mauro/yocto/zeus/qt10-build/tmp-glibc/work/core2-32-oe-linux/python3-pyscard/1.9.9-r0/temp/log.do_configure.1232
Log data follows:
| DEBUG: Executing shell function do_configure
| Traceback (most recent call last):
|   File "setup.py", line 31, in <module>
|     from setuptools import setup, Extension
| ModuleNotFoundError: No module named 'setuptools'
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of 
'/home/mauro/yocto/zeus/qt10-build/tmp-glibc/work/core2-32-oe-linux/python3-pyscard/1.9.9-r0/temp/run.do_configure.1232' 
failed with exit code 1:
| Traceback (most recent call last):
|   File "setup.py", line 31, in <module>
|     from setuptools import setup, Extension
| ModuleNotFoundError: No module named 'setuptools'
| WARNING: exit code 1 from a shell command.
|
NOTE: recipe python3-pyscard-1.9.9-r0: task do_configure: Failed
ERROR: Task 
(/home/mauro/yocto/zeus/sources/meta-custom/recipes-devtools/python/python3-pyscard_1.9.9.bb:do_configure) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 765 tasks of which 764 didn't need to be 
rerun and 1 failed.

Summary: 1 task failed:
/home/mauro/yocto/zeus/sources/meta-custom/recipes-devtools/python/python3-pyscard_1.9.9.bb:do_configure
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Thanks all

MZ

