Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8D28E00862; Tue, 28 Oct 2014 07:03:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5859E00861
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 07:03:38 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CB996F811EB; Tue, 28 Oct 2014 08:03:37 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id EABDCF811EA;
	Tue, 28 Oct 2014 08:03:36 -0600 (MDT)
Message-ID: <544FA23A.6050502@mlbassoc.com>
Date: Tue, 28 Oct 2014 08:03:38 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Packaging problem
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
X-List-Received-Date: Tue, 28 Oct 2014 14:03:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to split out some tests from a packages by adding these lines the recipe:
   PACKAGES += " ${PN}-tests"
   FILES_${PN}-tests = "${libdir}/python*/site-packages/matplotlib/test*"
   RDEPENDS_${PN}-tests += " python-nose"

This expands (via -e) to:
   # $FILES_python-matplotlib-tests
   #   rename from FILES_${PN}-tests data.py:170 [expandKeys]
   #     "${libdir}/python*/site-packages/matplotlib/test*"
   FILES_python-matplotlib-tests="/usr/lib/python*/site-packages/matplotlib/test*"

When I look at the installed image, I see this:
   # ls /usr/lib/python*/site-packages/matplotlib/test*
   /usr/lib/python2.7/site-packages/matplotlib/testing:
   __init__.py   compare.pyc     image_util.py   noseclasses.py
   __init__.pyc  decorators.py   image_util.pyc  noseclasses.pyc
   compare.py    decorators.pyc  jpl_units

   /usr/lib/python2.7/site-packages/matplotlib/tests:
   __init__.py                test_colorbar.py         test_png.py
   __init__.pyc               test_colorbar.pyc        test_png.pyc
   baseline_images            test_colors.py           test_quiver.py
            ...

It all looks correct to me, but the -tests package is empty.

I'm sure I'm making some silly/rookie mistake.  Any pointers?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

