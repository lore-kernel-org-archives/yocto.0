Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2DADE00779; Fri, 20 Mar 2015 01:34:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B910E0076B
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 01:34:13 -0700 (PDT)
Received: by wixw10 with SMTP id w10so22801073wix.0
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 01:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tzj16pKtn1oNrs8DNFzbv5dHf2HC3ETg7/OU/maVU9I=;
	b=lbdjQ/vtVVcLw6Asu/ObhgY1KwOwaRL56lF2etb0uEe5sdV50JrOWzHB1pEcM4wxVT
	mm6KTiNibL3exSwGcHrNbmxYX3X4Ug+sHXTmBxq8/cOHL9EEZKjsbNncswQxtiXVN7dp
	aJZ0nVncSRg8+GI5nY02Yw1qRRXy19MTbnHxxOrb0znaehbmlYsm8vQNIWbMF2L70+Jh
	bCVEOsfHHnhCDDFNfwQWvCGpY6cmbF/nFhTUMfF+TOMAallDlIuujo8l983nBflZGdzV
	eMh/2GoYcUMxGbg4+pJy/+Gzj7yRz9wnP+hYLgPhxsC7uSBQJ8bO++EAJROsNHSmw1+/
	yuNg==
MIME-Version: 1.0
X-Received: by 10.180.84.133 with SMTP id z5mr3425304wiy.25.1426840453209;
	Fri, 20 Mar 2015 01:34:13 -0700 (PDT)
Received: by 10.28.182.65 with HTTP; Fri, 20 Mar 2015 01:34:13 -0700 (PDT)
Date: Fri, 20 Mar 2015 14:04:13 +0530
Message-ID: <CAA2DH4v8kvV6SoEM4aeCBrY=nP6hF83Nde05jeM56_oMr1zn-A@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: yocto@yoctoproject.org
Subject: Embedded Linux Package Management
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
X-List-Received-Date: Fri, 20 Mar 2015 08:34:15 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm looking for package management for my embedded linux systems
(yocto on armv7 iMX6Q)


I'm looking for the following features:

(a) Install & remove a package
(b) Install packages and its dependencies
(c) Install a package with conflicts, such that the conflicting
package is force removed
(d) A local location with packages should serve as a package source
(e) Remote server package (http file server based)
(f) List of my packages installed
(g) List of my packages not installed but available on the http file server
(h) List of my packages that have updates (new version)
(i) To be able to manage packages for multiple architectures (eg. rpm
can produce packages for multiple architectures using one spec file)


The above features will be invoked by the application GUI.
Any suggestions: which package management solution would answer all
the above use cases?


I have tried smart + rpm, but from my preliminary research suggests
that smart is no longer developed (Am I correct?). Also I failed to
setup remote repository [case (e)] and also case (h) failed.


I am currently trying out yum + rpm, but it fails to answer case (f).
It can lists all my packages but does not tell me if it is installed
or available on the repo.
I could make it work by additional steps (work around), but it will be
good if the tool itself supports these features.
It also fails case (c), does not force remove conflicting package.


I also looked at opkg, but the last stable release seems to be v0.2.4
(v0.3.0-rc2 is current). Is it mature enough to be used? Does ipk
packages support all features as rpm packages would support
(dependencies, conflicts, groups) ?


Sorry for asking a lot of questions. It would be very helpful if
someone who has worked with package management on linux systems can
give some inputs.


Thanks in advance!

Regards, Pj

