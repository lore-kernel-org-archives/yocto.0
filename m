Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2335E00826; Tue, 28 Feb 2017 14:17:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89A65E004D2
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 14:17:25 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id 68so4035436itg.0
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 14:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=hCQIKxzjJOXW9ceAc3pT5VwKNygSZXVhEzGVcVpqVAA=;
	b=wrmf2hQ7TWgn19AlMI6IgfzmXfR7rVL87WCW0KHsfZ+t9xaCC53P8VIVd2CPkd+dYe
	bYsrlEG6CqD8qh4Fq05mvwajOjgfUQIEIRMxneUmB5MjuoZ143G8CH/AxaAL0n3C2Uq3
	WVLORkiMGWziIIyHO5moJ87K2nHbjpye7INaEwrtUBl+qDkHka529+hzXVq95twyi8ty
	MC3aeAx6VBsTe5StbuLLmvMWKd/Ua7D1N++zC+QzcUPv+tiMpl7upn9/ttM9VZUkcqky
	gYeiGHwJC2jtCJd1x5KeTOhZz4UqURM2QDjpu8c2GV319zcuI6QAnoAHbcSh246cdRRV
	lxFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=hCQIKxzjJOXW9ceAc3pT5VwKNygSZXVhEzGVcVpqVAA=;
	b=Er+MKeAy2fLaaZjlXI02fYerGGhYQqim2fPCDoUZlYAe6kA2keWOBJjzjlD570FGG0
	iEwNQBLGomWhSxAAf0/Pdy/n7S18EKo9MkxjB5B4Xqd5eIoXsZmADoQE2EouWSYZgvS8
	k0CZ3P2nnCDyETmsfErK8sG9cloDMrLbalOK/XvUxhzoa3k4+pDIa0uxeOPSiFxI2xO+
	QwO8tex0tI/OmEHYfwT18LE1QdvmvoFbQ6AoOZNfd/oRYoACShTSQDNoU02zPzY6ZO3g
	VWV2h+QlEE6VRXz6EmyPc+tzN57c3q34rX1Gj7v4Ha/KoDm5FSycvfC3by7BqdWAKDIp
	kUxg==
X-Gm-Message-State: AMke39nklMQsDiqOwPpHL3BL7XMa83SnzXapGjLsLzYwB+ICFkc+PbqnmCPUVQdZXlHKmUas
X-Received: by 10.36.228.3 with SMTP id o3mr1038077ith.95.1488320245048;
	Tue, 28 Feb 2017 14:17:25 -0800 (PST)
Received: from pohly-mobl1 (p5DE8D654.dip0.t-ipconnect.de. [93.232.214.84])
	by smtp.gmail.com with ESMTPSA id
	r85sm1339952itc.13.2017.02.28.14.17.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 28 Feb 2017 14:17:24 -0800 (PST)
Message-ID: <1488320241.7785.79.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Tue, 28 Feb 2017 23:17:21 +0100
In-Reply-To: <58B5DE85.3010502@linux.intel.com>
References: <1487625169-22282-1-git-send-email-anibal.limon@linux.intel.com>
	<1488312568.7785.73.camel@intel.com> <58B5DE85.3010502@linux.intel.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCHv2] yocto-compat-layer.py: Add script to YP Compatible Layer validation
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
X-List-Received-Date: Tue, 28 Feb 2017 22:17:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-02-28 at 14:33 -0600, Aníbal Limón wrote:
> 
> On 02/28/2017 02:09 PM, Patrick Ohly wrote:
> > On Mon, 2017-02-20 at 15:12 -0600, Aníbal Limón wrote:
> >> common.test_signatures: Test executed in BSP and DISTRO layers to review
> >>     doesn't comes with recipes that changes the signatures.
> > 
> > I have a question about the goal for this test: is it meant to detect
> > layers which incorrectly change the signatures of allarch recipes or
> > recipes which share the same tune flags with other machines?
> 
> The requirement is DISTRO and BSP layers aren't allowed to automatically
> change the MACHINE or DISTRO variable that causes the signatures to change.

I do not fully understand this explanation. Can you give an example for
the kind of misbehavior what the test is meant to catch?

> > Let's take MACHINE=edison as an example.
> > 
> > Modifying allarch creates a conflict with basically all other machines
> > in a distro. Example for something not allowed:
> > VOLATILE_BINDS_append_pn-volatile-binds_edison = " /var/volatile/foo /var/foo \n"
> > 
> > This can be detected by comparing against OE-core, but only when testing
> > with MACHINE=edison.
> > 
> > More difficult to detect is modifying recipes with the same tune flags,
> > which is the majority of the recipes. MACHINE=edison and
> > MACHINE=intel-core2-32 both compile for the same target architecture, so
> > something like this is incorrect:
> > do_install_append_pn-base-files_edison () {
> >     echo "Built for Edison" >>${D}${sysconfdir}/motd
> > }
> > 
> > This can only be detected when testing with both MACHINE=edison and
> > MACHINE=intel-core2-32 - at least I think MACHINE=qemux86 uses different
> > tune flags (haven't checked).
> > 
> > My point is, the test probably needs to be extended to run with a set of
> > machines, and that set of machines must be broad enough to cover a
> > variety of common tune flags.
> 
> It is expected to change recipe signatures when the machine change, this
> leaves me other question. what signatures are expected to change when
> set a different MACHINE?

Everything that is machine-specific may change, for example image
recipes and kernel (although even that is a slight simplification, as
meta-intel intentionally shares kernels between different MACHINE
configs).

The real-world test is: can two BSP layers be combined in a single
distro so that one can build first for one MACHINE, then the other (or,
when using multiconfig, even in a single build)?  If any shared package
changes as result of changing the MACHINE, then that won't work.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




