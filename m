Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD739E009BF; Mon,  7 Dec 2015 12:56:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA85BE006F3
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 12:56:55 -0800 (PST)
Received: by obbnk6 with SMTP id nk6so122983241obb.2
	for <yocto@yoctoproject.org>; Mon, 07 Dec 2015 12:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=tQDW2jOQgbwdW0qiWxduGkYDp9Cn/Gjkx4HTw9LrMmw=;
	b=wavVare2SGuQgNCf6Jm60OtOaEkqrxdqPqVZcBb12Qe/qk2LcwHAueC66djlo/jky7
	vcvMyMaOhnmxFgw25LxeIgHyHCos1RBe3vQp1pGY82dgZ0BkxHos7EgDjHCWy8yGQsQB
	vQG6DnuCUtDxOd8MLfob1odSx2FCyqxqrIdr3r5Fqw98vuPHHb4H/pwpII+r8FWv1kPx
	7URwlTacocfDx7qLpoVRCjvivVigo8q0R7xirxYuG6m7FrEeILpcawPsfVyKOk370OnB
	aFJrRAhfquC5Hwkqw+ed5KFHq5YuWDviJfk4e+3+G9AQqY8KBaYvFMvc0osYSGCdaJ/O
	+PHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=tQDW2jOQgbwdW0qiWxduGkYDp9Cn/Gjkx4HTw9LrMmw=;
	b=d6jr8W5sqJK1vPgMJDVDi5w3/TLsjPEgSwlIxf4Hrso+K1ExuG4gRy6tkf2E0Tj6cM
	4iEaq6Msu3i79RuUoxuwM9Wurccsq2AJrwgHXgNwNhxlROR/NrQ4CMpmwpaZNOdHrhMV
	496mHrXW9rFWWLzCiwYdlD8s82IM7kg2Njq2vQX6WhcAc564J5cSU6kq0HDzQgOKoPyX
	e1OUw/5Jk6ld1NmWT7HTFt+cppjrjQ0N2fr2+yrEG8lX2JKrk5+Kde/CjUtLrb1Z+Hdx
	Tve+vYGTwpMNBWEAVAnD/sFd0Qe4YQBzkpNmW20WvorpukIWlpYp1tDvNhIiWMOPLrY3
	xH1w==
X-Gm-Message-State: ALoCoQlWJgbRwt90MRDh8q9vOLuIxqhmtr5p4L0zOizOfUHOcMgvSGOtgfvRBx6ozFv0IUibYH+x
X-Received: by 10.60.36.194 with SMTP id s2mr23554669oej.53.1449521814565;
	Mon, 07 Dec 2015 12:56:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.137.76 with HTTP; Mon, 7 Dec 2015 12:56:15 -0800 (PST)
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Mon, 7 Dec 2015 20:56:15 +0000
Message-ID: <CAPhnLPA3ptt7SDT4u_YK2B0YZTzss9gtfrRXvKhEiYWWu5W9cQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Tracy Graydon <tracy.graydon@intel.com>, Saul Wold <saul.wold@intel.com>
Subject: Yocto Project Autobuilder 2.1 Feature planning.
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
X-List-Received-Date: Mon, 07 Dec 2015 20:56:58 -0000
Content-Type: text/plain; charset=UTF-8

Folks,

We're going to have the 2.1 feature planning meeting for the Yocto
Project Autobuilder this Wednesday the 9th at 11am PST. If you have
features for 2.1 that will require an autobuilder update, please send
those features in prior to this meeting either by opening a bug in
bugzilla or send me an email. If your feature has a bug open (it
should) please link the AB bug to that.

Please be aware, simple things like a change to local conf/bblayers/
or to layers needed do have autobuilder impacts. Without these bugs we
can not track what we are doing. So please think about what you have
planned for 2.1 and ask if you are unsure of autobuilder impact.

Wednesday, December 09, 2015, 11:00 AM US Pacific Time
916-356-2663, Bridge: 2, Passcode: 3004432

If folks outside the US need a dial in number contact me off line and
I'll dig one up.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

