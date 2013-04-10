Return-Path: <jbduro2@gmail.com>
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA29EE014C1
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 05:07:25 -0700 (PDT)
Received: by mail-wi0-f175.google.com with SMTP id c10so4719546wiw.8
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 05:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=FVPEadHtEh0n5wGaKMk+FdfA+hHRbDGKfx16ChkpLkc=;
	b=TAyF/dvQAZm1BnzL1Qw6Xo7LhcX1w7ercZK5laDXUxpuJ5J+z5HPiHaV4cy7MjDd9V
	fael5+guPSjPD4OBjBS1XNPt8GDiY9cCo7iG5sxRgev1vA4lYEmEtdVULAMDqKr4n2vD
	/cBmEuHF2g/7y96nG5lrbdupZGexMUjlW9Llg5c8TX7BHYtu1lc/2pw8c07epIl+nmt3
	ymTAN5ReHiPErQlgta1Zd1KRFlZLuEz/WCS7rBSMZ+Yj7y8NqyBFdI5MlQ8JtBsZkor9
	2CWNC5yUSPeQel9tToiz2itDf3piAVire1AlHl4kNHmoxFxLqqobfu4Wx3U45DbAcyiO
	902Q==
X-Received: by 10.194.242.163 with SMTP id wr3mr2993283wjc.35.1365595644399;
	Wed, 10 Apr 2013 05:07:24 -0700 (PDT)
Received: from [192.168.31.102] (186.140.6.109.rev.sfr.net. [109.6.140.186])
	by mx.google.com with ESMTPS id h10sm34972108wic.8.2013.04.10.05.07.22
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Apr 2013 05:07:23 -0700 (PDT)
Message-ID: <516555F8.50006@gmail.com>
Date: Wed, 10 Apr 2013 14:07:20 +0200
From: Jean-baptiste DUONEA <jbduro2@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130328 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <10f0001e.10c21.13d45669ae7.Coremail.huanmateme@163.com>
In-Reply-To: <10f0001e.10c21.13d45669ae7.Coremail.huanmateme@163.com>
Subject: Re: "trap: 80: SIGHUP: bad trap" comes up when building core-image-sato.
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
X-List-Received-Date: Wed, 10 Apr 2013 12:07:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Problem comes from Dash shell, which is used by default on Ubuntu.
You have to reconfigure your terminal and disable the usage of Dash :
Type in your console : sudo dpkg-reconfigure dash
Choose the answer "No"
Close and launch your terminal, now it will works !

