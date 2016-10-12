Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A6C2E00B58; Wed, 12 Oct 2016 04:08:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B07AE009D8
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 04:08:33 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id i202so46548716ioi.2
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 04:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=PSnhI9LLJlcQxP5N1vOTtDyBM1VeVlNClZAAO7p6jsQ=;
	b=AD/U2B605KYRsR8sARkdPe13UwOswX8pleLgLZr3UOPwo5/tJOfB32OQOpgYAuq8/k
	CDUpJBlHgbY8beNzbTOW3hAaDAMIZIKzxoQxolq94n7aoqMnn7EyTmw852bStk28ja7N
	evfrAhKD7x9sMIxH7LhKUj/aPHeqvyXMApBbCXq8BbERSpYUF6FDRsyzfrZnwPnDdbWs
	cEQ7i6y3B9sSI/MjXPmd2NJG4/X+QBK8+IAe5bD+jws5Bnu6w+gzkLZgHmkQo/3osV+z
	jjNnVc4aI0JPKCeg8Yd9HacMZclPnWdzllu6E6l8Sc4oW2E4w20h762pjriOTdPLcA8J
	miwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=PSnhI9LLJlcQxP5N1vOTtDyBM1VeVlNClZAAO7p6jsQ=;
	b=VvmoZ5uGVuCMaoeITEyYyPoL6Ke4xKza4ZkQiJgS4rc2T7SbTrWuRVGpiw0yZOXBnw
	OFcvuGDo42PuzqyWDbzgW1E+TJzKDRVFrs+X1b/BLAY4zI2T/7FxhjW85TYNU8F0wBdB
	KGLdwLyvheBP8XM55LHJznYTnHUhv1K8UjabqxLJMlQXXb4s3CcAGfRXS4xrukQj+bU4
	bGlnQGpbv63GGkjk6yimRw4UxMNiqDMnu/TiBSVKyR6G+3umbh6LUAcgwFgffOw108R/
	wOEq/Afdr7i0t3FSQ/iDQANCLCSseMoHuFfB3jdClgfB/jF+5CEFFDG/of1j01TvaYmg
	Vacg==
X-Gm-Message-State: AA6/9Rl4YBr8LBfxUaWGzG9vsDih9w/1SIiCbwkESSO1e3WicCQGWKFcz1DMiwtinDQilOas
X-Received: by 10.107.171.194 with SMTP id u185mr789813ioe.102.1476270512648; 
	Wed, 12 Oct 2016 04:08:32 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8F005.dip0.t-ipconnect.de. [93.232.240.5])
	by smtp.gmail.com with ESMTPSA id
	u184sm3400836ith.4.2016.10.12.04.08.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Oct 2016 04:08:31 -0700 (PDT)
Message-ID: <1476270509.2992.65.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Date: Wed, 12 Oct 2016 13:08:29 +0200
In-Reply-To: <eadb5311-bebc-97fa-1bdd-e85465a6e19e@vitheia.com>
References: <eadb5311-bebc-97fa-1bdd-e85465a6e19e@vitheia.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: machine specific task
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
X-List-Received-Date: Wed, 12 Oct 2016 11:08:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-10-12 at 12:58 +0300, Mircea Gliga wrote:
> According to the docs here 
> http://www.yoctoproject.org/docs/2.1.1/mega-manual/mega-manual.html#structure-your-layers 
> one can specify variables that are machine specific, eg 
> KERNEL_DEVICETREE_qemuarm = "versatile-pb.dtb". I can't find a reference 
> on how to create a task specific only for a certain machine.
> Is there some mechanism to add and execute a custom task just for a 
> specific machine, using *addtask* ?
> 
> As an alternative, I could check the machine name right in the beginning 
> of the do_mycustomtask function, and execute code accordingly, something 
> like (pseudo-code):
> 
> do_mycustomtask {
>      if {MACHINE} != 'myMachineName'
>          return;
>      # code executing for all other machines
>      [...]
> }
> addtask mycustomtask after do_configure before do_compile

It is possible to add the task conditionally in an anonymous Python
method:

python () {
    if '${MACHINE}' == 'myMachineName':
        bb.build.addtask('do_mycustomtask', 'do_compile', 'do_configure', d)
}

I personally find that nicer than the if check in the function itself,
because the tasks will only show up in build logs when it actually does
something.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




