Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C001AE0153D
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 02:14:49 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id c10so3802070wiw.0
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 02:14:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:content-type:x-mailer:mime-version:content-transfer-encoding
	:x-gm-message-state;
	bh=XkOV2Vj9hkOVWYv9IAbhusbub3a8yQgVNbA7qI5vri0=;
	b=d/ol+AMwkP1SQUi8ipo3um6TCUEgnUNbTNhpAoleINUYDDhrbtOcBQppgxjZYHTXfz
	1/1IXO15Tb9w5O2JPjUf0uaMfh2BoxTQl6tuwi6ifGXs+jXOy22HVS7zFgcG5QotXniC
	PK9dj2RzaqdT3e+oP12/+mJO9zgDcbt91ohIkFcV9A8DT+oc34jzYBzJVKdhQjaWARE3
	vf6zlzC/TL1hY1zRGyeNUGTvji5Po9HBna0OcKhPdCk0vaC5F3t63tr2bumh5ekUXZJk
	ub8sV/LXDKWZpx1FNK98s8VJNp4/mZSPc6b5RK+l4fs9VzcO9re7vyHEF0TlXvAD8O4Y
	7wEg==
X-Received: by 10.194.108.73 with SMTP id hi9mr19159040wjb.85.1372670088485;
	Mon, 01 Jul 2013 02:14:48 -0700 (PDT)
Received: from [192.168.1.9] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id fb9sm14963181wid.2.2013.07.01.02.14.46
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 01 Jul 2013 02:14:47 -0700 (PDT)
Message-ID: <1372670074.7808.1.camel@flashheart.burtonini.com>
From: Ross Burton <ross.burton@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Mon, 01 Jul 2013 10:14:34 +0100
In-Reply-To: <23674701-2217-4CFC-88CF-8E4C3709E576@gmail.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
	<23674701-2217-4CFC-88CF-8E4C3709E576@gmail.com>
X-Mailer: Evolution 3.6.3-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQnkv5/XydkSoeBl+llkFQINMVROJt0j0tvK/qIbSksB3J3jFrpDzU/zfpjotACMRj3Rd9NO
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Mon, 01 Jul 2013 09:14:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-06-28 at 14:24 -0700, Khem Raj wrote:
> as an aside, if meta-toolchain is deprecated why should we carry
> meta-toolchain-gmae as well? it seems a special SDK
> only target. I think it will be better to have sdks from images all
> the time.

Because the QA testing for Danny and likely Dylan will continue to use
meta-toolchain-gmae because that's what their test plan is.  Hopefully
we can change the autobuilder so that it only builds meta-toolchain-gmae
for those releases and not master.

Ross


