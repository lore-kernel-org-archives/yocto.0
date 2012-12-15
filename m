Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97C19E006CC
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 07:53:37 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so3644894lbo.35
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 07:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=u2FB12f2V8enSRlus5TEILavuXBrwrWWE82iiDo3clY=;
	b=sJTsULH7H5OXflAxxvVstv0f5EDClnhcvZ8vewhP/ViQW6ZZfHcLnkc9g/dchmUqgr
	uJkhxszfAVfS7p5TxocBVPFPedOTHN3PrEFankkBAYaZepCfMVkMUKO0N3nMiC/pdKzI
	KYI3uSqC5obhRH9VHOsqOyRMPxot3bVWlbhcME9RIewWCe+Vm+LWP5k1x5cqyya+Blqa
	2u5uMy3PequKFyF5ETKfYun4clu6u6uf0rH0qrC4C3kDINCdcUHYov/QWcY38RZiApR5
	v8WQaZZYpFZbJofGj3MnTLNoeiLGk16lFYUxUqvOD5aOPM/ABECdtBSlejel6+9H6AI8
	XvSA==
MIME-Version: 1.0
Received: by 10.112.84.168 with SMTP id a8mr3515185lbz.75.1355586816371; Sat,
	15 Dec 2012 07:53:36 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Sat, 15 Dec 2012 07:53:36 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCE36@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1212130857190.5702@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCE36@ORSMSX101.amr.corp.intel.com>
Date: Sat, 15 Dec 2012 10:53:36 -0500
Message-ID: <CAHUNapTyXw4kheb78nKS8dKo=U-=h2O1XxU77=+-zC76082hiw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bitbake user manual vs mega manual, and more info on local file fetcher?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 15 Dec 2012 15:53:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Dec 13, 2012 at 10:18 AM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> we are revising the BitBake manual as part of the YP 1.4 release


Personally I think it would be great if the bitbake documentation
could be updated to include some of the information from Eren's
document as well. Eren provides a "hands-on" demonstration of how
bitbake works (and how to work with bitbake). The current
documentation reads more like a dictionary (which is great if someone
is looking for a dictionary-like treatment of bitbake).

