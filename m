Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55BAFE002AB
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 02:00:11 -0800 (PST)
Received: from mail-yh0-f71.google.com ([209.85.213.71])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 14 Jan 2013 02:00:10 -0800
Received: by mail-yh0-f71.google.com with SMTP id 22so7439954yhr.10
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 02:00:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=UEJW7OmMvNwbGxZey+hgvIydDUjz2X0v3GPnIZ2Vf/E=;
	b=C90tNmuINY3a3+24NaQxaUXW9FgnFaoTndPqdD0rOXhTMJMcbbQ7goobetVEoxauN+
	DQAOQ3nldAzZAadX4oJ/g68G/eUQfncqGTL+kMCVU22cnTvNGXLgcv+miyoKOIoP2CzM
	5qA9ZTzlDOEVXb2NU09xIVcsg19fcBku7zRhsWRmzEMs8//l/S3gdEU4QWnKd4CHotg8
	QoaZVrMnCuOlbU0SPInh3XWq8x+nnhRyb0G1qifmfzIAFejC/QE/Epb1aLSzC94Cq6NG
	MbEOxB35dB3lZ6sGyqk7fOMxezbi1ihcEC7Gj2RY/p9hQPLGBb8KK3jenkb+1taatktI
	OtvQ==
X-Received: by 10.52.66.71 with SMTP id d7mr88673090vdt.121.1358157609618;
	Mon, 14 Jan 2013 02:00:09 -0800 (PST)
Received: by 10.52.66.71 with SMTP id d7mr88673079vdt.121.1358157609388; Mon,
	14 Jan 2013 02:00:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.103 with HTTP; Mon, 14 Jan 2013 01:59:49 -0800 (PST)
In-Reply-To: <CAF6bG8dKsTb2sGfTTDuk4zJ3+4RYbkk+qpeDo=HkOLLj6f_vMw@mail.gmail.com>
References: <CAF6bG8dKsTb2sGfTTDuk4zJ3+4RYbkk+qpeDo=HkOLLj6f_vMw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 14 Jan 2013 09:59:49 +0000
Message-ID: <CAJTo0LbNb0r_3A_KEr14cf6QeziydWiLq643FJGP-tEmkBr9Rw@mail.gmail.com>
To: Marko Lindqvist <cazfi74@gmail.com>
X-Gm-Message-State: ALoCoQnJMz/KIKk1PJ3i5LBOFPhq92FKot3ubVdMtwN5qop0/TSSQ9B2mu+cSRWKFGQ/4sGRht+WiNlDRZLzTewhDrsC3w16EG8mq46uEaz5IMM5d2dD1klpufZDTHFVSafVypMz61PpAt9iJI6TWvZvb5sSxFlz2A==
Cc: yocto@yoctoproject.org, Constantin Musca <constantinx.musca@intel.com>
Subject: Re: [PATCH] matchbox-wm: Fix build with automake-1.13
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
X-List-Received-Date: Mon, 14 Jan 2013 10:00:11 -0000
Content-Type: text/plain; charset=UTF-8

On 12 January 2013 09:09, Marko Lindqvist <cazfi74@gmail.com> wrote:
>  Automake-1.13 fix to matchbox-wm git attached.

Committed in git, thanks.

Ross

