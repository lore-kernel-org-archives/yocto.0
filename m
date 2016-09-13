Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B559FE0074B; Tue, 13 Sep 2016 15:14:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71BA9E006D8
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 15:14:39 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id y2so405567065oie.0
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 15:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=yJlo8LPoBc4JqdN20C5lh/uE8eto7XQZ/mcj4usD3NA=;
	b=V7lnq9Gpc+LN0p8SgESd+ZT1cILc2xIR3p2UrXmlvz1Lh6tgGmAaZ7w0Wjm8RmvdYP
	HKR++DMufAL5uXDSfdwMzl5Gkg4Io2F6oHKAwJy98iOW5b8n48UAfZXDumi2xX/v/c1+
	gQihx18NpUFtrDdwsMg3N+uDL7UK89jgSY+COom04pzRdakhj7grIr7OvGYgbewRS0C+
	ht5KrOYW4PDQZmf00fo84aItkZ2dHNMJhC2JMQIZqFEJfUBABy3w77Ent6uPzLK0+Ug6
	Q1FYun8SQWr7VF6lnT2xeIe6ygIp5zXE7B5/pDytljmmVW3g1OkTixvoYhQNrWd90Ujb
	C29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=yJlo8LPoBc4JqdN20C5lh/uE8eto7XQZ/mcj4usD3NA=;
	b=PN6BFBFq6isCcpWpoSqmJJTcXhSTIRYKqN/vvLQ4J1tpAWUO/1yD9RCev5VsZey+S8
	0oD1KFcBQihtXC2aZoUsY2cm/V3qMsuWdWEm3dRRszml1E3qX6RZYJgQ6OForxGWvhUj
	GR1XEuMEW1VRTlmplDAd9Dp+EM+5VgtIoIOKWMQ5RMHq1sSKVcD/9qBOJDtGTNqGE8ii
	STatP2/+utqZCyV3AOYEeEvFtbs5a91gtTlcJWdAx2fEfW5wI2kFRWY5CfJk2P/tx5Py
	0iZoMexqS00gkwA/aueRtCGBsUHsjJMtJmyRcUIlB4LYJF7I86NVmH15AlH2Pr1mwQ4U
	FG2Q==
X-Gm-Message-State: AE9vXwNNNLr4n8+02/8FPggdjiBepf85v05ruvuVELmwcjabzNoBUwd42nt26a0e180XDe3W3aEeD91BGh2Geg==
X-Received: by 10.157.29.232 with SMTP id w37mr18889359otw.80.1473804878449;
	Tue, 13 Sep 2016 15:14:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.79.208 with HTTP; Tue, 13 Sep 2016 15:14:38 -0700 (PDT)
In-Reply-To: <09ebab78-b480-edb6-7691-2d60ecb1ed91@reliableembeddedsystems.com>
References: <CALRMKQqDgV5U_3=i_oQQ+2SzQTGhE3d1szfsomKH0rNp5++Uxg@mail.gmail.com>
	<09ebab78-b480-edb6-7691-2d60ecb1ed91@reliableembeddedsystems.com>
From: Ronald Oakes <ronaldo@brc2.com>
Date: Tue, 13 Sep 2016 16:14:38 -0600
Message-ID: <CALRMKQqa3W_7RudOO4RvT13UV+EZiiWRgDLtSw1GYS1+mF_MyA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Out-of-Tree Modules and __stack_chk_fail()
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
X-List-Received-Date: Tue, 13 Sep 2016 22:14:44 -0000
Content-Type: text/plain; charset=UTF-8

That resolved my problem.  (And while I was at it, I found that I had
failed to create a new .bbappend file to pull my custom kernel config
file in when I had to change to an older kernel version due to kernel
versions supported by the vendor - so I had none of my other kernel
configurations either).

Ron Oakes.

On Tue, Sep 13, 2016 at 1:29 PM, robert.berger@gmane
<gmane@reliableembeddedsystems.com> wrote:
> Hi,
>
> On 2016-09-13 21:55, Ronald Oakes wrote:
>>
>>
>> Any ideas how to proceed?
>
>
> 1) Can you try to use it from an in-tree kernel module? (modify the
> attachment)
>
> 2) Can you grep in your kernel config for
>
> CONFIG_CC_STACKPROTECTOR and friends?
>
> Regards,
>
> Robert
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

