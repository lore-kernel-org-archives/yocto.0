Return-Path: <jpuhlman@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD5BB4C802F2
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 12:01:48 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxd5 with SMTP id 5so3877301yxd.35
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 10:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=15iBpBYq0YjGThIh+55wfFjl2q4jaXlS4cNg6ZYnoKA=;
	b=g7AmhABLq1M4dwub9ky0G2FV/jMbg/47HOh1epVPDf34kBGPet7lVa4IBsvLJREApA
	W1oK8Ds+821Pe4R5iys/br9a5POXJk+/TMEbCpyQRqUTbjyozFfz4EYHvgU7YtDxqN85
	/FDFPAGJuOLHCHVLd0Vl0FcTqF2FIw91HU1hc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	b=e1JApycPSkRgivLw9knH7RGWbJ0+iuj0Is1+owL3ukavxJRBPGAZ8EDVAC1mje7Gcz
	ud09nMNgfsn1dLPkLCuU1HfACIP0pjmfLCBQtxyH5aNykDgZlxLZVcIvZPyw6OfGxi4W
	ezNtCnQretdkr+p61cXQWDbA+D6BCnS1NNVSY=
Received: by 10.151.145.18 with SMTP id x18mr64571ybn.133.1300813308359;
	Tue, 22 Mar 2011 10:01:48 -0700 (PDT)
Received: from [10.0.10.113] (gateway-1237.mvista.com [206.112.117.35])
	by mx.google.com with ESMTPS id t12sm3702024ybe.0.2011.03.22.10.01.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 22 Mar 2011 10:01:47 -0700 (PDT)
Message-ID: <4D88D5F6.4020306@gmail.com>
Date: Tue, 22 Mar 2011 10:01:42 -0700
From: Jeremy Puhlman <jpuhlman@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Lightning/1.0b2 Thunderbird/3.1.9
	ThunderBrowse/3.3.4
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <C9AE1F25.3EB2F%madison@cisco.com> <4D88D2D0.7050202@windriver.com>
In-Reply-To: <4D88D2D0.7050202@windriver.com>
Cc: Yocto Mailer <yocto@yoctoproject.org>
Subject: Re: Older versions of Linux as build hosts?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Mar 2011 17:01:49 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 3/22/2011 9:48 AM, Mark Hatle wrote:
> On 3/22/11 11:40 AM, Matt Madison wrote:
>> Hi,
>>
> I have done builds with both RHEL 4 and RHEL 5.  Both on machines in which I do
> not have root access.
>
> For me I was able to simply provide an update python, some additional tools and
> it worked.  (Note, I haven't tried it in the last 2 months though, so something
> may have broken since then.)

I have noticed of late, pseudo's definition of clone conflicts with my
RHEL 4's definition of clone. Aside
from that I haven't noticed any significant issues.

