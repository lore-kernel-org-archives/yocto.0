Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42778E00C75; Wed, 21 Mar 2018 08:35:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F39FE00903
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:35:11 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id l4-v6so4178052lfg.12
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8DoGo9jHBlVngY7Gp5fRNqlDMdz8b0U9G4NQtCx//f0=;
	b=sLXE7Ab2diLBXgzKZyREKiJP9v3Qza9X5r1REm3KJmJtoAi+itdOBCi69BJDzFWLH4
	H5qr1tUMcomL2c5V8iniupm1fnRHxtTw2FVvvezfB9TtjrDzTQhn7PskN3WMQpx1rpGm
	VNkr4XSDVPF4U7cXGbdK0tgWClYnHttVxb0DgCk6X1LShqQQydUlI4E7C9juoXak6niE
	7B+YBXOHSFxbXkHitDslHPDZw/F7THQn0U0Abg6sZTHp25qdGwu0rqwbm1KLbazyzNMt
	htDiF7gFjqL652A/yCJhdXwoyDmBT5JMNeOufNdulWdqcuWA5LPJsj1WjwyRIz0v65WZ
	CVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8DoGo9jHBlVngY7Gp5fRNqlDMdz8b0U9G4NQtCx//f0=;
	b=VYESQHR0a4HPsVi5hyiFlOsL5c6Kmygl9e3i4EnNt09xGiThbzPv+KwEInKGYAGSny
	DlePUmLRjvWJYKi8D8XYjLq1wMUErsDwzuO428uKET7wXaEDoxLv+InXT4Gbwjuc8wAg
	u2NrjreuPdfLi8S2qjWODlwM2pnWixY6puLbehvLO+xGrJu8hm/wuF9zmOCkA/qXAbBH
	4g4DXVYGIjUbE0ONBuoOBw4MxFvgTWOf9IyxDI3WN30kjS9WDQWt1A/20bqpVGaXIKNQ
	NWrz3335qBSmnHFAA2ThZ63NI3jktAXinD9NWZDt8qWu1G7pUd7SOcIZUnvrZU0DlUM7
	gp1A==
X-Gm-Message-State: AElRT7E0CKWdIL3iIK+6EFw4eJl0HqKKUw1rDoPISFFuKwp2ejna6nO1
	jSQCd608V3tDSqNMIawcwWgzIhp2+98UiqxLb2k0GQ==
X-Google-Smtp-Source: AG47ELtIKbRBQXf/I6s0T2x/2RrMl9+nIxA02K5qIzLJ8Q2wPJmtwQ4FIBZSR+9LMEKFuZM053f4iaMMP9nPJgI4oTg=
X-Received: by 10.46.29.140 with SMTP id w12mr9547245lje.108.1521646510953;
	Wed, 21 Mar 2018 08:35:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1f0f:0:0:0:0:0 with HTTP; Wed, 21 Mar 2018 08:35:10
	-0700 (PDT)
In-Reply-To: <CAJTo0LYrM=Amzk731zxmpx5wqaKCiRnA5NQ74nC=y3WSa2BN1Q@mail.gmail.com>
References: <CAOT_U5Y+GLS1VU_hJs0fi1_Z0xDcL5eYMAzpgknD1aJ-GbKwiQ@mail.gmail.com>
	<CAJTo0LYrM=Amzk731zxmpx5wqaKCiRnA5NQ74nC=y3WSa2BN1Q@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 21 Mar 2018 16:35:10 +0100
Message-ID: <CAOT_U5bzcqTXOd43+redZi+1UWN7rW2fZuSeqkpSvLamDWy8_g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Building BlueZ from git in Yocto
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
X-List-Received-Date: Wed, 21 Mar 2018 15:35:13 -0000
Content-Type: text/plain; charset="UTF-8"

Hey Ross, thanks for the clarification.

The issues reoccurred because I modified the recipe not to include any patches,
falsely assuming that all of them were BlueZ backports and none is actually
a Yocto specific change.

On Wed, Mar 21, 2018 at 4:23 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 21 March 2018 at 15:15, Alan Martinovic <alan.martinovic@senic.com>
> wrote:
>>
>>
>> Building it with Yocto results in the mentioned error:
>>
>> | ../git/src/genbuiltin hostname wiimote autopair policy   a2dp avrcp
>> network input hog  gap scanparam deviceinfo  battery > src/builtin.h
>> | ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp irmc pbap mas
>> mns > obexd/src/builtin.h
>> | /bin/bash: obexd/src/builtin.h: No such file or directory
>> | Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
>> | make: *** [obexd/src/builtin.h] Error 1
>> | make: *** Waiting for unfinished jobs....
>> | ERROR: oe_runmake failed
>> | WARNING: exit code 1 from a shell command.
>>
>>
>> It seems that for some reason in Yocto, make can't redirect into
>> `obexd/src/builtin.h` while
>> it does so successfully for native build.
>
>
> Yocto will be doing an out-of-tree build with high parallelism, neither of
> which you are likely doing yourself.
>
> The hint is "no such file or directory" for a file it is writing *to*.  This
> means the parent doesn't exist, in this case obexd/src/.
>
> This is a typical race in out-of-tree and parallel builds, where genbuiltin
> is racing against other commands to create the directory.  The fix is to
> ensure that whatever rule calls genbuiltin actually does a mkdir first.
>
> We have a fix for this already in oe-core:
>
> http://git.openembedded.org/openembedded-core/tree/meta/recipes-connectivity/bluez5/bluez5/out-of-tree.patch
>
> So I imagine you're using an old release of Yocto.  I sent this patch to the
> linux-bluetooth list in April 2016 but it was either moderated away or
> missed.
>
> Ross

