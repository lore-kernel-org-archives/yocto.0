Return-Path: <eu@felipetonello.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A862E014BD
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 11:14:10 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id x4so9523729obh.30
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 11:14:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=0nfNqxYKXWkVvF+C20eVZIBFN92sddfNdQIlQ2rhyXA=;
	b=MCJt4Q1lX7pt4WDa0arFuFg/wxHwdAK46z9AD6Pyh4y8kFRWiTS/5OhbAFJCs+e5Nv
	nmYWkqkE2qx0EdXf4fJgzBWSE1Bgc/Pb28d/aKFRGrZqHggv0NbB9argONjL34EnQLRx
	HgyoPTujfpMa8YPLHBfwYzUt9rZZnuLEHo+V6ZQZNNohYAs0KsSfzX/9+p7wotHNxNpf
	mdJPUOhhYgqikNbxayRl1TW+TdlD/bpnPAX8IhhlrhdT9MT7tXMnPmOcnEcWJf69Bau2
	qPwZ2D828vmM2hytLOz2lAMpmCxqXZjarY81ALFVk/pgA4GP6389B+qkGhc4JcTvx+E5
	Faig==
X-Received: by 10.182.2.132 with SMTP id 4mr6060400obu.42.1364494449260;
	Thu, 28 Mar 2013 11:14:09 -0700 (PDT)
Received: from [192.168.48.44] (wsip-70-183-20-162.oc.oc.cox.net.
	[70.183.20.162])
	by mx.google.com with ESMTPS id j10sm24230610obg.4.2013.03.28.11.14.07
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 28 Mar 2013 11:14:08 -0700 (PDT)
Message-ID: <51548879.1090101@felipetonello.com>
Date: Thu, 28 Mar 2013 11:14:17 -0700
From: Felipe Ferreri Tonello <eu@felipetonello.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CABzOdpTy6Vq4YZr1gMZX3PFwYHURRMm1HPdB4Dk4GM3rFhnGTA@mail.gmail.com>
In-Reply-To: <CABzOdpTy6Vq4YZr1gMZX3PFwYHURRMm1HPdB4Dk4GM3rFhnGTA@mail.gmail.com>
X-Gm-Message-State: ALoCoQmPoVlefeutL7mMMe7P9Xq3+COvvX10oOlLvNpkL0Fqh6W0F//5z0Jboquk49oDmZG/t5Oz
Subject: Re: Qt developement Yocto
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
X-List-Received-Date: Thu, 28 Mar 2013 18:14:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Florin,

On 03/23/2013 09:48 AM, Florin Cristian Dan wrote:
> Hello
> I've done a little bit research on the internet, wondering what are the
> options for GUI development for the target machines, i've tried to add
> java support but i failed, and now i saw that Qt support is possible,
> can someone explain what the steps should be? If any plugin is requierd
> for the host, and things like that?

You can take a look in other qt applications/libraries recipes at 
meta-oe: 
https://github.com/openembedded/meta-oe/tree/master/meta-oe/recipes-qt

- Felipe

