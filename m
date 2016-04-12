Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7D32E006D3; Tue, 12 Apr 2016 08:24:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A83A9E00522
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 08:24:49 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id e190so30437447lfe.0
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 08:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=7P3wK01wjViqosdbzSIPrgQmppNkWqA9CKP0hIqj5yc=;
	b=1HcPb09LFFBcBonuVX9WMg3qCpWuY/vJM5D8d+BtDANrLrZSvQobRziU3bTx2Vbb4p
	lToRbKQwYi5VgSegDIDMM5vzgpvy93Z/Om7X0W2Aaz825B+HP2SiUClSJg2wNA3Za1T9
	AQXkv2CIKqZcnmw31/k6WfA4B2Tugflxn9QHrH0bTInMEUkJBE+TXFEtC85fuQLt3VA7
	4Sou5JOHakmHb4TNYJemaMcSYfZTI1fT0Zap1Bgd1Pl379dzeulKg+XzY0nHiTT97sfb
	qIeb1Fi347/76ACcrB1ZvDYL64soJeoIcGN3QsvLwySiKAZghyFggjcMF31UrSNl8oVE
	Wtmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=7P3wK01wjViqosdbzSIPrgQmppNkWqA9CKP0hIqj5yc=;
	b=iqLkhjC6Y6gXiqgCjDzsrJcyD4Ct+l7aJA9HzomRbH3JeLDrb2JX33AllbuPA8niJF
	sYnAdNR/DrAp/Nli/NKdTUYJD7gpHLNK7gL/t/0Gm87Q2ScOcefNAlKCzspPpHCNWBWN
	nHzer1ZE/paos79QX+2VIaCw2k28uzBL/VQv5y7qKFjTT+kOPhVyBRiwIm+qo6KgAk1F
	BIFAOQIkUsBxK413AMIvJaILdDqQBgV+TtZXxNW4k5wAyeArU0ez9+ezeVMqsImbqSny
	cwqrYUPh4Qv22rN+LPMDcG5H7OoVV4muinExL/ZgX2l4IWW/N54f2iSuuW8zCeIGwILh
	5iVA==
X-Gm-Message-State: AOPr4FUyS2aQ+IFd3n2vh5WgNMn5bflN8/w/TUMGef9nBa552WFdEkrDX4MR0Wz4QFgTwFxY3jBgc/6C44O+PA==
X-Received: by 10.25.37.135 with SMTP id l129mr1788348lfl.56.1460474688507;
	Tue, 12 Apr 2016 08:24:48 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.8.68 with HTTP; Tue, 12 Apr 2016 08:24:28 -0700 (PDT)
In-Reply-To: <CAHQecY4PBZ-PHi6SefradTq5o2PXKo0wbo-jid80hMc0bfkYgA@mail.gmail.com>
References: <56DEF97F.9070306@balister.org> <1458767514382.89578@seescan.com>
	<56F30D13.6030909@balister.org>
	<2408177.Nm4BLto1dd@rjs-zotac.streifs.net>
	<20160412013543.GV16135@denix.org> <570C52DB.6060901@balister.org>
	<CAHQecY4PBZ-PHi6SefradTq5o2PXKo0wbo-jid80hMc0bfkYgA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Tue, 12 Apr 2016 08:24:28 -0700
X-Google-Sender-Auth: 55_6rAyW5V4eQnVPNa1LabfPd0U
Message-ID: <CA+YB3rbjhPsvzN_b70qzXXop61cdzqKbi9H2pKBeo5yRoHhL7Q@mail.gmail.com>
To: Tom King <ka6sox@gmail.com>
Cc: "openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: [OE-core] [oe] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Tue, 12 Apr 2016 15:24:53 -0000
Content-Type: text/plain; charset=UTF-8

Coming soon to a wiki page near you


On Mon, Apr 11, 2016 at 6:48 PM, Tom King <ka6sox@gmail.com> wrote:
> do we have meeting minutes posted someplace?
>
> thanks
>
> tom
>
> On Mon, Apr 11, 2016 at 6:43 PM, Philip Balister <philip@balister.org>
> wrote:
>>
>> On 04/11/2016 09:35 PM, Denys Dmytriyenko wrote:
>> > On Mon, Apr 11, 2016 at 03:35:21PM -0700, Rudolf J Streif wrote:
>> >> Hello Everyone:
>> >>
>> >> If you attended OEDAM last Friday in San Diego, I very much hope that
>> >> you enjoyed being here.
>> >>
>> >> The Catamaran Hotel, where we held the meeting, would very much
>> >> appreciate your feedback:
>> >>
>> >> www.catamaranresort.com/trip
>> >>
>> >> I hope you all had a safe trip back home,
>> >
>> > And huge thanks to Rudi and Jefro for their help in organizing the
>> > event!
>> >
>>
>> And an even bigger thanks to everyone that came to the meeting. You are
>> the people that make OpenEmbedded great!
>>
>> Philip
>> --
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>
>
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>



-- 
Jeff Osier-Mixon
Open Source Community Architect, Intel Corporation

