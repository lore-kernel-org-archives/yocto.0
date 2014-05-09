Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17A2EE00B66; Fri,  9 May 2014 02:12:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 81423 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 May 2014 02:12:18 PDT
Received: from mail-qa0-f50.google.com (unknown [209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B30EAE00B60
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 02:12:18 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id j15so3810038qaq.9
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 02:12:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=b5f8IDw7IXP7Etp2x9PNre4bZuWXCdvvS8XTn8nLleE=;
	b=QvbB2IoS95qXv2TPqiMAJOy5xkh+ypmUU1SA4rXa5Y0DYN4B5eNv3MQk2Dl8EC85LL
	FgCCADp8S7QyT2ZpGQt4y64g68gkPwfZX1nh/SrUj6n+ju0uIFZHaYUS8m6O/n/ffSb7
	inQ2W6MzvrmVWBhK8RivtC5lOE5+9CmZLjGydewGi5QWxV2z+EfyF98SiCOdWI/HNEpp
	thv+uLIDPTPdrckXI7eonj5CqT+hClq4eoo/LMFA5+dymGAbDp9GZx24PFmWh2WQbgg8
	c4eewN6/orH/itGFMDjK8GVkIucYN3PdCbNDXYFY4hMIoCU1JN38A6/1zsX4QUTeO8/t
	pVpw==
X-Gm-Message-State: ALoCoQmoWXPaUI05Rrqg8nJlhdz7U3n9BIeQdOwPO+TVPY94FunfkCTw34RjgNALe25CyjYtf0D8
X-Received: by 10.140.91.161 with SMTP id z30mr11750789qgd.65.1399626738173;
	Fri, 09 May 2014 02:12:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Fri, 9 May 2014 02:11:58 -0700 (PDT)
In-Reply-To: <E4938C0D959B3445943720B88F0721341562D6B0@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F0721341562A2D7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<536903ED.1040806@dynamicdevices.co.uk>
	<E4938C0D959B3445943720B88F0721341562D593@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<536B5AFC.6090105@dynamicdevices.co.uk>
	<E4938C0D959B3445943720B88F0721341562D6B0@NDA-HCLT-MBS02.hclt.corp.hcl.in>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 May 2014 10:11:58 +0100
Message-ID: <CAJTo0LY0mv1sKJW1O369a_ZGb8J=4mDmg6b=8UTPfYj5TxCEpA@mail.gmail.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Third Party Components Integration in Yocto
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
X-List-Received-Date: Fri, 09 May 2014 09:12:24 -0000
Content-Type: text/plain; charset=UTF-8

On 9 May 2014 06:56, Meenakumari Shedole <meenakumari.s@hcl.com> wrote:
> install: cannot stat `bb-example': No such file or directory

Your compile task didn't actually work.

Ross

