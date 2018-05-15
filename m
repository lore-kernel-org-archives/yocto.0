Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE6A1E00CA3; Mon, 14 May 2018 17:48:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 420E9E0084E
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 17:48:53 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id k2-v6so623032pgc.1
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 17:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=wR7QcAD9bQMbuDjYJAgQDJoMqWhpSktQP8P+G+nh+XU=;
	b=AeWGQhV+cBwOdSj0dKzrcvDdlCN2ZnH3+RQco0E2tN6u0Dkxq8j42InKZAg4b11cqP
	EKugxr+M4pLFr69Tj72qb6RcLBTRgkFWQ2PBjcHnNnLUqcWBpQTZR88Mm3/T6nYzfitL
	/LCuVCzxq6iW5ttvXVn2GzAxIujiWQgIFD/q1vA+Bw2s3OYVkzLksJluilHWMVpXOaRk
	lLC7Gz4qi3sNOCaOf8Zodi/AXCIItLofpXflowQ4mJ16BwB8cPCGGt7JQxYUDgs7X0Uw
	UWW4eh1eNx6O9gEIWcY0KSEHy0ubw9Xz1QdQEjIDFwbUnb8LWGdPFE2YYwIuJTNUEqlP
	Smhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=wR7QcAD9bQMbuDjYJAgQDJoMqWhpSktQP8P+G+nh+XU=;
	b=Y3sJu06Vz31n5mvReL4CtmU5hDPVOhfwQEEdeXRY9h65c69R83ie/OxpulAKf+kjSW
	VLx4cHG3RD7ccEwStd8Zi307x7IXTLjk7WFiwUJW4ah1yITDDiWhe4McDlHnHHIXnrYw
	wl8/OtG2ZdAW5BHV3IqhkpoFCaAyYbONcwKfBF1R9hjDDZnmwDVby7D8ICmZ4dDJr4Gi
	7SYMz+Ml8f7XZcdzQgU0uNF4z2tQmn3rS+lzF3rkOQqLcE19+r20HR4IKG2FNJ0bmy2T
	Tm7DsAHSjJwf4XPGBhJu25lOiZZJ6W7VD1sXlB1bXBmxO/+uUxbkXpoGaWz3dIHAGQx5
	Jhew==
X-Gm-Message-State: ALKqPwf8kUbBYWbP5xdtdhACNNdCG8YZnIFjwVKa2t+ZzO8W26tVsHIS
	ExBhuDZHkW3160ztbHP2OmDn5bNZOQ==
X-Google-Smtp-Source: AB8JxZrThP8IlPRuVFQX8kqHMy/7tNrCfNEHK8NCF04T5EoBveMj8np7FQDxRrUbyHoTQAE/KFFfCA==
X-Received: by 2002:a62:9fca:: with SMTP id
	v71-v6mr12568924pfk.233.1526345333370; 
	Mon, 14 May 2018 17:48:53 -0700 (PDT)
Received: from ?IPv6:2601:644:8780:b9c:103c:d1e2:3d6d:7388?
	([2601:644:8780:b9c:103c:d1e2:3d6d:7388])
	by smtp.gmail.com with ESMTPSA id
	q8-v6sm18394678pfh.26.2018.05.14.17.48.52
	for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 14 May 2018 17:48:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Bill Jenkins <bill@korgrd.com>
In-Reply-To: <0584D083-F27E-4336-9324-CFBACD55A653@korgrd.com>
Date: Mon, 14 May 2018 17:48:51 -0700
Message-Id: <D71A3695-AB82-4B4F-A56C-FF41B9403F7D@korgrd.com>
References: <0584D083-F27E-4336-9324-CFBACD55A653@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3124)
Subject: Re: [meta-raspberrypi] No package 'wayland-egl' found
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
X-List-Received-Date: Tue, 15 May 2018 00:48:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On May 14, 2018, at 2:43 PM, Bill Jenkins <bill@korgrd.com> wrote:
>=20
> Hi,
>=20
> I just sync'd to the head of the master branch in the poky and =
meta-raspberrypi repos today=20
> and tried a build that successfully completed last week, but now fails =
with the error message
> "No package 'wayland-egl' found" during the =
gtk+3_3.22.29.bb:do_configure task.
>=20
> I see some recent commits in both branches related to egl movement =
between wayland
> and userland. I made sure to be up-to-date in both repos. What could I =
be missing?
>=20

I found that by removing the do_install_append_rpi() from commit =
de8912cb, the build
finishes successfully. Is there something else that this commit is =
depending on that I do
not have?


