Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10E5BE008A5; Mon, 18 Jan 2016 09:11:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E471AE00803
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 09:11:14 -0800 (PST)
Received: by mail-pa0-f45.google.com with SMTP id uo6so422584262pac.1
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 09:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=bWCIh/V9NYAlSrLeG/Xdi27rLCLjtp4DfAb4ObXPfxU=;
	b=xnG2eKvkzstG6J3Yt8ph6VJZsDKfnELu5iZr/VUldJZQoZvlAKHrvB2Kvf8aL5HkPF
	SQHJnKYNbz9/l4MODTQZvALpcz/KnIlxhKAhsKyaxtVzlclQngSDMKcaLbXeOcYIOJyL
	NMryI312FacIDya5ueUavtCAMFW9rF4GYcqz5mgPAFf1tDA6asnjeRQj+v+qHb0BJGIm
	KxkfE4zS7W0vbxyjAXTDe4kZ6m1gVCLVOIizyeoL1iAEXWAZWk8ed9f3WpyTGQ21Y4nU
	M8yladfKrYnHUDZ1vhRnUyICjYIJtxmS/vKS9hH3KMBfINC2cpH654wEHygF9oEdk6kf
	E0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=bWCIh/V9NYAlSrLeG/Xdi27rLCLjtp4DfAb4ObXPfxU=;
	b=bUZHsUKm1GQtZbTwJEXeiw+c3dTLow8oAGzUk0UjGgiDC0vO85aYBAXUv97tapSF/x
	x8w9aGkfKnVu1SyIOSm40iWJO7ZI92FqH/zv7Ca1TRhOjSPTZM4alMel2P/WvZvjQwnw
	1xZ+28AFHQ4Y1PZk8rlwxGz5lBMBfeq1Z4ZIWEbg8vr2r2vKkkwZUufEv1UG1pNuMBW3
	+oQpMTVZL8oQcTbR854SRgACphCL2jbWOc7syGu7syeRUgXZoNLf7WcdGC8iCEi8VV4H
	dG/Q7IAHVjOWUikf0L1Vmof5kjaY92CU3GnI23n+J0v8O7pi7j/9PaRLLRH31hIR8R6G
	1ixA==
X-Gm-Message-State: ALoCoQko/7Mv4xqb3+sPV/cRaWavzddV2bsySn/kPwYyYtj+UG0jYZIAHzjL4S9dA9I5G0vOU83ars+L+Yt5ykNUFR7MojI8Ow==
X-Received: by 10.66.90.133 with SMTP id bw5mr37787162pab.22.1453137074041;
	Mon, 18 Jan 2016 09:11:14 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:e9a2:fb2f:ec3d:1ed8?
	([2601:202:4000:1239:e9a2:fb2f:ec3d:1ed8])
	by smtp.googlemail.com with ESMTPSA id
	r89sm35308375pfa.57.2016.01.18.09.11.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 18 Jan 2016 09:11:13 -0800 (PST)
To: Larry Goss <Larry.Goss@enea.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <37573EC8CA5E1846A6DF0BDECDD7DA9329CC1E62@SESTOEX04.enea.se>
From: akuster <akuster@mvista.com>
Message-ID: <569D1CAF.5000809@mvista.com>
Date: Mon, 18 Jan 2016 09:11:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <37573EC8CA5E1846A6DF0BDECDD7DA9329CC1E62@SESTOEX04.enea.se>
Subject: Re: ipv6 testing
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
X-List-Received-Date: Mon, 18 Jan 2016 17:11:18 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Larry,

On 01/15/2016 10:52 AM, Larry Goss wrote:
> Hi,
> 
> Does Yocto do any IPv6 conformance testing?

AFAIK, the project does not preform conformance testing.

regards,
Armin
> 
> Thanks,
> 
> Larry Goss
> Sr. Field Applications Engineer
> Enea North America
> Email: larry.goss@enea.com
> Phone: (603) 475-1087
> 
> http://www.enea.com/
> 
> ________________________________________________________________________________________________________________________________
> This message, including attachments, is CONFIDENTIAL. It may also be privileged or otherwise protected by law. If you received this email by mistake please let us know by reply and then delete it from your system; you should not copy it or disclose its contents to anyone. All messages sent to and from Enea may be monitored to ensure compliance with internal policies and to protect our business. Emails are not secure and cannot be guaranteed to be error free as they can be intercepted, amended, lost or destroyed, or contain viruses. The sender therefore does not accept liability for any errors or omissions in the contents of this message, which arise as a result of e-mail transmission. Anyone who communicates with us by email accepts these risks.
> 
> 
> 
> 
> 
> 

