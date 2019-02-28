Return-Path: <jean-christian.derivaz@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42856E00CEE; Thu, 28 Feb 2019 07:30:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60867E00CCE
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 07:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vb34UtIaNI+uA2IY2i/WSZUsIRM5JjG8CdRedeEukeM=;
	b=R2WUEcLML5vWL8DGKnkFrGLPC6
	EOIVccPRlf66daEqVrt2LUlIkRu3/rBK2xUDzSbYreS8iduwlZxmf8tKQ7cGE0TOQbbfHCT7phBjX
	M4Pfd1YVmoamcxLO7rblOq6zocLORcJdQUwUg1/Hzv8gL0L84iohYpBTuGl/myPu9D3i0/CM1SKYX
	JMYYTzqKiVVuNpv7Mszm+8aXjodr5/efVIlUhM6w0ZteU22vv8MLmMenOfjsPHAYe6HWOQnDROM8f
	T9MwK1Vuh8AYDy7U0+Rd1GRn8fc8HIrfYFZXLxRyXIWphxFsdrcu28XqK+IQb7wyLwP1lrgqSDzYu
	lzZ3JWqA==;
Received: from [213.221.150.139] (port=35714 helo=[10.0.33.10])
	by europa.tizoo.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <jean-christian.derivaz@innodelec.ch>)
	id 1gzNdc-009QuU-4H; Thu, 28 Feb 2019 16:30:22 +0100
To: Adrian Bunk <bunk@stusta.de>, "Burton, Ross" <ross.burton@intel.com>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
	<20190227235448.GJ12046@bill-the-cat>
	<CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
	<20190228051945.GB11051@localhost>
From: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Message-ID: <d8dcff54-279d-987b-60ce-b8836a69eb02@innodelec.ch>
Date: Thu, 28 Feb 2019 16:30:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190228051945.GB11051@localhost>
X-OutGoing-Spam-Status: No, score=-1.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
Cc: Tom Rini <trini@konsulko.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Thu, 28 Feb 2019 15:30:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Le 28.02.19 à 06:19, Adrian Bunk a écrit :
> On Wed, Feb 27, 2019 at 11:59:42PM +0000, Burton, Ross wrote:
>> ...
>> Also swap vim for something in core obviously.
> It is not obvious how to do that.
>
> What other vi implementation is in core?
> Is there even any good non-busybox non-GUI editor in core?
> Replacing busybox vi with ed would be a bad fit for the
> stated usecases.
>
> There has to be some vi implementation installed,
> and the "desktop command" implementation is vim.

I have see numbers of users trying nano before falling back to vim or
vi. The nano editor is standard on Debian and Ubuntu making a lot of
users expecting it more intuitive interface.

Jean-Christian


