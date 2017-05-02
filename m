Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F16C1E009A0; Tue,  2 May 2017 10:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f194.google.com (mail-yw0-f194.google.com
	[209.85.161.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A57CE00852
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 10:23:09 -0700 (PDT)
Received: by mail-yw0-f194.google.com with SMTP id k11so12308860ywb.2
	for <yocto@yoctoproject.org>; Tue, 02 May 2017 10:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yOC4Tyhwgx4BSKMLXhj3baYXAGKGb+mZczE32/l4sWU=;
	b=fkGJE7Y8fGITB03FD1NrK917L+P92OAXN2pJNUEWq4PFEEtbcUUaOpOB5Si+xFsSNK
	CfeTdFDcOz4mgmtPwD+JyIlRYr3cWIGGxuvKx6S2v+440fASkfyiaqPl8cjlx1+E02c4
	kGD+pU4LI3nRkibphdQyS6W4jL85GhVllCWq3unU4V4m+hZnVlsJVoi9wouDtx7MwlvK
	V6HEsEDMZ8Kw6fCPwP0om3JvqAWl+SGcA1r0wiYBh67NW1K6tUiRcnIHNUkajOFzbmv7
	q5EFjvjKrKd0Fb+jOuWfpYZnHJa4tEvix4dc9SH5qm6r6Wk8RnV97C3i6zfOiK2cx0P6
	/grA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yOC4Tyhwgx4BSKMLXhj3baYXAGKGb+mZczE32/l4sWU=;
	b=CNIyx4vd/iO/dSPqldxs/D1EHxJR3Prlqkt1qj5Jsg4zNO8cUVisj4DHPJU/3jEY45
	A/uGAU2GOuuWfq55cAdZmLsuKvYDg6CKeiytYGUcvdwL56p1ccASNJIhE5DhjgDNYqZi
	yl3r4jQaE5WjCh2A5riLTIeP4doAQj82FPOzHEybfZQS01XCUlV+lk/z8FRMnZ5YIYjk
	ByffdJlO4csbw0orHlGO8NS6nohpT9ERIZmllE71z9+I0P3h1G/iPYrJlz0KB0p7SPUM
	q5C+8AVjTHX4VslGb2PizVHrYI/5v8qEcQJFh9WDp+vr29W2Ox+dSA9PbrkIHg3Ght2D
	2ngQ==
X-Gm-Message-State: AN3rC/6UrMGgRGEAgZtZSUR9miuXDvN6olr0L7+yv0OERekuKkjGN6ue
	P2K3an24/BlZn73lGUDGhTpmKnhAOQ==
X-Received: by 10.129.69.13 with SMTP id s13mr28362492ywa.46.1493745788952;
	Tue, 02 May 2017 10:23:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.52.79 with HTTP; Tue, 2 May 2017 10:23:08 -0700 (PDT)
In-Reply-To: <14EB1FFCA0C8D24A8B04EDEC1EA78C2458A8CB02@XSJ-PSEXMBX01.xlnx.xilinx.com>
References: <CAFL6qn5czUYrKRLPxhZbj7EEAgMu_dFr89WNsDBaYxVWKppM_w@mail.gmail.com>
	<b383700f-54c5-7ff1-92a7-89916c413f1a@gmail.com>
	<14EB1FFCA0C8D24A8B04EDEC1EA78C2458A8CB02@XSJ-PSEXMBX01.xlnx.xilinx.com>
From: Nathan Rossi <nathan@nathanrossi.com>
Date: Wed, 3 May 2017 03:23:08 +1000
Message-ID: <CA+aJhH0VpaJsXyBMMN5XYVmOAu0BsUk87ep-WdC8bmiSBJ_A3g@mail.gmail.com>
To: Manjukumar Harthikote Matha <manjukumar.harthikote-matha@xilinx.com>
Cc: "meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>,
	Pello Heriz <pello.heriz@alumni.mondragon.edu>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>,
	Jason Wu <jason.wu.misc@gmail.com>, "meta-xilinx-request@yoctoproject.org"
	<meta-xilinx-request@yoctoproject.org>
Subject: Re: [meta-xilinx] xen-image-minimal testing
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
X-List-Received-Date: Tue, 02 May 2017 17:23:12 -0000
Content-Type: text/plain; charset=UTF-8

On 3 May 2017 at 02:47, Manjukumar Harthikote Matha
<manjukumar.harthikote-matha@xilinx.com> wrote:
>
>
>> -----Original Message-----
>> From: meta-xilinx-bounces@yoctoproject.org [mailto:meta-xilinx-
>> bounces@yoctoproject.org] On Behalf Of Jason Wu
>> Sent: Tuesday, May 02, 2017 2:16 AM
>> To: Pello Heriz <pello.heriz@alumni.mondragon.edu>; meta-
>> xilinx@yoctoproject.org; meta-xilinx-request@yoctoproject.org; meta-
>> virtualization@yoctoproject.org; yocto@yoctoproject.org
>> Subject: Re: [meta-xilinx] xen-image-minimal testing
>>
>>
>>
>> On 2/05/2017 4:33 PM, Pello Heriz wrote:
>> > Hi all,
>> >
>> > I have built an image using "xen-image-minimal" command with Yocto and
>> > I would want to know how can I test if xen functionalities are correct
>> > or not with Zynq MPSoC QEMU. How can I do this?
>> http://www.wiki.xilinx.com/Building+the+Xen+Hypervisor+with+PetaLinux+2016.4+
>> and+newer
>>
>> have look at the "TFTP Booting Xen and Dom0 2016.4" section and hope that helps.
>>
>> >
>> > Anyway, I have seen that sometimes in the QEMU terminal appears the
>> > next message when the mentioned image is launched by "runqemu zcu102".
>> >
>> > INIT: Id "X0" respawning too fast: disabled for 5 minutes
>> >
>> > What's the meaning of the message? Is it critical?
>> It is not critical if you don't need it. The reason you are getting this error message is
>> because the your inittab trying spawn a console when the device node (e.g. hvc0) for
>> Id "X0" does not exists.
>>
>
> Is there a way to stop inittab from doing this?
> Tried few options for initiab, for ex: using "once" instead of "spawn"
>
> Any other good ideas on how we can disable it? Or what is a better approach to resolve this issue during runtime

Change the sysvinit-inittab bbappend in meta-virtualization use
start_getty instead of just getty, start_getty does a 'test -c' before
starting getty on the device. This is how sysvinit-inittab handles
SERIAL_CONSOLES. Alternatively the meta-virtualization bbappend could
just expand SERIAL_CONSOLES.

Regards,
Nathan

