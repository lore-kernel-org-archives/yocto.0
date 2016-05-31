Return-Path: <alfonsolimaastor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4154E00D99; Tue, 31 May 2016 04:10:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alfonsolimaastor[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A93E00C80
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 04:10:16 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id t40so130159134ioi.0
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 04:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=X7nb/AW8veYzesSCvlb/BlA5Ew4uhNxJwneJBiUlxms=;
	b=Z784XhlwDizeeoW4zLxkmn1LeozW0h4PhPcQyGh6S1OYhKy1/WQtx81LY1dpfRI4F4
	uOfwXOGB+LEhGL9uCLXuA/481OR9f7nYrSieGqOmS3aLB0lqLqOPCdqHx+YPwu3BbpNP
	1GCiqSev5hJCftIFhGOLu6bCAKYwW9maq/BCEQfLEI9LBcs1Z0TYpX0Pec/W7t7pIj54
	Q8eaMFcB59l45gkslPwVC0kZ8HkAcR8GJ2CfyQskX0JskpMeps4DbtmyhLeJj1hSRZyZ
	sK5h5E4vSUVB5auTfGSzu7AQgs9QRrwv+NIdTQFJ3Um+R+tJxgp0rdbmpMe1Fq8Dhcub
	WLLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=X7nb/AW8veYzesSCvlb/BlA5Ew4uhNxJwneJBiUlxms=;
	b=PapFrPpfdYg8wpf+skDcqFfZV0wWXDkyV6NLZFMBdgTfZAD3/1KWjD5ljZgv/h6T+H
	8HqoA4x6xPJ43g3/wXCrXAbWpYWI+nNhZCdVgfEpAe5rv70g+AalSUE1RCW19tcbSuCG
	2RDl0emyf4xk0ehSw5d6XCH/Kb9jM9+o7j6VE+DleInRDrANfcpq9SrXcjWpYYZhiL9J
	dj1Jlcof0TvggR7McoBaQIQwdqiZ54Dg7iIteNXR9JpJIYwicFnFpbNqYxfmNcpquCHk
	I8oFeXr6cqh7p7wFbtMvIVD82SNW9hvj9DJc+yMiJevavSMh5U4FuHZBxoIJsLt/dAy7
	mhYw==
X-Gm-Message-State: ALyK8tI6KtS1sLn1Z5+vT2ImsLl9qqpyGSu5OtF/ErIVimD/7aKRqkELEkoAZhJlxlqxyVIGMo8/hi5qo8Y9fA==
X-Received: by 10.107.3.79 with SMTP id 76mr27168900iod.10.1464693015627; Tue,
	31 May 2016 04:10:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.26.8 with HTTP; Tue, 31 May 2016 04:09:36 -0700 (PDT)
From: Alfonso Lima Astor <alfonsolimaastor@gmail.com>
Date: Tue, 31 May 2016 12:09:36 +0100
Message-ID: <CAFBcLwKLUs8XQA5iWVT8Ssnn3bR9TZvWWem68ttmHB7X8vazEg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: dev package being pulled into RDEPENDS automatically
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
X-List-Received-Date: Tue, 31 May 2016 11:10:19 -0000
Content-Type: text/plain; charset=UTF-8

Hello all,

I am getting the following error when building a recipe of my own:
ERROR: QA Issue: package1 rdepends on package2-dev [dev-deps]

I think the problem is that package2-dev is in RDEPENDS_package1, but
when I check the recipe, I just see:

RDEPENDS_${PN} += "package1"

Also, when I check the output of "bitbake package1 -e", I can see that
RDEPENDS_package1 does not contain "package2-dev", just "package2".

I have also checked the output files of "bitbake package1 -g" and only
package1-dev rdepends on package2-dev.

If I remove the previous rdependency, it still fails with the same issue.

Also, something important to mention is that this only happens on one
computer, but I have other two, running exactly the same code,
recipes, etc. where this is not happening. All of them running Ubuntu
14.04 and after installing the packages specified in the yocto
quickstart guide.

Do you know where this rdependency could get pulled into? how could I remove it?

Any idea/suggestion will be very welcome.

Bests,
Alfonso

