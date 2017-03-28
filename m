Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6089DE00A51; Tue, 28 Mar 2017 03:00:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.44 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EC8EE00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 03:00:29 -0700 (PDT)
Received: by mail-lf0-f44.google.com with SMTP id x137so35020513lff.3
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 03:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nuMQHDwHeK66EBRRq8PAVLt/b4texM/r4AqmNTwE+P8=;
	b=R66H1o1z1jDOWhNit3y09I1LuXKiPnMdn22RtNjtljFhgmWBFQy/FiS3/GkjaKtXay
	re/d0b7o4s0YPzTLZ+lvKl/ONMJycK7OCS/yNhlIh8FitZpd+ki4cKNcHuHO0OywEfJy
	A6KavvlmOQhKbJecza0jILjoD1ssMnZTToDCxMt3SYqjx4yRz5CKxprs6WqgZ2SFFwCN
	VcQTxZg2Qugewb46HhI0kwA7euUyUjSMdcrKQQ9A+zzUT8d1b2GUC1Lwe8JWsOdGx1OS
	ttxfJCMJR13EddNNBB1DD6qw1rX+bLr9PwbBTe2Loe0tM4sKnpNMuAfWOoEiZ1kWPdkv
	sm2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nuMQHDwHeK66EBRRq8PAVLt/b4texM/r4AqmNTwE+P8=;
	b=OjOX+s9hX/UIAqXef8ftQBOVQSyerBzT3/+BTIjJQPuABeZq7faFTDpeAkHMuD0ClE
	efE3Y/LEePHkCD/WwLFtF5BYj0vkuhlIym3rQqyicuZNGIN/uXXQd7xe9BvvlZNNezOF
	hyBIgUNNpaW4eyUpyfCLLiFul+wWQ2BwZeTS//X7SwHDDzxCQqxqNLmihWsGWGJA5TPq
	zQ9529zjlswlnOD/RWwnynB3cNBLgpzi7snCFr9NRFHZXZFN0YN/8DGzK4SGpSVuvv4Z
	nZBehRzgPkK+LltBHt0l46OTGNjHiWCeW/zxe/Oti5maS0xtCEHGYiZBvtAU7KKwKofT
	kiOA==
X-Gm-Message-State: AFeK/H2cU/DkRUgns5eZAlLKPlIrwlvTZtNqLINtXHgS8++/w9j6dAYXeIG+giR66cJ090x5tniQ3KbfHmcyfw==
X-Received: by 10.28.137.211 with SMTP id l202mr13718845wmd.118.1490695228209; 
	Tue, 28 Mar 2017 03:00:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.163.6 with HTTP; Tue, 28 Mar 2017 03:00:27 -0700 (PDT)
In-Reply-To: <CAJTo0LaCynfLyy99eC0=AN188Amh+xFwsy0ZMSdSSE0Z8ACazQ@mail.gmail.com>
References: <CAJ2oMh+Dj3SZ5Tf8aF3VRhpsboah-4qevGC3v+5q=vpOdQ2V0g@mail.gmail.com>
	<CAJTo0LaCynfLyy99eC0=AN188Amh+xFwsy0ZMSdSSE0Z8ACazQ@mail.gmail.com>
From: Ran Shalit <ranshalit@gmail.com>
Date: Tue, 28 Mar 2017 13:00:27 +0300
Message-ID: <CAJ2oMhJL9e6TX5nY=-xNHvKA2ci4+xXMfc3epaJz9UBtZcOMyQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: package managers
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
X-List-Received-Date: Tue, 28 Mar 2017 10:00:30 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 28, 2017 at 12:21 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 28 March 2017 at 10:09, Ran Shalit <ranshalit@gmail.com> wrote:
>>
>> Is it possible to configure more than one package manager in yocto ?
>> Does it mean it will create install package for both ?
>
>
> This is explained in the documentation:
>
> http://www.yoctoproject.org/docs/2.2.1/ref-manual/ref-manual.html#var-PACKAGE_CLASSES
>
> Ross

Hi,
Thanks a lot for the reference.

It is said: "The build system uses only the first argument in the list
as the package manager when creating your image or SDK. However,
packages will be created using any additional packaging classes you
specify"

I understand from this that in target it will be possible to install a
package, using the other package manager.

Regards,
Ran

