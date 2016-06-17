Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDCE4E00DA2; Fri, 17 Jun 2016 00:03:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E76D2E00972
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 00:03:16 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id h14so12849503pfe.1
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 00:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=xFzCXNC5PBa0y+bgOp8fJ/hNxDApJXzSWFuRnSTPeO0=;
	b=rs6FWDqbRP2SOKGnnYk3hNWgrdKFpbVRWAXne9vHLIc5Ky+bSfX8cT+515YSLrvgDg
	apGs50B35QUwier6djVZeT1oVOTuG3bNUXgytKTL9fDo/mD2HQDhWeZEnx9aMSxxtn21
	MSBAorPURc7enYK2qvuKAwR8i/eR3f7Gns19btrJKL4pu8W9Tpr36GnRDW/xBzYZwZf8
	w6VJMHJDrwO1pFKMYmVMoFQ6g/36XCtxJpQWbRWeHmuw7dbdmtDIz64c36GTJW+aDigu
	tZPJISCFnA2+25MLbeuPCbNEDir5OXSIIzTyWzMHwNOVcsCfFcoeWz9Ucj7DvaP2NDAb
	WCyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=xFzCXNC5PBa0y+bgOp8fJ/hNxDApJXzSWFuRnSTPeO0=;
	b=kVtkl1QBoGZy5+8tHk+VKGvA7OWcjpU5GrAEmqnAhgfwEWIpk6TkESTJQXyTY+WF6G
	scwv+xH8L+LlR6b9+Qrp/IP45vtVXA1Ogd4eCjdPW+sNrZEQlnIDrCczLCOCS45xY5K8
	hWp6Ub5Sdd86FhsSUoBiDvil6vGAFlDJHliyRixJIzv4zYt/JLfXsQr8ooLDmQaxxQHr
	+vWFIExEvVWwYjBEsvJYP7sCi/wJRtXiJmdiq1c8WJbCA8yherMoxTYgXdtB+wLG0j6q
	ORNMxFpxqU42KytzVbPkOji/Ge1AmRrJxpyntR1e8fgfyj7jfX1Vs6f17ffoUD13p+Z1
	XAgA==
X-Gm-Message-State: ALyK8tIRgLeuAU2UGEHTz8cXVxWsC0+db2FB/SC40S9Nx2abUxp+660MVmPlm+HcoSXDmG7j
X-Received: by 10.98.33.23 with SMTP id h23mr813880pfh.42.1466146995730;
	Fri, 17 Jun 2016 00:03:15 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:5808:665b:2662:9a?
	([2601:202:4001:9ea0:5808:665b:2662:9a])
	by smtp.googlemail.com with ESMTPSA id
	d65sm21768567pfa.45.2016.06.17.00.03.14 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 17 Jun 2016 00:03:15 -0700 (PDT)
To: yocto@yoctoproject.org
References: <DB23C91B06C303459B24BC3208AF424A20F480DC@MBX214.d.ethz.ch>
From: akuster <akuster@mvista.com>
Message-ID: <5763A0B1.7040303@mvista.com>
Date: Fri, 17 Jun 2016 00:03:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F480DC@MBX214.d.ethz.ch>
Subject: Re: NTP
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
X-List-Received-Date: Fri, 17 Jun 2016 07:03:39 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 06/16/2016 11:33 PM, Anicic Damir (PSI) wrote:
> Hi!
> 
> I just realised that ntpd + ntpdate is not part of Yocto 2.1

ntpdate is in the ntpdate package and ntpd is in the ntp package.

The ntp recipe is in meta-openembedded/meta-networking

you will need to append these to your image install.

- armin
> 
> I found http://layers.openembedded.org/layerindex/recipe/2299/
> 
> but how to get it?
> 
> 
> 
> 

