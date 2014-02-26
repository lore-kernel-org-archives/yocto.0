Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE7B5E0093F
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2014 13:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=Im3azvRVWwCESUEG40YVyYpImYlYCzWxkrPUKcb1BoM=; 
	b=NaIfJfJBaJGbSLCRrb2oUwbmdTaSmrmHEPvOGSrsEFd0K5hLawH+zAAqo4SrmD2eY+Mpcz9P5TIMM2vLm1ldrxnELKVcyzYUY5kHPVq7sfCKu3CbF2uFJ1kBWnkf4O5kuRK2/n0oA+TIwqxY/Img6kdeUP6FDswG3Okj/Vsve/4=;
Received: from [109.224.171.0] (port=51372
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WIlct-001Jnl-8A
	for yocto@yoctoproject.org; Wed, 26 Feb 2014 21:02:48 +0000
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <9AB00C54-DF23-4674-A970-64444675D90B@keylevel.com>
Date: Wed, 26 Feb 2014 21:02:43 +0000
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
X-Mailer: Apple Mail (2.1874)
X-OutGoing-Spam-Status: No, score=-2.9
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp@keylevel.com
Subject: Later versions of gstreamer
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
X-List-Received-Date: Wed, 26 Feb 2014 21:02:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm currently using 'danny' for a project, but that only has Gstreamer =
0.10 in the meta data.

Has anyone tried using 1.0.x (or, better still, 1.2.x) with 'danny'?

Unfortunately, I'm stuck at 'danny' as I need video acceleration for =
cedartrail and that isn't supported in later versions.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




