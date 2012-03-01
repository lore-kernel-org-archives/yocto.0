Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 492F2E013E8
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 22:17:12 -0800 (PST)
Received: by dadv6 with SMTP id v6so417136dad.28
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 22:17:12 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.68.136.71 as permitted sender) client-ip=10.68.136.71; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.68.136.71 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.68.136.71])
	by 10.68.136.71 with SMTP id py7mr16195373pbb.76.1330582632186
	(num_hops = 1); Wed, 29 Feb 2012 22:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=iIYSmPhJQJ8lILela3uPcAapIXSysyd/9bi4z61voo0=;
	b=OQ6bE1Vto2wXydibfGvQO0KDCO+AtjAcceZyPAWD6WrlWZ5SM5Rn6yOLo1wf3E4uHC
	nd0YORC3gr4OaCIeDzbSpMwZBGjcyYEQysgQoZMVLBki+jfuJGjMmDQsRAOD/w03SV0O
	mH7qM2BVkboB6iG/OwQBRRq6g2YXzICmtcCJk=
Received: by 10.68.136.71 with SMTP id py7mr13420212pbb.76.1330582632070;
	Wed, 29 Feb 2012 22:17:12 -0800 (PST)
Received: from [192.168.1.78] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id y7sm1218350pbp.25.2012.02.29.22.17.10
	(version=SSLv3 cipher=OTHER); Wed, 29 Feb 2012 22:17:10 -0800 (PST)
Message-ID: <4F4F1464.6080209@gmail.com>
Date: Wed, 29 Feb 2012 22:17:08 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120224 Thunderbird/11.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <63ECFF2A2302B44093D7CE9E9962C4900A9308@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C4900A9308@ORSMSX103.amr.corp.intel.com>
Subject: Re: package requires different glib version
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
X-List-Received-Date: Thu, 01 Mar 2012 06:17:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/24/2012 02:33 PM, Saxena, Rahul wrote:
>  
> 
> Had a question on Glib. The configuration script of one of the packages
> I am trying to build requires glib >= 2.31.10 ,
> 
> but the Edision branch has 2.28 version.  What does one generally do in
> these type of cases ?

You can backport glib (or whatever package you need upgraded)recipes
from oe-core/master if they are there
usually that would be best case

glib is core package and a lot of other packages depend on it
so integrating new version into your tree could be significant work

another option could be figure out what features from new glib are
being used by this new package and would it be possible for you
to disable them then you can just patch this one package to
bahave with existing glib that would require only this new package
to change. If I were you I would prefer this option if its viable

-Khem

