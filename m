Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5215FE009B9; Fri, 10 Mar 2017 05:02:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A661E009A0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 05:02:43 -0800 (PST)
Received: by mail-it0-f44.google.com with SMTP id m27so6880909iti.0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 05:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=itKAZSe+IuZLCPwbzs+YS9xbhOfJinvvdZR8VvHG9dU=;
	b=BgGFs60+TaTKHN/D9MCm9pvNF4jnaIOo9p0eazt5axZQ6N6fqLcsk+Ubawok60fuRZ
	hdNUYVVMZLtvrrwG3oLicSmH3XyVG+GwTozvDvn4JoNIjj5s0f/DURImR+8iGmuljzZy
	ObGrTWsaQzl1Yizw46ehB8sWOaHXFp52IfxWu8HLwpZ7T6FA0bBRcm3HVsJIZuGarTDX
	K8eUES7XEueY6tYUq9AQtywStLm8jWHFxO3wG2x6XkHnMERA48eASbQnCEXXA9jwb+if
	zw2z5JpHfE5ooYVBTop87ryVKAdCjEzuFNUiHfVq4obU/w0p9BhgneXLt7ccn25U/1gc
	KS+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=itKAZSe+IuZLCPwbzs+YS9xbhOfJinvvdZR8VvHG9dU=;
	b=tfaV3Ho1OcbaOdscYduwXpV3I7vM6EkNseWaQ0qMOC3WjyLB6cLL7Nf0x3qcO6c/XH
	GdD2Quhll4m+xlnxOFI/lnqHCw4bRNC7Byf299UUzSRSf2pPS1daFnWefJGukx4jc6w+
	eyncie0fX/spEPLS8DpfV3n97NICaNb/cZONyokiwI+lpj7uhYyVa+z3AEoLot7QJI9g
	qVBf/8M+EiLDhIQH1nurH4mNOPkDQiCNNR2njji3Mnx2s845BupMqgrHucMJ64T2qm3v
	qG/JzNiLcrDx4BuMutCoMG65E7P+Kekgbb+Bg26SpUm69aZCMpV62+KsN2zm/TT5WCAN
	SkhQ==
X-Gm-Message-State: AFeK/H2v1cl5c8LM3arqic1mFV2H+4SlGMIvlAcqVIXLfvsiLgr3lKs2NvPHF1TcTHXBkVB8
X-Received: by 10.36.4.67 with SMTP id 64mr1861813itb.19.1489150962382;
	Fri, 10 Mar 2017 05:02:42 -0800 (PST)
Received: from pohly-mobl1 (p5DE8DCF9.dip0.t-ipconnect.de. [93.232.220.249])
	by smtp.gmail.com with ESMTPSA id
	p140sm935910itc.27.2017.03.10.05.02.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 05:02:41 -0800 (PST)
Message-ID: <1489150958.7785.436.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Eystein =?ISO-8859-1?Q?M=E5l=F8y?= Stenberg <eystein@mender.io>
Date: Fri, 10 Mar 2017 14:02:38 +0100
In-Reply-To: <c8f87996-c9e4-97ba-3ba8-be9c9260e094@mender.io>
References: <7d589da5-ff5b-3cdc-d0e7-fd2289363c98@mender.io>
	<c8f87996-c9e4-97ba-3ba8-be9c9260e094@mender.io>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: update mechanisms
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
X-List-Received-Date: Fri, 10 Mar 2017 13:02:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-03-01 at 16:35 -0800, Eystein Måløy Stenberg wrote:
> On Tue, 2016-12-06 at 10:45 +0100, Patrick Ohly wrote:
> > On Tue, 2016-12-06 at 10:01 +0100, Stefano Babic wrote:
> > > Hi Patrick,
> > >
> > > On 30/11/2016 15:59, Patrick Ohly wrote:
> > > > I've started a Wiki page
> > > > https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
> > > > moment, but might as well be mentioned already now.
> > >
> > > I have seen Mariano added an entry for SWUpdate, too, thanks  - I would
> > > like to edit for better explanation on some parts. Should I try to edit
> > > directly the page or is it better to discuss it here ?
> >
> > Use your own judgment. If its uncontroversial, the feel free to edit the
> > page directly, otherwise let's discuss it here.
> >
> > If feel that putting information directly into the table is too limiting
> > (it should be brief), then feel free to start a complete section about
> > SWUpdate.
> >
> > I'll do the same for swupd. Editing the sections should be possible
> > without conflicts, we just have to be more careful about editing the
> > table concurrently.
> 
> I updated the Mender part of the wiki now that the stable version Mender 
> 1.0 is released. These changes should not be controversial, but let me 
> know if you disagree. We are planning to keep the Mender section 
> up-to-date as we release new versions, as I think this is what you expect.

Yes, that's useful.

> Are there any plans for next steps or is the wiki the "final state" in 
> terms of integrating OTA updates in Yocto/OE?

My own conclusion is that it is impossible to integrate a specific OTA
update into Yocto/OE (because there's no single solution that fits all
requirements) and/or it would be unfair to those solutions that don't
get such special testing. In that sense the Wiki page is the final
result of the investigation. Anyone interested in picking a solution can
go there, consider the pros and cons, and then make a choice.

However, I see room for some collaborative work that then can happen in
Yocto/OE:
      * carrying local system configuration changes across system
        updates: I find it promising to investigate the "stateless"
        concept and have started some exploratory work, see
        https://wiki.yoctoproject.org/wiki/Stateless#Status_and_goals_for_.22stateless.22_in_Yocto (more on that soon)
      * supporting UEFI-based machines

In contrast to Yocto/OE, the IoT Reference OS Kit can (and in a way, has
to) make some choices because it needs a functional solution out of the
box. My current thinking there is to support one file-based (OSTree?)
and one block-based (Mender.io?) solution, the block-based one perhaps
combined with dm-verity.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




