Return-Path: <gizero@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 716FEE003E3
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 01:41:50 -0800 (PST)
Received: by vbjk13 with SMTP id k13so3207853vbj.35
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2012 01:41:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gizero@gmail.com designates
	10.52.172.196 as permitted sender) client-ip=10.52.172.196; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of gizero@gmail.com
	designates 10.52.172.196 as permitted sender)
	smtp.mail=gizero@gmail.com; dkim=pass header.i=gizero@gmail.com
Received: from mr.google.com ([10.52.172.196])
	by 10.52.172.196 with SMTP id be4mr3020767vdc.80.1330162909783
	(num_hops = 1); Sat, 25 Feb 2012 01:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=l1RIeJ6fnEQo1rNwaJSBiSYpWRIRx0FSTXVuQYb5N18=;
	b=ADtX3NyvFqU0btWXQwD+iwH+Pt/wzwRrsdhI6gsFMb4MoLYtTIsrEpvPEJckdJM/fz
	2xW59Q5s8kQgWs1XPANnhrCQIgcP6ITg+D7aCxwj784co4XDbiCR3S6sUd/uHpk88jFx
	NkyMlZjwkMeSqPsic7704XoPrbJekEILX2kYA=
MIME-Version: 1.0
Received: by 10.52.172.196 with SMTP id be4mr2399823vdc.80.1330162909609; Sat,
	25 Feb 2012 01:41:49 -0800 (PST)
Received: by 10.220.76.19 with HTTP; Sat, 25 Feb 2012 01:41:49 -0800 (PST)
In-Reply-To: <4F4842AB.1070006@linux.intel.com>
References: <CAC+thW1xz0eWYh3wHdFDZWRTUgqjKPe5XKEsbzwKLrwMFKZfUA@mail.gmail.com>
	<4F4842AB.1070006@linux.intel.com>
Date: Sat, 25 Feb 2012 10:41:49 +0100
Message-ID: <CAC+thW1KYtoHs6cjBOHycYWxGyaJkuOEk5AGMNxW+ZUJpGXcLA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: adt-installer: cannot install package autoconf-nativesdk
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
X-List-Received-Date: Sat, 25 Feb 2012 09:41:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Joshua,

On Sat, Feb 25, 2012 at 3:08 AM, Joshua Lock <josh@linux.intel.com> wrote:
> Hi Andrea,
>
>
> On 24/02/12 05:40, Andrea Galbusera wrote:
>>
>> The installer was built against the latest version of its recipe as
>> per commit c6ec5a0d9e31a1694aba25e2ff76f1c933e556d5,
>> adt-installer-0.1.8+svnr596-r6. I guess a change was made with commit
>> de68393270d5455b4861d38cef3f081b9667d25f which requires installing
>> autoconf/automake-nativesdk but relevant ipks are missing from
>> http://adtrepo.yoctoproject.org/1.1/adt-ipk/, which is still default
>> in latest adt_installer.conf.
>>
>> Am I guessing right? First time digging into the adt_installer so I
>> might be completely out of track! Is this a known limit if building
>> adt_installer with latest edison branch? Should I file a bug for this?
>> If so, what's the best solution right now? Maybe using the edison
>> original adt_installer from the yocto downloads...
>
>
> This sounds like you've correctly deduced the issue - it looks like there
> may be required changes which need backporting to the edison repository -
> I'm currently running some builds to verify this.
>
> Please do report this information on bugzilla so that we can track it. It's
> my first time digging into the ADT installer too so it may take a couple of
> days to pull together all of the required fixes.

Submitted to shiny new bugzilla with #2031. I left the ADT version
unspecified, since I believe we are somewhere between 1.1 and 1.1.1
with current edison.

After looking a little closer at the adt_installer.conf generated from
my build tree I noticed the following diffs wrt 1.1. First line looks
pretty strange to me. Hope this helps

@@ -1,4 +1,4 @@
-YOCTOADT_VERSION=1.1
+1.1=1.1
 # Yocto ADT Installer Configuration File
 #
 # Copyright 2010-2011 by Intel Corp.
@@ -24,7 +24,7 @@

 # Your yocto distro repository, this should include IPKG based
packages and root filesystem files where the installation is based on

-YOCTOADT_REPO="http://adtrepo.yoctoproject.org/$YOCTOADT_VERSION"
+YOCTOADT_REPO="http://adtrepo.yoctoproject.org/1.1"

 # The following are for system wide setup
 # Target architectures that you want to setup host cross dev environment for

Cheers,
Andrea

