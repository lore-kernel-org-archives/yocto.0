Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0708AE00E82; Mon, 18 Apr 2016 08:48:54 -0700 (PDT)
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
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B4EE00C44
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 08:48:50 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id r5so23884974pag.1
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 08:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=43617qBWh7mm4SbCDnwWU+RHmUNzAYX8Kf5t0HpyJ6U=;
	b=LcHaacOacgODbHSWU8k671MAXMZjxJyfOXDEc9Oxij0IKDTkrDc89nC+sVHY7FDhJi
	QwcWPyl3DHR3USzbpC/DUiukyGmhLm3PkiIRLWVWgdlZJEt2tIWIz+rqIdfgzuJplkts
	DEX0OE5MW+LgyjCBCBmFirg7uOq5fbgouDbcYR+wCPP3pHXXbrV6VMZL2TX9ZTC8PYxY
	ZsMQMkHbf+b9YlbuprQxGNb1VD461ComjEktXs42HEs37JMrJfRDJXMQdQptRCelX3DF
	IxKHh1s+VOEnOqvdY2ZW7Mn/cIswedfs+R/qFux/G4NVThm3ScMs3ovJ9Vfo0k+Bc5FR
	HRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=43617qBWh7mm4SbCDnwWU+RHmUNzAYX8Kf5t0HpyJ6U=;
	b=Gmyx40RteUdF9p7WoDIonBXHuqtW45CsOE9o8Jq7cE91IgR6nc8SDEhxC4N1Y4WL/F
	Njlpw5ESU9htRPZqsPxMOuw1r+UnRH2XFxaARPNyiafWOcAoDpm7/Swjuhb+RdacdOBe
	yxUfR7XcmXuIvxgU9lcY3FtjsRCeeSqM0Y2WfN+ew+XT27Ei4IpQqBJrnFf184BokTA4
	QoDG7e0fADOjJsRBc4UXrYLkW3ESOt4JrhDBrtnWan/zFkQvxqQGaRbp/T5tuUPRa0T2
	1Wek/FC9tJG+tQ/schyTFTUyUSJ1xnecp/YF0joOEj/9/bjjxQUGizRRkcVGx40Ov5rF
	63Uw==
X-Gm-Message-State: AOPr4FVeXoChXpndjPv0x9ODh/uRXeXuzhwc8575JE29lpVVK9KIf+qy0Oa9GFSINs+VZUom
X-Received: by 10.66.250.132 with SMTP id zc4mr11467281pac.130.1460994530081; 
	Mon, 18 Apr 2016 08:48:50 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:f4af:f2ab:48ea:e88?
	([2601:202:4000:1239:f4af:f2ab:48ea:e88])
	by smtp.googlemail.com with ESMTPSA id
	n74sm84713607pfa.45.2016.04.18.08.48.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 18 Apr 2016 08:48:48 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
References: <CAJTo0LZtDL-hbxXmYWdgf7HTZtSA4D2FgRKtx1+n6Rqxq50n=g@mail.gmail.com>
From: akuster <akuster@mvista.com>
Message-ID: <571501D3.5050706@mvista.com>
Date: Mon, 18 Apr 2016 08:48:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZtDL-hbxXmYWdgf7HTZtSA4D2FgRKtx1+n6Rqxq50n=g@mail.gmail.com>
Subject: Re: bugzilla.yoctoproject.org policy for bugs against multiple releases
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
X-List-Received-Date: Mon, 18 Apr 2016 15:48:54 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 04/18/2016 03:26 AM, Burton, Ross wrote:
> Hi,
> 
> At the moment we don't really have a policy for oe-core bugs in
> bugzilla.yoctoproject.org that apply to multiple releases, for example
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9400.  This is a CVE bug
> that should be fixed in all supported branches, and indeed Sona has sent
> patches for Fido/Dizzy/Jethro/master.  Of course now we've got to track
> where these patches are in the submission process and ensure that we don't
> drop any of these, 

If the worry is about patches being left out than every change requires
a bug number and needs to be managed to ensure a clone is created for
any branch affected by the fix.

but bugzilla only has a single target milestone for each
> bug.
> 
> I propose that for bugs such as this
 we file a bug report for master and
> then clone it (there's a Clone This Bug button at the bottom) for each
> stable release that is affected.

This also means maintainers who cherry-pick fixes from another branch
would have to amend the commit to change the bug number. Do we really
want to add to the workload of the maintainers?

  Then each bug can have it's own target
> milestone set and we can be sure that the patches don't get left out of
> being merged and that QA can effectively verify each branch.
> 
> Any objection or feedback? 

This is why I stopped opening Yocto Bugs. I would rather spend my time
fixing things than managing them.

- Armin

(the first person to suggest moving to Jira gets
> to manually review all CVEs from CVE-1999-0001 onwards are fixed in
> krogoth).

> 
> Ross
> 
> 
> 

