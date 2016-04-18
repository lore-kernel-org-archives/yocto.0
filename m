Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6206E00E87; Mon, 18 Apr 2016 03:26:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FA1AE0077F
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 03:26:46 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id f1so68665379igr.1
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 03:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=BNbPFyLSEmImdQxvJ5F3pE9C5EwBj9jt4s6We+t2WUg=;
	b=Cai/heTCYpzQJH0qCI4T4qtM8L5l8QAf5nxRt/eeSzAbWpN7U3KsQ8rlw57UpPX3ZO
	2PJZPb8ZugNPMFcXmkgKb7o3FDSTNt5K3tBJ8JcnV16nur7uySQ0zoqjolthM9yaM56S
	9TmrN62K8fAVw5GHz2C4pWL2HgyoLSi7ga+v3ePbwfzL7bKAik7SWMaB++qnlnj+P/OF
	MiEqaDt/9uAuvj22duuVKHVfcBUc1NuPETHVODkSHCu6b5+C6Eq08RgV9gkxKsRCd6ep
	E49s4rH6pWrGg1x3ziyJyQd4RWbmEqsYNYZUFQGqoIKFyAmo8FjoNTguhU/1QK62b3PX
	qg8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BNbPFyLSEmImdQxvJ5F3pE9C5EwBj9jt4s6We+t2WUg=;
	b=eMefHYLm4XhTqFQMgCiN+uZ9srzwwO7shAdZkRjmBFYRrHdWret2HLuI6EPTFFwiHw
	F97x9320vAspLjNlcl2QFa/QOkAzKvSrtczSDdklngxcBAjq2VNAQcoo7vI+qU8ZoWiw
	jLSQGWcxP3vX0zmih6mg7DFqk5yVVWqVL9JYCTbBmF6PEP9U2MIwWhZ0zVUa19QRNu/D
	/1d6e3qlHWDd6YwaPDJw30rohqifzp+0dP6GwkI8rQVFvB+ywolxypJBVSAmVuP2uBOd
	6aF16M1o8f0Hjz5QNGEwM7bObLm86OZzqqrTdwCSI/bz0F/UaXASEU/9WbXgIDxo9D35
	vb8w==
X-Gm-Message-State: AOPr4FWs8xZf6YP70oFwRNo6R64UiRwKgGYB/LUOWWbyuI5H249Ri/mWU/4bPVJliz/JQgkFgduWR1LvUCDa1AJ2
X-Received: by 10.50.78.8 with SMTP id x8mr18608894igw.78.1460975205539; Mon,
	18 Apr 2016 03:26:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Mon, 18 Apr 2016 03:26:26 -0700 (PDT)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 18 Apr 2016 11:26:26 +0100
Message-ID: <CAJTo0LZtDL-hbxXmYWdgf7HTZtSA4D2FgRKtx1+n6Rqxq50n=g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>, 
	OE-core <openembedded-core@lists.openembedded.org>
Subject: bugzilla.yoctoproject.org policy for bugs against multiple releases
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
X-List-Received-Date: Mon, 18 Apr 2016 10:26:50 -0000
Content-Type: multipart/alternative; boundary=089e01183a4c274bd50530bfcc30

--089e01183a4c274bd50530bfcc30
Content-Type: text/plain; charset=UTF-8

Hi,

At the moment we don't really have a policy for oe-core bugs in
bugzilla.yoctoproject.org that apply to multiple releases, for example
https://bugzilla.yoctoproject.org/show_bug.cgi?id=9400.  This is a CVE bug
that should be fixed in all supported branches, and indeed Sona has sent
patches for Fido/Dizzy/Jethro/master.  Of course now we've got to track
where these patches are in the submission process and ensure that we don't
drop any of these, but bugzilla only has a single target milestone for each
bug.

I propose that for bugs such as this we file a bug report for master and
then clone it (there's a Clone This Bug button at the bottom) for each
stable release that is affected.  Then each bug can have it's own target
milestone set and we can be sure that the patches don't get left out of
being merged and that QA can effectively verify each branch.

Any objection or feedback? (the first person to suggest moving to Jira gets
to manually review all CVEs from CVE-1999-0001 onwards are fixed in
krogoth).

Ross

--089e01183a4c274bd50530bfcc30
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>At the moment we don&#39;t really h=
ave a policy for oe-core bugs in <a href=3D"http://bugzilla.yoctoproject.or=
g">bugzilla.yoctoproject.org</a> that apply to multiple releases, for examp=
le=C2=A0<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9400=
">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9400</a>.=C2=A0 This =
is a CVE bug that should be fixed in all supported branches, and indeed Son=
a has sent patches for Fido/Dizzy/Jethro/master.=C2=A0 Of course now we&#39=
;ve got to track where these patches are in the submission process and ensu=
re that we don&#39;t drop any of these, but bugzilla only has a single targ=
et milestone for each bug.</div><div><br></div><div>I propose that for bugs=
 such as this we file a bug report for master and then clone it (there&#39;=
s a Clone This Bug button at the bottom) for each stable release that is af=
fected.=C2=A0 Then each bug can have it&#39;s own target milestone set and =
we can be sure that the patches don&#39;t get left out of being merged and =
that QA can effectively verify each branch.</div><div><br></div><div>Any ob=
jection or feedback? (the first person to suggest moving to Jira gets to ma=
nually review all CVEs from CVE-1999-0001 onwards are fixed in krogoth).</d=
iv><div><br></div><div>Ross</div></div>

--089e01183a4c274bd50530bfcc30--
