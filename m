Return-Path: <roosesweb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84C24E00846; Fri, 29 Aug 2014 04:22:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0033]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B360DE007DC
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 04:22:43 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id x12so2039363wgg.9
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 04:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=ArFa81rIYVWI8muBICl/Q/jUokdc2Fy2U8jPyqep0Wo=;
	b=wZ6yki7N+iPqFxr+BCGn9TnrX+mooGNwAK+wlj8n2zWlRKttenSrU67iR+D9be8fQt
	6BzXMfM6POHG+9u3YfJUOsEuc6kONF2POH7ez+sf+08tZIjxvztgLbIrDGveQInt+AB/
	R7FUzDWjFVd02Vw1GqPqPKFEJ5u1IkJr67D5R5GTCFtAumbDFh81+613WtENjdTUgHM+
	+2sPeInUvAuP2qKBMIbd7tZRgQd3rffStoZHSvvJEgj2tug/7E6CmWfv/eaKcLfQkRjm
	v6MYC+xKCgfnGcZf7Vm4W5ObevgQ2JUOelHwvlRlthpxMFe1pkmWkDnuRqRxRJUuhbrf
	1rcA==
X-Received: by 10.180.100.230 with SMTP id fb6mr3311020wib.0.1409311362432;
	Fri, 29 Aug 2014 04:22:42 -0700 (PDT)
MIME-Version: 1.0
Sender: roosesweb@gmail.com
Received: by 10.194.188.77 with HTTP; Fri, 29 Aug 2014 04:22:22 -0700 (PDT)
From: Thomas Roos <thomas@roosesweb.de>
Date: Fri, 29 Aug 2014 13:22:22 +0200
X-Google-Sender-Auth: tkmEJESiQhakq713bpSZXXio4K0
Message-ID: <CAAVZOXv=DHRiAPa+XvUVGSVNE8PAApbeKrDpV-e22THRY8ukMg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: bitbake svn fetch download folder conflicts
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
X-List-Received-Date: Fri, 29 Aug 2014 11:22:45 -0000
Content-Type: text/plain; charset=UTF-8

Hi, I have several recipes checkout from one svn repo (same and other
subfolders) - there are sometimes svn command conflicts. I guess it's
because all svn data is stored in ONE FOLDER eg.
downloads/svn/ip/reponame/folder and concurred svn command instances
access this folder at the same time.
Is there an solution for this?For instance an parameter to specify a
tmp folder for an svn repo. Or global option to store svn repos
locally by recipe names they used in.
any help would be wonderful!
thank you, cheers Thomas

P.S: think of same svn subfolders with different revisions as well!!!

