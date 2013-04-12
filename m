Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f41.google.com (mail-vb0-f41.google.com
	[209.85.212.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 297F5E014D5
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 08:08:17 -0700 (PDT)
Received: by mail-vb0-f41.google.com with SMTP id f13so2266595vbg.0
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 08:08:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=VTEGz9EOBVhNPPlbVFcyQuvD8U6iHqp7ZQwQJFEN7VI=;
	b=ScI6z2dAwNq0fdAGce3y3qOBJVMPbpMuYmBK6ropcBtKb/Z699q3ZFtja0MJsmjcmx
	cvGFNhCvw7cs09Osv4iA+NdpJwJtbFrxcj/BTYL6Pd/cJUWSFL/w70yQ9wS59n9Zwvt6
	M97UR8f8fAjXp1L2i8OBRB1HgPOHQgS2pCaE/Ont+eFWFUzZ/bJYaPIl3m2rrQSugy/y
	QChmyLZ4zjA6wxUGoErodi+wacnNBmjONI+A+WNLxbjxV8wTMW8msvC3Hppu5QaLHGgb
	dsB/yoJVWAVwDLHrGywH8TnCN5Q5Os8elmQrC0Ek1gguyU3rltzj/ZsoinztRazm7N/3
	55lg==
X-Received: by 10.220.153.2 with SMTP id i2mr8618230vcw.53.1365779296157; Fri,
	12 Apr 2013 08:08:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Fri, 12 Apr 2013 08:07:56 -0700 (PDT)
In-Reply-To: <CAFMfyzLjJPfRY++w1WPn24rHu6wJr_H_V9D8MZhUXc5N1u8XWQ@mail.gmail.com>
References: <CAFMfyzLjJPfRY++w1WPn24rHu6wJr_H_V9D8MZhUXc5N1u8XWQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Apr 2013 16:07:56 +0100
Message-ID: <CAJTo0LbNPgXZ_bKFOk4gFex1B=j9yrZX1YwDruVqBiL0rw5R5A@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQmHQiGSg4genWKbIiY8sGJJDBwVzMvWgJUZcN1yluQEqoD8McZnLz6oZ/NidW+9wavw4zj3
Cc: yocto@yoctoproject.org
Subject: Re: systemd vs sysvinit
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
X-List-Received-Date: Fri, 12 Apr 2013 15:08:17 -0000
Content-Type: text/plain; charset=UTF-8

On 9 April 2013 12:21, Satya Swaroop Damarla <swaroop.damarla@gmail.com> wrote:
> Hi, I created two images first by using sysvinit and the other using
> systemd... The image using sysvinit works perfectly but the image with
> systemd works only from the second boot. In the first boot it hangs. What
> could be the possible reasons?

Are you still having this problem?  I've not seen systemd hang on
first boot.  Can you share some more details, i.e. what layers, what
image?

Ross

