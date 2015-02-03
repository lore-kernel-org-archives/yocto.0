Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C83CE0095D; Tue,  3 Feb 2015 07:39:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B052E008FB
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 07:39:05 -0800 (PST)
Received: by mail-we0-f171.google.com with SMTP id k11so43290587wes.2
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 07:39:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YeBCd8aAbMA7VtpX7XrYVea+FQB47Jf+sOoLmKBlXFI=;
	b=no1INauFwDg+FLBeev+IEPlLrMeeEl8NZFK0/DAnC4gHAOYHfSY4OozM0G4KHZNr/b
	3iYDg2eE+KpZQnWlJlZTKdRJaDBivR0CY0cPh55HpIXPH1l/bUEaxRkP+rBh1l8C02H6
	o1zelbl+YUXgGFLQcbecfj1a8itKsf3uqMG31bhrgFugP/BYsN7Pdx2HliQt6UahFXu/
	7xiRQGS6kWHvMybY3ISg+1DsQiDOmDeYNt5qVY2jq9QMwDXvCyUpf7Ju3Ha0OLuC5g7I
	hZm89Q4E7JRjZ/rR5cOwEeKKF+XyjIKm+87sMMJ2ZZPybs4vnyTAHDHQfPXuOoPcgEgo
	9LaA==
MIME-Version: 1.0
X-Received: by 10.194.84.176 with SMTP id a16mr45127927wjz.113.1422977944594; 
	Tue, 03 Feb 2015 07:39:04 -0800 (PST)
Received: by 10.216.253.1 with HTTP; Tue, 3 Feb 2015 07:39:04 -0800 (PST)
Date: Tue, 3 Feb 2015 09:39:04 -0600
Message-ID: <CAK5mtex_6VYORqocsd3A6H44h_=jn2+BjE2GeVhh8nfhMgLzBQ@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: yocto@yoctoproject.org
Subject: MPI support on Yocto
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
X-List-Received-Date: Tue, 03 Feb 2015 15:39:10 -0000
Content-Type: text/plain; charset=UTF-8

HI team

I wonder if there is any project or efforts to implement Message
Passing Interface (MPICH ) support on Yocto ?

If no I am more than happy to work on it , I just will need a little
bit of guidance

Thanks a lot

Regards

Victor Rodriguez

