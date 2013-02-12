Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 86512E01439
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 06:06:29 -0800 (PST)
Received: by mail-wi0-f182.google.com with SMTP id hi18so144306wib.9
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 06:06:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:message-id:in-reply-to:references
	:subject:x-mailer:mime-version:content-type
	:content-transfer-encoding:content-disposition:x-gm-message-state;
	bh=3rZ/p8ev8Rq3hzKUqH+BuSKOV9bSO/p8b9d8w9hl0yg=;
	b=h8rF5p1oqkxQL61fD9noNbWxF//VPKNW9qDfFpKnGobNaN71oQFALzDVNYZf9dXSjo
	Ha27XxK1k8oDBBm0TdK71BY3y1VkSYAimZtk1EnG7c2aXXXUJHtPHNA75bpngxSW4rRC
	p4o0VrJ+S/qlRzjoG36Puc3hohwbndBvf1o7jcFvmuE90Adme1QJBoL0VQNNkdkMIJYR
	eIUSvW7YLpEe6V2in201LkNZKwIVc8Gfu5UIojQHn12BIHXqi+qDHJ2JriXuyoNjp3lA
	PIh44SYzbWLCuoC1+Z+FzxQQlTeegE6AL+yjn8JieOaC+ToNGfnjyBbrsZLOmShiAwHc
	THDA==
X-Received: by 10.194.171.198 with SMTP id aw6mr31190253wjc.3.1360677987643;
	Tue, 12 Feb 2013 06:06:27 -0800 (PST)
Received: from [192.168.1.11] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id q13sm37963899wie.0.2013.02.12.06.06.25
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 12 Feb 2013 06:06:26 -0800 (PST)
Date: Tue, 12 Feb 2013 14:06:24 +0000
From: Ross Burton <ross.burton@intel.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
Message-ID: <F3F281ADF83E46E48E089CFDF5F9981E@intel.com>
In-Reply-To: <511A40FE.107@linux.intel.com>
References: <511A0810.4080305@linux.intel.com>
	<F3FDA2B8A266452C8CB34AFC4B256702@intel.com>
	<511A1617.7010403@linux.intel.com>
	<CAJTo0LYcFw_yg7_v24+VQTtHNiXzh6Uq_WEVzwfVoFzCXxNd2g@mail.gmail.com>
	<8646FD9BE034499C9DBF00E03F139C65@intel.com>
	<511A40FE.107@linux.intel.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQma7xKOnI7IrGjcL5hYtMpIyc0BhIsSabc1QRpzHlkE4CxrxXl7uwVnDfF/FqJJ05wyI+pS
Cc: yocto@yoctoproject.org
Subject: Re: Initramfs and systemd problems
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
X-List-Received-Date: Tue, 12 Feb 2013 14:06:29 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, 12 February 2013 at 13:17, Jukka Rissanen wrote:
> Thanks Ross!
> 
> Adding
> 
> RRECOMMENDS_${PN} = "udev-extraconf"
> 
> to my systemd_git.bbappend allowed the device to boot.
Great.  I'll fix up systemd in oe-core, and ensure that the live initramfs has these hooks all the time as they are clearly essential.

Ross 



