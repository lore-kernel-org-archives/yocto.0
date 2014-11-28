Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4EAAE00970; Fri, 28 Nov 2014 06:40:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D57A9E0082F
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 06:40:31 -0800 (PST)
Received: by mail-wi0-f170.google.com with SMTP id bs8so21042100wib.1
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 06:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=sBoiNuc5MFgxNa9S8lHXi3kj5Q4z5hg3dXLkxqfJoy4=;
	b=FUBDZH3AkbsngyqG58oNJMhJFb1fDhN/Wp94CaBCfrmLMVsRt5OdTfDNKpD6d8WBW8
	xLpv4JA5fXP+QgaTlYPl4Zjzagu0QcWG9QBfeCmN3RUctpmmHbjVGKMUgi6iS+xjVO/g
	rF1vzxfiTVoXHZk+5cRvXr/3raJRLxRPPHCkKSaxSk1pc4Xxgiay6KWigPk18WbnsYY4
	zSnetMHlEFgnsGU5fj7BcYsPyl5c9aSE7VUFLyOO9HPRwYPIiknURPotvAeZ3EFQUeGG
	pINWbqAiIEA837xHBgwBrQbd/enptcmw0xbkiTpJKH79tMHD6DF25Lh5M6aC13nYnwMN
	n9zg==
X-Received: by 10.180.21.140 with SMTP id v12mr62120899wie.44.1417185630851;
	Fri, 28 Nov 2014 06:40:30 -0800 (PST)
Received: from [192.168.50.245] (ip-37-24-44-195.hsi14.unitymediagroup.de.
	[37.24.44.195]) by mx.google.com with ESMTPSA id
	ec2sm16147115wib.23.2014.11.28.06.40.29 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Nov 2014 06:40:29 -0800 (PST)
Message-ID: <54788963.8070208@gmail.com>
Date: Fri, 28 Nov 2014 15:40:35 +0100
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAMCfZKH2wg6oLOTuTMb+QMMraxMpzoGBYeOZYB9_tXYigwkZMA@mail.gmail.com>
In-Reply-To: <CAMCfZKH2wg6oLOTuTMb+QMMraxMpzoGBYeOZYB9_tXYigwkZMA@mail.gmail.com>
Subject: Re: Rootfs with F2FS.
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
X-List-Received-Date: Fri, 28 Nov 2014 14:40:35 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Am 25.09.2014 um 17:28 schrieb Diego Sueiro:
> Folks,
> 
> As I could inspect on openembedded/yocto source code I didn't found
> anything related with images created with F2FS. Just found f2fs-tools
> recipe.
> 
> What needs to be done to get a rootfs with F2FS?
> Just need to make it's entries at image_types.bbclass?
> 
> What about u-boot?
> I think it cannot read F2FS partitions, correct?

We are using f2fs on our device as well but we didn't find any work to
make u-boot able to open f2fs file systems.
We are using a small ext2 partition for our uImage and device tree to
get the kernel running.
As far as I know, even barebox oder other bootloaders don't support f2fs.

> If true, I have to put zImage and dtb in a fat or extX partition to get it
> loaded from u-boot.
> 
> 
> Regards,
> 
> --
> *dS
> Diego Sueiro
> 
> Administrador do Embarcados
> www.embarcados.com.br
> <http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>
> 
> /*long live rock 'n roll*/
> 
> 
> 

