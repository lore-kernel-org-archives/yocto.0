Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C9F3E00E1D; Fri, 21 Oct 2016 08:08:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24B10E00B93
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 08:08:13 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id e6so58336229pfk.3
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 08:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=zBqouvHfBywuz31Yk/rhdGyoPZ73gNc5pAFUam6BOG0=;
	b=eppfKWOClMYPCXzRFVVTr7xUNBVMWuftmeEmOeDampz/xhgp1Gr4xt5eI0sltzXlmG
	ChyZjTo+WMLIL6/33Y7t9sHVmsShnr/btN9oRySowrshGhYcx+sGHH7sdTOJkvFCglu7
	5gVyORK7MQwcHUrSJe5oC6WTp3e5U0w0nIPly3aQQJRsL03XZJjGBm1dRiWpAsFpAabt
	XkK2oISGqVr9bwjIh2cEeU0LClwc3DNVWWbJKUfDEwz7T2a9PCRL0w23NwwzScyxWksZ
	m6B953kPA2hJBideXv1b6w9fjgAN/KAgOq/gVedo5bInQ9NHWg4gsn/Gq3y0KldzoV5I
	oUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=zBqouvHfBywuz31Yk/rhdGyoPZ73gNc5pAFUam6BOG0=;
	b=CkB0YAq2ZMYT3/Ku0AqKBHWs5KcBtwtrI5FVF24Dn31VHHoB61TYawTNwTKRLdNXse
	zZrt4mqDEBIAIj8X3LTE31fOTTY10i9rEpkVY8Tik2ZJeUpjT46zqoaafn64lxz3yCCp
	d4WkSmQ3Xs75L7b1me+hD5NvBC/5DwrIEERNeHZnIBq4kkNEACIudhAZaV34XvwU9sg/
	QOPpiwkEYmwtWc1TQoFbqlqHIRBvvL4+/V0IFv32KfaZeCHeTPh7pILbhboddZP2JsJL
	kjn4cBKWxwSXOtCIdpr3Lqi1i8lFnEukpO5zI08S2dQYXkWYzfLVg9b/7azhcSrBSijv
	3PfA==
X-Gm-Message-State: ABUngvfzpxsp7PP/g/Z8T154i5rrjw6cVvBMFjah9q8wjfPhMw3TAsqvYb2G/LqDJUDpxKcx
X-Received: by 10.98.217.135 with SMTP id b7mr2491190pfl.103.1477062493093;
	Fri, 21 Oct 2016 08:08:13 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:95c6:4f09:f950:8f9?
	([2601:202:4001:9ea0:95c6:4f09:f950:8f9])
	by smtp.gmail.com with ESMTPSA id q12sm5995273pfd.7.2016.10.21.08.08.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Oct 2016 08:08:12 -0700 (PDT)
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
References: <03b5e98b-0724-daa2-8f78-ab4624f52752@linux.intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <62045b91-79db-cc5e-c372-70041b7fcdaa@mvista.com>
Date: Fri, 21 Oct 2016 08:08:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <03b5e98b-0724-daa2-8f78-ab4624f52752@linux.intel.com>
Subject: Re: Attention all: patches for upstream source will be applied with stricter criteria for context
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
X-List-Received-Date: Fri, 21 Oct 2016 15:08:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/21/2016 05:55 AM, Alexander Kanavin wrote:
> Hello all,
>
> while updating gnutls to a newer version I came across a rather 
> serious issue: the way we patch source code is very lenient about the 
> context for the lines to be changed. Basically, it's enough for one 
> line before and after the changed line to match, because patch 
> command's default setting for 'fuzz factor' allows it. If these lines 
> happen to be whitespace or braces, then there's nothing to prevent the 
> patch from being applied incorrectly.
>
> Here's a particularly nasty example of this happening completely 
> silently (compile step works fine too), with security implications:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=10450
>
> I think this absolutely needs to be fixed. 

Is there a target milestone for this change?

> The downside is that this will break a lot of patches across all 
> layers - after setting the fuzz to zero in oe-core we have 87 recipes 
> that fail to be patched. Maxin and I are currently going through them 
> one by one and getting them fixed.

Is this going to impact the 2.2 release?

- armin
>
> Regards,
> Alex


