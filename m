Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E16C9E00C6A; Fri,  1 Jun 2018 04:56:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40F44E00C5B
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 04:56:21 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id f79-v6so8307934oib.7
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 04:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NhXhKQ547gLft6NDBMvpxn0vY5VLl4scGTEvK/mzxT8=;
	b=MgCcpJf/xZaz1RVRWCPe9yI7uJfoXYjLu37xTqPiPWSGPNrNdnzZmJnd5euvs8dDqx
	fTbarT8mALRg7GsbHcHCL8kKb6dHF/H08h8ChXVQlakkyijrjzYqNu5BCwgBslQs/+9c
	hCITIjBFoSezxzMHVVOer/kQgQ//b4FMy0c1gl5wdd5kVLdRN+DVSZqNUw99aTZOluzg
	9IBbR1zHxGqmOgwN3D7p6Mo+BALsjjcYYysD8ubYELLbBS9kApOnpzT0Smn/KjSUeLTi
	tI6r/LinJNQSCShXN/GQqJwQIIML/+F8JywoYSc2CiQ+oPkyYmNBWy6BVC0DHHOE3Ncg
	+L6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NhXhKQ547gLft6NDBMvpxn0vY5VLl4scGTEvK/mzxT8=;
	b=PA7U43MFLbwzScOov0HxGFLPL5FvTdAeulqUFQM0XtiimQ4vYEqge3gALK6oK5Wjal
	52PuDEM94HVZTxLIkYJlWD7hTYRO8evjvOUTnlooEgxr+VDTujkZKLsszo6/sTzzShft
	oT6nlc+V7Ri2o7bsk8RAL9wx04qk8/Iy4HHXVcik+EN2GpOGw9bOCJq/OqlGEuW9Lf0d
	eQBDvkFAH4Rhe1hqWb0ZBe4IP/zkisiA1IVTSystyOCZEPZAkPk2orut8Zt/IoigIT+v
	TbGgX4vwVPsibkZqh3BxxlQPqaZgQq4Hu4HpxhJKJcJib2fpb7mJrVCikuwy63+/Qn5B
	opig==
X-Gm-Message-State: ALKqPwf6hYIs7Slb6rw83y1uRxt2WcVrKnIcdci3YFpPEa6w18f+VrNG
	xBFS26ay2ZMpJsc5tB2yJoY+6SWXp+Vjx8iP6A7ymw==
X-Google-Smtp-Source: ADUXVKLirdH7WIRXIIkyCODlpYT6OASxcDqmev3NTA0Kjez/jCEpX77K8ETJkEZNBLSC4j6n0NRMdJIgxV9s9BSrOBY=
X-Received: by 2002:aca:ef08:: with SMTP id
	n8-v6mr6285933oih.329.1527854181422; 
	Fri, 01 Jun 2018 04:56:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1a99:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 04:56:20 -0700 (PDT)
In-Reply-To: <CANNYZj-Haidas8Y4f_Wqyf-yYfhRjLe1UFT-HfOt-jxY=kNunA@mail.gmail.com>
References: <CAOT_U5b9-3yK1PRieqixN86pXSPeTdDfzca42vS2ZndXTb6_Fw@mail.gmail.com>
	<CANNYZj-Haidas8Y4f_Wqyf-yYfhRjLe1UFT-HfOt-jxY=kNunA@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 1 Jun 2018 13:56:20 +0200
Message-ID: <CAOT_U5ZS1gvRzqyrstEeWfepDGKR1gaxzHv3Hz-iRk6evhMazA@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: wic appending ".1" to a file name on multiple images build
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
X-List-Received-Date: Fri, 01 Jun 2018 11:56:22 -0000
Content-Type: text/plain; charset="UTF-8"

Yeah, a deep dive it is then. :)

Am just trying to print from the code using the Python debugger (as
used in the source file).
    self._log.debug("Print this")

but it's not printing anything even when running bitbake with -DDDvvv

On Fri, Jun 1, 2018 at 12:52 PM, Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
> 2018-06-01 13:38 GMT+03:00 Alan Martinovic <alan.martinovic@senic.com>:
>> Building them at the same time causes an issue:
>>
>> Traceback (most recent call lastd):
>>   File "/home/alan/workspace/senic-os-dev/oe/scripts/lib/wic/filemap.py",
>> line 120, in _open_image_file
>>      self._f_image = open(self._image_path, 'rb')
>>   FileNotFoundError: [Errno 2] No such file or directory:
>> '/home/alan/workspace/senic-os-dev/build/tmp-glibc/deploy/images/senic-hub/u-boot-sunxi-with-spl.bin.1'
>>
>>
>> The cause of the issue seems to be that `wic create`,
>> even though it gets the correct file path through the
>> wks file ("u-boot-sunxi-with-spl.bin")
>> somewhere in the execution of wic create that
>> fiile gets renamed (to "u-boot-sunxi-with-spl.bin.1")
>> and results in an above issue.
>>
>> This only happens when the images are built in parallel,
>> running each separately gives no errors.
>>
>> Am open for suggestions on how to approach this. :)
>
> By applying code archaeology skills obviously, which are a must-have
> for anyone involved in Yocto :)
>
> Specifically here: where and how is self._image_path set? What are the
> places in code that call into the path setter? Where do they get the
> image name from? Does any of them manipulate the name and/or rename
> the file and why?
> Should the name include the image name to avoid such clashes and
> races? And so on. :)
>
> Alex

