Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B89F8E0070C
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 02:19:04 -0700 (PDT)
Received: from mail-qa0-f50.google.com ([209.85.216.50])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 20 Jun 2012 02:19:04 -0700
Received: by qafl39 with SMTP id l39so186415qaf.2
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 02:19:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=HQTYM/9s36iRi+fKESZr6IQp0gGfDYsEQppcCwmgdQ0=;
	b=QTm83P1MQfxUzfvap6FEe6Ybc6BCaV6TfGN+k8gHWQAZkvZUfR9uRpLuGw4r9U6Qeg
	MR/YqZ7DnwTpStnQDgkuNazmAS+YKgC2khXoaNTd1z8kuAfVQcUG5IulG5vxuvcIUf0N
	q5ZIvoEPkpGM2PFdj6KgcYepJtd7EDwpkJPOK9kRxkV3D84cZMn2aJbQSc0BjW9HiH8E
	cFJImPg54RfpExAxlTLaaCEbC9yNfLxJXB71X0VkUz7GBsHBGSjX9dc4NQJ567NVMoS6
	A1rHV6LqGQ0WRHqf+kPz46z0MgGLkw/k8b+ln+0uNFzCqpU1BbO4Kv48s/ge9QFmz+Ow
	jcHA==
Received: by 10.224.201.136 with SMTP id fa8mr39329735qab.20.1340183942916;
	Wed, 20 Jun 2012 02:19:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.251.142 with HTTP; Wed, 20 Jun 2012 02:18:42 -0700 (PDT)
In-Reply-To: <4FE109C4.1010906@linux.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1914D426@IRSMSX102.ger.corp.intel.com>
	<4FE109C4.1010906@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Jun 2012 10:18:42 +0100
Message-ID: <CAJTo0Lb3kD-LsZkAbgqkgN82E2wN61C5yEZBDu80D3VA1jzf5g@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmvJWEOlsCGAqR8CBWqXJ0pMlDrh56yMVBrA5vCzVry5OF1hmQ7yMqcbGWacssYlLCErlY+
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: VERIFIED vs CLOSED in yocto bugzilla
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
X-List-Received-Date: Wed, 20 Jun 2012 09:19:04 -0000
Content-Type: text/plain; charset=UTF-8

On 20 June 2012 00:22, Darren Hart <dvhart@linux.intel.com> wrote:
> What is the reasoning driving this change? What does CLOSED indicate
> that VERIFIED does not already convey?

Agreed -- hiding CLOSED would be my proposal as it doesn't add any
meaning, just complicates the lifecycle.

Ross

