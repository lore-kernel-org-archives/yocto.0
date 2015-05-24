Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DEFBE009DC; Sun, 24 May 2015 05:58:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D153CE0097D
	for <yocto@yoctoproject.org>; Sun, 24 May 2015 05:58:55 -0700 (PDT)
Received: by igbsb11 with SMTP id sb11so18548852igb.0
	for <yocto@yoctoproject.org>; Sun, 24 May 2015 05:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=b1A98pLE9UVASxTG1r06oLRYmqqmDEKuKegUBvlZTko=;
	b=O+71TyGrUrXzvmXah01tWKfVT1nZdh3iei24YY14FQN6cL8RVqryRa1QVesEoLi8Z0
	byrvUUFs/VcD94CqTjiOJrsnVontRbyxovIhtLHSKSJqtSJMRLHdKvrssm5lWY7B+xjD
	JuFH1fUUcLGBo1bI1YhlshDL7+5oz0821PDXulm1fIxFjA+BU3Q9gflBFbfNH8SJFV2X
	MfbOqtur7rM0OLjMoD4Jw5wH0VvgohqZgxnbMKvREkqZjRs2bJJZlCKiui8BVi3EO3GH
	wd7zWhAINMTd36UV42Ib+UbuEXcwP1xe+GygerBkBijtFtm0sWXIyA8rXgKfYatoDcjT
	FZDg==
MIME-Version: 1.0
X-Received: by 10.42.76.146 with SMTP id e18mr20257648ick.42.1432472334814;
	Sun, 24 May 2015 05:58:54 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Sun, 24 May 2015 05:58:54 -0700 (PDT)
Date: Sun, 24 May 2015 07:58:54 -0500
Message-ID: <CAK5mtexc_ZOPST3z77xCNEgKnu3o57LT2X9wq_zD4RV4nqf+AQ@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-core@lists.openembedded.org
Subject: Unable to change binary names in do_install_append
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
X-List-Received-Date: Sun, 24 May 2015 12:58:59 -0000
Content-Type: text/plain; charset=UTF-8

Hi team

After a successful build I have the binaries I need but with the
prefix i586-poky-linux

I tried to change their names with this:

do_install_append () {
    mv ${D}${bindir}/i586-poky-linux-hydra_nameserver
${D}${bindir}/hydra_nameserver
    mv ${D}${bindir}/i586-poky-linux-hydra_persist  ${D}${bindir}/hydra_persist
    mv ${D}${bindir}/i586-poky-linux-hydra_pmi_proxy
${D}${bindir}/hydra_pmi_proxy
    mv ${D}${bindir}/i586-poky-linux-mpiexec ${D}${bindir}/mpiexec
    mv ${D}${bindir}/i586-poky-linux-mpiexec.hydra ${D}${bindir}/mpiexec.hydra
    mv ${D}${bindir}/i586-poky-linux-mpirun ${D}${bindir}/mpirun
}

Despite the fact that the rpm is deploying fine:

%files
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/bin"
%dir "/usr/lib"
"/usr/bin/mpicxx"
"/usr/bin/mpiexec.hydra"
"/usr/bin/mpic++"
"/usr/bin/mpiexec"
"/usr/bin/hydra_persist"
"/usr/bin/mpivars"
"/usr/bin/parkill"
"/usr/bin/hydra_nameserver"
"/usr/bin/hydra_pmi_proxy"
"/usr/bin/mpichversion"
"/usr/bin/mpicc"
"/usr/bin/mpirun"
"/usr/lib/libmpi.so.12"
"/usr/lib/libmpicxx.so.12.0.1"
"/usr/lib/libmpicxx.so.12"
"/usr/lib/libmpi.so.12.0.1"



I can not run the binary ( is not in the PATH ) and even "ls
/us/bin/<binary>" is not working :(

Meanwhile I will reset the patch and adapt  the benchmark I need to
run to these names

I might be doing something wrong .. so all the help is more than welcome

Best regards

Victor Rodriguez

